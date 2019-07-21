--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Ubuntu 11.2-1.pgdg16.04+1)
-- Dumped by pg_dump version 11.2

-- Started on 2019-06-18 12:03:43 JST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 217 (class 1259 OID 9377614)
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO wdytrolmaxcnni;

--
-- TOC entry 216 (class 1259 OID 9377612)
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3987 (class 0 OID 0)
-- Dependencies: 216
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- TOC entry 215 (class 1259 OID 9377602)
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO wdytrolmaxcnni;

--
-- TOC entry 214 (class 1259 OID 9377600)
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3988 (class 0 OID 0)
-- Dependencies: 214
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- TOC entry 197 (class 1259 OID 9377480)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO wdytrolmaxcnni;

--
-- TOC entry 205 (class 1259 OID 9377533)
-- Name: book_marks; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.book_marks (
    id bigint NOT NULL,
    user_id integer,
    work_id integer,
    deleted boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.book_marks OWNER TO wdytrolmaxcnni;

--
-- TOC entry 204 (class 1259 OID 9377531)
-- Name: book_marks_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.book_marks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_marks_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3989 (class 0 OID 0)
-- Dependencies: 204
-- Name: book_marks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.book_marks_id_seq OWNED BY public.book_marks.id;


--
-- TOC entry 201 (class 1259 OID 9377508)
-- Name: do_mokus; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.do_mokus (
    id bigint NOT NULL,
    user_id integer,
    moku_type_id integer,
    started_at timestamp without time zone,
    finished_at timestamp without time zone,
    moku_time integer,
    memo character varying,
    deleted boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.do_mokus OWNER TO wdytrolmaxcnni;

--
-- TOC entry 200 (class 1259 OID 9377506)
-- Name: do_mokus_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.do_mokus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.do_mokus_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 200
-- Name: do_mokus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.do_mokus_id_seq OWNED BY public.do_mokus.id;


--
-- TOC entry 207 (class 1259 OID 9377542)
-- Name: faqs; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.faqs (
    id bigint NOT NULL,
    user_id integer,
    questions character varying,
    answer character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.faqs OWNER TO wdytrolmaxcnni;

--
-- TOC entry 206 (class 1259 OID 9377540)
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faqs_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 206
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- TOC entry 203 (class 1259 OID 9377521)
-- Name: moku_types; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.moku_types (
    id bigint NOT NULL,
    user_id integer,
    name character varying,
    deleted boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.moku_types OWNER TO wdytrolmaxcnni;

--
-- TOC entry 202 (class 1259 OID 9377519)
-- Name: moku_types_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.moku_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moku_types_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3992 (class 0 OID 0)
-- Dependencies: 202
-- Name: moku_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.moku_types_id_seq OWNED BY public.moku_types.id;


--
-- TOC entry 196 (class 1259 OID 9377472)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO wdytrolmaxcnni;

--
-- TOC entry 213 (class 1259 OID 9377578)
-- Name: taggings; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_type character varying,
    taggable_id integer,
    tagger_type character varying,
    tagger_id integer,
    context character varying(128),
    created_at timestamp without time zone
);


ALTER TABLE public.taggings OWNER TO wdytrolmaxcnni;

--
-- TOC entry 212 (class 1259 OID 9377576)
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3993 (class 0 OID 0)
-- Dependencies: 212
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- TOC entry 211 (class 1259 OID 9377567)
-- Name: tags; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying,
    taggings_count integer DEFAULT 0
);


ALTER TABLE public.tags OWNER TO wdytrolmaxcnni;

--
-- TOC entry 210 (class 1259 OID 9377565)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3994 (class 0 OID 0)
-- Dependencies: 210
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 199 (class 1259 OID 9377490)
-- Name: users; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    admin boolean DEFAULT false NOT NULL,
    items character varying,
    introduce text,
    public boolean DEFAULT false NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    accepted boolean DEFAULT false NOT NULL,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying
);


ALTER TABLE public.users OWNER TO wdytrolmaxcnni;

--
-- TOC entry 198 (class 1259 OID 9377488)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3995 (class 0 OID 0)
-- Dependencies: 198
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 209 (class 1259 OID 9377553)
-- Name: works; Type: TABLE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE TABLE public.works (
    id bigint NOT NULL,
    user_id integer,
    do_moku_id integer,
    title character varying,
    memo text,
    pickup_public boolean DEFAULT false NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    memo_public boolean DEFAULT false NOT NULL
);


ALTER TABLE public.works OWNER TO wdytrolmaxcnni;

--
-- TOC entry 208 (class 1259 OID 9377551)
-- Name: works_id_seq; Type: SEQUENCE; Schema: public; Owner: wdytrolmaxcnni
--

CREATE SEQUENCE public.works_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_id_seq OWNER TO wdytrolmaxcnni;

--
-- TOC entry 3996 (class 0 OID 0)
-- Dependencies: 208
-- Name: works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wdytrolmaxcnni
--

ALTER SEQUENCE public.works_id_seq OWNED BY public.works.id;


--
-- TOC entry 3796 (class 2604 OID 9377617)
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- TOC entry 3795 (class 2604 OID 9377605)
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- TOC entry 3785 (class 2604 OID 9377536)
-- Name: book_marks id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.book_marks ALTER COLUMN id SET DEFAULT nextval('public.book_marks_id_seq'::regclass);


--
-- TOC entry 3781 (class 2604 OID 9377511)
-- Name: do_mokus id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.do_mokus ALTER COLUMN id SET DEFAULT nextval('public.do_mokus_id_seq'::regclass);


--
-- TOC entry 3787 (class 2604 OID 9377545)
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- TOC entry 3783 (class 2604 OID 9377524)
-- Name: moku_types id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.moku_types ALTER COLUMN id SET DEFAULT nextval('public.moku_types_id_seq'::regclass);


--
-- TOC entry 3794 (class 2604 OID 9377581)
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- TOC entry 3792 (class 2604 OID 9377570)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 3774 (class 2604 OID 9377493)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3789 (class 2604 OID 9377556)
-- Name: works id; Type: DEFAULT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.works ALTER COLUMN id SET DEFAULT nextval('public.works_id_seq'::regclass);


--
-- TOC entry 3979 (class 0 OID 9377614)
-- Dependencies: 217
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	images	Work	1	1	2019-05-10 00:43:28.607919
3	images	Work	3	3	2019-05-10 02:09:09.502291
4	images	Work	2	4	2019-05-10 02:10:13.067045
5	images	Work	4	5	2019-05-10 02:12:16.014421
6	images	Work	5	6	2019-05-10 02:12:18.20415
7	images	Work	7	7	2019-05-25 13:50:58.537547
8	images	Work	8	8	2019-05-27 12:57:25.049067
9	images	Work	6	9	2019-06-13 09:51:24.828712
11	image	Work	1	11	2019-06-17 12:18:10.872737
14	image	Work	9	14	2019-06-17 12:46:42.041578
15	image	Work	3	15	2019-06-18 02:34:03.693531
16	image	Work	6	16	2019-06-18 02:35:57.395731
17	image	Work	5	17	2019-06-18 02:36:41.890116
\.


--
-- TOC entry 3977 (class 0 OID 9377602)
-- Dependencies: 215
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
1	hihwFY1Ks1ZvsVPTnU94cwxo	udon.jpg	image/jpeg	{"identified":true,"width":220,"height":165,"analyzed":true}	17271	kDZnW+22aiJhzb1KaQsedw==	2019-05-10 00:43:28.576449
3	rGPZrfLNjNzTQLjKus4PLr8s	udon.jpg	image/jpeg	{"identified":true,"width":220,"height":165,"analyzed":true}	17271	kDZnW+22aiJhzb1KaQsedw==	2019-05-10 02:09:09.482971
4	Tsh47DPpUaGymE3cn7PQ3vMg	2019-05-09 13.27.24.jpg	image/jpeg	{"identified":true,"width":3024,"height":5376,"analyzed":true}	5421597	St+SwhuRyuWhrrsyzFR/Cg==	2019-05-10 02:10:13.061306
5	ET5BeZUkXnkiQuxaA41J5y8L	2019-04-11 09.44.56.jpg	image/jpeg	{"identified":true,"width":5376,"height":3024,"analyzed":true}	3393351	pyusJLdRqf6cBJWOY/jahQ==	2019-05-10 02:12:15.966712
6	hXzAWcejoadNRs7jT8iN7Rwy	yakisoba.jpeg	image/jpeg	{"identified":true,"width":225,"height":225,"analyzed":true}	18605	AdfBVJMhw7IKg6fBVm47Dg==	2019-05-10 02:12:18.178889
7	9Qhe56SQyFU3cvFPU6RZA9um	2019-05-24 15.59.39.jpg	image/jpeg	{"identified":true,"width":5376,"height":3024,"analyzed":true}	4060521	WO7V9O+1mfkb5z6Ct0s/XQ==	2019-05-25 13:50:58.523374
8	jYjMmcwXjdAoq19xszsh3pRv	IMG_1337.HEIC	image/heic	{"identified":true}	458686	nPkwK+6WieqtXRmKh/lUKQ==	2019-05-27 12:57:25.01642
9	eRzRDLPDbqBBfmqXwm2e1y8N	E34B2382-212E-4733-AAAD-6689F718BF81.jpeg	image/jpeg	{"identified":true,"width":3024,"height":4032,"analyzed":true}	3002336	jiXLmm2JGJK4TSaceuWKZg==	2019-06-13 09:51:24.813616
11	eo3aQWnJsXpSCy5d8uuSppYR	ninjya.jpg	image/jpeg	{"identified":true,"width":360,"height":270,"analyzed":true}	12029	QhzmY0WPUi4SJNMpH1iosw==	2019-06-17 12:18:10.869719
14	ApDUo3yCxT9gWevfXWF3dMet	sunset.jpg	image/jpeg	{"identified":true,"width":3024,"height":4032,"analyzed":true}	1735467	oa/tyv48HJD9iO0pml0pMQ==	2019-06-17 12:46:42.036004
15	cA4A4zvk34wnT8PKB6rT7zKp	tag.png	image/png	{"identified":true,"width":2766,"height":1013,"analyzed":true}	134529	FYoxjQz5FtMwdVv5t+rOqQ==	2019-06-18 02:34:03.689982
16	9HvbD44QTu6BuMLA5PB7nKuX	sunset.jpg	image/jpeg	{"identified":true,"width":3024,"height":4032,"analyzed":true}	1735467	oa/tyv48HJD9iO0pml0pMQ==	2019-06-18 02:35:57.393176
17	S3ez7sTcyYxxBkd5wmJHkt4f	sunset.jpg	image/jpeg	{"identified":true,"width":3024,"height":4032,"analyzed":true}	1735467	oa/tyv48HJD9iO0pml0pMQ==	2019-06-18 02:36:41.886944
\.


--
-- TOC entry 3959 (class 0 OID 9377480)
-- Dependencies: 197
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2019-04-25 06:27:45.699432	2019-04-25 06:27:45.699432
\.


--
-- TOC entry 3967 (class 0 OID 9377533)
-- Dependencies: 205
-- Data for Name: book_marks; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.book_marks (id, user_id, work_id, deleted, created_at, updated_at) FROM stdin;
2	2	5	f	2019-05-10 02:15:02.802154	2019-05-10 02:15:02.802154
3	1	4	f	2019-05-11 13:50:19.956356	2019-05-11 13:50:19.956356
4	3	7	f	2019-05-30 14:02:03.855446	2019-05-30 14:02:03.855446
5	3	6	f	2019-05-30 14:10:58.526441	2019-05-30 14:10:58.526441
1	2	1	t	2019-05-10 01:03:23.517855	2019-06-17 12:18:16.947417
\.


--
-- TOC entry 3963 (class 0 OID 9377508)
-- Dependencies: 201
-- Data for Name: do_mokus; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.do_mokus (id, user_id, moku_type_id, started_at, finished_at, moku_time, memo, deleted, created_at, updated_at) FROM stdin;
1	1	1	2019-04-25 06:32:51.480983	2019-04-25 06:32:57.778198	6	めも	f	2019-04-25 06:32:51.491142	2019-04-29 08:49:33.745184
2	1	1	2019-05-03 06:59:47.527513	\N	0	\N	f	2019-05-03 06:59:47.543871	2019-05-03 06:59:47.543871
3	2	3	2019-05-10 00:56:48.160914	2019-05-10 00:58:01.468216	72	初回テスト	f	2019-05-10 00:56:48.168087	2019-05-10 05:31:14.096038
4	2	4	2019-05-10 05:31:47.251409	2019-05-10 13:09:54.76491	7798	とある仕事にどのくらい時間がかかったかを測ってみるためにやってみた。\r\n\r\n途中一時停止をして、その後再開ボタンを押すのを忘れたという（笑）\r\n\r\n要望：こういうケースに対応するために、かかった時間をあとで手動で編集できるようにしたいですね。ボタンの押し忘れ対策。	f	2019-05-10 05:31:47.261999	2019-05-10 13:13:13.47801
5	2	4	2019-05-10 13:23:24.529407	2019-05-10 13:23:29.881794	4	\N	f	2019-05-10 13:23:24.53629	2019-05-10 13:23:29.894782
7	3	5	2019-05-14 06:42:49.347285	2019-05-14 06:43:09.301756	13	\N	f	2019-05-14 06:42:49.354737	2019-05-14 06:43:09.308738
6	2	2	2019-05-10 13:24:24.593777	2019-05-10 13:24:26.446832	1	\N	t	2019-05-10 13:24:24.600097	2019-05-14 15:21:07.203182
8	3	5	2019-05-21 08:37:41.150937	2019-05-21 08:47:00.403266	150	\N	f	2019-05-21 08:37:41.158198	2019-05-24 11:18:40.732088
9	1	1	2019-05-29 12:28:22.456243	\N	0	\N	f	2019-05-29 12:28:22.463135	2019-05-29 12:28:22.463135
11	1	1	2019-05-29 13:08:59.875027	2019-05-29 13:09:02.213857	1	\N	f	2019-05-29 13:08:59.881189	2019-05-29 13:09:02.220976
12	1	1	2019-05-29 13:09:44.515175	2019-05-29 13:10:15.046677	30	\N	f	2019-05-29 13:09:44.520715	2019-05-29 13:10:15.063847
10	3	5	2019-05-29 13:08:46.629823	2019-05-29 13:14:14.558659	218	\N	f	2019-05-29 13:08:46.634639	2019-05-29 13:14:14.56494
13	3	5	2019-05-30 13:43:42.573716	2019-05-30 13:47:05.717898	197	\N	f	2019-05-30 13:43:42.581022	2019-05-30 13:47:05.725095
14	3	5	2019-05-30 14:16:25.94317	2019-05-30 14:18:44.281202	22	\N	f	2019-05-30 14:16:25.94907	2019-05-30 14:18:44.28828
15	3	8	2019-05-30 14:18:59.616552	2019-05-30 14:19:01.896081	1	\N	f	2019-05-30 14:18:59.621994	2019-05-30 14:19:01.901907
16	3	5	2019-05-30 14:19:08.082472	2019-05-30 14:19:10.244511	1	\N	f	2019-05-30 14:19:08.089268	2019-05-30 14:19:10.250791
17	3	5	2019-05-30 14:19:16.62154	2019-05-30 14:19:18.824715	1	\N	f	2019-05-30 14:19:16.62672	2019-05-30 14:19:18.8301
18	3	5	2019-05-30 14:19:26.00212	2019-05-30 14:19:27.984153	1	\N	f	2019-05-30 14:19:26.008995	2019-05-30 14:19:27.989954
19	3	5	2019-05-30 14:19:35.062541	2019-05-30 14:19:37.024172	1	\N	f	2019-05-30 14:19:35.070019	2019-05-30 14:19:37.032533
20	3	5	2019-05-30 14:19:43.912219	2019-05-30 14:19:52.284904	2	\N	f	2019-05-30 14:19:43.917518	2019-05-30 14:19:52.291334
21	3	5	2019-05-30 14:20:02.365737	2019-05-30 14:20:05.068792	2	\N	f	2019-05-30 14:20:02.371072	2019-05-30 14:20:05.074082
22	3	5	2019-05-30 14:20:13.978296	2019-05-30 14:20:15.929034	1	\N	f	2019-05-30 14:20:13.983652	2019-05-30 14:20:15.935598
23	1	1	2019-05-30 14:54:25.765409	2019-05-30 15:05:42.395106	618	\N	f	2019-05-30 14:54:25.770863	2019-05-30 15:05:42.400613
24	1	1	2019-05-30 15:30:47.829091	\N	0	\N	f	2019-05-30 15:30:47.834939	2019-05-30 15:30:47.834939
25	3	5	2019-05-31 00:49:28.074563	2019-05-31 00:49:33.087966	4	\N	f	2019-05-31 00:49:28.08187	2019-05-31 00:49:33.093732
26	3	5	2019-05-31 00:49:40.884699	2019-05-31 00:49:48.705775	1	\N	f	2019-05-31 00:49:40.892871	2019-05-31 00:49:48.711376
28	2	2	2019-06-01 01:35:01.026314	2019-06-01 01:35:09.711517	6	\N	t	2019-06-01 01:35:01.033429	2019-06-01 01:35:26.320752
29	3	5	2019-06-07 01:41:34.440557	2019-06-07 01:41:44.564321	9	\N	f	2019-06-07 01:41:34.444925	2019-06-07 01:41:44.569714
31	3	8	2019-06-09 03:55:47.840961	2019-06-09 03:55:50.240347	2	\N	f	2019-06-09 03:55:47.845379	2019-06-09 03:55:50.24401
32	3	17	2019-06-09 03:55:57.333685	2019-06-09 03:55:59.40157	1	\N	f	2019-06-09 03:55:57.35293	2019-06-09 03:55:59.405712
33	3	18	2019-06-09 03:56:07.144213	2019-06-09 03:56:09.450242	1	\N	f	2019-06-09 03:56:07.147928	2019-06-09 03:56:09.454333
34	3	19	2019-06-09 04:00:21.463087	2019-06-09 04:01:28.985397	61	\N	f	2019-06-09 04:00:21.470453	2019-06-09 04:01:28.99062
30	1	1	2019-06-09 03:21:25.807166	2019-06-09 05:01:48.941824	6022	\N	f	2019-06-09 03:21:25.821176	2019-06-09 05:01:48.947928
27	3	5	2019-05-31 00:49:55.705949	2019-05-31 00:49:58.682134	2	\N	t	2019-05-31 00:49:55.710576	2019-06-09 06:43:18.162426
\.


--
-- TOC entry 3969 (class 0 OID 9377542)
-- Dependencies: 207
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.faqs (id, user_id, questions, answer, created_at, updated_at) FROM stdin;
2	1	moku Just Nowとは？	いわゆるタイムラインです。\r\n\r\n\r\nmokuのユーザーが「mokuる」から「moku開始！」すると、それが通知されます。\r\n\r\nアカウントが非公開になっている場合は、moku Just Nowには表示されないのでご注意ください。\r\n\r\nデフォルトは全て「アカウント：非公開」です。\r\n個人設定から切り替えられます。	2019-05-11 13:44:59.640022	2019-05-11 13:44:59.640022
3	1	moku一覧とは？	これまでの「mokuる」の全ての記録です。\r\n\r\n\r\n※絞り込みは「mokuタグ」でしかできません。\r\nが、月ごと・週ごとの絞り込みができるようにしますので、しばらくお待ちください。	2019-05-11 13:49:55.205026	2019-05-11 13:49:55.205026
4	1	Book Markとは？	成果物のブックマークができます。\r\n\r\n\r\n成果物はPick UPで見つけることができます。\r\n\r\n\r\nPick UPで見つけた成果物の画面右上に、Book Markアイコンがありますので、気になる成果物はBook Markしてみてください。	2019-05-11 13:54:07.222317	2019-05-11 13:54:07.222317
5	1	mokuタグとは？	mokuにつける名札のようなものです。\r\n\r\n\r\nmoku自体にはタイトルがありません。\r\n\r\n\r\nなので、mokuタグで種類分けしてみてください。\r\n\r\n\r\n例えば…\r\n\r\n「英語」というmokuタグ。\r\n「数学」というmokuタグ。\r\n「読書：吾輩は猫である」というmokuタグ。	2019-05-11 13:55:05.244676	2019-05-11 14:00:00.135809
6	1	成果物とは？	mokuったら、その結果出来上がったものを記録しましょう。\r\n\r\n\r\n成果物というタイトルではありますが、途中経過やメモでも大丈夫。\r\n\r\n\r\nできたこと、できなかったこと、発見したこと、驚いたこと、笑ったことなど、mokuった時にあったことはすべてそのmokuの「成果」です。	2019-05-11 14:05:01.880667	2019-05-11 14:05:01.880667
1	1	mokuるとは？	作業することを、mokuでは「mokuる（もくる）」と呼んでいます。<br />\r\n作業記録をつけたいときは「mokuる」へどうぞ！\r\n\r\n<img src="/assets/moku_logo2.png" width="100" height="50" class="d-inline-block align-top" alt="ロゴマーク">	2019-05-11 13:41:52.854575	2019-06-08 23:54:38.016113
7	1	Pick UPとは？	登録された成果物のうち、\r\n\r\n<b>「アカウントの公開設定」が公開で、\r\n更に「成果物の公開設定」が公開</b>\r\n\r\nとなっているものを、ランダムで選定して表示しています。\r\n\r\n\r\nmokuでは、ユーザー同士の繋がりを強く持たないようにしているため、検索して成果物を探しにいくことはできませんが、たまたま見つけた成果物がきになる成果物だったら、ぜひBook Markしてみてください。	2019-05-11 14:11:47.509333	2019-05-11 14:14:26.880674
8	1	mokuアイテムとは？	mokuる時につかう道具や機材、材料、教材などがあれば記録しておきましょう。\r\n\r\n\r\nPick UPで成果物を見た他のユーザーが、あなたの詳細情報をみた時に表示されます。\r\n\r\n\r\nどんなものを使って、その成果物を作り出したのか。\r\n普段どんな道具を使用しているのか。\r\n\r\n\r\nあなたの成果物を見たら、ちょっと気になるかもしれません。\r\n\r\n\r\n例えば…\r\n\r\n使用した布や糸の種類\r\n使用しているパソコンの種類\r\n使用したカメラの種類\r\n使用した画材の種類\r\n使用したテキストの種類\r\n\r\nなど。	2019-05-11 14:23:00.54132	2019-05-11 14:23:00.54132
9	1	カレンダーとは？	mokuった日は、mokuマークとして雲のアイコンと、その日のmokuった回数が表示されます。\r\n\r\n\r\nカレンダーを見れば、mokuったかどうか一目でわかるようになっています。\r\n\r\n\r\nまた、そのアイコンをクリックすると、その日に絞ったmokuの一覧を見ることができます。\r\n\r\n\r\nなお、スマートフォンの場合は週間カレンダーが表示され、タブレット・PCの場合は月間カレンダーが表示されます。	2019-05-11 14:27:51.23959	2019-05-11 14:27:51.23959
10	1	退会したい	個人設定のページへどうぞ。\r\n\r\n\r\n右下に退会アイコンがあります。\r\n\r\n\r\n一度退会すると、データーはすべて消えてしまうので、退会前によくご確認ください。	2019-05-14 05:16:45.131314	2019-06-09 00:49:47.731949
11	1	画像はどんなファイルで登録できるの？	今の所、JPEG,PNGは動作確認しています。\r\nこれ以外の拡張子の画像が登録できない可能性があります。\r\n\r\n	2019-05-27 13:34:54.517634	2019-06-18 02:19:19.52368
\.


--
-- TOC entry 3965 (class 0 OID 9377521)
-- Dependencies: 203
-- Data for Name: moku_types; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.moku_types (id, user_id, name, deleted, created_at, updated_at) FROM stdin;
1	1	とりあえずmokuる	f	2019-04-25 06:29:28.184802	2019-04-25 06:29:28.184802
2	2	とりあえずmokuる	f	2019-05-10 00:53:28.775854	2019-05-10 00:53:28.775854
3	2	テスト	f	2019-05-10 00:56:38.312059	2019-05-10 13:12:14.082368
4	2	仕事	f	2019-05-10 13:12:22.792349	2019-05-10 13:12:22.792349
5	3	とりあえずmokuる	f	2019-05-14 06:42:30.13937	2019-05-14 06:42:30.13937
6	3	ゼノギアス	t	2019-05-21 08:37:22.827163	2019-05-24 11:18:40.703035
7	4	とりあえずmokuる	f	2019-05-24 12:15:29.875211	2019-05-24 12:15:29.875211
8	3	新しいたぐ	f	2019-05-26 03:07:39.335106	2019-05-26 03:07:39.335106
10	5	とりあえずmokuる	f	2019-05-28 02:33:14.396679	2019-05-28 02:33:14.396679
11	6	とりあえずmokuる	f	2019-05-28 02:37:03.211501	2019-05-28 02:37:03.211501
12	7	とりあえずmokuる	f	2019-05-28 02:39:13.112588	2019-05-28 02:39:13.112588
13	8	とりあえずmokuる	f	2019-05-28 02:48:03.180825	2019-05-28 02:48:03.180825
14	9	とりあえずmokuる	f	2019-05-28 03:38:32.456624	2019-05-28 03:38:32.456624
15	10	とりあえずmokuる	f	2019-05-28 05:49:33.667072	2019-05-28 05:49:33.667072
16	11	とりあえずmokuる	f	2019-05-28 05:53:59.812917	2019-05-28 05:53:59.812917
17	3	追加タグ	f	2019-05-30 13:47:57.041581	2019-05-30 13:47:57.041581
9	1	英単語	t	2019-05-26 04:31:41.177235	2019-06-03 12:55:31.722276
18	3	もくもくもく	f	2019-06-03 12:56:21.917064	2019-06-03 12:56:21.917064
19	3	何だかとてもやたらと長くて冗長な訳の分からないタグ	f	2019-06-09 04:00:11.544979	2019-06-09 04:08:29.934788
20	3	さくじょてすと	f	2019-06-09 09:06:13.050279	2019-06-09 09:06:13.050279
\.


--
-- TOC entry 3958 (class 0 OID 9377472)
-- Dependencies: 196
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.schema_migrations (version) FROM stdin;
20190224012927
20190224094554
20190225111207
20190225111507
20190225112507
20190225113332
20190225113459
20190225113933
20190225121200
20190228061840
20190228061841
20190228061842
20190228061843
20190228061844
20190228061845
20190301075715
20190304083154
20190316133156
20190316133500
20190316134049
20190321074528
20190322074501
20190510003616
20190514020745
\.


--
-- TOC entry 3975 (class 0 OID 9377578)
-- Dependencies: 213
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at) FROM stdin;
1	1	Faq	1	\N	\N	categories	2019-05-11 13:41:53.037302
2	2	Faq	2	\N	\N	categories	2019-05-11 13:44:59.662754
3	3	Faq	2	\N	\N	categories	2019-05-11 13:44:59.670382
4	4	Faq	3	\N	\N	categories	2019-05-11 13:49:55.22753
5	5	Faq	4	\N	\N	categories	2019-05-11 13:54:07.241073
6	6	Faq	5	\N	\N	categories	2019-05-11 13:55:05.261465
7	7	Faq	6	\N	\N	categories	2019-05-11 14:05:01.896653
8	8	Faq	7	\N	\N	categories	2019-05-11 14:11:47.529341
9	9	Faq	8	\N	\N	categories	2019-05-11 14:23:00.556432
10	10	Faq	9	\N	\N	categories	2019-05-11 14:27:51.253805
11	11	Faq	10	\N	\N	categories	2019-05-14 05:16:45.394119
12	7	Faq	11	\N	\N	categories	2019-05-27 13:34:54.672274
13	12	Faq	11	\N	\N	categories	2019-05-27 13:34:54.700861
\.


