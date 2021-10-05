Hibernate: create table hibernate_sequence (next_val bigint) engine=MyISAM
Hibernate: insert into hibernate_sequence values ( 1 )
create table Classe (id integer not null, name varchar(255), primary key (id)) engine=MyISAM
Hibernate: create table Student (id integer not null, name varchar(255), classe_id integer, primary key (id)) engine=MyISAM
Hibernate: create table Subject (id integer not null, name varchar(255), primary key (id)) engine=MyISAM
Hibernate: create table Teacher (id integer not null, name varchar(255), primary key (id)) engine=MyISAM
Hibernate: create table TeachingSubject (id integer not null, subject_id integer, teacher_id integer, classe_Id integer, primary key (id)) engine=MyISAM
Hibernate: alter table Student add constraint FKa4wnrw6dh2wflqpyq0d3nvyf7 foreign key (classe_id) references Classe (id)
Hibernate: alter table TeachingSubject add constraint FKbfe866e499ui0pjydhirhhub6 foreign key (subject_id) references Subject (id)
Hibernate: alter table TeachingSubject add constraint FKcpo7nctev88gpfj6cb4hqu0gl foreign key (teacher_id) references Teacher (id)
Hibernate: alter table TeachingSubject add constraint FK4gcdeyqsuk0a0u0bklf3blso8 foreign key (classe_Id) references Classe (id)