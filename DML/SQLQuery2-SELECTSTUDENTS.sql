USE PV_521_Import;

SELECT
		[Студент]	=	FORMATMESSAGE(N'%s %s %s',last_name,first_name,middle_name),
		Students.birth_date		AS	N'Дата рождения',
		Groups.group_name		AS	N'Группа',
		Directions.direction_name	AS	N'Направление обучения'
FROM	Students, Groups, Directions
WHERE	[group]		=	group_id
AND		direction	=	direction_id
;