select * from app_user where app_user.role_id = 3;

insert into app_user (username, password, first_name, last_name, role_id) values ('james808080', 'secretpw', 'James', 'Walls', '4');

select study_set.*, app_user.* from study_set left join app_user on study_set.study_set_id = app_user.user_id where study_set_id = 4;