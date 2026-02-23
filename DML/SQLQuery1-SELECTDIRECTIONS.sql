USE PV_521_Import;

SELECT * FROM Groups,Directions WHERE Groups.direction = Directions.direction_id;