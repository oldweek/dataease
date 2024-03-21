-- ----------------------------
-- Table structure for panel_link_ticket
-- ----------------------------
DROP TABLE IF EXISTS `panel_link_ticket`;
CREATE TABLE `panel_link_ticket`
(
    `id`     bigint       NOT NULL AUTO_INCREMENT,
    `uuid`   varchar(255) NOT NULL,
    `ticket` varchar(255) NOT NULL,
    `exp`    bigint       DEFAULT NULL,
    `args`   varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;

ALTER TABLE `panel_link_mapping`
    ADD COLUMN `require_ticket` tinyint(1) NOT NULL DEFAULT 0 AFTER `uuid`;