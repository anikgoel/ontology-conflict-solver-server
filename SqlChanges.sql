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