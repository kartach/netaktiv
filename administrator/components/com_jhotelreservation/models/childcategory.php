<?php

defined('_JEXEC') or die;
jimport('joomla.application.component.modeladmin');
/**
 * Company Model for Companies.
 *
 */
class JHotelReservationModelChildCategory extends JModelAdmin
{
	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since   1.6
	 */
	protected $text_prefix = 'COM_JHotelReservation_COMPANY_TYPE';

	/**
	 * Model context string.
	 *
	 * @var		string
	 */
	protected $_context		= 'com_jhotelreservation.childcategory';

	/**
	 * Method to test whether a record can be deleted.
	 *
	 * @param   object	A record object.
	 *
	 * @return  boolean  True if allowed to delete the record. Defaults to the permission set in the component.
	 */
	protected function canDelete($record)
	{
		return true;
	}

	/**
	 * Method to test whether a record can be deleted.
	 *
	 * @param   object	A record object.
	 *
	 * @return  boolean  True if allowed to change the state of the record. Defaults to the permission set in the component.
	 */
	protected function canEditState($record)
	{
		return true;
	}

	/**
	 * Returns a Table object, always creating it
	 *
	 * @param   type	The table type to instantiate
	 * @param   string	A prefix for the table class name. Optional.
	 * @param   array  Configuration array for model. Optional.
	 * @return  JTable	A database object
	*/
	public function getTable($type = 'ChildCategory', $prefix = 'JTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @since   1.6
	 */
	protected function populateState()
	{
		$app = JFactory::getApplication('administrator');

		if (!($hotelId = $app->getUserState('com_jhotelreservation.childcategories.filter.hotel_id'))) {
			$hotelId = JRequest::getInt('hotel_id', '0');
		}
		$this->setState('childcategory.hotel_id', $hotelId);
		
		// Load the User state.
		$id = JRequest::getInt('sourceId');
		$this->setState('source.id', $id);
		
		// Load the User state.
		$id = JRequest::getInt('id');
		$this->setState('childcategory.id', $id);
	}

	/**
	 * Method to get a menu item.
	 *
	 * @param   integer	The id of the menu item to get.
	 *
	 * @return  mixed  Menu item data object on success, false on failure.
	 */
	public function &getItem($itemId = null)
	{
		$itemId = (!empty($itemId)) ? $itemId : (int) $this->getState('childcategory.id');
		$intialId = $itemId;
		if($this->getState('source.id'))
			$itemId = $this->getState('source.id');

		$false	= false;

		// Get a menu item row instance.
		$table = $this->getTable();

		// Attempt to load the row.
		$return = $table->load($itemId);

		// Check for a table object error.
		if ($return === false && $table->getError())
		{
			$this->setError($table->getError());
			return $false;
		}

		$properties = $table->getProperties(1);
		$value = JArrayHelper::toObject($properties, 'JObject');
		$value->id = $intialId;
		
		return $value;
	}
	
	function getRooms(){
		$query = " SELECT
					r.room_id,
					r.room_name	,
					IF( ISNULL(eo.id), 0, 1) AS is_sel
					FROM #__hotelreservation_rooms r
					LEFT JOIN
					(
					SELECT * FROM #__hotelreservation_extra_options WHERE id = ".$this->getState('childcategory.id'). "
					) eo ON FIND_IN_SET(r.room_id, eo.room_ids)
					WHERE r.is_available = 1 AND r.hotel_id  = ".$this->getState('childcategory.hotel_id')."
		";
		// dmp($query);
		$itemRooms = $this->_getList( $query );
		return $itemRooms;
	}

	function getOffers($selectedOffers){
		$query = "select  o.offer_id, o.offer_name
					from #__hotelreservation_rooms r
					inner join #__hotelreservation_offers_rooms 			hor 	ON hor.room_id	 	= r.room_id
					inner join #__hotelreservation_offers		 			o 		ON hor.offer_id 	= o.offer_id
					where FIND_IN_SET(r.room_id,
					(
						SELECT room_ids FROM #__hotelreservation_extra_options WHERE id = ".$this->getState('childcategory.id')."
					))
				";
		//dmp($query);
		//dmp($selectedOffers);
		$offers = $this->_getList( $query );
		//dmp($offers);
		//dmp($selectedOffers);
		if(isset($selectedOffers)){
			$selectedOffers = explode(",",$selectedOffers);
			foreach($offers as &$offer){
				$offer->is_sel = 0;
				if(in_array($offer->offer_id, $selectedOffers)){
					$offer->is_sel = 1;
				}
			}
		}
		
		return $offers;
	}

	/**
	 * Method to get the menu item form.
	 *
	 * @param   array  $data		Data for the form.
	 * @param   boolean	$loadData	True if the form is to load its own data (default case), false if not.
	 * @return  JForm	A JForm object on success, false on failure
	 * @since   1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		exit;
		// The folder and element vars are passed when saving the form.
		if (empty($data))
		{
			$item		= $this->getItem();
			// The type should already be set.
		}
		// Get the form.
		$form = $this->loadForm('com_jhotelreservation.childcategory', 'item', array('control' => 'jform', 'load_data' => $loadData), true);
		if (empty($form))
		{
			return false;
		}
		
		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return  mixed  The data for the form.
	 * @since   1.6
	 */
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_jhotelreservation.edit.childcategory.data', array());

		if (empty($data))
		{
			$data = $this->getItem();
		}

		return $data;
	}


