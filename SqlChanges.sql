CREATE TABLE `disputedsolution` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `expertID` int(11) NOT NULL,
  `termID` int(11) NOT NULL,
  `newTerm` text NULL,
  `newDefinition` text NULL,
  `superclass` text NULL,
  `exampleSentence` text NULL,
  `taxa` text NULL,
  `comment` text NULL,
  `createdAt` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (`expertID`) REFERENCES `expert` (`expertId`) ON DELETE CASCADE,
  FOREIGN KEY (`termID`) REFERENCES `confusingterm` (`termId`) ON DELETE CASCADE
) ENGINE='InnoDB';

ALTER TABLE `disputedsolution`
ADD `type` tinyint NOT NULL DEFAULT '1' COMMENT '1-quality, 2-structure' AFTER `comment`;

ALTER TABLE `disputedsolution`
ADD `newOrExisting` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-new, 2-existing' AFTER `type`;

ALTER TABLE `confusingterm`
ADD `createdAt` datetime NULL;

ALTER TABLE `addtermsolution`
ADD `createdAt` datetime NULL ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `addtermsynonyms`
ADD `createdAt` datetime NULL ON UPDATE CURRENT_TIMESTAMP;

CREATE TABLE `resolutions` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `termId` int(11) NOT NULL,
  `url` text NOT NULL,
  `data` text NOT NULL,
  `response` text NOT NULL,
  `createdAt` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (`termId`) REFERENCES `confusingterm` (`termId`)
) ENGINE='InnoDB';

CREATE TABLE `classes` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `type` int NOT NULL COMMENT 'quality = 0, structure = 1',
  `data` varchar(255) NOT NULL,
  `created_at` timestamp NULL
);

ALTER TABLE `classes`
CHANGE `data` `data` longtext COLLATE 'latin1_swedish_ci' NOT NULL AFTER `type`;

ALTER TABLE `addtermsolution`
CHANGE `createdAt` `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `addtermsolution`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `addtermsynonyms`
CHANGE `createdAt` `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `addtermsynonyms`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `author`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `author`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `categorysolution`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `categorysolution`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `classes`
CHANGE `created_at` `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `classes`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `confusingterm`
CHANGE `createdAt` `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `confusingterm`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `declinedterm`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;;

ALTER TABLE `declinedterm`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `definition`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `definition`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `disputedsolution`
CHANGE `createdAt` `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `disputedsolution`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `exactcases`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `exactcases`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `exactcasesolution`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `exactcasesolution`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `expert`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `expert`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `j_confusingterm_option`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `j_confusingterm_option`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `option_`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `option_`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `resolutions`
CHANGE `createdAt` `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `resolutions`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `sentence`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `sentence`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `synonymsolution`
ADD `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `synonymsolution`
ADD `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `option_`
CHANGE `definition` `definition` text COLLATE 'latin1_swedish_ci' NULL AFTER `option_`;

ALTER TABLE `confusingterm`
CHANGE `term` `term` varchar(255) COLLATE 'latin1_swedish_ci' NULL AFTER `IRI`;