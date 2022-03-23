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