PGDMP     ,                     }            masterdatabase    14.15 (Homebrew)    14.15 (Homebrew) $    s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            v           1262    16386    masterdatabase    DATABASE     Y   CREATE DATABASE masterdatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE masterdatabase;
                manuel    false            �            1259    16388    elemento    TABLE     ?  CREATE TABLE public.elemento (
    id integer NOT NULL,
    tipo character varying(50) NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion text,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ultima_actualizacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.elemento;
       public         heap    manuel    false            �            1259    16422    elemento_etiqueta    TABLE     u   CREATE TABLE public.elemento_etiqueta (
    id integer NOT NULL,
    elemento_id integer,
    etiqueta_id integer
);
 %   DROP TABLE public.elemento_etiqueta;
       public         heap    manuel    false            �            1259    16421    elemento_etiqueta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.elemento_etiqueta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.elemento_etiqueta_id_seq;
       public          manuel    false    216            w           0    0    elemento_etiqueta_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.elemento_etiqueta_id_seq OWNED BY public.elemento_etiqueta.id;
          public          manuel    false    215            �            1259    16387    elemento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.elemento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.elemento_id_seq;
       public          manuel    false    210            x           0    0    elemento_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.elemento_id_seq OWNED BY public.elemento.id;
          public          manuel    false    209            �            1259    16413    etiqueta    TABLE     e   CREATE TABLE public.etiqueta (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.etiqueta;
       public         heap    manuel    false            �            1259    16412    etiqueta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.etiqueta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.etiqueta_id_seq;
       public          manuel    false    214            y           0    0    etiqueta_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.etiqueta_id_seq OWNED BY public.etiqueta.id;
          public          manuel    false    213            �            1259    16399    metadato    TABLE     �   CREATE TABLE public.metadato (
    id integer NOT NULL,
    elemento_id integer,
    clave character varying(50) NOT NULL,
    valor text
);
    DROP TABLE public.metadato;
       public         heap    manuel    false            �            1259    16398    metadato_id_seq    SEQUENCE     �   CREATE SEQUENCE public.metadato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.metadato_id_seq;
       public          manuel    false    212            z           0    0    metadato_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.metadato_id_seq OWNED BY public.metadato.id;
          public          manuel    false    211            �           2604    16391    elemento id    DEFAULT     j   ALTER TABLE ONLY public.elemento ALTER COLUMN id SET DEFAULT nextval('public.elemento_id_seq'::regclass);
 :   ALTER TABLE public.elemento ALTER COLUMN id DROP DEFAULT;
       public          manuel    false    209    210    210            �           2604    16425    elemento_etiqueta id    DEFAULT     |   ALTER TABLE ONLY public.elemento_etiqueta ALTER COLUMN id SET DEFAULT nextval('public.elemento_etiqueta_id_seq'::regclass);
 C   ALTER TABLE public.elemento_etiqueta ALTER COLUMN id DROP DEFAULT;
       public          manuel    false    216    215    216            �           2604    16416    etiqueta id    DEFAULT     j   ALTER TABLE ONLY public.etiqueta ALTER COLUMN id SET DEFAULT nextval('public.etiqueta_id_seq'::regclass);
 :   ALTER TABLE public.etiqueta ALTER COLUMN id DROP DEFAULT;
       public          manuel    false    214    213    214            �           2604    16402    metadato id    DEFAULT     j   ALTER TABLE ONLY public.metadato ALTER COLUMN id SET DEFAULT nextval('public.metadato_id_seq'::regclass);
 :   ALTER TABLE public.metadato ALTER COLUMN id DROP DEFAULT;
       public          manuel    false    211    212    212            j          0    16388    elemento 
   TABLE DATA           g   COPY public.elemento (id, tipo, nombre, descripcion, fecha_creacion, ultima_actualizacion) FROM stdin;
    public          manuel    false    210   F(       p          0    16422    elemento_etiqueta 
   TABLE DATA           I   COPY public.elemento_etiqueta (id, elemento_id, etiqueta_id) FROM stdin;
    public          manuel    false    216   �(       n          0    16413    etiqueta 
   TABLE DATA           .   COPY public.etiqueta (id, nombre) FROM stdin;
    public          manuel    false    214   )       l          0    16399    metadato 
   TABLE DATA           A   COPY public.metadato (id, elemento_id, clave, valor) FROM stdin;
    public          manuel    false    212   E)       {           0    0    elemento_etiqueta_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.elemento_etiqueta_id_seq', 3, true);
          public          manuel    false    215            |           0    0    elemento_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.elemento_id_seq', 2, true);
          public          manuel    false    209            }           0    0    etiqueta_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.etiqueta_id_seq', 4, true);
          public          manuel    false    213            ~           0    0    metadato_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.metadato_id_seq', 4, true);
          public          manuel    false    211            �           2606    16427 (   elemento_etiqueta elemento_etiqueta_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.elemento_etiqueta
    ADD CONSTRAINT elemento_etiqueta_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.elemento_etiqueta DROP CONSTRAINT elemento_etiqueta_pkey;
       public            manuel    false    216            �           2606    16397    elemento elemento_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.elemento
    ADD CONSTRAINT elemento_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.elemento DROP CONSTRAINT elemento_pkey;
       public            manuel    false    210            �           2606    16420    etiqueta etiqueta_nombre_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.etiqueta
    ADD CONSTRAINT etiqueta_nombre_key UNIQUE (nombre);
 F   ALTER TABLE ONLY public.etiqueta DROP CONSTRAINT etiqueta_nombre_key;
       public            manuel    false    214            �           2606    16418    etiqueta etiqueta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.etiqueta
    ADD CONSTRAINT etiqueta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.etiqueta DROP CONSTRAINT etiqueta_pkey;
       public            manuel    false    214            �           2606    16406    metadato metadato_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.metadato
    ADD CONSTRAINT metadato_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.metadato DROP CONSTRAINT metadato_pkey;
       public            manuel    false    212            �           2606    16428 4   elemento_etiqueta elemento_etiqueta_elemento_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.elemento_etiqueta
    ADD CONSTRAINT elemento_etiqueta_elemento_id_fkey FOREIGN KEY (elemento_id) REFERENCES public.elemento(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.elemento_etiqueta DROP CONSTRAINT elemento_etiqueta_elemento_id_fkey;
       public          manuel    false    210    3538    216            �           2606    16433 4   elemento_etiqueta elemento_etiqueta_etiqueta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.elemento_etiqueta
    ADD CONSTRAINT elemento_etiqueta_etiqueta_id_fkey FOREIGN KEY (etiqueta_id) REFERENCES public.etiqueta(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.elemento_etiqueta DROP CONSTRAINT elemento_etiqueta_etiqueta_id_fkey;
       public          manuel    false    3544    216    214            �           2606    16407 "   metadato metadato_elemento_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.metadato
    ADD CONSTRAINT metadato_elemento_id_fkey FOREIGN KEY (elemento_id) REFERENCES public.elemento(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.metadato DROP CONSTRAINT metadato_elemento_id_fkey;
       public          manuel    false    210    3538    212            j   �   x�3�,�/H�LN��,NTH�*��t����rsRRs��So��4202�50�5�P04�21�24�326173�#�eę��T��隣X���_���_������sxaqfr"�����T�uΩEe�y%��d����� n&:      p      x�3�4�4�2�F\ƜF��\1z\\\ !��      n   (   x�3��OK-*I�2��+M-��2�,�/(�I,����� �	)      l   K   x�3�4�,I��I���2���s�8�Js��9�8SS2�3o��4)I�2
d�d��&r�$ޘ������ �Y     