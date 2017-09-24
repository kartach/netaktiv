

ALTER TABLE `qk7ce_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

ALTER TABLE `qk7ce_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

ALTER TABLE `qk7ce_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

ALTER TABLE `qk7ce_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

ALTER TABLE `qk7ce_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

ALTER TABLE `qk7ce_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

ALTER TABLE `qk7ce_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `qk7ce_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `qk7ce_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

ALTER TABLE `qk7ce_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `qk7ce_content_rating`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `qk7ce_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

ALTER TABLE `qk7ce_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

ALTER TABLE `qk7ce_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `qk7ce_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

ALTER TABLE `qk7ce_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `qk7ce_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

ALTER TABLE `qk7ce_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

ALTER TABLE `qk7ce_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

ALTER TABLE `qk7ce_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `qk7ce_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

ALTER TABLE `qk7ce_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

ALTER TABLE `qk7ce_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

ALTER TABLE `qk7ce_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

ALTER TABLE `qk7ce_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

ALTER TABLE `qk7ce_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

ALTER TABLE `qk7ce_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

ALTER TABLE `qk7ce_joomgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_owner` (`owner`);

ALTER TABLE `qk7ce_joomgallery_category_details`
  ADD PRIMARY KEY (`id`,`details_key`);

ALTER TABLE `qk7ce_joomgallery_catg`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `idx_parent_id` (`parent_id`);

ALTER TABLE `qk7ce_joomgallery_comments`
  ADD PRIMARY KEY (`cmtid`),
  ADD KEY `idx_cmtpic` (`cmtpic`);

ALTER TABLE `qk7ce_joomgallery_config`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_joomgallery_countstop`
  ADD KEY `idx_cspicid` (`cspicid`);

ALTER TABLE `qk7ce_joomgallery_image_details`
  ADD PRIMARY KEY (`id`,`details_key`);

ALTER TABLE `qk7ce_joomgallery_maintenance`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_joomgallery_nameshields`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `idx_picid` (`npicid`);

ALTER TABLE `qk7ce_joomgallery_orphans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullpath` (`fullpath`);

ALTER TABLE `qk7ce_joomgallery_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_uid` (`uuserid`);

ALTER TABLE `qk7ce_joomgallery_votes`
  ADD PRIMARY KEY (`voteid`),
  ADD KEY `idx_picid` (`picid`);

ALTER TABLE `qk7ce_keenitportfolio_portfolio`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_komento_acl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_acl_content_type` (`type`);

ALTER TABLE `qk7ce_komento_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_actions` (`type`,`comment_id`,`action_by`),
  ADD KEY `komento_actions_comment_id` (`comment_id`);

ALTER TABLE `qk7ce_komento_activities`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_komento_captcha`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_komento_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_threaded` (`component`,`cid`,`published`,`lft`,`rgt`),
  ADD KEY `komento_threaded_reverse` (`component`,`cid`,`published`,`rgt`),
  ADD KEY `komento_module_comments` (`component`,`cid`,`published`,`created`),
  ADD KEY `komento_backend` (`parent_id`,`created`);

ALTER TABLE `qk7ce_komento_hashkeys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `type` (`type`);

ALTER TABLE `qk7ce_komento_ipfilter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_ipfilter` (`component`,`ip`);

ALTER TABLE `qk7ce_komento_mailq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_mailq_status` (`status`);

ALTER TABLE `qk7ce_komento_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_subscription` (`type`,`component`,`cid`);

