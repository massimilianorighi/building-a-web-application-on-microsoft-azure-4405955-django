PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2024-05-05 22:08:52.422272');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2024-05-05 22:08:52.440615');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2024-05-05 22:08:52.451737');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2024-05-05 22:08:52.462469');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2024-05-05 22:08:52.470807');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2024-05-05 22:08:52.508566');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2024-05-05 22:08:52.521468');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2024-05-05 22:08:52.531817');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2024-05-05 22:08:52.539256');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2024-05-05 22:08:52.551954');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2024-05-05 22:08:52.554168');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2024-05-05 22:08:52.562642');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2024-05-05 22:08:52.574881');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2024-05-05 22:08:52.588783');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2024-05-05 22:08:52.600300');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2024-05-05 22:08:52.607005');
INSERT INTO django_migrations VALUES(17,'auth','0012_alter_user_first_name_max_length','2024-05-05 22:08:52.620348');
INSERT INTO django_migrations VALUES(18,'sessions','0001_initial','2024-05-05 22:08:52.624995');
INSERT INTO django_migrations VALUES(19,'wpm','0001_initial','2024-05-05 22:08:52.628639');
INSERT INTO django_migrations VALUES(20,'wpm','0002_pets_age_pets_weight','2024-05-05 22:08:52.638353');
INSERT INTO django_migrations VALUES(21,'wpm','0003_breed_owner_pet_species_delete_pets_owner_pets_and_more','2024-05-05 22:08:52.656729');
INSERT INTO django_migrations VALUES(22,'wpm','0004_remove_pet_species','2024-05-05 22:08:52.664357');
INSERT INTO django_migrations VALUES(23,'wpm','0005_pet_owner','2024-05-05 22:08:52.674875');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'wpm','breed');
INSERT INTO django_content_type VALUES(8,'wpm','owner');
INSERT INTO django_content_type VALUES(9,'wpm','pet');
INSERT INTO django_content_type VALUES(10,'wpm','species');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_breed','Can add breed');
INSERT INTO auth_permission VALUES(26,7,'change_breed','Can change breed');
INSERT INTO auth_permission VALUES(27,7,'delete_breed','Can delete breed');
INSERT INTO auth_permission VALUES(28,7,'view_breed','Can view breed');
INSERT INTO auth_permission VALUES(29,8,'add_owner','Can add owner');
INSERT INTO auth_permission VALUES(30,8,'change_owner','Can change owner');
INSERT INTO auth_permission VALUES(31,8,'delete_owner','Can delete owner');
INSERT INTO auth_permission VALUES(32,8,'view_owner','Can view owner');
INSERT INTO auth_permission VALUES(33,9,'add_pet','Can add pet');
INSERT INTO auth_permission VALUES(34,9,'change_pet','Can change pet');
INSERT INTO auth_permission VALUES(35,9,'delete_pet','Can delete pet');
INSERT INTO auth_permission VALUES(36,9,'view_pet','Can view pet');
INSERT INTO auth_permission VALUES(37,10,'add_species','Can add species');
INSERT INTO auth_permission VALUES(38,10,'change_species','Can change species');
INSERT INTO auth_permission VALUES(39,10,'delete_species','Can delete species');
INSERT INTO auth_permission VALUES(40,10,'view_species','Can view species');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$720000$bPJxrKu4n1Hsb5JANwwdTI$1/cZH0xfunhTKIihLhAZp2mQq+ACljXjPSlzJ7jLmqo=','2024-05-05 22:21:16.225969',1,'admin','','admin@test.com',1,1,'2024-05-05 22:21:02.682212','');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('dnbe1y0wkpdhx677aguu75e2zjpona88','.eJxVjDkOwjAUBe_iGll24pWSnjNYf7FxADlSnFSIu0OkFNC-mXkvkWBba9p6XtLE4iy0OP1uCPTIbQd8h3abJc1tXSaUuyIP2uV15vy8HO7fQYVev7XV3iB4QFeYTAmkOERbzBjRKQoDEkdrgJ1WuYAeM0LUyhszEBZSJN4f_Ss4sw:1s3kEO:BMewb0R6osTobu5xXgo8b56dEhnW56WYaEmJBvO1zS0','2024-05-19 22:21:16.228817');
CREATE TABLE IF NOT EXISTS "wpm_owner" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL);
INSERT INTO wpm_owner VALUES(1,'Rodrigo');
INSERT INTO wpm_owner VALUES(2,'Leonardo');
INSERT INTO wpm_owner VALUES(3,'Alicia');
INSERT INTO wpm_owner VALUES(4,'Jon');
INSERT INTO wpm_owner VALUES(5,'Elmer');
INSERT INTO wpm_owner VALUES(6,'Sam');
INSERT INTO wpm_owner VALUES(7,'Jessica');
CREATE TABLE IF NOT EXISTS "wpm_pet" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "age" integer NULL, "weight" decimal NULL, "photo_url" varchar(200) NULL, "breed_id" bigint NOT NULL REFERENCES "wpm_breed" ("id") DEFERRABLE INITIALLY DEFERRED, "owner_id" bigint NULL REFERENCES "wpm_owner" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO wpm_pet VALUES(1,'Gianni',10,19,'images/gianni.jpg',1,NULL);
INSERT INTO wpm_pet VALUES(2,'Nina',8,24,'images/nina.jpg',1,NULL);
INSERT INTO wpm_pet VALUES(3,'Cati',8,33.5,'images/cati.jpg',2,NULL);
INSERT INTO wpm_pet VALUES(4,'Cheshire',20,12,NULL,3,NULL);
INSERT INTO wpm_pet VALUES(5,'Garfield',20,12,NULL,4,NULL);
INSERT INTO wpm_pet VALUES(6,'Bugs',40,25,NULL,5,NULL);
INSERT INTO wpm_pet VALUES(7,'Roger',35,31,NULL,6,NULL);
CREATE TABLE IF NOT EXISTS "wpm_species" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL);
INSERT INTO wpm_species VALUES(1,'Dog');
INSERT INTO wpm_species VALUES(2,'Cat');
INSERT INTO wpm_species VALUES(3,'Rabbit');
CREATE TABLE IF NOT EXISTS "wpm_owner_pets" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "owner_id" bigint NOT NULL REFERENCES "wpm_owner" ("id") DEFERRABLE INITIALLY DEFERRED, "pet_id" bigint NOT NULL REFERENCES "wpm_pet" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO wpm_owner_pets VALUES(1,1,1);
INSERT INTO wpm_owner_pets VALUES(2,2,1);
INSERT INTO wpm_owner_pets VALUES(3,1,2);
INSERT INTO wpm_owner_pets VALUES(4,2,2);
INSERT INTO wpm_owner_pets VALUES(5,1,3);
INSERT INTO wpm_owner_pets VALUES(6,2,3);
INSERT INTO wpm_owner_pets VALUES(7,3,4);
INSERT INTO wpm_owner_pets VALUES(8,4,5);
INSERT INTO wpm_owner_pets VALUES(9,6,5);
INSERT INTO wpm_owner_pets VALUES(10,6,6);
INSERT INTO wpm_owner_pets VALUES(11,7,7);
CREATE TABLE IF NOT EXISTS "wpm_breed" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "ideal_max_weight" decimal NOT NULL, "species_id" bigint NOT NULL REFERENCES "wpm_species" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO wpm_breed VALUES(1,'Beagle',0,1);
INSERT INTO wpm_breed VALUES(2,'Staffordshire Terrier',0,1);
INSERT INTO wpm_breed VALUES(3,'British Shorthair',0,2);
INSERT INTO wpm_breed VALUES(4,'Mixed',0,2);
INSERT INTO wpm_breed VALUES(5,'Gray',0,3);
INSERT INTO wpm_breed VALUES(6,'American White',0,3);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',23);
INSERT INTO sqlite_sequence VALUES('django_admin_log',0);
INSERT INTO sqlite_sequence VALUES('django_content_type',10);
INSERT INTO sqlite_sequence VALUES('auth_permission',40);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',1);
INSERT INTO sqlite_sequence VALUES('wpm_breed',6);
INSERT INTO sqlite_sequence VALUES('wpm_species',3);
INSERT INTO sqlite_sequence VALUES('wpm_pet',7);
INSERT INTO sqlite_sequence VALUES('wpm_owner',7);
INSERT INTO sqlite_sequence VALUES('wpm_owner_pets',11);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "wpm_pet_breed_id_d8e77746" ON "wpm_pet" ("breed_id");
CREATE UNIQUE INDEX "wpm_owner_pets_owner_id_pet_id_d8a1a3b7_uniq" ON "wpm_owner_pets" ("owner_id", "pet_id");
CREATE INDEX "wpm_owner_pets_owner_id_45bcd8a3" ON "wpm_owner_pets" ("owner_id");
CREATE INDEX "wpm_owner_pets_pet_id_d116377b" ON "wpm_owner_pets" ("pet_id");
CREATE INDEX "wpm_breed_species_id_7179d112" ON "wpm_breed" ("species_id");
CREATE INDEX "wpm_pet_owner_id_f76feece" ON "wpm_pet" ("owner_id");
COMMIT;
