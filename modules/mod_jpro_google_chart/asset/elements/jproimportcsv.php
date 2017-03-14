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

class JFormFieldJProimportcsv extends JFormField
{
	/**
	 * The form field type.
	 *
	 * @var    string
	 * @since  11.1
	 */
	protected $type = 'jproimportcsv';

	/**
	 * The number of rows in textarea.
	 *
	 * @var    mixed
	 * @since  3.2
	 */
	protected $rows;

	/**
	 * The number of columns in textarea.
	 *
	 * @var    mixed
	 * @since  3.2
	 */
	protected $columns;

	/**
	 * Method to get certain otherwise inaccessible properties from the form field object.
	 *
	 * @param   string  $name  The property name for which to the the value.
	 *
	 * @return  mixed  The property value or null.
	 *
	 * @since   3.2
	 */
	public function __get($name)
	{
		switch ($name)
		{
			case 'rows':
			case 'columns':
				return $this->$name;
		}

		return parent::__get($name);
	}

	/**
	 * Method to set certain otherwise inaccessible properties of the form field object.
	 *
	 * @param   string  $name   The property name for which to the the value.
	 * @param   mixed   $value  The value of the property.
	 *
	 * @return  void
	 *
	 * @since   3.2
	 */
	public function __set($name, $value)
	{
		switch ($name)
		{
			case 'rows':
			case 'columns':
				$this->name = (int) $value;
				break;

			default:
				parent::__set($name, $value);
		}
	}

	/**
	 * Method to attach a JForm object to the field.
	 *
	 * @param   SimpleXMLElement  $element  The SimpleXMLElement object representing the <field /> tag for the form field object.
	 * @param   mixed             $value    The form field value to validate.
	 * @param   string            $group    The field name group control value. This acts as as an array container for the field.
	 *                                      For example if the field has name="foo" and the group value is set to "bar" then the
	 *                                      full field name would end up being "bar[foo]".
	 *
	 * @return  boolean  True on success.
	 *
	 * @see     JFormField::setup()
	 * @since   3.2
	 */
	public function setup(SimpleXMLElement $element, $value, $group = null)
	{
		$return = parent::setup($element, $value, $group);

		if ($return)
		{
			$this->rows    = isset($this->element['rows']) ? (int) $this->element['rows'] : false;
			$this->columns = isset($this->element['cols']) ? (int) $this->element['cols'] : false;
		}

		return $return;
	}

	/**
	 * Method to get the textarea field input markup.
	 * Use the rows and columns attributes to specify the dimensions of the area.
	 *
	 * @return  string  The field input markup.
	 *
	 * @since   11.1
	 */
	protected function getInput()
	{
        $document = JFactory::getDocument();
		// Translate placeholder text
		$hint = $this->translateHint ? JText::_($this->hint) : $this->hint;

		// Initialize some field attributes.
		$class        = !empty($this->class) ? ' class="' . $this->class . '"' : '';
		$disabled     = $this->disabled ? ' disabled' : '';
		$readonly     = $this->readonly ? ' readonly' : '';
		$columns      = $this->columns ? ' cols="' . $this->columns . '"' : '';
		$rows         = $this->rows ? ' rows="' . $this->rows . '"' : '';
		$required     = $this->required ? ' required aria-required="true"' : '';
		$hint         = $hint ? ' placeholder="' . $hint . '"' : '';
		$autocomplete = !$this->autocomplete ? ' autocomplete="off"' : ' autocomplete="' . $this->autocomplete . '"';
		$autocomplete = $autocomplete == ' autocomplete="on"' ? '' : $autocomplete;
		$autofocus    = $this->autofocus ? ' autofocus' : '';
		$spellcheck   = $this->spellcheck ? '' : ' spellcheck="false"';

		// Initialize JavaScript field attributes.
		$onchange = $this->onchange ? ' onchange="' . $this->onchange . '"' : '';
		$onclick = $this->onclick ? ' onclick="' . $this->onclick . '"' : '';

        $path = JURI::root().$this->element['path'];
		// Including fallback code for HTML5 non supported browsers.
		JHtml::_('behavior.framework');
		Jhtml::_('behavior.modal');
		JHtml::_('script', 'system/html5fallback.js', false, true);
        $document->addStyleSheet(JURI::root().'modules/mod_jpro_google_chart/asset/elements/jproimportcsv/style.css');


		$js = "function jproImportForm(){
			var form = jproBuildForm();
			jQuery('#jpro-import-csv-layout').append(form);
			SqueezeBox.open($('jpro-import-csv'),{
                handler:'adopt',
                size:{
                    x:800,
                    y:375
                }
            });
		}

