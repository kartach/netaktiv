/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */

jQuery( document ).ready(function() {
	jQuery(".default-menu-icon").click(function(){
		jQuery(".default-menu-icon").toggleClass("open");
	});	
});

jQuery( document ).ready(function() {
jQuery('.responsive-map')
	.click(function(){
	jQuery(this).find('iframe').addClass('clicked')})
	.mouseleave(function(){
	jQuery(this).find('iframe').removeClass('clicked')}
	);
});