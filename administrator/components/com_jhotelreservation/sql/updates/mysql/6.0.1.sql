
CREATE TABLE IF NOT EXISTS `#__hotelreservation_viewed_properties` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL,
  `hotel_id` INT NULL,
  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

ALTER TABLE `#__hotelreservation_hotels`
  ADD COLUMN `availability_contact` TINYINT(1) NOT NULL DEFAULT '0' AFTER `hotel_selling_points`;

ALTER TABLE `#__hotelreservation_emails_default`
  CHANGE COLUMN `email_default_type` `email_default_type` ENUM('Reservation Email', 'Cancelation Email', 'Review Email', 'Invoice Email', 'Bookings List', 'Client Invoice Email','Availability Request Email') NOT NULL DEFAULT 'Reservation Email' ;


INSERT INTO `#__hotelreservation_emails_default` VALUES (7,'Room/Offer Availability request','Availability Request Email','Availability Request Email',0x3C646976207374796C653D226D617267696E3A203070783B2077696474683A20313030253B206261636B67726F756E642D636F6C6F723A20236634663366343B20666F6E742D66616D696C793A2048656C7665746963612C417269616C2C73616E732D73657269663B20666F6E742D73697A653A20313270783B223E0A3C7461626C6520626F726465723D2230222077696474683D2231303025222063656C6C73706163696E673D2230222063656C6C70616464696E673D223022206267636F6C6F723D2223463446334634223E0A3C74626F64793E0A3C74723E0A3C7464207374796C653D2270616464696E673A20313570783B223E3C63656E7465723E0A3C7461626C652077696474683D22383025222063656C6C73706163696E673D2230222063656C6C70616464696E673D22302220616C69676E3D2263656E74657222206267636F6C6F723D2223666666666666223E0A3C74626F64793E0A3C74723E0A3C746420616C69676E3D226C656674223E0A3C646976207374796C653D22626F726465723A20736F6C69642031707820236439643964393B2077696474683A20313030253B223E0A3C7461626C65207374796C653D226C696E652D6865696768743A20312E363B20666F6E742D73697A653A20313270783B20666F6E742D66616D696C793A2048656C7665746963612C417269616C2C73616E732D73657269663B20626F726465723A20736F6C69642031707820236666666666663B20636F6C6F723A20233434343B2220626F726465723D2230222077696474683D2231303025222063656C6C73706163696E673D2230222063656C6C70616464696E673D223022206267636F6C6F723D2223666666666666223E0A3C74626F64793E0A3C74723E0A3C7464207374796C653D22636F6C6F723A20236666666666663B2220636F6C7370616E3D2232222076616C69676E3D22626F74746F6D22206865696768743D223330223EA03C2F74643E0A3C2F74723E0A3C74723E0A3C7464207374796C653D226C696E652D6865696768743A20333270783B2070616464696E672D6C6566743A20333070783B222076616C69676E3D22626173656C696E65223E5B636F6D70616E795F6C6F676F5D3C2F74643E0A3C2F74723E0A3C2F74626F64793E0A3C2F7461626C653E0A3C7461626C65207374796C653D226D617267696E2D746F703A20313570783B20636F6C6F723A20233434343B2077696474683A20313030253B2070616464696E673A20313570783B206C696E652D6865696768743A20312E363B20666F6E742D73697A653A20313270783B20666F6E742D66616D696C793A20417269616C2C73616E732D73657269663B2220626F726465723D2230222063656C6C73706163696E673D2230222063656C6C70616464696E673D223022206267636F6C6F723D2223666666666666223E0A3C74626F64793E0A3C74723E0A3C7464207374796C653D22626F726465722D746F703A20736F6C69642031707820236439643964393B20626F726465722D626F74746F6D3A20736F6C69642031707820236439643964393B2077696474683A20313030253B2070616464696E673A20313070783B2220636F6C7370616E3D2232223E0A3C646976207374796C653D2270616464696E673A203135707820303B2077696474683A20313030253B223E4869205B636F6D70616E795F6E616D655D3C2F6469763E0A3C646976207374796C653D2270616464696E673A203135707820303B2077696474683A20313030253B223EA0417661696C6162696C697479205265717565737420666F7220796F75722073746179206174206F757220686F74656C2E203C6272202F3E3C6272202F3E205B726571756573745F666F726D5D3C2F6469763E0A3C2F74643E0A3C2F74723E0A3C2F74626F64793E0A3C2F7461626C653E0A3C7461626C65207374796C653D226C696E652D6865696768743A20312E353B20666F6E742D73697A653A20313270783B20666F6E742D66616D696C793A20417269616C2C73616E732D73657269663B206D617267696E2D72696768743A20333070783B2077696474683A206175746F3B206D617267696E2D6C6566743A20333070783B2220626F726465723D2230222063656C6C73706163696E673D2230222063656C6C70616464696E673D223022206267636F6C6F723D2223666666666666223E0A3C74626F64793E0A3C7472207374796C653D22666F6E742D73697A653A20313170783B20636F6C6F723A20233939393939393B222076616C69676E3D226D6964646C65223E0A3C74643E5B736F6369616C5F73686172696E675D3C2F74643E0A3C74643EA03C2F74643E0A3C2F74723E0A3C74723E0A3C7464207374796C653D22636F6C6F723A20236666666666663B2220636F6C7370616E3D223222206865696768743D223135223EA03C2F74643E0A3C2F74723E0A3C2F74626F64793E0A3C2F7461626C653E0A3C2F6469763E0A3C2F74643E0A3C2F74723E0A3C2F74626F64793E0A3C2F7461626C653E0A3C2F63656E7465723E3C2F74643E0A3C2F74723E0A3C2F74626F64793E0A3C2F7461626C653E0A3C2F6469763E);

