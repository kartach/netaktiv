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

jimport('joomla.form.formfield');

class JFormFieldJProrequest extends JFormField {
    protected $type = 'JProrequest';    
    protected function getInput() {
		$params = $this->form->getValue('params');
		//remove request param lable
		$doc = JFactory::getDocument();
		$doc->addScriptDeclaration("$(window).addEvent('load', function(){jQuery('#jform_params_jprorequest-lbl').parent().remove();});");
		$task = JRequest::getString('task', '');
		$jprorequest = strtolower(JRequest::getString('jprorequest'));
		//process
        if ($jprorequest && $task) {
			
			//load file to excute task
			require_once(dirname(dirname(dirname(__FILE__))).'/admin/jprorequest/'.$jprorequest.'.php');
            $obLevel = ob_get_level();
			if($obLevel){
				while ($obLevel > 0 ) {
					ob_end_clean();
					$obLevel --;
				}
			}else{
				ob_clean();
			}
            $obj = new $jprorequest();
			
			$data = $obj->$task($params);
			echo json_encode($data);
			
            exit;
        }
    }    
    
}