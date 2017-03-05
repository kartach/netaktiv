<?php
/**
 * @package     Joomla.Platform
 * @subpackage  Document
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */

defined('JPATH_PLATFORM') or die;

/**
 * JDocumentJson class, provides an easy interface to parse and display JSON output
 *
 * @see    http://www.json.org/
 * @since  11.1
 */
class JDocumentJson extends JDocument
{
	/**
	 * Document name
	 *
	 * @var    string
	 * @since  11.1
	 */
	protected $_name = 'joomla';

	/**
	 * Class constructor
	 *
	 * @param   array  $options  Associative array of options
	 *
	 * @since  11.1
	 */
	public function __construct($options = array())
	{
		parent::__construct($options);

		// Set mime type
		if (isset($_SERVER['HTTP_ACCEPT'])
			&& strpos($_SERVER['HTTP_ACCEPT'], 'application/json') === false
			&& strpos($_SERVER['HTTP_ACCEPT'], 'text/html') !== false)
		{
			// Internet Explorer < 10
			$this->_mime = 'text/plain';
		}
		else
		{
			$this->_mime = 'application/json';
		}

		// Set document type
		$this->_type = 'json';
	}

	/**
	 * Render the document.
	 *
	 * @param   boolean  $cache   If true, cache the output
	 * @param   array    $params  Associative array of attributes
	 *
	 * @return  The rendered data
	 *
	 * @since  11.1
	 */
	public function render($cache = false, $params = array())
	{
		$app = JFactory::getApplication();

		$app->allowCache(false);

		if ($this->_mime == 'application/json')
		{
			// Browser other than Internet Explorer < 10
			$app->setHeader('Content-Disposition', 'attachment; filename="' . $this->getName() . '.json"', true);
		}

		parent::render();

		return $this->getBuffer();
	}

	/**
	 * Returns the document name
	 *
	 * @return  string
	 *
	 * @since  11.1
	 */
	public function getName()
	{
		return $this->_name;
	}

	/**
	 * Sets the document name
	 *
	 * @param   string  $name  Document name
	 *
	 * @return  JDocumentJSON instance of $this to allow chaining
	 *
	 * @since   11.1
	 */
	public function setName($name = 'joomla')
	{
		$this->_name = $name;

		return $this;
	}
}
