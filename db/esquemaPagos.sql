PGDMP     8    ;                {            jabes-first    15.3    15.2     &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    16732    jabes-first    DATABASE     �   CREATE DATABASE "jabes-first" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "jabes-first";
                postgres    false                        2615    17058    payment_method    SCHEMA        CREATE SCHEMA payment_method;
    DROP SCHEMA payment_method;
                postgres    false            �            1259    17059    pay    TABLE     �  CREATE TABLE payment_method.pay (
    id bigint NOT NULL,
    id_payment_method bigint NOT NULL,
    amount double precision NOT NULL,
    name_cause character varying(255) NOT NULL,
    date date NOT NULL,
    img character varying(255),
    description character varying(255),
    id_user bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE payment_method.pay;
       payment_method         heap    postgres    false    6            �            1259    17064 
   pay_id_seq    SEQUENCE     {   CREATE SEQUENCE payment_method.pay_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE payment_method.pay_id_seq;
       payment_method          postgres    false    222    6            *           0    0 
   pay_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE payment_method.pay_id_seq OWNED BY payment_method.pay.id;
          payment_method          postgres    false    223            �            1259    17065    payment_methods    TABLE     �   CREATE TABLE payment_method.payment_methods (
    id_payment_methods bigint NOT NULL,
    id_payment_type bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
 +   DROP TABLE payment_method.payment_methods;
       payment_method         heap    postgres    false    6            �            1259    17068 &   payment_methods_id_payment_methods_seq    SEQUENCE     �   CREATE SEQUENCE payment_method.payment_methods_id_payment_methods_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE payment_method.payment_methods_id_payment_methods_seq;
       payment_method          postgres    false    6    224            +           0    0 &   payment_methods_id_payment_methods_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE payment_method.payment_methods_id_payment_methods_seq OWNED BY payment_method.payment_methods.id_payment_methods;
          payment_method          postgres    false    225            �            1259    17069    payment_type    TABLE       CREATE TABLE payment_method.payment_type (
    id_payment_type bigint NOT NULL,
    selector_id_payment_type json,
    name_payment_type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
 (   DROP TABLE payment_method.payment_type;
       payment_method         heap    postgres    false    6            �            1259    17074     payment_type_id_payment_type_seq    SEQUENCE     �   CREATE SEQUENCE payment_method.payment_type_id_payment_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE payment_method.payment_type_id_payment_type_seq;
       payment_method          postgres    false    6    226            ,           0    0     payment_type_id_payment_type_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE payment_method.payment_type_id_payment_type_seq OWNED BY payment_method.payment_type.id_payment_type;
          payment_method          postgres    false    227            �           2604    17075    pay id    DEFAULT     p   ALTER TABLE ONLY payment_method.pay ALTER COLUMN id SET DEFAULT nextval('payment_method.pay_id_seq'::regclass);
 =   ALTER TABLE payment_method.pay ALTER COLUMN id DROP DEFAULT;
       payment_method          postgres    false    223    222            �           2604    17076 "   payment_methods id_payment_methods    DEFAULT     �   ALTER TABLE ONLY payment_method.payment_methods ALTER COLUMN id_payment_methods SET DEFAULT nextval('payment_method.payment_methods_id_payment_methods_seq'::regclass);
 Y   ALTER TABLE payment_method.payment_methods ALTER COLUMN id_payment_methods DROP DEFAULT;
       payment_method          postgres    false    225    224            �           2604    17077    payment_type id_payment_type    DEFAULT     �   ALTER TABLE ONLY payment_method.payment_type ALTER COLUMN id_payment_type SET DEFAULT nextval('payment_method.payment_type_id_payment_type_seq'::regclass);
 S   ALTER TABLE payment_method.payment_type ALTER COLUMN id_payment_type DROP DEFAULT;
       payment_method          postgres    false    227    226                      0    17059    pay 
   TABLE DATA           �   COPY payment_method.pay (id, id_payment_method, amount, name_cause, date, img, description, id_user, created_at, updated_at) FROM stdin;
    payment_method          postgres    false    222   i$                  0    17065    payment_methods 
   TABLE DATA           n   COPY payment_method.payment_methods (id_payment_methods, id_payment_type, created_at, updated_at) FROM stdin;
    payment_method          postgres    false    224   �(       "          0    17069    payment_type 
   TABLE DATA           �   COPY payment_method.payment_type (id_payment_type, selector_id_payment_type, name_payment_type, created_at, updated_at) FROM stdin;
    payment_method          postgres    false    226   B)       -           0    0 
   pay_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('payment_method.pay_id_seq', 37, true);
          payment_method          postgres    false    223            .           0    0 &   payment_methods_id_payment_methods_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('payment_method.payment_methods_id_payment_methods_seq', 2, true);
          payment_method          postgres    false    225            /           0    0     payment_type_id_payment_type_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('payment_method.payment_type_id_payment_type_seq', 6, true);
          payment_method          postgres    false    227            �           2606    17079    pay pay_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_pkey;
       payment_method            postgres    false    222            �           2606    17081 $   payment_methods payment_methods_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY payment_method.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (id_payment_methods);
 V   ALTER TABLE ONLY payment_method.payment_methods DROP CONSTRAINT payment_methods_pkey;
       payment_method            postgres    false    224            �           2606    17083    payment_type payment_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY payment_method.payment_type
    ADD CONSTRAINT payment_type_pkey PRIMARY KEY (id_payment_type);
 P   ALTER TABLE ONLY payment_method.payment_type DROP CONSTRAINT payment_type_pkey;
       payment_method            postgres    false    226            �           2606    17084    pay pay_id_payment_method_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_id_payment_method_fkey FOREIGN KEY (id_payment_method) REFERENCES payment_method.payment_methods(id_payment_methods) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_id_payment_method_fkey;
       payment_method          postgres    false    224    222    3211            �           2606    17089 4   payment_methods payment_methods_id_payment_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.payment_methods
    ADD CONSTRAINT payment_methods_id_payment_type_fkey FOREIGN KEY (id_payment_type) REFERENCES payment_method.payment_type(id_payment_type) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY payment_method.payment_methods DROP CONSTRAINT payment_methods_id_payment_type_fkey;
       payment_method          postgres    false    226    224    3213               ]  x�ŘK��F�ת_�Uvծ���`�d��0�&B��q�m�$�>W��t[�v�i)xc��o�=�
��.O�����
4H�x��>n�o�]�������_~���cOV���&�s��qm�v�G�y��x�6������O����d���Z*��S[}��.��~�)��nմC}�����ds+��l	.�)'k3�:�C�^wۃ<���Ҧ�����M��pW���?ͺZ���vH��f��ɷa�����o���Ec�3�������c�l�W���v��q�1����v��&]E0:���[�i��7 Y���Ӕ��6,����K#L>�� k�b�ޑq<c,�s��K2�H>�0#Jǈ9M�y�PJ-y.�X҄r�����;��d,����5%�uAJo�؈3�ҚҸ����@���`NS��R�1b�3QR�YMIX��P������sQ�''v�<�=`�����4�qLNS0��\5=�0K�$_Z����Gls1LqL��e��qSi�Օf+!D��yM�5\�ML�&�'�)��^M��i픲&Ɔ�W]��E֡�VCJ������oR��M�`9L+��F cҝ�����:R�ڂE ۈ�ML?��̞5��d���Rڏ�D0���vr��l`H3t^�ĵ�A W�:��A"����h
�|3�������{q^�^Mᘀb�S�8�3Nn�q�i�W�]�LБu�p�&B�g\�sX[Z�i
�_|sLF����3���v�c9StU�^��� C�����6\�4������S��i:xe���)���45�E�I�yW2�j
�x�d�Ƚ����>�i�&�mNS�,iA�q��\�6�����a� �ENSxN5��������R&�\�s����(��3q:�@q����ZI���!q�.�NX��uUM.�����%���=��#c��ի(�:d�C��ڜ��g�;����7�\F	/�,�~єԱ�����j�7�����3�z�]���6�O��;�F��9+��%r�"�u����2c1�4��� �lNSd�I���1�V� ��[�i��W>a���t0�ޅ��|���(�|]C@��p$(�ﳲ���N)�����          \   x�mλ�0E��o�,�_�Y�D��S\]!!e�ʣ��P	�����Ha#3��z���g'��y}X�Z�{�5t�|f�� p�0m      "   \  x��S�n�0=㯰rf��P�[	�J�T�Kۃ�#���� ����@��T\�2o^�:o߁6je!�p���&��@*&@)���R��^��o�~>:���e�ډ�(�=�b2�aJI��P���,��P&�/���<=*��hS��04l$��[�[�V_�uqc[. ���k��?u�`�P��ZPwͬ�:��Fgy�_B�����o���L�,�3fy��һ��j���=)�7/�W��%u�&�)�c��&	�BJR�|����Jk�����W֙>�W�+��-�R���ؼ�V^�.ͦЎY�y��}Je���NGw{4�ȇ��>B��;�     