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

require_once(dirname(__FILE__).'/../behavior.php');
class JFormFieldJPropanel extends JFormField {
    protected $type = 'JPropanel';
    
    protected function getInput() {
    	$func = (string) $this->element['function'];
    	if(!$func) {
    		$func = 'init';
    	}
    	
    	if(method_exists($this, $func)) {
    		call_user_func_array(array($this, $func), array());
    	}
    	return null;
    }
    
    protected function init() {
    	$doc = JFactory::getDocument();
        $path = JURI::root().$this->element['path'];
        
        $doc->addScript($path.'jpropanel/depend.js');
        if(version_compare(JVERSION, '3.0', 'lt')) {
        	JHTML::_('JPROBehavior.jquery');
        	//JHTML::_('JPROBehavior.jquerychosen', '.pane-slider select');
        	JHTML::_('JPROBehavior.jquerychosen', '.form-validate select');
        	
        	$doc->addStyleSheet($path.'jpropanel/style.css');
        	$doc->addScript($path.'jpropanel/script.js');
        } else {
        	$doc->addStyleSheet($path.'jpropanel/style30.css');
        	$doc->addScript($path.'jpropanel/script30.js');
        }
        return null;
    }
    
    protected function depend() {
		$group_name = 'jform';
    	preg_match_all('/jform\\[([^\]]*)\\]/', $this->name, $matches);
		
		if(!isset($matches[1]) || empty($matches[1])){
			preg_match_all('/jproform\\[([^\]]*)\\]/', $this->name, $matches);
			$group_name = 'jproform';
		}
		
		
		$script = '';
		if(isset($matches[1]) && !empty($matches[1])) {
			foreach ($this->element->children() as $option){
				$elms = preg_replace('/\s+/', '', (string)$option[0]);
				$script .= "
					JPRODepend.inst.add('".$option['for']."', {
						val: '".$option['value']."',
						elms: '".$elms."',
						group: '".$group_name . '[' . @$matches[1][0] . ']'."'
					});";
			}
		}
		if(!empty($script)) {
			$doc = JFactory::getDocument();
			$doc->addScriptDeclaration("
			$(window).addEvent('load', function(){
				".$script."
			});");
		}
    }
}