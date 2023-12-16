SELECT * 
	FROM crime_scene_report
	WHERE date = '20180115' 
	AND type = 'murder' 
	AND city = 'SQL City';

SELECT * 
	FROM person 
	WHERE (address_street_name = 'Northwestern Dr' 
	AND address_number = (SELECT MAX(address_number) 
	FROM person 
	WHERE address_street_name = 'Northwestern Dr')) 
	OR (address_street_name = 'Franklin Ave' 
	AND name LIKE '%Annabel%') 
	ORDER BY address_number DESC;

SELECT * 
	FROM interview 
	WHERE person_id = '14887' 
	OR person_id = '16371';

SELECT * 
	FROM get_fit_now_member 
	JOIN get_fit_now_check_in 
	ON get_fit_now_member.id = get_fit_now_check_in.membership_id 
	WHERE get_fit_now_member.id LIKE '48Z%' 
	AND get_fit_now_member.membership_status = 'gold'
	AND get_fit_now_check_in.check_in_date = '20180109';

SELECT * 
	FROM interview 
	WHERE person_id = '28819'
	OR person_id = '67318'

SELECT *
	FROM drivers_license as dl
	JOIN person as p on dl.id = p.license_id
	JOIN facebook_event_checkin as fb on fb.person_id = p.id
	WHERE hair_color = 'red'
	AND height >= 65
	AND height <= 67
	AND car_make = 'Tesla'
	AND car_model = 'Model S'
	AND gender = 'female'
	AND event_name = 'SQL Symphony Concert'
	GROUP BY fb.person_id HAVING COUNT (*) = 3

SELECT name
	FROM person
	WHERE id = '99716'