		function jproBuildForm(){
			var html = '';
			html += '<div id=\"jpro-import-csv\">';
				html += '<fieldset class=\"panelform\" >';
					html += '<legend>".JText::_("MOD_JPRO_GOOGLE_CHART_IMPORT_FROM_CSV")."</legend>';
					html += '<form id=\"jpro-import-csv-form\" action=\"'+location.href+'&jprorequest=jproimportcsv&task=import\" method=\"POST\" enctype=\"multipart/form-data\" >';
						html += '<div class=\"jpro-import-csv-input\">';
						html += '<input type=\"file\" name=\"file\" value=\"\" id=\"csv_file\" />';
						html += '</div>';
						html += '<div id=\"jpro-import-csv-progress\">';
							html += '<div id=\"jpro-import-csv-bar\"></div>';
							html += '<div id=\"jpro-import-csv-percent\">0%</div>';
						html += '</div>';
						html += '<br />';
						html += '<input type=\"submit\" onclick=\"jproImportCsvFormSubmit(this.form)\" value=\"".JText::_("MOD_JPRO_GOOGLE_CHART_LOADING_CSV_BTN")."\" />';
					html += '</form>';
					html += '<div id=\"jpro-import-csv-result\">';
						html += '<fieldset>';
							html += '<legend>".JText::_("MOD_JPRO_GOOGLE_CHART_DATA_LOADED")."</legend>';
							html += '<span id=\"jpro-import-csv-error-msg\" ></span>';
							html += '<textarea cols=\"25\" rows=\"10\" id=\"jpro-import-csv-data\"></textarea>';
							html += '<input type=\"button\" onclick=\"jproImportCsv()\" value=\"".JText::_("MOD_JPRO_GOOGLE_CHART_IMPORT_BTN")."\" />';
						html += '</fieldset>';
					html += '</div>';
				html += '</fieldset>';
			html += '</div>';

			return html;
		}

	    function jproImportCsvFormSubmit(form){
		    var bar = $('jpro-import-csv-bar')
			var percent = $('jpro-import-csv-percent')
			var result = $('jpro-import-csv-data')
			var percentValue = '0%';

			var fileInput = $('csv_file');
			var form = $('jpro-import-csv-form');

			form.addEventListener('submit', function(evt) {
			evt.preventDefault();

			// Ajax upload
			var file = fileInput.files[0];

			var fd = new FormData();
			fd.append('file', file);

			var xhr = new XMLHttpRequest();
			xhr.open('POST', location.href+'&jprorequest=jproimportcsv&task=import', true);

			xhr.upload.onprogress = function(e) {
			  if (e.lengthComputable) {
				var percentValue = (e.loaded / e.total) * 100 + '%';
				percent.innerHTML  = percentValue;
				bar.setAttribute('style', 'width: ' + percentValue);
			  }
			};

			xhr.onload = function() {
			  if (this.status == 200) {
				var response = JSON.parse(this.response);
				if(response.status==1){
					$('jpro-import-csv-error-msg').innerHTML = response.message;
					result.innerHTML = response.data;
					percent.innerHTML  = '100%';
					bar.setAttribute('style', 'width: 100%;' );
				}else{
					$('jpro-import-csv-error-msg').innerHTML = response.message;
					result.innerHTML = '';
				}
			  };
			};

			xhr.send(fd);

		  }, false);
		}

		function jproImportCsv(){
			var data = $('jpro-import-csv-data').value;
			if(!data){
			    $('jpro-import-csv-error-msg').innerHTML = 'Data null';
			    return;
			}
			$('jform_params_data_input').value = data;
			SqueezeBox.close($('jpro-import-csv'));
		}
		";

		$document->addScriptDeclaration($js);
		
		
		$html = '';

		$html .= '<textarea name="' . $this->name . '" id="' . $this->id . '"' . $columns . $rows . $class
			. $hint . $disabled . $readonly . $onchange . $onclick . $required . $autocomplete . $autofocus . $spellcheck . ' >'
			. htmlspecialchars($this->value, ENT_COMPAT, 'UTF-8') . '</textarea>';
		$html .= '<br />';
		$html .= '<button type="button" class="img-btn" onclick="jproImportForm(); return false;">'.JText::_("MOD_JPRO_GOOGLE_CHART_IMPORT_CSV_BTN").'</button>';
		$html .= '<div id="jpro-import-csv-layout" style="display: none;"></div>';
		return $html;
	}
}
