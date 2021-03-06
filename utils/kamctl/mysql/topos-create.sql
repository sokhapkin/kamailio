CREATE TABLE `topos_d` (
    `id` INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `rectime` DATETIME NOT NULL,
    `s_method` VARCHAR(64) DEFAULT '' NOT NULL,
    `s_cseq` VARCHAR(64) DEFAULT '' NOT NULL,
    `a_callid` VARCHAR(255) DEFAULT '' NOT NULL,
    `a_uuid` VARCHAR(255) DEFAULT '' NOT NULL,
    `b_uuid` VARCHAR(255) DEFAULT '' NOT NULL,
    `a_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `b_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `as_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `bs_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `a_tag` VARCHAR(255) DEFAULT '' NOT NULL,
    `b_tag` VARCHAR(255) DEFAULT '' NOT NULL,
    `a_rr` MEDIUMTEXT DEFAULT '' NOT NULL,
    `b_rr` MEDIUMTEXT DEFAULT '' NOT NULL,
    `s_rr` MEDIUMTEXT DEFAULT '' NOT NULL,
    `iflags` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
    `a_uri` VARCHAR(128) DEFAULT '' NOT NULL,
    `b_uri` VARCHAR(128) DEFAULT '' NOT NULL,
    `r_uri` VARCHAR(128) DEFAULT '' NOT NULL,
    `a_srcaddr` VARCHAR(128) DEFAULT '' NOT NULL,
    `b_srcaddr` VARCHAR(128) DEFAULT '' NOT NULL,
    `a_socket` VARCHAR(128) DEFAULT '' NOT NULL,
    `b_socket` VARCHAR(128) DEFAULT '' NOT NULL
);

CREATE INDEX rectime_idx ON topos_d (`rectime`);
CREATE INDEX a_callid_idx ON topos_d (`a_callid`);

INSERT INTO version (table_name, table_version) values ('topos_d','1');

CREATE TABLE `topos_t` (
    `id` INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `rectime` DATETIME NOT NULL,
    `s_method` VARCHAR(64) DEFAULT '' NOT NULL,
    `s_cseq` VARCHAR(64) DEFAULT '' NOT NULL,
    `a_callid` VARCHAR(255) DEFAULT '' NOT NULL,
    `a_uuid` VARCHAR(255) DEFAULT '' NOT NULL,
    `b_uuid` VARCHAR(255) DEFAULT '' NOT NULL,
    `direction` INT DEFAULT 0 NOT NULL,
    `x_via` MEDIUMTEXT DEFAULT '' NOT NULL,
    `x_vbranch` VARCHAR(255) DEFAULT '' NOT NULL,
    `x_rr` MEDIUMTEXT DEFAULT '' NOT NULL,
    `y_rr` MEDIUMTEXT DEFAULT '' NOT NULL,
    `s_rr` MEDIUMTEXT DEFAULT '' NOT NULL,
    `x_uri` VARCHAR(128) DEFAULT '' NOT NULL,
    `a_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `b_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `as_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `bs_contact` VARCHAR(128) DEFAULT '' NOT NULL,
    `x_tag` VARCHAR(255) DEFAULT '' NOT NULL,
    `a_tag` VARCHAR(255) DEFAULT '' NOT NULL,
    `b_tag` VARCHAR(255) DEFAULT '' NOT NULL,
    `a_srcaddr` VARCHAR(128) DEFAULT '' NOT NULL,
    `b_srcaddr` VARCHAR(128) DEFAULT '' NOT NULL,
    `a_socket` VARCHAR(128) DEFAULT '' NOT NULL,
    `b_socket` VARCHAR(128) DEFAULT '' NOT NULL
);

CREATE INDEX rectime_idx ON topos_t (`rectime`);
CREATE INDEX a_callid_idx ON topos_t (`a_callid`);

INSERT INTO version (table_name, table_version) values ('topos_t','1');