--
-- TOC entry 3973 (class 0 OID 9377567)
-- Dependencies: 211
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.tags (id, name, taggings_count) FROM stdin;
1	mokuる	1
2	moku Just Now	1
3	アカウント	1
4	moku一覧	1
5	Book Mark	1
6	mokuタグ	1
8	Pick UP	1
9	mokuアイテム	1
10	カレンダー	1
11	退会	1
7	成果物	2
12	画像	1
\.


--
-- TOC entry 3961 (class 0 OID 9377490)
-- Dependencies: 199
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, admin, items, introduce, public, deleted, accepted, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email) FROM stdin;
8	3rodysan.mojya@gmail.com	$2a$11$QiqoSbicKGb12OTS/ZQ/1uheeadI4smRZMvokYzVE8jIn6maWhAQG	\N	\N	\N	2019-05-28 02:48:03.162842	2019-05-28 02:57:38.757665	メールテスト	f	\N	\N	f	f	t	PUSpTJ8YkRXPrrpiQC9M	2019-05-28 02:57:38.756432	2019-05-28 02:48:03.163032	\N
10	signup2@hoge.com	$2a$11$TKcNxTTsjWukvbuluaL74.tNtPnj9VSmxrFJcRWSj3lkuJHAX219u	\N	\N	\N	2019-05-28 05:49:33.659268	2019-05-28 05:49:33.659268	サインアップテスト２	f	\N	\N	f	f	t	X8NsVzSQfnHBFGyaSnsy	\N	2019-05-28 05:49:33.65954	\N
11	moku.kanri@gmail.com	$2a$11$r5abjavre3TAUWMYbhrWGeD25585ax2ErgkyGOILEpf3sWLUWBcC6	\N	\N	\N	2019-05-28 05:53:59.807145	2019-05-28 06:08:33.668389	サインアップテスト２	f	\N	\N	f	f	t	zcjsnM3nWJZNsTdqUyM-	2019-05-28 06:08:33.666412	2019-05-28 05:53:59.807263	\N
9	4rodysan.mojya@gmail.com	$2a$11$piCLQUWinbUAhg1I1SSJ4OpBcQe2rVxtMYSEHZ99V/bwprax368K.	\N	\N	\N	2019-05-28 03:38:32.448683	2019-05-28 03:47:50.12962	にんしょうてすと	f	\N	\N	f	f	t	FsM8KahsHsoSHx1guCWs	2019-05-28 03:47:50.128723	2019-05-28 03:38:32.449126	\N
2	dateofrock@gmail.com	$2a$11$cxMisAccwMlt4k2dKN4U1.Jg7ow.yoqmHHgsv6KlpgbTZrICh0.PW	\N	\N	2019-05-10 05:30:06.123463	2019-05-10 00:53:28.76859	2019-05-22 14:19:31.254238	dateofrock	f	Mac\r\n耕運機\r\n	もくってます！	t	f	t	\N	2019-05-10 00:53:28.76859	\N	\N
4	moku@hoge.com	$2a$11$uupufIsO3dzECXpTvopWIOVlKyczczEIaz49Rg/egxDAhKRJwwHqa	\N	\N	\N	2019-05-24 12:15:29.713843	2019-05-24 12:15:29.713843	moku	f	\N	\N	f	f	t	Laa48sAE8eN4yz1v-KPd	\N	2019-05-24 12:15:29.714016	\N
3	sumaho@hoge.com	$2a$11$y3lc2OmLLx78gm8xPF1ziuNsa/AMBMZozj9XWb3NwpLuY/IoS0R0q	\N	\N	\N	2019-05-14 06:42:30.105185	2019-05-26 02:35:47.241824	スマホテスト	f	あいぽん		t	f	t	\N	2019-05-14 06:42:30.105185	\N	\N
1	kanri@hoge.com	$2a$11$/31X4oigLZgbbMgxLW7gs.lZmyDyOThBvzLcnNhGjtz4zMz0RbyoK	\N	\N	\N	2019-04-25 06:29:28.156754	2019-05-26 05:04:07.135905	管理者	t	あいてむ\r\nあいてむ\r\nあいてむ\r\nあいてむ	じこしょうかい\r\nじこしょうかい\r\nじこしょうかい	t	f	t	\N	2019-04-25 06:29:28.156754	\N	\N
5	orodysan.mojya@gmail.com	$2a$11$A7IUhJAcAmz2qtRsqJQyieUeJlCI6t.Q7jL/99Ap3pN1x7Vgdmrqu	\N	\N	\N	2019-05-28 02:33:14.38464	2019-05-28 02:33:14.38464	メールテスト	f	\N	\N	f	f	t	s_uMq-S5EQwWtsuaKZ62	\N	2019-05-28 02:33:14.38482	\N
6	1rodysan.mojya@gmail.com	$2a$11$QkgUpRnaOD79JZP0SRfhmO98cyddQzHLS4Ae2SJwtpRcX0VmlbdY2	\N	\N	\N	2019-05-28 02:37:03.207601	2019-05-28 02:37:03.207601	メールテスト	f	\N	\N	f	f	t	F7zxnf6SNqRcxAKisZSU	\N	2019-05-28 02:37:03.207712	\N
7	2rodysan.mojya@gmail.com	$2a$11$2j75Pc3ZMUD56TBnhthDh.yxT6ZU6kHvgeyDWkMBuix1/6zacHxia	\N	\N	\N	2019-05-28 02:39:13.108704	2019-05-28 02:39:13.108704	メールテスト	f	\N	\N	f	f	t	tSvP5YTD6gqxoq53P7xx	\N	2019-05-28 02:39:13.108804	\N
\.