ALTER TABLE `qk7ce_komento_uploads`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_kunena_aliases`
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `state` (`state`),
  ADD KEY `item` (`item`),
  ADD KEY `type` (`type`);

ALTER TABLE `qk7ce_kunena_announcement`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_kunena_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesid` (`mesid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `hash` (`hash`),
  ADD KEY `filename` (`filename`),
  ADD KEY `filename_real` (`filename_real`);

ALTER TABLE `qk7ce_kunena_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `category_access` (`accesstype`,`access`),
  ADD KEY `published_pubaccess_id` (`published`,`pub_access`,`id`);

ALTER TABLE `qk7ce_kunena_configuration`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_kunena_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `public_count` (`public_count`),
  ADD KEY `total_count` (`total_count`);

ALTER TABLE `qk7ce_kunena_keywords_map`
  ADD UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `topic_user` (`topic_id`,`user_id`);

ALTER TABLE `qk7ce_kunena_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread` (`thread`),
  ADD KEY `ip` (`ip`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold_time` (`hold`,`time`),
  ADD KEY `parent_hits` (`parent`,`hits`),
  ADD KEY `catid_parent` (`catid`,`parent`);

ALTER TABLE `qk7ce_kunena_messages_text`
  ADD PRIMARY KEY (`mesid`);

ALTER TABLE `qk7ce_kunena_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threadid` (`threadid`);

ALTER TABLE `qk7ce_kunena_polls_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`);

ALTER TABLE `qk7ce_kunena_polls_users`
  ADD UNIQUE KEY `pollid` (`pollid`,`userid`);

ALTER TABLE `qk7ce_kunena_ranks`
  ADD PRIMARY KEY (`rank_id`);

ALTER TABLE `qk7ce_kunena_sessions`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `currvisit` (`currvisit`);

ALTER TABLE `qk7ce_kunena_smileys`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_kunena_thankyou`
  ADD UNIQUE KEY `postid` (`postid`,`userid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `targetuserid` (`targetuserid`);

ALTER TABLE `qk7ce_kunena_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold` (`hold`),
  ADD KEY `posts` (`posts`),
  ADD KEY `hits` (`hits`),
  ADD KEY `first_post_userid` (`first_post_userid`),
  ADD KEY `last_post_userid` (`last_post_userid`),
  ADD KEY `first_post_time` (`first_post_time`),
  ADD KEY `last_post_time` (`last_post_time`),
  ADD KEY `last_post_id` (`last_post_id`);

ALTER TABLE `qk7ce_kunena_users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `uhits` (`uhits`),
  ADD KEY `banned` (`banned`),
  ADD KEY `moderator` (`moderator`);

ALTER TABLE `qk7ce_kunena_users_banned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `ip` (`ip`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `created_time` (`created_time`);

ALTER TABLE `qk7ce_kunena_user_categories`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `category_subscribed` (`category_id`,`subscribed`),
  ADD KEY `role` (`role`);

ALTER TABLE `qk7ce_kunena_user_read`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `category_user_id` (`category_id`,`user_id`),
  ADD KEY `time` (`time`);

ALTER TABLE `qk7ce_kunena_user_topics`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `owner` (`owner`),
  ADD KEY `favorite` (`favorite`),
  ADD KEY `subscribed` (`subscribed`);

ALTER TABLE `qk7ce_kunena_version`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

ALTER TABLE `qk7ce_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100));

ALTER TABLE `qk7ce_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

ALTER TABLE `qk7ce_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

ALTER TABLE `qk7ce_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

ALTER TABLE `qk7ce_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `qk7ce_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

ALTER TABLE `qk7ce_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `qk7ce_overrider`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_plg_slogin_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_prov` (`user_id`,`provider`),
  ADD KEY `user_curr` (`user_id`,`current_profile`),
  ADD KEY `user` (`user_id`);

ALTER TABLE `qk7ce_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

ALTER TABLE `qk7ce_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_link_modifed` (`modified_date`),
  ADD KEY `idx_old_url` (`old_url`(100));

ALTER TABLE `qk7ce_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

ALTER TABLE `qk7ce_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

ALTER TABLE `qk7ce_slogin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slogin_id` (`slogin_id`);

ALTER TABLE `qk7ce_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

ALTER TABLE `qk7ce_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

ALTER TABLE `qk7ce_tz_portfolio_plus_addon_data`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `qk7ce_tz_portfolio_plus_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `qk7ce_tz_portfolio_plus_content_category_map`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_content_featured_map`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_content_rating`
  ADD KEY `extravote_idx` (`content_id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_extensions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_fieldgroups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_fields`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_field_content_map`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_field_fieldgroup_map`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_tags`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_tag_content_map`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_tz_portfolio_plus_templates`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `qk7ce_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

ALTER TABLE `qk7ce_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_content_type` (`core_type_alias`(100));

ALTER TABLE `qk7ce_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

ALTER TABLE `qk7ce_updates`
  ADD PRIMARY KEY (`update_id`);

ALTER TABLE `qk7ce_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

ALTER TABLE `qk7ce_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

ALTER TABLE `qk7ce_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

ALTER TABLE `qk7ce_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

ALTER TABLE `qk7ce_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `qk7ce_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

ALTER TABLE `qk7ce_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

ALTER TABLE `qk7ce_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

ALTER TABLE `qk7ce_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

ALTER TABLE `qk7ce_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);


ALTER TABLE `qk7ce_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=860;
ALTER TABLE `qk7ce_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
ALTER TABLE `qk7ce_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `qk7ce_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
ALTER TABLE `qk7ce_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
ALTER TABLE `qk7ce_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10184;
ALTER TABLE `qk7ce_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `qk7ce_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
ALTER TABLE `qk7ce_joomgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
ALTER TABLE `qk7ce_joomgallery_catg`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
ALTER TABLE `qk7ce_joomgallery_comments`
  MODIFY `cmtid` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_joomgallery_config`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `qk7ce_joomgallery_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_joomgallery_nameshields`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_joomgallery_orphans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_joomgallery_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_joomgallery_votes`
  MODIFY `voteid` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_keenitportfolio_portfolio`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `qk7ce_komento_acl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
ALTER TABLE `qk7ce_komento_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_komento_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
ALTER TABLE `qk7ce_komento_captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_komento_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
ALTER TABLE `qk7ce_komento_hashkeys`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_komento_ipfilter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_komento_mailq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_komento_subscription`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_komento_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_kunena_announcement`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_kunena_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_kunena_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `qk7ce_kunena_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_kunena_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
ALTER TABLE `qk7ce_kunena_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_kunena_polls_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_kunena_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
ALTER TABLE `qk7ce_kunena_smileys`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
ALTER TABLE `qk7ce_kunena_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `qk7ce_kunena_users_banned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_kunena_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `qk7ce_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `qk7ce_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;
ALTER TABLE `qk7ce_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
ALTER TABLE `qk7ce_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
ALTER TABLE `qk7ce_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;
ALTER TABLE `qk7ce_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2445;
ALTER TABLE `qk7ce_plg_slogin_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
ALTER TABLE `qk7ce_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_slogin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `qk7ce_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
ALTER TABLE `qk7ce_tz_portfolio_plus_addon_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `qk7ce_tz_portfolio_plus_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_content_category_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_extensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
ALTER TABLE `qk7ce_tz_portfolio_plus_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_field_content_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_field_fieldgroup_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_tag_content_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_tz_portfolio_plus_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `qk7ce_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
ALTER TABLE `qk7ce_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
ALTER TABLE `qk7ce_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
ALTER TABLE `qk7ce_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=849;
ALTER TABLE `qk7ce_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `qk7ce_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
ALTER TABLE `qk7ce_weblinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;