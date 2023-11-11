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
1	kramti	$2a$10$GuGm9JvsZc8ieXBORw4QZeow/QY8WVit3DhVv8by/2pafdT68hStC	user
3	sdsd	$2a$10$4R/XNLL4pFJ6N.QGBNndOupp2H6geOoaBGiOqKJqKaNIp8g1Y6ICu	user
103	demo	$2a$10$DldcbIAhjGO5Bv/KK0r31eVCNAPV1d2/BbI0FG7ESqYEM4VAJ5OAm	user
104	demoaccount	$2a$10$woV/nHiM1LIlbMB7thSkQu95Z7afaBL0Y7bkK8o0/dq51HAzFZQla	user
\.

