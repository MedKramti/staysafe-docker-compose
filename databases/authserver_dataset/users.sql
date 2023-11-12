CREATE TABLE users (
    id bigint NOT NULL,
    username character varying(32),
    password character varying(72),
    role character varying(5) DEFAULT USER NOT NULL
);

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);

ALTER TABLE users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


COPY users (id, username, password, role) FROM stdin;
2	admin	$2a$12$/aJH3jFpsU0z2G.NL/Gp1ennn5ETlkzDvlAD5Rh6K2G68JQW3y8BK	admin
1	demo	$2a$12$zO5NlC347Zr1vd8wLOTS8edwtELMk67jUNIh4ZoeMvG1fV7Wmupvi	user
\.

