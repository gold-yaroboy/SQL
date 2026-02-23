USE PV_521_Import;

SELECT
		direction_name				AS	N'Íàïðàâëåíèå îáó÷åíèÿ'
		,COUNT(DISTINCT group_id)	AS	N'Êîëè÷åñòâî ãðóïï'
		,COUNT(stud_id)				AS	N'Êîëè÷åñòâî ñòóäåíòîâ'
FROM	Students,Groups,Directions
WHERE	Students.[group]			=	Groups.group_id
AND		Groups.direction			=	Directions.direction_id
GROUP BY	direction_name
;

SELECT
		direction_name		AS	N'Íàïðàâëåíèå îáó÷åíèÿ'
		--,COUNT(stud_id)		AS	N'Êîëè÷åñòâî ñóäåíòîâ'
		--,COUNT(DISTINCT group_id)	AS	N'Êîëè÷åñòâî ãðóïï'
		,(SELECT COUNT(group_id) FROM Groups WHERE direction=direction_id)	AS N'Êîëè÷åñòâî ãðóïï'
		,(
			SELECT COUNT(stud_id) 
			FROM Students,Groups--,Directions 
			WHERE [group]=group_id 
			AND direction=direction_id
		 )	AS	N'Êîëè÷åñòâî ñòóäåíòîâ'
FROM	Directions
;