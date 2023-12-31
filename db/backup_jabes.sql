PGDMP             
            {            jabes_db    15.3    15.3 4    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            6           1262    16398    jabes_db    DATABASE     |   CREATE DATABASE jabes_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE jabes_db;
                postgres    false            �            1259    16706 
   categories    TABLE       CREATE TABLE public.categories (
    id bigint NOT NULL,
    user_id bigint,
    name character varying(180) NOT NULL,
    description character varying(1000) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16705    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    224            7           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    223            �            1259    16654    products    TABLE     �  CREATE TABLE public.products (
    id bigint NOT NULL,
    id_user bigint NOT NULL,
    name character varying(180) NOT NULL,
    description character varying(1000) NOT NULL,
    image1 character varying(255),
    image2 character varying(255),
    image3 character varying(255),
    id_category bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16653    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    222            8           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    221            �            1259    16415    roles    TABLE       CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    image character varying(255),
    route character varying(255),
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16414    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    215            9           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    214            �            1259    16440    user_has_roles    TABLE     �   CREATE TABLE public.user_has_roles (
    id_user bigint NOT NULL,
    id_rol bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
 "   DROP TABLE public.user_has_roles;
       public         heap    postgres    false            �            1259    16439    user_has_roles_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.user_has_roles_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.user_has_roles_id_rol_seq;
       public          postgres    false    220            :           0    0    user_has_roles_id_rol_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.user_has_roles_id_rol_seq OWNED BY public.user_has_roles.id_rol;
          public          postgres    false    219            �            1259    16438    user_has_roles_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.user_has_roles_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.user_has_roles_id_user_seq;
       public          postgres    false    220            ;           0    0    user_has_roles_id_user_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.user_has_roles_id_user_seq OWNED BY public.user_has_roles.id_user;
          public          postgres    false    218            �            1259    16426    users    TABLE       CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    phone character varying(80) NOT NULL,
    image character varying(255),
    password character varying(255) NOT NULL,
    is_available boolean,
    session_token character varying(255),
    notification_token character varying(255),
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16425    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            <           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216                       2604    16709    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ~           2604    16657    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            z           2604    16418    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            |           2604    16443    user_has_roles id_user    DEFAULT     �   ALTER TABLE ONLY public.user_has_roles ALTER COLUMN id_user SET DEFAULT nextval('public.user_has_roles_id_user_seq'::regclass);
 E   ALTER TABLE public.user_has_roles ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    220    218    220            }           2604    16444    user_has_roles id_rol    DEFAULT     ~   ALTER TABLE ONLY public.user_has_roles ALTER COLUMN id_rol SET DEFAULT nextval('public.user_has_roles_id_rol_seq'::regclass);
 D   ALTER TABLE public.user_has_roles ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    219    220    220            {           2604    16429    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            0          0    16706 
   categories 
   TABLE DATA           \   COPY public.categories (id, user_id, name, description, created_at, updated_at) FROM stdin;
    public          postgres    false    224   C>       .          0    16654    products 
   TABLE DATA              COPY public.products (id, id_user, name, description, image1, image2, image3, id_category, created_at, updated_at) FROM stdin;
    public          postgres    false    222   �B       '          0    16415    roles 
   TABLE DATA           O   COPY public.roles (id, name, image, route, created_at, updated_at) FROM stdin;
    public          postgres    false    215   0J       ,          0    16440    user_has_roles 
   TABLE DATA           Q   COPY public.user_has_roles (id_user, id_rol, created_at, updated_at) FROM stdin;
    public          postgres    false    220   �K       )          0    16426    users 
   TABLE DATA           �   COPY public.users (id, email, name, lastname, phone, image, password, is_available, session_token, notification_token, created_at, updated_at) FROM stdin;
    public          postgres    false    217   L       =           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 6, true);
          public          postgres    false    223            >           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 5, true);
          public          postgres    false    221            ?           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    214            @           0    0    user_has_roles_id_rol_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.user_has_roles_id_rol_seq', 1, false);
          public          postgres    false    219            A           0    0    user_has_roles_id_user_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.user_has_roles_id_user_seq', 1, false);
          public          postgres    false    218            B           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          postgres    false    216            �           2606    16715    categories categories_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key;
       public            postgres    false    224            �           2606    16713    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    224            �           2606    16663    products products_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.products DROP CONSTRAINT products_name_key;
       public            postgres    false    222            �           2606    16661    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    222            �           2606    16424    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    215            �           2606    16422    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    215            �           2606    16446 "   user_has_roles user_has_roles_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_pkey PRIMARY KEY (id_user, id_rol);
 L   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_pkey;
       public            postgres    false    220    220            �           2606    16435    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    217            �           2606    16437    users users_phone_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_phone_key;
       public            postgres    false    217            �           2606    16433    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           2606    16716 "   categories categories_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_user_id_fkey;
       public          postgres    false    224    3209    217            �           2606    16669    products products_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT products_id_user_fkey;
       public          postgres    false    217    3209    222            �           2606    16452 )   user_has_roles user_has_roles_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_id_rol_fkey;
       public          postgres    false    3203    215    220            �           2606    16447 *   user_has_roles user_has_roles_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_id_user_fkey;
       public          postgres    false    3209    220    217            0   �  x��V���6��� \�k;��sw� �ҦQc/�TH����ly��}�~,oHI��.�=�o޼y�f�]|���45|��{'U�Z}�bw�� �Ñ�y%m��^ԡu��/�5G�#���Ӵd��w�*2��F�S���+� |Ů��,�#��ӆ�������;�56����-��������j�Tip�)���Ty�ǚ����_K�DKU�ujK�އxі��V�~M�x��l�/Nܘ�G}%�d��
��!a	�l�\m�nB�ZQ�_ ���C�EmA�FN���ѭm�tMA�k�Di�	*�BU��_r��g�>�@ �m��[lﷻO����Oj�x�ﶷbKD_����P����ך6����=	6ֹ���'�-�N룢~���Ɛ����$�١n��,���}}�����HpQ{���G����;�I~��X#�0���/�O�C\��H-K�ThyC)�c�$��/�R�pj��N})��ހ��uIo�*L��]OU�9�{}�dItS�)�O#
�M�y_��s�V��&*GMR?�����=ފ-w����;I�B�����������sĸ@���
8�d0^r�J�+�h�[%��Ķw��B�l`��e]f������o�̿��_��l���#�k͢�q��`$��;�B����[��h��z�}9#.3�4�8W��*�)!�8p��Z���Q�.[�3�I�6#��M	~�'2z��6^W��<l&�����~��[�"VS�4|�j�Ցu/g�fWþՌ�3�2S:��`}������T��𕉽s�=>�h�ݻ�z�*�'W�D��PB��B#��q�fhBF�I�!`��HPȺ�A�=�}+��4���<�b#(o-ͺ~ō��5�6z��lo�/��4���3.�9�����H�����pH\l����<�ߊ-����\ox�eFsm���E5���ǂ��>��|i��n��@Y5\��r�&�����N�}J�0{q������nn���n���ɳM1����	�[
"��5�=�`>q�~�93D��4�DF�[-�C�@{��u�n�Fs��B:��PzW�6KX�s��3NMU=����r���[�寐�onF���"�l.��-����7�[��_w���?���      .   -  x��XMo�6=ۿ��"쵴�k (Z�	4I��p
J��t(R%�E6��G|(��������G.�aMRÙ��7���΍U;��Pr-��F���W��o_3�X�9+S�1cK��w�K�1���h'�#�ͪ�ʱ�r]`vˬp���T�
f�(X����yz�\�Lv)��گ�ƋRX��
��I�g�4��Qʜc����w�l,�p���XÜq^h�)�jn9Y��sRm��V�3e���𢩸6n�1�g�2xG�"��@1�Mw��ό-��ϰq��sS�%9��=˕D��̱���-�+X�h�2�waƙ�
�V�w�a�yc�1r2��p��J�r�~�6�����r)t.y0,5�/��ꖜ�
)7���fa�"h4��)�w��&��"e!eY�rrZ5]]H�͆����:�no���!�4+���ǈ}n��(q1E�PS�8
�h���<H{�0�ݵ7Uf��c�sX!L�֍��a�������@���bY��.������ZZ��ĜG8��ƔJ�Z�6?�$G��%�\].ד<ᗫ���HV��t�Jf��l�J��\�7�($�ś�B��ODV�W���r�N�:\���y���g.���d��<ZL�O�h�7NƓ�dq8^�]�'��pl��X{ra%��5�P"�ޟ��D���n��$h��e��uGaTK�ݲ��WT�iQl�FQnN��ٗ�_2��U&���_��x KJ+}�h�2�8��5����"DVec+�E�;�3��|<>ԅ�j`����v8D|@�
��	�(!,�߳ͣ�� ����y��6�6��4MV{���o��qdW_��`�{�L��*�<8�tt���Z�`����9Xc�h�	�b=[��g���$�>�ğˣ�|�xY-���i�w �<�$�����x�?�ivn*���>�=��M_D(�O�5�D�Q1b�]{��%Ȟ��
a�-�>4�$1F��y��-���49�k�j�&X����w�<3e�P	tC�p+���&�}Io�c%ݠ�6[�|{�k�V�l����eX��Nl�I!|/��R���"tA����x/�:q�K�����?��!�eL�T�˭4����/�P�a
��q���M�܂�n�'���mX&I��W�t�����*�	�kI��<Tp�Eƭ6�7�OG���e��f"'W�#����,����A�^ ��Pw��6!ث�e�Y���W�4���/�{��t�L^�G3���<�ܓ��8�>2���.7$;�>�~>��^}z�N�S���o�ΨL��C� E\�}�{�Q�(��9�w�rPnL-��W�Q��rT��^CS��M�cl����h��h7�+�H�#e���� ���+�Q�?�Ð'��YG(�����d@��f
�����a�2k�"�S��E��Z�ԝrB�B�W���	d3tqӝ��K)��e{.9��$�Y�� ��pV/̣��9�ݗ��4ydl���#q^����=�t�n-��`�@�24��< 4`��QZ�k��ESI#�6^S�۠�����KA�l�
��ńm�p��^[��8߭�L��b���"�7���?k<@���kzc���y�;�lo�j0T�p���wꙗA|P��A*2`AO��q��ʃ�xL��>�Aet�W�����E��Q�]�� ڮ=^@B@h�*Z�8��Ԟ�C{�G�t�NH��Xc\PJ�ṍ���^A�n*��*ɗ\��t�
��>�?{<�s��3蔢�'�R|&ޚΓI2{I,�������h�xb���8j�'�� ���=�����%ǧ      '   ^  x���]O�0���_�w]���� Kp�DC�7�+��vZz:�z�P.�h4��������z�<���9����Z�qH�ah(ʀ���i�i�;����`	( ڨ��D���Df�����s�nP�@${U5`�9���<�ݎ��5��HP���l�n�zLV'Q�[L�)�AZI�^7��H8 ��U��]��x�y:͖�)�����LޠU�0Ĉ��[�Ì��>\��|@^
��P�-5���K�ME���{^<�M��a�ǓE~1@ 7Gm��xaP�u�yk���\�ٍ\ggE���]��)�L���M9��|����)QP�����wz4�=V���Q/���o�l�      ,   k   x�m���0���
5��<���Z���;X,=(�S�To�&Y��>�n��6��Ki�)#�+C��#�+��md��0��F��������}������p} � Δ@"      )   �  x��U�n�8}���O���yI�nob��So;1
,H��eI�!�����cK�h�E\�0�R1:�sx�C�vuV���E���k���ݿ��@�#�i,�*5DR��Jk�"w:!�m}�v1	!� Sc|P�}T�V/�?���Ҧ�����QFO�B1�bȎaveK����[ ��r��4q���j��f[�ja���ZVm������=�[)m�ل����j6���|��'����HH	%����Ul�yn��m[�v��g'8�"�!�B�jBF�����;�9&1�1�ǰ ��]���̷7��`����&Q��1,���� !oś#)�/��c��a�����v��Tp��K���"�_W8uJ�Ԡ�BABɡt.�N�H�S��"�a��1,����Z�l��FrCI�����ǜU�ґg�9}V�P甥�Dt�S���ێ}.��ɮ�ar���q�4��ofΓ(�7����z�ͼV���|X���F���t��]:�6Iv���&��q�����i�?#n����c����?��$�x�~ g�,�N���6�7�����ݑrŘ��]�ܗZ(_����N �T�Z{�h���p�*�
���)��R)҈k�C#����h��{J]�F�����'(��P)������M.��ìh���^����b�z��������{ؽ9OD���Ȏ��E-�.̇��&�ܔlwȯ��b����X�V*�_>�Xv ��� 0����?��g�     