--
-- TOC entry 3971 (class 0 OID 9377553)
-- Dependencies: 209
-- Data for Name: works; Type: TABLE DATA; Schema: public; Owner: wdytrolmaxcnni
--

COPY public.works (id, user_id, do_moku_id, title, memo, pickup_public, deleted, created_at, updated_at, memo_public) FROM stdin;
2	2	3	たまねぎ		t	f	2019-05-10 00:59:40.559168	2019-05-10 02:10:40.406394	t
4	2	3	トラクター		t	f	2019-05-10 02:12:16.000273	2019-05-10 02:12:16.023799	t
8	1	2	てすと	てすと	t	t	2019-05-27 12:57:25.044153	2019-05-31 01:52:14.690968	t
7	2	5	田植え完了	うちじゃないけどw	f	f	2019-05-25 13:50:58.534661	2019-06-09 11:52:20.919775	t
1	1	2	うどん		t	t	2019-05-10 00:43:28.603226	2019-06-17 12:18:16.922905	t
9	1	30	てすと		t	f	2019-06-17 12:18:56.45062	2019-06-17 12:46:42.043471	t
3	1	2	うどんうどん		t	f	2019-05-10 02:09:09.498943	2019-06-18 02:34:03.695242	f
6	3	8	seikabutu		t	f	2019-05-24 12:22:47.428748	2019-06-18 02:35:57.397327	t
5	1	2	やきそば		t	f	2019-05-10 02:12:18.19828	2019-06-18 02:36:41.891814	f
\.


