-- DROP TABLE IF EXISTS public.task;

CREATE TABLE
    task (
        id uuid NOT NULL DEFAULT uuid_generate_v4 (),
        title varchar(256) NOT NULL,
        description varchar(512) NULL,
        status varchar(50) NOT NULL DEFAULT 'TO_DO',
        expiration_date timestamptz NOT NULL,
        CONSTRAINT task_pk PRIMARY KEY (id)
    );