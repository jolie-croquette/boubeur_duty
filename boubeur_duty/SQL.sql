

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES

	('mechanic', 'Mecano', 0),
	('offmechanic', 'Mecano en pause', 0);



INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES

	(1, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
	(2, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
	(3, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
	(4, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
	(5, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
	(6, 'offmechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
	(7, 'offmechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
	(8, 'offmechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
	(9, 'offmechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
	(10, 'offmechanic', 4, 'boss', 'Boss', 0, '{}', '{}');

