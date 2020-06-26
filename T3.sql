create table user_role (
	role_id INTEGER generated always as identity primary key,
	name VARCHAR(100) unique not null
);

create table category (
	category_id INTEGER generated always as identity primary key,
	name VARCHAR(100) unique not null
);

create table app_user (
	user_id INTEGER generated always as identity primary key,
	username VARCHAR(100) unique not null,
	password varchar(100) not null,
	first_name VARCHAR(100) not null,
	last_name VARCHAR(100) not null,
	role_id INTEGER references user_role (role_id)
);

create table flashcard (
	flashcard_id INTEGER generated always as identity primary key,
	question VARCHAR unique not null,
	answer VARCHAR not null,
	category_id INTEGER references category (category_id)
);

create table study_set (
	study_set_id INTEGER generated always as identity primary key,
	name VARCHAR(100) unique not null,
	owner_id INTEGER references app_user (user_id)
);

create table study_set_card (
	study_set_id INTEGER references study_set (study_set_id),
	flashcard_id INTEGER references flashcard (flashcard_id),
	primary key (study_set_id, flashcard_id)
);