<?php
// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die('Restricted access');

jimport('joomla.form.helper');
JFormHelper::loadFieldClass('list');

class JFormFieldHotels extends JFormFieldList {

    protected $type = 'hotels';

    // getLabel() left out

    /**
     * Method to get the custom field options.
     * Use the query attribute to supply a query to generate the list.
     *
     * @return  array  The field option objects.
     *
     * @since   11.1
     */
    protected function getOptions()
    {
        $options = array();
        $options[] = JHtml::_('select.option', "", "All Hotels");

        // Initialize some field attributes.
        $key = "id";
        $value = "name";
        $translate = $this->element['translate'] ? (string) $this->element['translate'] : false;
        $query = ' SELECT distinct hotel_id,hotel_name FROM #__hotelreservation_hotels where is_available = 1 order by hotel_name asc';

        // Get the database object.
        $db = JFactory::getDBO();

        // Set the query and get the result list.
        $db->setQuery($query);
        $items = $db->loadObjectlist();

        // Build the field options.
        if (!empty($items))
        {
            foreach ($items as $item)
            {
                if ($translate == true)
                {
                    $options[] = JHtml::_('select.option', $item->hotel_id, $item->hotel_name);
                }
                else
                {
                    $options[] = JHtml::_('select.option', $item->hotel_id, $item->hotel_name);
                }
            }
        }

        // Merge any additional options in the XML definition.
        $options = array_merge(parent::getOptions(), $options);

        return $options;
    }
}