<?php
/**
 *  Alejandro Leiva <gloob@php.net>
 *  CMake configure in file.
 *
 *  $Id$
 */

// dirty and fast way

file_put_contents('output.in.cmake', "/* AUTOMATICALLY GENERATED !! */\n");

$file_contents = explode("\n", file_get_contents('input.in'));

foreach($file_contents as $idx => $data) {

	$is_undef = preg_match('/#undef/', $data);
	if ($is_undef) {
		$data = str_replace('#undef ', '', $data);
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
	echo $out_data;
	file_put_contents('output.in.cmake', $out_data, FILE_APPEND);
}


?>
