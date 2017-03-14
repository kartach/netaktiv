<?php
/**
 # ------------------------------------------------------------------------
 * JPRO GOOGLE CHART
 # ------------------------------------------------------------------------
 * @package      mod_jpro_google_chart
 * @version      1.0
 * @created      August 2015
 * @author       Joomla Pro
 * @email        admin@joomla-pro.org
 * @websites     http://joomla-pro.org
 * @copyright    Copyright (C) 2015 Joomla Pro. All rights reserved.
 * @license      GNU General Public License version 2, or later
 # ------------------------------------------------------------------------
**/

defined('_JEXEC') or die( 'Restricted access' );

class jproimportcsv{   
    public function import(){
		$return = array('status'=>0, 'data'=>'', 'message'=>JText::_('MOD_JPRO_GOOGLE_CHART_ERROR'));
		$ext = @JFile::getExt($_FILES['file']['name']);
		
		if(strtolower($ext) != 'csv'){
			$return['message'] = JText::_('MOD_JPRO_GOOGLE_CHART_FILE_TYPE_INVALID');
			return $return;
		}
		if ($_FILES['file']['error'] > 0) {
			$retrun['message'] = $_FILES['file']['error'];
		}
		else {
			$return['status'] = 1;
			$return['data'] = trim(file_get_contents($_FILES["file"]["tmp_name"]));
			$return['message'] = JText::sprintf('MOD_JPRO_GOOGLE_CHART_IMPORT_CSV_DONE', $_FILES["file"]["name"], $_FILES["file"]["type"], $_FILES["file"]["size"] / 1024);
		}
		return $return;
	}
}