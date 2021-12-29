

=================================================
cisi 543 ci system



docker-compose  exec web rails generate scaffold Benefit \
	name sort_order:integer  active_status:integer comment 
		-f

docker-compose  exec web rails generate scaffold feasibility \
	name sort_order:integer  active_status:integer comment 
		-f

docker-compose  exec web rails generate scaffold WasteType \
	name sort_order:integer  active_status:integer comment 
		-f

docker-compose  exec web rails generate scaffold ImplementationStatus  \
	name sort_order:integer  active_status:integer comment 
		-f


docker-compose  exec web rails generate scaffold Point item_claimed comment:text \
user:references points_spent:integer sort_order:integer  active_status:integer  
 -f


docker-compose  exec web rails generate scaffold Cilist  \
 cell_or_location  waste_type:references benefit:references current_state:text improvement_suggestion:text \
  implementation_status:references  feasibility:references user:references  \
 sort_order:integer active_status:integer  
 -f




docker-compose  exec web rails generate scaffold PointsBalance  \
      user_id:integer clocknum name first_name last_name sum_points_awarded:integer	\
      sum_points_spent:integer points_balance:integer  \
      --no-migration -f

search:
        <%= f.search_field :name_or_last_name_or_first_name_or_clocknum_cont, class: 'form-control' %>
 


==

backoffice migration..

docker-compose  exec web rails g migration add_fields_to_cilist points_awarded:integer responsible annual_savings cost_to_implement comment:text



==

eg:
rails g migration add_question_notefields_to_questions question_note:text question_whatlookfor:text question_if_no:text



~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~



docker-compose  -f docker-compose.yml  exec web rails destroy scaffold Point

docker-compose  -f docker-compose.yml  exec web rails destroy scaffold Cilist




=================================================



docker-compose  -f docker-compose.yml  exec web rails generate scaffold project  name:string  number:string \
      tech_radar_num:string active:string priority:string \
      ae_lead:string bd_lead_si_customer:string ae_objective:text  sort_order:integer active_status:integer -f 
     
      #--no-migration


docker-compose  -f docker-compose.yml  exec web rails generate scaffold TimeLog  project:references log_date:date \
                   log_hours:float   \
                   detail:text user:references -f



docker-compose  -f docker-compose.yml  exec web rails destroy scaffold FavoriteProject

docker-compose  -f docker-compose.yml  exec web rails generate scaffold FavoriteProject project:references user:references fave_num:integer sort_order:integer \
                    active_status:integer  -f




docker-compose  -f docker-compose.yml  exec web rails destroy scaffold ProjectfavlookupVw


docker-compose  -f docker-compose.yml  exec web rails generate scaffold ProjectfavlookupVw \
                        name:string  number:string   active:string fave_num:integer user_id:integer --no-migration



_____________


docker-compose  -f docker-compose.yml  exec web rails destroy scaffold project

docker-compose  -f docker-compose.yml  exec web rails destroy scaffold TimeLog


docker-compose  -f docker-compose.yml  exec web rails destroy scaffold UserProject

docker-compose  -f docker-compose.yml  exec web rails destroy scaffold TimeTrack

make mi



_____________

tools.


insert into projects select *  from copy_projects 



bash into web and install schema_to_scaffold then run scaffold inside.


noworks.. 	docker-compose  -f docker-compose.yml  exec web rails gem install schema_to_scaffold



=================================================

Notes:


\\corp-fs01\CORP-PM\AE-PPD\Departmental\Project Tracking\AE RFQ Tracker 2Sep2020.xlsx



rails sort by associated model attributes

rails sort association by other model

rails sort association by another association

https://stackoverflow.com/questions/19616611/rails-order-by-association-field

https://www.xspdf.com/resolution/50901875.html

rails sort association by third model attributes


https://stackoverflow.com/questions/51320190/how-to-left-outer-joins-with-conditions




=================================================




=================================================


old


docker-compose  -f docker-compose.yml  exec web rails generate scaffold Project name:string fave_num:integer sort_order:integer \
                    active_status:integer  -f



