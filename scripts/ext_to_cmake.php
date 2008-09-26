<?php
/**
 *  Automatic conversion from ext/[*]/config.m4/config.w32 to cmake world.
 * 
 *  Author: Alejandro Leiva <gloob@php.net>
 *
 *  $Id$
 */


class Extensions_Converter {

	private $ext_path;
	private $extensions;

	private $files;
	
	public function __construct($path) {

		$this->ext_path = $path;
		$this->extensions = array();
	}

	public function __destruct() {
	}

	public function run() {

		// get extensions.
		// get config files.
		$this->getExtensions();

		// parse & analyze config files
		foreach($this->extensions as $idx => $struct) {
			if ($struct['config']) {
				printf("++ Processing extension: %s [%s]\n", $struct['name'], $struct['path']);
				$cmake_data = $this->parseConfigM4($struct['config.m4']);
				$cmake_content = $this->applyTemplates($cmake_data);
				$this->writeCMakeList($struct, $cmake_content);
			} else {
				printf("-- NOT Processing extension: %s [%s]\n", $struct['name'], $struct['path']);
			}
		}

		// write result.
	}

	protected function getExtensions() {
		
		$dir = dir($this->ext_path);

		while(false !== ($e = $dir->read())) {

			$p = $this->nPath($dir->path) . DIRECTORY_SEPARATOR . $e;

			if (is_dir($p)) {
echo "e: $e\n";
				if ($e != '.' || $e != '..' || $e != '.svn' || $e != 'CVS') {

					$this->extensions[]['name'] = $e;

					$index = count($this->extensions) - 1;

					$this->extensions[$index]['path'] = $p;

					if (file_exists($p . DIRECTORY_SEPARATOR . 'config.m4')) {
						$configm4 = 'config.m4';
					} elseif (file_exists($p . DIRECTORY_SEPARATOR . 'config0.m4')) {
						$configm4 = 'config0.m4';
					} else {
						$configm4 = NULL;
					}

					if ($e == 'mbstring') $configm4 = NULL;

					if ($configm4) {
						$this->extensions[$index]['config'] = true;
						$this->extensions[$index]['config.m4'] = $p . DIRECTORY_SEPARATOR . $configm4;
						$this->extensions[$index]['config.w32'] = $p . DIRECTORY_SEPARATOR . 'config.w32';
					} else {
						$this->extensions[$index]['config'] = false;
					}
				}
			}
		}

		$dir->close();
	}

	protected function nPath($path) {

		if ($path{strlen($path)-1} == DIRECTORY_SEPARATOR) {
			return substr($path,0,strlen($path)-1);
		} else {
			return $path;
		}
	}

	protected function checkConfigM4() {

	}

	protected function existVars($string) {
		$ret = preg_match('/\$\S*/', $string);
		return $ret ? true : false;
	}

	protected function setFiles($files_str) {
		// erase backslash
		$this->files = str_replace("\\", "", $files_str);
	}

	protected function interpretVars($var_string, $contents) {

		$var_string = str_replace("\\", "", $var_string);

		if ($this->existVars($var_string)) {

			preg_match('/\$(?<var>\S*)/', $var_string, $parse_vars);

			if($parse_vars) {
				$var = $parse_vars['var'];
				$regexp = "/$var=\"(?<files>[^\"]*)/s";
				preg_match("/$var=\"(?<files>[^\"]*)/s", $contents, $matches);
			
				$files = $matches['files'];
				
				if ($files) {
					$var_string = str_replace("\$$var", $files, $var_string);
					$var_string = str_replace("\$$var", "", $var_string);
				} else {
					$var_string = str_replace("\$$var", "", $var_string);
				}

				$var_string = str_replace("\\", "", $var_string);
			}

			if ($this->existVars($var_string)) $this->interpretVars($var_string, $contents);
		}

		return $var_string;
	}

	protected function parseFunction($func_name, $contents, $func_args) {

		$func_regexp = "/$func_name\((?<args>[^\)]*)/s";
		//$func_regexp = "/$func_name\(((?<args>[^()]+)|(?R))*\)/xs";

		if (preg_match($func_regexp, $contents, $matches)) {

			$args = explode(',', $matches['args']);

			foreach ($args as $idx => $arg) {
				$data = $args[$idx];
				$data = str_replace('[', '', $data);
				$data = str_replace(']', '', $data);
				$ret[$func_args[$idx]] = trim($data);
			}
		
			return $ret;
		}
	}