ALTER TABLE `#__hotelreservation_applicationsettings`
  ADD COLUMN `delimiter` CHAR(2) NOT NULL DEFAULT ';'  AFTER `google_map_key` ;



ALTER TABLE `#__hotelreservation_hotels`
  ADD COLUMN `remarks` TEXT NULL AFTER `availability_contact`;



ALTER TABLE `#__hotelreservation_offers_rates`
  ADD COLUMN `extra_pers_price_1` DECIMAL(12,2) NOT NULL AFTER `extra_pers_price`,
  ADD COLUMN `extra_pers_price_2` DECIMAL(12,2) NOT NULL AFTER `extra_pers_price_1`,
  ADD COLUMN `extra_pers_price_3` DECIMAL(12,2) NOT NULL AFTER `extra_pers_price_2`,
  ADD COLUMN `extra_pers_price_4` DECIMAL(12,2) NOT NULL AFTER `extra_pers_price_3`,
  ADD COLUMN `extra_pers_price_5` DECIMAL(12,2) NOT NULL AFTER `extra_pers_price_4`,
  ADD COLUMN `extra_pers_price_6` DECIMAL(12,2) NOT NULL AFTER `extra_pers_price_5`,
  ADD COLUMN `extra_pers_price_7` DECIMAL(12,2) NOT NULL AFTER `extra_pers_price_6`;

UPDATE `#__hotelreservation_offers_rates` SET extra_pers_price_1=extra_pers_price,extra_pers_price_2=extra_pers_price,
extra_pers_price_3=extra_pers_price,extra_pers_price_4=extra_pers_price,extra_pers_price_5=extra_pers_price,
extra_pers_price_6=extra_pers_price,extra_pers_price_7=extra_pers_price;
  
ALTER TABLE `#__hotelreservation_offers`
  ADD COLUMN `included_info` TINYINT(1) NOT NULL DEFAULT '0' AFTER `last_minute`;

ALTER TABLE `#__hotelreservation_confirmations_extra_options`
  ADD COLUMN `extra_commission` TINYINT(4) NULL DEFAULT NULL AFTER `extra_option_multiplier`,
  ADD COLUMN `extra_option_cost` FLOAT(18,2) NOT NULL DEFAULT '0.00' AFTER `extra_commission`;

ALTER TABLE `#__hotelreservation_extra_options`
  ADD COLUMN `extra_option_cost` FLOAT(18,2) NOT NULL DEFAULT '0.00' AFTER `multiplier`;

ALTER TABLE `#__hotelreservation_hotels`
  ADD COLUMN `social_sharing` TINYINT(1) NOT NULL DEFAULT '1' AFTER `remarks`;

ALTER TABLE `#__hotelreservation_points_of_interest`
  ADD COLUMN `activity_radius` FLOAT NULL DEFAULT NULL AFTER `poi_zipcode`;
  
ALTER TABLE `#__hotelreservation_payment_processors`
  ADD COLUMN `accessGroup` TINYINT(1) NOT NULL DEFAULT '0' AFTER `displayfront`;