--
-- TOC entry 3997 (class 0 OID 0)
-- Dependencies: 216
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 17, true);


--
-- TOC entry 3998 (class 0 OID 0)
-- Dependencies: 214
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 17, true);


--
-- TOC entry 3999 (class 0 OID 0)
-- Dependencies: 204
-- Name: book_marks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.book_marks_id_seq', 6, true);


--
-- TOC entry 4000 (class 0 OID 0)
-- Dependencies: 200
-- Name: do_mokus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.do_mokus_id_seq', 34, true);


--
-- TOC entry 4001 (class 0 OID 0)
-- Dependencies: 206
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.faqs_id_seq', 11, true);


--
-- TOC entry 4002 (class 0 OID 0)
-- Dependencies: 202
-- Name: moku_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.moku_types_id_seq', 20, true);


--
-- TOC entry 4003 (class 0 OID 0)
-- Dependencies: 212
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.taggings_id_seq', 13, true);


--
-- TOC entry 4004 (class 0 OID 0)
-- Dependencies: 210
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.tags_id_seq', 12, true);


--
-- TOC entry 4005 (class 0 OID 0)
-- Dependencies: 198
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 4006 (class 0 OID 0)
-- Dependencies: 208
-- Name: works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdytrolmaxcnni
--

SELECT pg_catalog.setval('public.works_id_seq', 9, true);