	protected function parseConfigM4($path) {

		$contents = file_get_contents($path);

		// PHP_ARG_WITH
		$php_arg_with = $this->parseFunction('PHP_ARG_WITH', $contents, array('arg_name', 'check_message', 'help_text', 'default_val', 'ext_or_not'));
		//printf("PHP_ARG_WITH(%s, %s, %s, %s, %s)\n", $php_arg_with['arg_name'], $php_arg_with['check_message'],$php_arg_with['help_text'],$php_arg_with['default_val'],$php_arg_with['ext_or_not']);
		//print_r($php_arg_with);

		// PHP_NEW_EXTENSION
		$new_extension = $this->parseFunction('PHP_NEW_EXTENSION', $contents, array('ext_name', 'ext_sources', 'ext_shared', 'ext_cflags', 'ext_cxx', 'ext_zend'));
		//print_r($new_extension);

		if (isset($new_extension['ext_cxx'])) {
			$ext_defines = $this->interpretVars($new_extension['ext_cxx'], $contents);
			$ext_defines = str_replace('@ext_srcdir@', '${CMAKE_CURRENT_SOURCE_DIR}', $ext_defines);
			$ext_defines = str_replace('@ext_builddir@', '${CMAKE_CURRENT_BINARY_DIR}', $ext_defines);
			preg_match('/\-I(?<include>[^\s]*)/', $ext_defines, $include_vars);
			$ret['EXTENSION_DEFINITIONS'] = "include_directories(\"" . $include_vars['include'] . "\")\n";
		} else {
			$ret['EXTENSION_DEFINITIONS'] = NULL;
		}
		

		// interpret vars
		$this->setFiles($new_extension['ext_sources']);
		$this->files = $this->interpretVars($this->files, $contents);

		$ret['EXTENSION_NAME'] = $new_extension['ext_name'];
		$ret['EXTENSION_TARGET'] = $this->cmakeTarget($new_extension['ext_name']);
		$ret['EXTENSION_SOURCES_GROUP'] = 'EXT_' . strtoupper($new_extension['ext_name']) . '_SOURCES';
		$ret['EXTENSION_SOURCES'] = $this->files;

		// PHP_ADD_EXTENSION_DEP
		$ext_dep = $this->parseFunction('PHP_ADD_EXTENSION_DEP', $contents, array('ext_name', 'ext_deps', 'deps_conf'));
		if (isset($ext_dep['ext_name'])) {
			if ($ext_dep['ext_name'] == $new_extension['ext_name']) {
				$ret['EXTENSION_DEFINITIONS'] .= sprintf("add_dependencies(%s, %s)\n", $this->cmakeTarget($ext_dep['ext_name']), $this->cmakeTarget($ext_dep['ext_deps']));
			} else {
				error_log("-- PHP_ADD_EXTENSION_DEP case not processed []");
			}
		}

//print_r($ret);
		return $ret;
	}

	protected function cmakeTarget($ext_target) {
		return 'EXT_' . strtoupper($ext_target);
	}

	protected function applyTemplates($data) {

		$tpl = file_get_contents(realpath(dirname(__FILE__)) . '/ext_cmake.tpl');

		foreach($data as $idx => $data) {
			if ($data) {
				$tpl = str_replace('@@' . $idx . '@@', $data, $tpl);
			} else {
				$tpl = str_replace('@@' . $idx . '@@', '', $tpl);
			}
		}

		return $tpl;
	}

	protected function writeCMakeList($data, $content) {
		
		$dirname = '/tmp/ext/' . $data['name'];
		$filename = $dirname . DIRECTORY_SEPARATOR . 'CMakeLists.txt';
		if (!is_dir($dirname)) mkdir($dirname, 0777, TRUE);
		file_put_contents($filename, $content);
		//file_put_contents($this->ext_path . DIRECTORY_SEPARATOR . $data['name'] . DIRECTORY_SEPARATOR . 'CMakeLists.txt', $content);
	}
}



function main($argc, $argv) {

	// Check parameters
	if ($argc < 2) {
		die("Sintax error: ${argv[0]} (source_path)\n");
	}

	$path = $argv[1];

	// TODO: Check existence and syntax of source
	// Do the work
	$ec = new Extensions_Converter($path);

	$ec->run();

	// Exit
	echo "bye bye\n";
}

main($argc, $argv);

?>
