SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wvp_cloud_record
-- ----------------------------
DROP TABLE IF EXISTS `wvp_cloud_record`;
CREATE TABLE `wvp_cloud_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` bigint(20) DEFAULT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `media_server_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collect` tinyint(1) DEFAULT '0',
  `file_size` bigint(20) DEFAULT NULL,
  `time_len` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_stream_push_app_stream_path` (`app`,`stream`,`file_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_cloud_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_device
-- ----------------------------
DROP TABLE IF EXISTS `wvp_device`;
CREATE TABLE `wvp_device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firmware` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_mode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_line` tinyint(1) DEFAULT '0',
  `register_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keepalive_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `expires` int(11) DEFAULT NULL,
  `subscribe_cycle_for_catalog` int(11) DEFAULT '0',
  `subscribe_cycle_for_mobile_position` int(11) DEFAULT '0',
  `mobile_position_submission_interval` int(11) DEFAULT '5',
  `subscribe_cycle_for_alarm` int(11) DEFAULT '0',
  `host_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charset` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssrc_check` tinyint(1) DEFAULT '0',
  `geo_coord_sys` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_server_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdp_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `as_message_channel` tinyint(1) DEFAULT '0',
  `keepalive_interval_time` int(11) DEFAULT NULL,
  `broadcast_push_after_ack` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_device_device` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_device
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_device_alarm
-- ----------------------------
DROP TABLE IF EXISTS `wvp_device_alarm`;
CREATE TABLE `wvp_device_alarm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alarm_priority` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alarm_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alarm_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alarm_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `alarm_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_device_alarm
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_device_channel
-- ----------------------------
DROP TABLE IF EXISTS `wvp_device_channel`;
CREATE TABLE `wvp_device_channel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacture` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civil_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safety_way` int(11) DEFAULT NULL,
  `register_way` int(11) DEFAULT NULL,
  `cert_num` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certifiable` int(11) DEFAULT NULL,
  `err_code` int(11) DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secrecy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptz_type` int(11) DEFAULT NULL,
  `custom_ptz_type` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `longitude` double DEFAULT NULL,
  `custom_longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `custom_latitude` double DEFAULT NULL,
  `stream_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parental` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_audio` tinyint(1) DEFAULT '0',
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_count` int(11) DEFAULT NULL,
  `longitude_gcj02` double DEFAULT NULL,
  `latitude_gcj02` double DEFAULT NULL,
  `longitude_wgs84` double DEFAULT NULL,
  `latitude_wgs84` double DEFAULT NULL,
  `business_group_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gps_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_identification` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_wvp_device_channel_unique_device_channel` (`device_id`,`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_device_channel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_device_mobile_position
-- ----------------------------
DROP TABLE IF EXISTS `wvp_device_mobile_position`;
CREATE TABLE `wvp_device_mobile_position` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `altitude` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `direction` double DEFAULT NULL,
  `report_source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude_gcj02` double DEFAULT NULL,
  `latitude_gcj02` double DEFAULT NULL,
  `longitude_wgs84` double DEFAULT NULL,
  `latitude_wgs84` double DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_device_mobile_position
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_gb_stream
-- ----------------------------
DROP TABLE IF EXISTS `wvp_gb_stream`;
CREATE TABLE `wvp_gb_stream` (
  `gb_stream_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gb_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `stream_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_server_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gb_stream_id`),
  UNIQUE KEY `gb_stream_id` (`gb_stream_id`),
  UNIQUE KEY `uk_gb_stream_unique_gb_id` (`gb_id`),
  UNIQUE KEY `uk_gb_stream_unique_app_stream` (`app`,`stream`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_gb_stream
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_log
-- ----------------------------
DROP TABLE IF EXISTS `wvp_log`;
CREATE TABLE `wvp_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timing` bigint(20) DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_media_server
-- ----------------------------
DROP TABLE IF EXISTS `wvp_media_server`;
CREATE TABLE `wvp_media_server` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hook_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdp_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_port` int(11) DEFAULT NULL,
  `http_ssl_port` int(11) DEFAULT NULL,
  `rtmp_port` int(11) DEFAULT NULL,
  `rtmp_ssl_port` int(11) DEFAULT NULL,
  `rtp_proxy_port` int(11) DEFAULT NULL,
  `rtsp_port` int(11) DEFAULT NULL,
  `rtsp_ssl_port` int(11) DEFAULT NULL,
  `flv_port` int(11) DEFAULT NULL,
  `flv_ssl_port` int(11) DEFAULT NULL,
  `ws_flv_port` int(11) DEFAULT NULL,
  `ws_flv_ssl_port` int(11) DEFAULT NULL,
  `auto_config` tinyint(1) DEFAULT '0',
  `secret` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'zlm',
  `rtp_enable` tinyint(1) DEFAULT '0',
  `rtp_port_range` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_rtp_port_range` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_assist_port` int(11) DEFAULT NULL,
  `default_server` tinyint(1) DEFAULT '0',
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hook_alive_interval` int(11) DEFAULT NULL,
  `record_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_day` int(11) DEFAULT '7',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_media_server_unique_ip_http_port` (`ip`,`http_port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_media_server
-- ----------------------------
BEGIN;
INSERT INTO `wvp_media_server` (`id`, `ip`, `hook_ip`, `sdp_ip`, `stream_ip`, `http_port`, `http_ssl_port`, `rtmp_port`, `rtmp_ssl_port`, `rtp_proxy_port`, `rtsp_port`, `rtsp_ssl_port`, `flv_port`, `flv_ssl_port`, `ws_flv_port`, `ws_flv_ssl_port`, `auto_config`, `secret`, `type`, `rtp_enable`, `rtp_port_range`, `send_rtp_port_range`, `record_assist_port`, `default_server`, `create_time`, `update_time`, `hook_alive_interval`, `record_path`, `record_day`) VALUES ('zlmediakit-local', '192.168.2.134', '192.168.2.134', '192.168.2.134', '192.168.2.134', 9092, 1443, 0, 0, 0, 0, 0, 9092, 1443, 9092, 1443, 1, '10000', 'zlm', 1, '50000,50300', '50000,50300', 18081, 1, '2024-05-18 22:40:39', '2024-05-18 23:29:02', 10, '', 7);
COMMIT;

-- ----------------------------
-- Table structure for wvp_platform
-- ----------------------------
DROP TABLE IF EXISTS `wvp_platform`;
CREATE TABLE `wvp_platform` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_gb_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_gb_domain` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_port` int(11) DEFAULT NULL,
  `device_gb_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_port` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keep_timeout` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `character_set` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptz` tinyint(1) DEFAULT '0',
  `rtcp` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `start_offline_push` tinyint(1) DEFAULT '0',
  `administrative_division` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_group` int(11) DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `as_message_channel` tinyint(1) DEFAULT '0',
  `auto_push_channel` tinyint(1) DEFAULT '0',
  `send_stream_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_platform_unique_server_gb_id` (`server_gb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_platform
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_platform_catalog
-- ----------------------------
DROP TABLE IF EXISTS `wvp_platform_catalog`;
CREATE TABLE `wvp_platform_catalog` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civil_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_group_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `uk_platform_catalog_id_platform_id` (`id`,`platform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_platform_catalog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_platform_gb_channel
-- ----------------------------
DROP TABLE IF EXISTS `wvp_platform_gb_channel`;
CREATE TABLE `wvp_platform_gb_channel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `platform_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_platform_gb_channel_platform_id_catalog_id_device_channel_id` (`platform_id`,`catalog_id`,`device_channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_platform_gb_channel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_platform_gb_stream
-- ----------------------------
DROP TABLE IF EXISTS `wvp_platform_gb_stream`;
CREATE TABLE `wvp_platform_gb_stream` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `platform_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gb_stream_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_platform_gb_stream_platform_id_catalog_id_gb_stream_id` (`platform_id`,`catalog_id`,`gb_stream_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_platform_gb_stream
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_resources_tree
-- ----------------------------
DROP TABLE IF EXISTS `wvp_resources_tree`;
CREATE TABLE `wvp_resources_tree` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `is_catalog` tinyint(1) DEFAULT '1',
  `device_channel_id` int(11) DEFAULT NULL,
  `gb_stream_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_resources_tree
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_stream_proxy
-- ----------------------------
DROP TABLE IF EXISTS `wvp_stream_proxy`;
CREATE TABLE `wvp_stream_proxy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dst_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout_ms` int(11) DEFAULT NULL,
  `ffmpeg_cmd_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtp_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_server_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_audio` tinyint(1) DEFAULT '0',
  `enable_mp4` tinyint(1) DEFAULT '0',
  `enable` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `enable_remove_none_reader` tinyint(1) DEFAULT '0',
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_disable_none_reader` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_stream_proxy_app_stream` (`app`,`stream`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_stream_proxy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_stream_push
-- ----------------------------
DROP TABLE IF EXISTS `wvp_stream_push`;
CREATE TABLE `wvp_stream_push` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reader_count` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_type` int(11) DEFAULT NULL,
  `origin_type_str` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alive_second` int(11) DEFAULT NULL,
  `media_server_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_ing` tinyint(1) DEFAULT '0',
  `self` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_stream_push_app_stream` (`app`,`stream`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_stream_push
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_user
-- ----------------------------
DROP TABLE IF EXISTS `wvp_user`;
CREATE TABLE `wvp_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `uk_user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_user
-- ----------------------------
BEGIN;
INSERT INTO `wvp_user` (`id`, `username`, `password`, `role_id`, `create_time`, `update_time`, `push_key`) VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2021-04-13 14:14:57', '2021-04-13 14:14:57', '3e80d1762a324d5b0ff636e0bd16f1e3');
COMMIT;

-- ----------------------------
-- Table structure for wvp_user_api_key
-- ----------------------------
DROP TABLE IF EXISTS `wvp_user_api_key`;
CREATE TABLE `wvp_user_api_key` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` text COLLATE utf8mb4_unicode_ci,
  `expired_at` bigint(20) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(1) DEFAULT '1',
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_user_api_key
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wvp_user_role
-- ----------------------------
DROP TABLE IF EXISTS `wvp_user_role`;
CREATE TABLE `wvp_user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authority` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wvp_user_role
-- ----------------------------
BEGIN;
INSERT INTO `wvp_user_role` (`id`, `name`, `authority`, `create_time`, `update_time`) VALUES (1, 'admin', '0', '2021-04-13 14:14:57', '2021-04-13 14:14:57');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;



