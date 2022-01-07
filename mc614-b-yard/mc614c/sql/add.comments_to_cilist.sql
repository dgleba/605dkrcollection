
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-11-11[Nov-Wed]22-31PM 



ALTER TABLE `cilists`
ADD `internal_note` text COLLATE 'latin1_swedish_ci' NULL,
ADD `note_to_originator` text COLLATE 'latin1_swedish_ci' NULL AFTER `internal_note`;


