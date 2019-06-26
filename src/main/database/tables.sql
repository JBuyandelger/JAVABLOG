create table category(
	id integer unsigned auto_increment primary key,
	name varchar(255),
	description varchar(255),
	ordering integer unsigned
);

create table blog(
	blog_id integer unsigned auto_increment,
	name varchar(255) not null,
	content text,
	created datetime not null,
	category_id integer unsigned,
	primary key(blog_id),
	key(name),
	key(created),
	foreign key (category_id) references category(id)	
);
create table kategor(
	id integer unsigned auto_increment primary key,
	name varchar(255),
	description varchar(255),
	ordering integer unsigned
);
create table menu(
	id integer unsigned auto_increment primary key,
	name varchar(255),
	link varchar(255),
	target varchar(255),
	ordering integer unsigned
);
INSERT INTO menu (name, link, target, ordering)
VALUES ("Second","www.google.com","_blank",1)