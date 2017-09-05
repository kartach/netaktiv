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

defined('JPATH_PLATFORM') or die;

JFormHelper::loadFieldClass('list');

/**
 * Form Field class for the Joomla Platform.
 * Supports an HTML select list of categories
 *
 * @package     Joomla.Platform
 * @subpackage  Form
 * @since       11.1
 */
class JFormFieldFontface extends JFormFieldList
{
	/**
	 * The form field type.
	 *
	 * @var    string
	 * @since  11.1
	 */
	public $type = 'Category';
	
	protected function getOptions()
	{
		$options = array();
		$options[] = JHtml::_('select.option', 'arial', 'Arial');
		$options[] = JHtml::_('select.option', 'sans', 'SansSerif');
		$options[] = JHtml::_('select.option', 'serif', 'Serif');
		$options[] = JHtml::_('select.option', 'wide', 'Wide');
		$options[] = JHtml::_('select.option', 'narrow', 'Narrow');
		$options[] = JHtml::_('select.option', 'comic', 'Comic Sans MS');
		$options[] = JHtml::_('select.option', 'courier', 'Courier New');
		$options[] = JHtml::_('select.option', 'garamond', 'Garamond');
		$options[] = JHtml::_('select.option', 'georgia', 'Georgia');
		$options[] = JHtml::_('select.option', 'tahoma', 'Tahoma');
		$options[] = JHtml::_('select.option', 'verdana', 'Verdana');
		
		// Merge any additional options in the XML definition.
		$options = array_merge(parent::getOptions(), $options);
		
		return $options;
	}
}