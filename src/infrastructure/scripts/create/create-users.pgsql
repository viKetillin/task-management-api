-- DROP TABLE IF EXISTS public."user";

CREATE TABLE
    "user" (
        id uuid NOT NULL DEFAULT uuid_generate_v4 (),
        username varchar(256) NOT NULL,
        password_hash varchar(256) NOT NULL,
        CONSTRAINT user_pk_id PRIMARY KEY (id),
        CONSTRAINT user_un_username UNIQUE (username)
    );