--
-- TOC entry 3833 (class 2606 OID 9377622)
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3830 (class 2606 OID 9377610)
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3800 (class 2606 OID 9377487)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 3810 (class 2606 OID 9377539)
-- Name: book_marks book_marks_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.book_marks
    ADD CONSTRAINT book_marks_pkey PRIMARY KEY (id);


--
-- TOC entry 3806 (class 2606 OID 9377518)
-- Name: do_mokus do_mokus_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.do_mokus
    ADD CONSTRAINT do_mokus_pkey PRIMARY KEY (id);


--
-- TOC entry 3812 (class 2606 OID 9377550)
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- TOC entry 3808 (class 2606 OID 9377530)
-- Name: moku_types moku_types_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.moku_types
    ADD CONSTRAINT moku_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3798 (class 2606 OID 9377479)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 3828 (class 2606 OID 9377586)
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- TOC entry 3817 (class 2606 OID 9377575)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 3804 (class 2606 OID 9377500)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3814 (class 2606 OID 9377564)
-- Name: works works_pkey; Type: CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.works
    ADD CONSTRAINT works_pkey PRIMARY KEY (id);


--
-- TOC entry 3834 (class 1259 OID 9377628)
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- TOC entry 3835 (class 1259 OID 9377629)
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- TOC entry 3831 (class 1259 OID 9377611)
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- TOC entry 3818 (class 1259 OID 9377597)
-- Name: index_taggings_on_context; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);


