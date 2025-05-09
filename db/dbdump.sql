PGDMP      1                }            hotel-manager    17.4    17.4 m    R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            U           1262    16388    hotel-manager    DATABASE     u   CREATE DATABASE "hotel-manager" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';
    DROP DATABASE "hotel-manager";
                     postgres    false            �            1259    16745    accomodations    TABLE     �   CREATE TABLE public.accomodations (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.accomodations;
       public         heap r       postgres    false            �            1259    16744    accomodations_id_seq    SEQUENCE     }   CREATE SEQUENCE public.accomodations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.accomodations_id_seq;
       public               postgres    false    239            V           0    0    accomodations_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.accomodations_id_seq OWNED BY public.accomodations.id;
          public               postgres    false    238            �            1259    16659    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap r       postgres    false            �            1259    16666    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap r       postgres    false            �            1259    16715    cities    TABLE     �   CREATE TABLE public.cities (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.cities;
       public         heap r       postgres    false            �            1259    16714    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public               postgres    false    233            W           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public               postgres    false    232            �            1259    16691    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap r       postgres    false            �            1259    16690    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public               postgres    false    229            X           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public               postgres    false    228            �            1259    16769    hotel_rooms    TABLE       CREATE TABLE public.hotel_rooms (
    id bigint NOT NULL,
    hotel_id integer NOT NULL,
    room_accomodation_id integer NOT NULL,
    number_rooms integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.hotel_rooms;
       public         heap r       postgres    false            �            1259    16768    hotel_rooms_id_seq    SEQUENCE     {   CREATE SEQUENCE public.hotel_rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hotel_rooms_id_seq;
       public               postgres    false    243            Y           0    0    hotel_rooms_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hotel_rooms_id_seq OWNED BY public.hotel_rooms.id;
          public               postgres    false    242            �            1259    16722    hotels    TABLE     V  CREATE TABLE public.hotels (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    city_id integer NOT NULL,
    address character varying(255) NOT NULL,
    nit character varying(255) NOT NULL,
    number_rooms integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.hotels;
       public         heap r       postgres    false            �            1259    16721    hotels_id_seq    SEQUENCE     v   CREATE SEQUENCE public.hotels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.hotels_id_seq;
       public               postgres    false    235            Z           0    0    hotels_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.hotels_id_seq OWNED BY public.hotels.id;
          public               postgres    false    234            �            1259    16683    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap r       postgres    false            �            1259    16674    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap r       postgres    false            �            1259    16673    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public               postgres    false    226            [           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public               postgres    false    225            �            1259    16626 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap r       postgres    false            �            1259    16625    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public               postgres    false    218            \           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public               postgres    false    217            �            1259    16643    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap r       postgres    false            �            1259    16703    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap r       postgres    false            �            1259    16702    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public               postgres    false    231            ]           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public               postgres    false    230            �            1259    16752    room_accomodations    TABLE     �   CREATE TABLE public.room_accomodations (
    id bigint NOT NULL,
    room_id integer NOT NULL,
    accomodation_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.room_accomodations;
       public         heap r       postgres    false            �            1259    16751    room_accomodations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_accomodations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.room_accomodations_id_seq;
       public               postgres    false    241            ^           0    0    room_accomodations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.room_accomodations_id_seq OWNED BY public.room_accomodations.id;
          public               postgres    false    240            �            1259    16738    rooms    TABLE     �   CREATE TABLE public.rooms (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.rooms;
       public         heap r       postgres    false            �            1259    16737    rooms_id_seq    SEQUENCE     u   CREATE SEQUENCE public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rooms_id_seq;
       public               postgres    false    237            _           0    0    rooms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;
          public               postgres    false    236            �            1259    16650    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap r       postgres    false            �            1259    16633    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16632    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    220            `           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    219            p           2604    16748    accomodations id    DEFAULT     t   ALTER TABLE ONLY public.accomodations ALTER COLUMN id SET DEFAULT nextval('public.accomodations_id_seq'::regclass);
 ?   ALTER TABLE public.accomodations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    238    239    239            m           2604    16718 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    232    233            j           2604    16694    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228    229            r           2604    16772    hotel_rooms id    DEFAULT     p   ALTER TABLE ONLY public.hotel_rooms ALTER COLUMN id SET DEFAULT nextval('public.hotel_rooms_id_seq'::regclass);
 =   ALTER TABLE public.hotel_rooms ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    243    242    243            n           2604    16725 	   hotels id    DEFAULT     f   ALTER TABLE ONLY public.hotels ALTER COLUMN id SET DEFAULT nextval('public.hotels_id_seq'::regclass);
 8   ALTER TABLE public.hotels ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    235    234    235            i           2604    16677    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            g           2604    16629    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            l           2604    16706    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230    231            q           2604    16755    room_accomodations id    DEFAULT     ~   ALTER TABLE ONLY public.room_accomodations ALTER COLUMN id SET DEFAULT nextval('public.room_accomodations_id_seq'::regclass);
 D   ALTER TABLE public.room_accomodations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    240    241    241            o           2604    16741    rooms id    DEFAULT     d   ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);
 7   ALTER TABLE public.rooms ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    237    237            h           2604    16636    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            K          0    16745    accomodations 
   TABLE DATA           I   COPY public.accomodations (id, name, created_at, updated_at) FROM stdin;
    public               postgres    false    239   t�       ;          0    16659    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public               postgres    false    223   σ       <          0    16666    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public               postgres    false    224   �       E          0    16715    cities 
   TABLE DATA           B   COPY public.cities (id, name, created_at, updated_at) FROM stdin;
    public               postgres    false    233   	�       A          0    16691    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public               postgres    false    229   ��       O          0    16769    hotel_rooms 
   TABLE DATA           o   COPY public.hotel_rooms (id, hotel_id, room_accomodation_id, number_rooms, created_at, updated_at) FROM stdin;
    public               postgres    false    243          G          0    16722    hotels 
   TABLE DATA           g   COPY public.hotels (id, name, city_id, address, nit, number_rooms, created_at, updated_at) FROM stdin;
    public               postgres    false    235   ߄       ?          0    16683    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public               postgres    false    227   ��       >          0    16674    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public               postgres    false    226   �       6          0    16626 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public               postgres    false    218   6�       9          0    16643    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public               postgres    false    221   ��       C          0    16703    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public               postgres    false    231   �       M          0    16752    room_accomodations 
   TABLE DATA           b   COPY public.room_accomodations (id, room_id, accomodation_id, created_at, updated_at) FROM stdin;
    public               postgres    false    241   4�       I          0    16738    rooms 
   TABLE DATA           A   COPY public.rooms (id, name, created_at, updated_at) FROM stdin;
    public               postgres    false    237   ��       :          0    16650    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public               postgres    false    222   ߆       8          0    16633    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public               postgres    false    220   U�       a           0    0    accomodations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.accomodations_id_seq', 4, true);
          public               postgres    false    238            b           0    0    cities_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cities_id_seq', 8, true);
          public               postgres    false    232            c           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public               postgres    false    228            d           0    0    hotel_rooms_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hotel_rooms_id_seq', 1, false);
          public               postgres    false    242            e           0    0    hotels_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.hotels_id_seq', 1, false);
          public               postgres    false    234            f           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public               postgres    false    225            g           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);
          public               postgres    false    217            h           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public               postgres    false    230            i           0    0    room_accomodations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.room_accomodations_id_seq', 7, true);
          public               postgres    false    240            j           0    0    rooms_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.rooms_id_seq', 3, true);
          public               postgres    false    236            k           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    219            �           2606    16750     accomodations accomodations_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.accomodations
    ADD CONSTRAINT accomodations_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.accomodations DROP CONSTRAINT accomodations_pkey;
       public                 postgres    false    239            �           2606    16672    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public                 postgres    false    224            �           2606    16665    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public                 postgres    false    223            �           2606    16720    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public                 postgres    false    233            �           2606    16699    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public                 postgres    false    229            �           2606    16701 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public                 postgres    false    229            �           2606    16774    hotel_rooms hotel_rooms_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hotel_rooms
    ADD CONSTRAINT hotel_rooms_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.hotel_rooms DROP CONSTRAINT hotel_rooms_pkey;
       public                 postgres    false    243            �           2606    16736    hotels hotels_name_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_name_unique UNIQUE (name);
 C   ALTER TABLE ONLY public.hotels DROP CONSTRAINT hotels_name_unique;
       public                 postgres    false    235            �           2606    16729    hotels hotels_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.hotels DROP CONSTRAINT hotels_pkey;
       public                 postgres    false    235            �           2606    16689    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public                 postgres    false    227            �           2606    16681    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public                 postgres    false    226            t           2606    16631    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public                 postgres    false    218            z           2606    16649 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public                 postgres    false    221            �           2606    16710 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public                 postgres    false    231            �           2606    16713 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public                 postgres    false    231            �           2606    16757 *   room_accomodations room_accomodations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.room_accomodations
    ADD CONSTRAINT room_accomodations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.room_accomodations DROP CONSTRAINT room_accomodations_pkey;
       public                 postgres    false    241            �           2606    16743    rooms rooms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public                 postgres    false    237            }           2606    16656    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public                 postgres    false    222            v           2606    16642    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public                 postgres    false    220            x           2606    16640    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    220            �           1259    16682    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public                 postgres    false    226            �           1259    16711 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public                 postgres    false    231    231            {           1259    16658    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public                 postgres    false    222            ~           1259    16657    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public                 postgres    false    222            �           2606    16775 (   hotel_rooms hotel_rooms_hotel_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel_rooms
    ADD CONSTRAINT hotel_rooms_hotel_id_foreign FOREIGN KEY (hotel_id) REFERENCES public.hotels(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.hotel_rooms DROP CONSTRAINT hotel_rooms_hotel_id_foreign;
       public               postgres    false    235    4758    243            �           2606    16780 4   hotel_rooms hotel_rooms_room_accomodation_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel_rooms
    ADD CONSTRAINT hotel_rooms_room_accomodation_id_foreign FOREIGN KEY (room_accomodation_id) REFERENCES public.room_accomodations(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.hotel_rooms DROP CONSTRAINT hotel_rooms_room_accomodation_id_foreign;
       public               postgres    false    243    4764    241            �           2606    16730    hotels hotels_city_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_city_id_foreign FOREIGN KEY (city_id) REFERENCES public.cities(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.hotels DROP CONSTRAINT hotels_city_id_foreign;
       public               postgres    false    4754    233    235            �           2606    16763 =   room_accomodations room_accomodations_accomodation_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.room_accomodations
    ADD CONSTRAINT room_accomodations_accomodation_id_foreign FOREIGN KEY (accomodation_id) REFERENCES public.accomodations(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.room_accomodations DROP CONSTRAINT room_accomodations_accomodation_id_foreign;
       public               postgres    false    239    4762    241            �           2606    16758 5   room_accomodations room_accomodations_room_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.room_accomodations
    ADD CONSTRAINT room_accomodations_room_id_foreign FOREIGN KEY (room_id) REFERENCES public.rooms(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.room_accomodations DROP CONSTRAINT room_accomodations_room_id_foreign;
       public               postgres    false    237    4760    241            K   K   x�3�N�K���I�4202�50�56P00�2��24�&�e�钟��J�zcΐ��4�p:�^�RTJ��=... �*+�      ;      x������ � �      <      x������ � �      E   �   x�3�tN,*ILO�K�4202�50�56P00�2��24�&�e���W����I�.c�.Ǽ���b�5�pz�$*��*8%�E�>S���̼��|�u�q:�W&&^H�sN��Ī��D�c�P�_������I|���qqq �Q\C      A      x������ � �      O      x������ � �      G      x������ � �      ?      x������ � �      >      x������ � �      6   �   x�u��� �ky��-xػ,!Ț�vQ���e�������� ����X?�l�����8CE'�z�^�>A��!uh2�-��@���^��2��:�y�#��!%�]�P��mh9��(iݮ��]��V�!e��H�`�`����
���݅V6m������'��b�%4��]�C��E)�h��      9      x������ � �      C      x������ � �      M   I   x�3�4B##S]]c+CK+C�b\F �D�6�5&Z�	P�	ѪM�&�n3�;�VmTM��c���� �l9b      I   B   x�3�t-.9�0/%������T��D��@�����������Wi^f>��9�K3KR�V���� �� `      :   f  x�E�Qo�0���W�qKmAJȲ2Q�� ��P�j�D~��e�o��wnNw�Fe]W��Kk+�R�17�js�^�n�籲��c()D��l��!xH؉��� ��������XM�ˤ̗���1�0xX:y{�J�(��x�՗8���? �}����~�3e�!8�CPo��M��-ϙk��d&]xNhw�"i��g�\�bӄ�d���XK���M���}ճ#�w��_��/��#�Ҕ�@�1��;$Cűc�F0�m�+H���9W�*_T�B{�����ۧ��`��qަ�p�
j�w,Wo��̒�{���9�]Cn��Fs��S�4T���n<��O���      8      x������ � �     