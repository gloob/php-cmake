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
				//print_r($struct);
				$this->parseConfigM4($struct['config.m4']);
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

	protected function parseConfigM4($path) {

		$contents = file_get_contents($path);

		// PHP_NEW_EXTENSION
		preg_match('/PHP_NEW_EXTENSION\((?<args>(.)*)\)/', $contents, $matches);

		$args = explode(',', $matches['args']);

		var_dump($args);
		
	}
}



function main($argc, $argv) {

	// Check parameters
	if ($argc < 2) {
		die("Sintax error: ${argv[0]} (source.in)\n");
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