--
-- TOC entry 3819 (class 1259 OID 9377593)
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- TOC entry 3820 (class 1259 OID 9377594)
-- Name: index_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);


--
-- TOC entry 3821 (class 1259 OID 9377592)
-- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- TOC entry 3822 (class 1259 OID 9377595)
-- Name: index_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);


--
-- TOC entry 3823 (class 1259 OID 9377596)
-- Name: index_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);


--
-- TOC entry 3824 (class 1259 OID 9377598)
-- Name: index_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);


--
-- TOC entry 3815 (class 1259 OID 9377589)
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- TOC entry 3801 (class 1259 OID 9377501)
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- TOC entry 3802 (class 1259 OID 9377502)
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- TOC entry 3825 (class 1259 OID 9377590)
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- TOC entry 3826 (class 1259 OID 9377599)
-- Name: taggings_idy; Type: INDEX; Schema: public; Owner: wdytrolmaxcnni
--

CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- TOC entry 3836 (class 2606 OID 9377623)
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: wdytrolmaxcnni
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- TOC entry 3985 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: wdytrolmaxcnni
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO wdytrolmaxcnni;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3986 (class 0 OID 0)
-- Dependencies: 667
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO wdytrolmaxcnni;


-- Completed on 2019-06-18 12:04:21 JST

--
-- PostgreSQL database dump complete
--