	/**
	 * Method to save the form data.
	 *
	 * @param   array  The form data.
	 * @return  boolean  True on success.
	 */
	public function save($data)
	{
		$id	= (!empty($data['id'])) ? $data['id'] : (int) $this->getState('childcategory.id');
		$isNew = true;
		$data['name'] = $this->setDefaultName($data);

		// Get a row instance.
		$table = $this->getTable();

		// Load the row if saving an existing item.
		if ($id > 0)
		{
			$table->load($id);
			$isNew = false;
		}

		// Bind the data.
		if (!$table->bind($data))
		{
			$this->setError($table->getError());
			return false;
		}

		// Check the data.
		if (!$table->check())
		{
			$this->setError($table->getError());
			return false;
		}

		// Store the data.
		if (!$table->store())
		{
			$this->setError($table->getError());
			return false;
		}

		$this->setState('childcategory.id', $table->id);

		// Clean the cache
		$this->cleanCache();

		return true;
	}

	
	
	/**
	 * Method to delete groups.
	 *
	 * @param   array  An array of item ids.
	 * @return  boolean  Returns true on success, false on failure.
	 */
	public function delete(&$itemIds)
	{
		// Sanitize the ids.
		$itemIds = (array) $itemIds;
		JArrayHelper::toInteger($itemIds);
	
		// Get a group row instance.
		$table = $this->getTable();
	
		// Iterate the items to delete each one.
		foreach ($itemIds as $itemId)
		{
	
			if (!$table->delete($itemId))
			{
				$this->setError($table->getError());
				return false;
			}
		}
	
		// Clean the cache
		$this->cleanCache();
	
		return true;
	}

	
	function saveDescriptions($data){
		try{
			$path = JLanguage::getLanguagePath(JPATH_COMPONENT_ADMINISTRATOR);
			$dirs = JFolder::folders( $path );
			sort($dirs);
			$modelHotelTranslations = new JHotelReservationLanguageTranslations();
			$modelHotelTranslations->deleteTranslationsForObject(CHILDREN_CATEGORY_TRANSLATION,$data['child_category_id']);
			foreach( $dirs  as $_lng ){
				if(isset($data['name_'.$_lng]) && strlen($data['name_'.$_lng])>0){
					$childrenCategoryName = JRequest::getVar( 'name_'.$_lng, '', 'post', 'string');
					$modelHotelTranslations->saveTranslation(CHILDREN_CATEGORY_TRANSLATION,$data['child_category_id'],$_lng,$childrenCategoryName);
				}
			}
		}
		catch(Exception $e){
			print_r($e);
			exit;
			JError::raiseWarning( 500,$e->getMessage());
		}		
	}

    /**
     * @param $post
     * @return mixed
     */
    function setDefaultName($post)
    {
        $languageTag = JRequest::getVar('_lang');
        $dirs = JHotelUtil::languageTabs();

        if (!empty($post['name_' . $languageTag])) {
            $post['name'] = $post['name_' . $languageTag];

            return $post['name'];
        } else {
            foreach ($dirs as $_lng) {
                if (!empty($post['name_' . $_lng])) {
                    $post['name_' . $languageTag] = $post['name_' . $_lng];
                    return $post['name_' . $languageTag];
                }
            }
        }
    }

	
}
