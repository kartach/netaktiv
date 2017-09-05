<?php


defined('_JEXEC') or die;
jimport('joomla.application.component.controllerform');

/**
 * The Company Controller
 *
 */
class JHotelReservationControllerChildCategory extends JControllerForm
{
	/**
	 * Dummy method to redirect back to standard controller
	 *
	 */
	public function display($cachable = false, $urlparams = false)
	{
		$this->setRedirect(JRoute::_('index.php?option=com_jhotelreservation&view=childcategory', false));
	}

	public function add()
	{
		$app = JFactory::getApplication();
		$context = 'com_jhotelreservation.edit.childcategory';
	
		$result = parent::add();
		if ($result)
		{
			$sourceId = JRequest::getInt('sourceId');
			$this->setRedirect(JRoute::_('index.php?option=com_jhotelreservation&view=childcategory&sourceId='.$sourceId. $this->getRedirectToItemAppend(), false));
		}
	
		return $result;
	}
	
	
	/**
	 * Method to cancel an edit.
	 *
	 * @param   string  $key  The name of the primary key of the URL variable.
	 *
	 * @return  boolean  True if access level checks pass, false otherwise.

	 */
	public function cancel($key = null)
	{
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN',true));
	
		$app = JFactory::getApplication();
		$context = 'com_jhotelreservation.edit.childcategory';
		$result = parent::cancel();
	
	}
	
	/**
	 * Method to edit an existing record.
	 *
	 * @param   string  $key     The name of the primary key of the URL variable.
	 * @param   string  $urlVar  The name of the URL variable if different from the primary key
	 * (sometimes required to avoid router collisions).
	 *
	 * @return  boolean  True if access level check and checkout passes, false otherwise.
	 *
	 */
	public function edit($key = null, $urlVar = null)
	{
		$app = JFactory::getApplication();
		$result = parent::edit();
	
		return true;
	}
	
	/**
	 * save a record (and redirect to main page)
	 * @return void
	 */
	function save($key = NULL, $urlVar = NULL)
	{
		
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN',true));

		$app      = JFactory::getApplication();
		$model = $this->getModel('childcategory');
		$post = JRequest::get( 'post' );

		$data = JRequest::get( 'post' );
		$context  = 'com_jhotelreservation.edit.childcategory';
		$task     = $this->getTask();
		$recordId = JRequest::getInt('id');

		if (!$model->save($post)){
			// Save the data in the session.
			$app->setUserState('com_jhotelreservation.edit.childcategory.data', $data);
			
			// Redirect back to the edit screen.
			$this->setMessage(JText::sprintf('JLIB_APPLICATION_ERROR_SAVE_FAILED', $model->getError()), 'warning');
			$this->setRedirect(JRoute::_('index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend($recordId), false));
			
			return false;
		}
		$post["child_category_id"] = $model->getState('childcategory.id');
		$model->saveDescriptions($post);

		$this->setMessage(JText::_('LNG_CHILD_CATEGORY_SAVE_SUCCESS',true));
		
		// Redirect the user and adjust session state based on the chosen task.
		switch ($task)
		{
			case 'apply':
				// Set the row data in the session.
				$recordId = $model->getState($this->context . '.id');
				$this->holdEditId($context, $recordId);
				$app->setUserState('com_jhotelreservation.edit.childcategory.data', null);
			
				// Redirect back to the edit screen.
				$this->setRedirect(JRoute::_('index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend($recordId), false));
				break;

			default:
				// Clear the row id and data in the session.
				$this->releaseEditId($context, $recordId);
				$app->setUserState('com_jhotelreservation.edit.childcategory.data', null);
							
				// Redirect to the list screen.
				$this->setRedirect(JRoute::_('index.php?option=' . $this->option . '&view=' . $this->view_list . $this->getRedirectToListAppend(), false));
				break;
		}
	}
	
	function updateOffers()
	{
	
		$roomIds = $_POST['roomIDs'];
		$offerIds = $_POST['offerIDs'];
	
		$model = $this->getModel('roomdiscount');
		$buff =  $model->getHTMLContentOffers($roomIds,$offerIds);
			
		echo '<?xml version="1.0" encoding="utf-8" ?>';
		echo '<room_statement>';
		echo '<answer error="0"  content_records="'.$buff.'" />';
		echo '</room_statement>';
		echo '</xml>';
		exit;
	}
}
