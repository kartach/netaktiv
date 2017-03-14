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
defined('_JEXEC') or die('Restricted access');
 
$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$basepath = JURI::root(true).'/modules/' . $module->module . '/asset/';

$doc->addStyleSheet($basepath.'style.css');
//load override css
$templatepath = 'templates/'.$app->getTemplate().'/css/'.$module->module.'.css';
if(file_exists(JPATH_SITE . '/' . $templatepath)) {
	$doc->addStyleSheet(JURI::root(true).'/'.$templatepath);
}

//Load the AJAX API
$doc->addScript('https://www.google.com/jsapi');
// Load the Visualization API and the corechart package.
$doc->addScriptDeclaration('google.load("visualization", "1", {packages: ["corechart"]});');
$doc->addScriptDeclaration('google.load("visualization", "1", {packages: ["geochart"]});');
//script
//$doc->addScript($basepath.'script.js');