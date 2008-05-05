<?php
/**
 *  Automatic conversion from PHP .in files to cmake world.
 *  Alejandro Leiva <gloob@php.net>
 *
 *  $Id$
 */

define('AUTOMATIC_STR', "/* AUTOMATICALLY GENERATED */\n");

function infere_operation($str) {
		
		if (preg_match('/^HAVE_.*_H$/', $str)) {

			$header = preg_replace('/^HAVE_/', '', $str);
			$header = preg_replace('/_H$/', '.h', $header);
			$header = strtolower(str_replace('_', '/', $header));

			$cmake_str = "CHECK_INCLUDE_FILES($header $str)";

			return($cmake_str);
		}

		if (preg_match('/^SIZEOF_.*$/', $str)) {
			
			$type = preg_replace('/^SIZEOF_/', '', $str);
			$type = strtolower($type);

			$cmake_str = "CHECK_TYPE_SIZE(\"$type\" $str)";
	
			return($cmake_str);
		}

		if (preg_match('/^HAVE_LIB.*$/', $str)) {
			
			$lib = preg_replace('/^HAVE_LIB/', '', $str);
			$lib = strtolower($lib);

			$cmake_str = "CHECK_LIBRARY_EXISTS($lib <function> $str)";
			
			return($cmake_str);
		}

		if (preg_match('/^HAVE_.*LIB$/', $str)) {

                        $lib = preg_replace('/^HAVE_/', '', $str);
                        $lib = preg_replace('/LIB$/', '', $str);
                        $lib = strtolower($lib);

                        $cmake_str = "CHECK_LIBRARY_EXISTS($lib <function> $str)";

			return($cmake_str);
                }

		if (preg_match('/^HAVE_.*$/', $str)) {

			$function = preg_replace('/^HAVE_/', '', $str);
			$function = strtolower($function);

			$cmake_str = "CHECK_FUNCTION_EXISTS($function $str)";

			return($cmake_str);
		}



		echo "STR NOT INFERE -> $str\n";

		return NULL;
}

function in_to_cmake($source) {

	// dirty and fast way
	$target = $source . '.cmake';
	$configure_target = $source . '.configure.cmake';

	file_put_contents($target, AUTOMATIC_STR); 
	file_put_contents($configure_target, AUTOMATIC_STR);

	$file_contents = explode("\n", file_get_contents($source));

	foreach($file_contents as $idx => $data) {

		$is_undef = preg_match('/#undef/', $data);
		if ($is_undef) {
			
			$data = str_replace('#undef ', '', $data);

			$configure_str = infere_operation($data);	
			if (!is_null($configure_str)) {
				$configure_data[] = $configure_str;
			}

			if ($data == strtoupper($data)) {
				// Constant
				$out_data = "#cmakedefine $data 1\n";
			} else {
				// var
				$out_data = "#cmakedefine $data @$data@\n";
			}	

		} else {
			$out_data = "$data\n";
		}
		//echo $out_data;
		file_put_contents($target, $out_data, FILE_APPEND);
	}

	sort($configure_data);
	foreach($configure_data as $data) { file_put_contents($configure_target, "${data}\n", FILE_APPEND); }
}


function main($argc, $argv) {

	// Check parameters
	if ($argc < 2) {
		die("Sintax error: ${argv[0]} (source.in)\n");
	}

	$source = $argv[1];

	// TODO: Check existence and syntax of source
	// Do the work
	in_to_cmake($source);

	// Exit
	echo "bye bye\n";
}

main($argc, $argv);

?>
