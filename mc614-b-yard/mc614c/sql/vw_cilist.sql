




#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2021-04-11[Apr-Sun]22-11PM 




create or replace view vw_cilist
as
select c.id as ci_num,cell_or_location,improvement_suggestion,c.created_at,points_awarded,responsible, 
	i.name as implementation_status, concat( lpad(i.sort_order,3,0) ,i.name) as status_sort,
	u.name, u.first_name, u.last_name, b.name as benefit
from cilists c 
	left join implementation_statuses i  on c.implementation_status_id = i.id
	left join users u on c.user_id = u.id
	left join benefits b on c.benefit_id = b.id





#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2021-04-11[Apr-Sun]22-11PM 





