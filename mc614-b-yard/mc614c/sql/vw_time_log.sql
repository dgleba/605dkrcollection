



#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  pre 2020-11-16



create or replace view vw_timelog
as
select t.log_date, t.log_hours, 
		p.name as project_name, p.number as project_number , p.tech_radar_num, p.active as project_active, p.ae_lead, p. bd_lead_si_customer,
		u.email
from time_logs t 
	left join projects p  on t.project_id = p.id
	left join users u on t.user_id = u.id





#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-11-17[Nov-Tue]23-09PM 


select `t`.`log_date` AS `log_date`,`t`.`log_hours` AS `log_hours`,`p`.`name` AS `project_name`,`p`.`number` AS `project_number`,`p`.`tech_radar_num` AS `tech_radar_num`,`p`.`active` AS `project_active`,`p`.`ae_lead` AS `ae_lead`,`p`.`bd_lead_si_customer` AS `bd_lead_si_customer`,`u`.`email` AS `email` from ((`time_logs` `t` left join `projects` `p` on((`t`.`project_id` = `p`.`id`))) left join `users` `u` on((`t`.`user_id` = `u`.`id`)))


add category..

select `t`.`log_date` AS `log_date`,
`t`.`log_hours` AS `log_hours`,
`p`.`name` AS `project_name`,
`p`.`number` AS `project_number`,
p.category,
`p`.`tech_radar_num` AS `tech_radar_num`,
`p`.`active` AS `project_active`,
`p`.`ae_lead` AS `ae_lead`,
`p`.`bd_lead_si_customer` AS `bd_lead_si_customer`,
`u`.`email` AS `email` from ((`time_logs` `t` left join `projects` `p` 
   on((`t`.`project_id` = `p`.`id`))) left join  `users` `u` on((`t`.`user_id` = `u`.`id`)))



