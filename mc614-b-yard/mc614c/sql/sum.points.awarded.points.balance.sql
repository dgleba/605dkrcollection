

-- u.clocknum, min(u.name),



drop view if exists vw_subqry_points_awarded;

create view vw_subqry_points_awarded
as
select user_id, sum(points_awarded ) as sum_points_awarded
from cilists c
group by user_id;

-- _____________



drop view if exists vw_subqry_points_spent;

create view vw_subqry_points_spent
as
select user_id,  sum(points_spent ) as sum_points_spent
from points p
group by user_id;



create  view   vw_points_balance
as
select 
    pa.user_id, u.clocknum, u.name,u.first_name, u.last_name, u.email, pa.sum_points_awarded, ps.sum_points_spent,
      (pa.sum_points_awarded - ps.sum_points_spent ) as points_balance
from  vw_subqry_points_awarded pa left join vw_subqry_points_spent ps
        on ps.user_id=pa.user_id
          left join users u on u.id = pa.user_id



#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-11-06[Nov-Fri]11-51AM 


user_id	clocknum	name	first_name	last_name	sum_points_awarded	sum_points_spent	points_balance


        <%= f.search_field :name_or_last_name_or_first_name_or_clocknum_cont, class: 'form-control' %>
 


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-11-06[Nov-Fri]11-25AM 



-- This is wrong.

create view vw_points_spent
as
select user_id,  sum(points_spent ), min(u.clocknum) as clock, min(u.name) as name, min(u.first_name) as firstname, min(u.last_name) as lastname
from points p
left join users u  on user_id = p.id
group by user_id



create view vw_points_awarded
as
select user_id, sum(points_awarded ), 
min(u.clocknum) as clock, min(u.name) as name, min(u.first_name) as firstname,  min(u.last_name) as lastname
from cilists c
left join users u  on user_id = c.id
group by user_id



