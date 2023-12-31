PGDMP         ;                {         	   Jabes_iut    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17463 	   Jabes_iut    DATABASE        CREATE DATABASE "Jabes_iut" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "Jabes_iut";
                postgres    false                        2615    17464    causes    SCHEMA        CREATE SCHEMA causes;
    DROP SCHEMA causes;
                postgres    false                        2615    17465    orders    SCHEMA        CREATE SCHEMA orders;
    DROP SCHEMA orders;
                postgres    false            	            2615    17466    payment_method    SCHEMA        CREATE SCHEMA payment_method;
    DROP SCHEMA payment_method;
                postgres    false            
            2615    17467    users    SCHEMA        CREATE SCHEMA users;
    DROP SCHEMA users;
                postgres    false                        3079    17468    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            �           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2                       1255    17505    auditoria_address()    FUNCTION     �  CREATE FUNCTION public.auditoria_address() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('address', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('address', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('address', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 *   DROP FUNCTION public.auditoria_address();
       public          postgres    false                       1255    17506    auditoria_categories()    FUNCTION     �  CREATE FUNCTION public.auditoria_categories() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('categories', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('categories', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('categories', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 -   DROP FUNCTION public.auditoria_categories();
       public          postgres    false            '           1255    17507    auditoria_causes()    FUNCTION     �  CREATE FUNCTION public.auditoria_causes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('causes', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('causes', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('causes', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 )   DROP FUNCTION public.auditoria_causes();
       public          postgres    false            (           1255    17508    auditoria_order_has_causes()    FUNCTION     �  CREATE FUNCTION public.auditoria_order_has_causes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('order_has_causes', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('order_has_causes', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('order_has_causes', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 3   DROP FUNCTION public.auditoria_order_has_causes();
       public          postgres    false            )           1255    17509    auditoria_orders()    FUNCTION     �  CREATE FUNCTION public.auditoria_orders() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('orders', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('orders', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('orders', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 )   DROP FUNCTION public.auditoria_orders();
       public          postgres    false            *           1255    17510    auditoria_pay()    FUNCTION     �  CREATE FUNCTION public.auditoria_pay() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('pay', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('pay', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('pay', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 &   DROP FUNCTION public.auditoria_pay();
       public          postgres    false            +           1255    17511    auditoria_payment_methods()    FUNCTION       CREATE FUNCTION public.auditoria_payment_methods() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('payment_methods', 'inserción', NEW.id_payment_methods, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('payment_methods', 'actualización', OLD.id_payment_methods, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('payment_methods', 'eliminación', OLD.id_payment_methods, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 2   DROP FUNCTION public.auditoria_payment_methods();
       public          postgres    false            ,           1255    17512    auditoria_payment_type()    FUNCTION     �  CREATE FUNCTION public.auditoria_payment_type() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('payment_type', 'inserción', NEW.id_payment_type, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('payment_type', 'actualización', OLD.id_payment_type, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('payment_type', 'eliminación', OLD.id_payment_type, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 /   DROP FUNCTION public.auditoria_payment_type();
       public          postgres    false            -           1255    17513    auditoria_roles()    FUNCTION     �  CREATE FUNCTION public.auditoria_roles() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('roles', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('roles', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('roles', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 (   DROP FUNCTION public.auditoria_roles();
       public          postgres    false            .           1255    17514    auditoria_user_has_roles()    FUNCTION     �  CREATE FUNCTION public.auditoria_user_has_roles() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('user_has_roles', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('user_has_roles', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('user_has_roles', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 1   DROP FUNCTION public.auditoria_user_has_roles();
       public          postgres    false            /           1255    17515    auditoria_users()    FUNCTION     �  CREATE FUNCTION public.auditoria_users() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('users', 'inserción', NEW.id, current_timestamp);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('users', 'actualización', OLD.id, current_timestamp);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria (nombre_tabla,  novedad, id_registro, fecha_novedad)
        VALUES ('users', 'eliminación', OLD.id, current_timestamp);
    END IF;
    RETURN NULL;
END;
$$;
 (   DROP FUNCTION public.auditoria_users();
       public          postgres    false            0           1255    17516    visor()    FUNCTION     �   CREATE FUNCTION public.visor() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO auditoria_actor (accion, fecha, id_actor, nombre)
  VALUES ('Inserción', now(), NEW.id_actor, NEW.nombre);
  RETURN NEW;
END;
$$;
    DROP FUNCTION public.visor();
       public          postgres    false            �            1259    17517 
   categories    TABLE     /  CREATE TABLE causes.categories (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    description character varying(1000) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean,
    id_user bigint
);
    DROP TABLE causes.categories;
       causes         heap    postgres    false    7            �           0    0    COLUMN categories.id_user    COMMENT     L   COMMENT ON COLUMN causes.categories.id_user IS 'llave foranea con usuario';
          causes          postgres    false    219            �            1259    17520    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE causes.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE causes.categories_id_seq;
       causes          postgres    false    7    219            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE causes.categories_id_seq OWNED BY causes.categories.id;
          causes          postgres    false    220            �            1259    17521    causes    TABLE     �  CREATE TABLE causes.causes (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    description character varying(1000) NOT NULL,
    image1 character varying(255),
    image2 character varying(255),
    image3 character varying(255),
    id_category bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean,
    id_user bigint
);
    DROP TABLE causes.causes;
       causes         heap    postgres    false    7            �            1259    17526    causes_id_seq    SEQUENCE     v   CREATE SEQUENCE causes.causes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE causes.causes_id_seq;
       causes          postgres    false    221    7            �           0    0    causes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE causes.causes_id_seq OWNED BY causes.causes.id;
          causes          postgres    false    222            �            1259    17527    address    TABLE     n  CREATE TABLE orders.address (
    id bigint NOT NULL,
    id_user bigint NOT NULL,
    address character varying(255) NOT NULL,
    neighborhood character varying(255) NOT NULL,
    lat numeric DEFAULT 0,
    lng numeric DEFAULT 0,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
    DROP TABLE orders.address;
       orders         heap    postgres    false    8            �            1259    17534    address_id_seq    SEQUENCE     w   CREATE SEQUENCE orders.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE orders.address_id_seq;
       orders          postgres    false    223    8            �           0    0    address_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE orders.address_id_seq OWNED BY orders.address.id;
          orders          postgres    false    224            �            1259    17535    order_has_causes    TABLE        CREATE TABLE orders.order_has_causes (
    id integer NOT NULL,
    id_order bigint NOT NULL,
    id_cause bigint NOT NULL,
    quantity bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 $   DROP TABLE orders.order_has_causes;
       orders         heap    postgres    false    8            �            1259    17538    order_has_causes_id_seq    SEQUENCE     �   CREATE SEQUENCE orders.order_has_causes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE orders.order_has_causes_id_seq;
       orders          postgres    false    225    8            �           0    0    order_has_causes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE orders.order_has_causes_id_seq OWNED BY orders.order_has_causes.id;
          orders          postgres    false    226            �            1259    17539    orders    TABLE     �  CREATE TABLE orders.orders (
    id bigint NOT NULL,
    id_user bigint NOT NULL,
    id_dis bigint,
    id_address bigint NOT NULL,
    lat numeric DEFAULT 0,
    lng numeric DEFAULT 0,
    statuss character varying(90) NOT NULL,
    "timestamp" bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
    DROP TABLE orders.orders;
       orders         heap    postgres    false    8            �            1259    17546    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE orders.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE orders.orders_id_seq;
       orders          postgres    false    227    8            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE orders.orders_id_seq OWNED BY orders.orders.id;
          orders          postgres    false    228            �            1259    17547    pay    TABLE     �  CREATE TABLE payment_method.pay (
    id bigint NOT NULL,
    id_payment_method bigint NOT NULL,
    amount double precision NOT NULL,
    name_cause character varying(255) NOT NULL,
    date date NOT NULL,
    img character varying(255),
    description character varying(255),
    id_user bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
    DROP TABLE payment_method.pay;
       payment_method         heap    postgres    false    9            �            1259    17552 
   pay_id_seq    SEQUENCE     {   CREATE SEQUENCE payment_method.pay_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE payment_method.pay_id_seq;
       payment_method          postgres    false    229    9            �           0    0 
   pay_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE payment_method.pay_id_seq OWNED BY payment_method.pay.id;
          payment_method          postgres    false    230            �            1259    17553    payment_methods    TABLE       CREATE TABLE payment_method.payment_methods (
    id_payment_methods bigint NOT NULL,
    id_payment_type bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 +   DROP TABLE payment_method.payment_methods;
       payment_method         heap    postgres    false    9            �            1259    17556 &   payment_methods_id_payment_methods_seq    SEQUENCE     �   CREATE SEQUENCE payment_method.payment_methods_id_payment_methods_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE payment_method.payment_methods_id_payment_methods_seq;
       payment_method          postgres    false    231    9            �           0    0 &   payment_methods_id_payment_methods_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE payment_method.payment_methods_id_payment_methods_seq OWNED BY payment_method.payment_methods.id_payment_methods;
          payment_method          postgres    false    232            �            1259    17557    payment_type    TABLE     0  CREATE TABLE payment_method.payment_type (
    id_payment_type bigint NOT NULL,
    selector_id_payment_type json,
    name_payment_type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 (   DROP TABLE payment_method.payment_type;
       payment_method         heap    postgres    false    9            �            1259    17562     payment_type_id_payment_type_seq    SEQUENCE     �   CREATE SEQUENCE payment_method.payment_type_id_payment_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE payment_method.payment_type_id_payment_type_seq;
       payment_method          postgres    false    233    9            �           0    0     payment_type_id_payment_type_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE payment_method.payment_type_id_payment_type_seq OWNED BY payment_method.payment_type.id_payment_type;
          payment_method          postgres    false    234            �            1259    17563 	   auditoria    TABLE     �   CREATE TABLE public.auditoria (
    id integer NOT NULL,
    nombre_tabla character varying(255) NOT NULL,
    novedad character varying(256) NOT NULL,
    id_registro integer NOT NULL,
    fecha_novedad timestamp with time zone NOT NULL
);
    DROP TABLE public.auditoria;
       public         heap    postgres    false            �            1259    17568    auditoria_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auditoria_id_seq;
       public          postgres    false            �            1259    17569    auditoria_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.auditoria_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auditoria_id_seq1;
       public          postgres    false    235            �           0    0    auditoria_id_seq1    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.auditoria_id_seq1 OWNED BY public.auditoria.id;
          public          postgres    false    237            �            1259    17570    roles    TABLE     '  CREATE TABLE users.roles (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    image character varying(255),
    route character varying(255),
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
    DROP TABLE users.roles;
       users         heap    postgres    false    10            �            1259    17575    roles_id_seq    SEQUENCE     t   CREATE SEQUENCE users.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE users.roles_id_seq;
       users          postgres    false    10    238            �           0    0    roles_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE users.roles_id_seq OWNED BY users.roles.id;
          users          postgres    false    239            �            1259    17576    user_has_roles    TABLE     �   CREATE TABLE users.user_has_roles (
    id integer NOT NULL,
    id_user bigint,
    id_rol bigint,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 !   DROP TABLE users.user_has_roles;
       users         heap    postgres    false    10            �            1259    17579    user_has_roles_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE users.user_has_roles_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE users.user_has_roles_id_rol_seq;
       users          postgres    false    240    10            �           0    0    user_has_roles_id_rol_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE users.user_has_roles_id_rol_seq OWNED BY users.user_has_roles.id_rol;
          users          postgres    false    241            �            1259    17580    user_has_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE users.user_has_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE users.user_has_roles_id_seq;
       users          postgres    false    240    10            �           0    0    user_has_roles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE users.user_has_roles_id_seq OWNED BY users.user_has_roles.id;
          users          postgres    false    242            �            1259    17581    user_has_roles_id_user_seq    SEQUENCE     �   CREATE SEQUENCE users.user_has_roles_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE users.user_has_roles_id_user_seq;
       users          postgres    false    240    10            �           0    0    user_has_roles_id_user_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE users.user_has_roles_id_user_seq OWNED BY users.user_has_roles.id_user;
          users          postgres    false    243            �            1259    17582    users    TABLE       CREATE TABLE users.users (
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
    DROP TABLE users.users;
       users         heap    postgres    false    10            �            1259    17587    users_id_seq    SEQUENCE     t   CREATE SEQUENCE users.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE users.users_id_seq;
       users          postgres    false    244    10            �           0    0    users_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE users.users_id_seq OWNED BY users.users.id;
          users          postgres    false    245            �           2604    17588    categories id    DEFAULT     n   ALTER TABLE ONLY causes.categories ALTER COLUMN id SET DEFAULT nextval('causes.categories_id_seq'::regclass);
 <   ALTER TABLE causes.categories ALTER COLUMN id DROP DEFAULT;
       causes          postgres    false    220    219            �           2604    17589 	   causes id    DEFAULT     f   ALTER TABLE ONLY causes.causes ALTER COLUMN id SET DEFAULT nextval('causes.causes_id_seq'::regclass);
 8   ALTER TABLE causes.causes ALTER COLUMN id DROP DEFAULT;
       causes          postgres    false    222    221            �           2604    17590 
   address id    DEFAULT     h   ALTER TABLE ONLY orders.address ALTER COLUMN id SET DEFAULT nextval('orders.address_id_seq'::regclass);
 9   ALTER TABLE orders.address ALTER COLUMN id DROP DEFAULT;
       orders          postgres    false    224    223            �           2604    17591    order_has_causes id    DEFAULT     z   ALTER TABLE ONLY orders.order_has_causes ALTER COLUMN id SET DEFAULT nextval('orders.order_has_causes_id_seq'::regclass);
 B   ALTER TABLE orders.order_has_causes ALTER COLUMN id DROP DEFAULT;
       orders          postgres    false    226    225            �           2604    17592 	   orders id    DEFAULT     f   ALTER TABLE ONLY orders.orders ALTER COLUMN id SET DEFAULT nextval('orders.orders_id_seq'::regclass);
 8   ALTER TABLE orders.orders ALTER COLUMN id DROP DEFAULT;
       orders          postgres    false    228    227            �           2604    17593    pay id    DEFAULT     p   ALTER TABLE ONLY payment_method.pay ALTER COLUMN id SET DEFAULT nextval('payment_method.pay_id_seq'::regclass);
 =   ALTER TABLE payment_method.pay ALTER COLUMN id DROP DEFAULT;
       payment_method          postgres    false    230    229            �           2604    17594 "   payment_methods id_payment_methods    DEFAULT     �   ALTER TABLE ONLY payment_method.payment_methods ALTER COLUMN id_payment_methods SET DEFAULT nextval('payment_method.payment_methods_id_payment_methods_seq'::regclass);
 Y   ALTER TABLE payment_method.payment_methods ALTER COLUMN id_payment_methods DROP DEFAULT;
       payment_method          postgres    false    232    231            �           2604    17595    payment_type id_payment_type    DEFAULT     �   ALTER TABLE ONLY payment_method.payment_type ALTER COLUMN id_payment_type SET DEFAULT nextval('payment_method.payment_type_id_payment_type_seq'::regclass);
 S   ALTER TABLE payment_method.payment_type ALTER COLUMN id_payment_type DROP DEFAULT;
       payment_method          postgres    false    234    233            �           2604    17596    auditoria id    DEFAULT     m   ALTER TABLE ONLY public.auditoria ALTER COLUMN id SET DEFAULT nextval('public.auditoria_id_seq1'::regclass);
 ;   ALTER TABLE public.auditoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    235            �           2604    17597    roles id    DEFAULT     b   ALTER TABLE ONLY users.roles ALTER COLUMN id SET DEFAULT nextval('users.roles_id_seq'::regclass);
 6   ALTER TABLE users.roles ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    239    238            �           2604    17598    user_has_roles id    DEFAULT     t   ALTER TABLE ONLY users.user_has_roles ALTER COLUMN id SET DEFAULT nextval('users.user_has_roles_id_seq'::regclass);
 ?   ALTER TABLE users.user_has_roles ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    242    240            �           2604    17599    user_has_roles id_user    DEFAULT     ~   ALTER TABLE ONLY users.user_has_roles ALTER COLUMN id_user SET DEFAULT nextval('users.user_has_roles_id_user_seq'::regclass);
 D   ALTER TABLE users.user_has_roles ALTER COLUMN id_user DROP DEFAULT;
       users          postgres    false    243    240            �           2604    17600    user_has_roles id_rol    DEFAULT     |   ALTER TABLE ONLY users.user_has_roles ALTER COLUMN id_rol SET DEFAULT nextval('users.user_has_roles_id_rol_seq'::regclass);
 C   ALTER TABLE users.user_has_roles ALTER COLUMN id_rol DROP DEFAULT;
       users          postgres    false    241    240            �           2604    17601    users id    DEFAULT     b   ALTER TABLE ONLY users.users ALTER COLUMN id SET DEFAULT nextval('users.users_id_seq'::regclass);
 6   ALTER TABLE users.users ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    245    244            �          0    17517 
   categories 
   TABLE DATA           d   COPY causes.categories (id, name, description, created_at, updated_at, status, id_user) FROM stdin;
    causes          postgres    false    219   G�       �          0    17521    causes 
   TABLE DATA           �   COPY causes.causes (id, name, description, image1, image2, image3, id_category, created_at, updated_at, status, id_user) FROM stdin;
    causes          postgres    false    221   �       �          0    17527    address 
   TABLE DATA           o   COPY orders.address (id, id_user, address, neighborhood, lat, lng, created_at, updated_at, status) FROM stdin;
    orders          postgres    false    223   A�       �          0    17535    order_has_causes 
   TABLE DATA           l   COPY orders.order_has_causes (id, id_order, id_cause, quantity, created_at, updated_at, status) FROM stdin;
    orders          postgres    false    225   ^�       �          0    17539    orders 
   TABLE DATA           �   COPY orders.orders (id, id_user, id_dis, id_address, lat, lng, statuss, "timestamp", created_at, updated_at, status) FROM stdin;
    orders          postgres    false    227   {�       �          0    17547    pay 
   TABLE DATA           �   COPY payment_method.pay (id, id_payment_method, amount, name_cause, date, img, description, id_user, created_at, updated_at, status) FROM stdin;
    payment_method          postgres    false    229   ��       �          0    17553    payment_methods 
   TABLE DATA           v   COPY payment_method.payment_methods (id_payment_methods, id_payment_type, created_at, updated_at, status) FROM stdin;
    payment_method          postgres    false    231   ��       �          0    17557    payment_type 
   TABLE DATA           �   COPY payment_method.payment_type (id_payment_type, selector_id_payment_type, name_payment_type, created_at, updated_at, status) FROM stdin;
    payment_method          postgres    false    233   ��       �          0    17563 	   auditoria 
   TABLE DATA           Z   COPY public.auditoria (id, nombre_tabla, novedad, id_registro, fecha_novedad) FROM stdin;
    public          postgres    false    235   ��       �          0    17570    roles 
   TABLE DATA           V   COPY users.roles (id, name, image, route, created_at, updated_at, status) FROM stdin;
    users          postgres    false    238   ��       �          0    17576    user_has_roles 
   TABLE DATA           \   COPY users.user_has_roles (id, id_user, id_rol, created_at, updated_at, status) FROM stdin;
    users          postgres    false    240   ��       �          0    17582    users 
   TABLE DATA           �   COPY users.users (id, email, name, lastname, phone, image, password, is_available, session_token, notification_token, created_at, updated_at) FROM stdin;
    users          postgres    false    244   N�       �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('causes.categories_id_seq', 7, true);
          causes          postgres    false    220            �           0    0    causes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('causes.causes_id_seq', 9, true);
          causes          postgres    false    222            �           0    0    address_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('orders.address_id_seq', 1, false);
          orders          postgres    false    224            �           0    0    order_has_causes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('orders.order_has_causes_id_seq', 1, false);
          orders          postgres    false    226            �           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('orders.orders_id_seq', 1, false);
          orders          postgres    false    228            �           0    0 
   pay_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('payment_method.pay_id_seq', 1, false);
          payment_method          postgres    false    230            �           0    0 &   payment_methods_id_payment_methods_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('payment_method.payment_methods_id_payment_methods_seq', 1, false);
          payment_method          postgres    false    232            �           0    0     payment_type_id_payment_type_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('payment_method.payment_type_id_payment_type_seq', 1, false);
          payment_method          postgres    false    234            �           0    0    auditoria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auditoria_id_seq', 1, false);
          public          postgres    false    236            �           0    0    auditoria_id_seq1    SEQUENCE SET     A   SELECT pg_catalog.setval('public.auditoria_id_seq1', 152, true);
          public          postgres    false    237            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('users.roles_id_seq', 1, false);
          users          postgres    false    239            �           0    0    user_has_roles_id_rol_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('users.user_has_roles_id_rol_seq', 1, false);
          users          postgres    false    241            �           0    0    user_has_roles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('users.user_has_roles_id_seq', 4, true);
          users          postgres    false    242            �           0    0    user_has_roles_id_user_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('users.user_has_roles_id_user_seq', 1, false);
          users          postgres    false    243            �           0    0    users_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('users.users_id_seq', 5, true);
          users          postgres    false    245            �           2606    17603    categories categories_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY causes.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);
 H   ALTER TABLE ONLY causes.categories DROP CONSTRAINT categories_name_key;
       causes            postgres    false    219            �           2606    17605    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY causes.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY causes.categories DROP CONSTRAINT categories_pkey;
       causes            postgres    false    219            �           2606    17607    causes causes_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT causes_name_key UNIQUE (name);
 @   ALTER TABLE ONLY causes.causes DROP CONSTRAINT causes_name_key;
       causes            postgres    false    221            �           2606    17609    causes causes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT causes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY causes.causes DROP CONSTRAINT causes_pkey;
       causes            postgres    false    221            �           2606    17611    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY orders.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY orders.address DROP CONSTRAINT address_pkey;
       orders            postgres    false    223            �           2606    17613 &   order_has_causes order_has_causes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY orders.order_has_causes
    ADD CONSTRAINT order_has_causes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY orders.order_has_causes DROP CONSTRAINT order_has_causes_pkey;
       orders            postgres    false    225            �           2606    17615    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_pkey;
       orders            postgres    false    227            �           2606    17617    pay pay_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_pkey;
       payment_method            postgres    false    229            �           2606    17619 $   payment_methods payment_methods_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY payment_method.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (id_payment_methods);
 V   ALTER TABLE ONLY payment_method.payment_methods DROP CONSTRAINT payment_methods_pkey;
       payment_method            postgres    false    231            �           2606    17621    payment_type payment_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY payment_method.payment_type
    ADD CONSTRAINT payment_type_pkey PRIMARY KEY (id_payment_type);
 P   ALTER TABLE ONLY payment_method.payment_type DROP CONSTRAINT payment_type_pkey;
       payment_method            postgres    false    233            �           2606    17623    auditoria auditoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auditoria DROP CONSTRAINT auditoria_pkey;
       public            postgres    false    235            �           2606    17625    roles roles_name_key 
   CONSTRAINT     N   ALTER TABLE ONLY users.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 =   ALTER TABLE ONLY users.roles DROP CONSTRAINT roles_name_key;
       users            postgres    false    238                        2606    17627    roles roles_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY users.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY users.roles DROP CONSTRAINT roles_pkey;
       users            postgres    false    238                       2606    17629 "   user_has_roles user_has_roles_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY users.user_has_roles
    ADD CONSTRAINT user_has_roles_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY users.user_has_roles DROP CONSTRAINT user_has_roles_pkey;
       users            postgres    false    240                       2606    17631    users users_email_key 
   CONSTRAINT     P   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 >   ALTER TABLE ONLY users.users DROP CONSTRAINT users_email_key;
       users            postgres    false    244                       2606    17633    users users_phone_key 
   CONSTRAINT     P   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 >   ALTER TABLE ONLY users.users DROP CONSTRAINT users_phone_key;
       users            postgres    false    244                       2606    17635    users users_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY users.users DROP CONSTRAINT users_pkey;
       users            postgres    false    244            �           1259    17636    fki_fk_usuario    INDEX     H   CREATE INDEX fki_fk_usuario ON causes.categories USING btree (id_user);
 "   DROP INDEX causes.fki_fk_usuario;
       causes            postgres    false    219                       2620    17637    categories visor_categories    TRIGGER     �   CREATE TRIGGER visor_categories AFTER INSERT OR DELETE OR UPDATE ON causes.categories FOR EACH ROW EXECUTE FUNCTION public.auditoria_categories();
 4   DROP TRIGGER visor_categories ON causes.categories;
       causes          postgres    false    283    219                       2620    17638    causes visor_causes    TRIGGER     �   CREATE TRIGGER visor_causes AFTER INSERT OR DELETE OR UPDATE ON causes.causes FOR EACH ROW EXECUTE FUNCTION public.auditoria_causes();
 ,   DROP TRIGGER visor_causes ON causes.causes;
       causes          postgres    false    221    295                       2620    17639    address visor_address    TRIGGER     �   CREATE TRIGGER visor_address AFTER INSERT OR DELETE OR UPDATE ON orders.address FOR EACH ROW EXECUTE FUNCTION public.auditoria_address();
 .   DROP TRIGGER visor_address ON orders.address;
       orders          postgres    false    282    223                       2620    17640 '   order_has_causes visor_order_has_causes    TRIGGER     �   CREATE TRIGGER visor_order_has_causes AFTER INSERT OR DELETE OR UPDATE ON orders.order_has_causes FOR EACH ROW EXECUTE FUNCTION public.auditoria_order_has_causes();
 @   DROP TRIGGER visor_order_has_causes ON orders.order_has_causes;
       orders          postgres    false    296    225                       2620    17641    orders visor_orders    TRIGGER     �   CREATE TRIGGER visor_orders AFTER INSERT OR DELETE OR UPDATE ON orders.orders FOR EACH ROW EXECUTE FUNCTION public.auditoria_orders();
 ,   DROP TRIGGER visor_orders ON orders.orders;
       orders          postgres    false    227    297                       2620    17642    pay visor_pay    TRIGGER     �   CREATE TRIGGER visor_pay AFTER INSERT OR DELETE OR UPDATE ON payment_method.pay FOR EACH ROW EXECUTE FUNCTION public.auditoria_pay();
 .   DROP TRIGGER visor_pay ON payment_method.pay;
       payment_method          postgres    false    229    298                       2620    17643 %   payment_methods visor_payment_methods    TRIGGER     �   CREATE TRIGGER visor_payment_methods AFTER INSERT OR DELETE OR UPDATE ON payment_method.payment_methods FOR EACH ROW EXECUTE FUNCTION public.auditoria_payment_methods();
 F   DROP TRIGGER visor_payment_methods ON payment_method.payment_methods;
       payment_method          postgres    false    299    231                       2620    17644    payment_type visor_payment_type    TRIGGER     �   CREATE TRIGGER visor_payment_type AFTER INSERT OR DELETE OR UPDATE ON payment_method.payment_type FOR EACH ROW EXECUTE FUNCTION public.auditoria_payment_type();
 @   DROP TRIGGER visor_payment_type ON payment_method.payment_type;
       payment_method          postgres    false    233    300                       2620    17645    roles visor_roles    TRIGGER     �   CREATE TRIGGER visor_roles AFTER INSERT OR DELETE OR UPDATE ON users.roles FOR EACH ROW EXECUTE FUNCTION public.auditoria_roles();
 )   DROP TRIGGER visor_roles ON users.roles;
       users          postgres    false    301    238                        2620    17646 #   user_has_roles visor_user_has_roles    TRIGGER     �   CREATE TRIGGER visor_user_has_roles AFTER INSERT OR DELETE OR UPDATE ON users.user_has_roles FOR EACH ROW EXECUTE FUNCTION public.auditoria_user_has_roles();
 ;   DROP TRIGGER visor_user_has_roles ON users.user_has_roles;
       users          postgres    false    302    240            !           2620    17647    users visor_users    TRIGGER     �   CREATE TRIGGER visor_users AFTER INSERT OR DELETE OR UPDATE ON users.users FOR EACH ROW EXECUTE FUNCTION public.auditoria_users();
 )   DROP TRIGGER visor_users ON users.users;
       users          postgres    false    303    244            
           2606    17648    causes causes_id_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT causes_id_category_fkey FOREIGN KEY (id_category) REFERENCES causes.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY causes.causes DROP CONSTRAINT causes_id_category_fkey;
       causes          postgres    false    221    3305    219            	           2606    17653    categories fk_id_user    FK CONSTRAINT     }   ALTER TABLE ONLY causes.categories
    ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES users.users(id) NOT VALID;
 ?   ALTER TABLE ONLY causes.categories DROP CONSTRAINT fk_id_user;
       causes          postgres    false    219    3336    244                       2606    17658    causes fk_id_user    FK CONSTRAINT     y   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES users.users(id) NOT VALID;
 ;   ALTER TABLE ONLY causes.causes DROP CONSTRAINT fk_id_user;
       causes          postgres    false    244    221    3336                       2606    17663    address address_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.address
    ADD CONSTRAINT address_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY orders.address DROP CONSTRAINT address_id_user_fkey;
       orders          postgres    false    223    244    3336                       2606    17668 /   order_has_causes order_has_causes_id_cause_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.order_has_causes
    ADD CONSTRAINT order_has_causes_id_cause_fkey FOREIGN KEY (id_cause) REFERENCES causes.causes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY orders.order_has_causes DROP CONSTRAINT order_has_causes_id_cause_fkey;
       orders          postgres    false    225    3310    221                       2606    17673 /   order_has_causes order_has_causes_id_order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.order_has_causes
    ADD CONSTRAINT order_has_causes_id_order_fkey FOREIGN KEY (id_order) REFERENCES orders.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY orders.order_has_causes DROP CONSTRAINT order_has_causes_id_order_fkey;
       orders          postgres    false    225    3316    227                       2606    17678    orders orders_id_address_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_id_address_fkey FOREIGN KEY (id_address) REFERENCES orders.address(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_id_address_fkey;
       orders          postgres    false    227    3312    223                       2606    17683    orders orders_id_dis_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_id_dis_fkey FOREIGN KEY (id_dis) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_id_dis_fkey;
       orders          postgres    false    3336    227    244                       2606    17688    orders orders_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_id_user_fkey;
       orders          postgres    false    244    3336    227                       2606    17693    pay pay_id_payment_method_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_id_payment_method_fkey FOREIGN KEY (id_payment_method) REFERENCES payment_method.payment_methods(id_payment_methods) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_id_payment_method_fkey;
       payment_method          postgres    false    3320    231    229                       2606    17698    pay pay_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_id_user_fkey;
       payment_method          postgres    false    229    3336    244                       2606    17703 4   payment_methods payment_methods_id_payment_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.payment_methods
    ADD CONSTRAINT payment_methods_id_payment_type_fkey FOREIGN KEY (id_payment_type) REFERENCES payment_method.payment_type(id_payment_type) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY payment_method.payment_methods DROP CONSTRAINT payment_methods_id_payment_type_fkey;
       payment_method          postgres    false    231    233    3322                       2606    17708 )   user_has_roles user_has_roles_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY users.user_has_roles
    ADD CONSTRAINT user_has_roles_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES users.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY users.user_has_roles DROP CONSTRAINT user_has_roles_id_rol_fkey;
       users          postgres    false    240    3328    238                       2606    17713 *   user_has_roles user_has_roles_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY users.user_has_roles
    ADD CONSTRAINT user_has_roles_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY users.user_has_roles DROP CONSTRAINT user_has_roles_id_user_fkey;
       users          postgres    false    240    3336    244            �   �  x��V�n�6=+_A���$�����(�z�eD������or�C�~�~�oHɖeۛ=g޼y|�c�Z.�;W�6ީ�!����������Z�o>ެWWcm��Y�\�FJS�;��<�g^(v;�KR>�ș�T��zU۱$��fg|$Y�ؘ`ڎ,V��XEF��hr�T|�$��ٵ�%�et`v��YBv��6\Qu�������
r�t؜�T�C-��-�:!Ş%�j�آ���A�X��L�T�_����c��]%� i��A�����N�rϭ9x�g�BCV	��� �F�զ��&$-5�@j�>D 0Y�i�4h�0��V�k
\�'Z�LP��"���{Ks8���G�l�d��L�����1Q�]��L-��>.hR��fܰ��k�0��%�hYg^��$;�����㜧*C���H�P�\|`�Α[�n���Ie(J�orI��x���H�ڣ���(�Pi��#A߈p�Χ�!/SD���%fj��DA&���K�<�'�놢��UO��;P��u�����������X"�à0T��@7ş�����<�����%h�r�v!��R!�1Q�}�{��p�RR|�0Ƞb*�u��z}T����@Œl8����@���ԥs�TK���<��`�/�rN�|@�z�p�:&,���<N��\��Bm\�<�	�G��Ð Ǳ�,�Nd.-Z#����lވ�[�v�;h}��T�A9�[t-�~�(YW�Ι��$I�#��O	~�{2z�+U[/�+��>v)�����՘�x��Z�f7���ڗj0�Ÿo1#��\����@"Xǐ@��rQ�.D?=�󵉃�m&.��H��C�{�*�'�D���B��!B%i�[��vCF��~��%"A#�A��P�@����br������4��7b�����Vla��i��,g�	>v8���ؘ�~e݂�4� :˞����O]Q���Ŕb���ŷ�d���if�]��F?���G�՞E>9!��"��$���z����M"�[:�S��������j�GO�����n�ɋ�фM��q�@a�W*ho)� K�4L�$�	�Tb��8pf�*yqĉ��7[���J0�6Q�%�1���@�T��Tg>7K%X�sÉ3�NC8��h��/����BP)&��R�Z�$y&$� ���=�W��׫1I������,e&�      �   !
  x��YM��8=;����`w�������d`&Yl�7s��(�aF��d�����}X�'��+R�� �����,�d���իR8�-�]�rr��]0iX[r�ײ��T�����nY�kN�o�-�S�ң_��R֚ݱ�E�SY�Bɲ���������`�MÓ\
�r�|o�MYU뢕;�f��F��ɜm���s�לU��/�%��j�����m%���G�LYR���J�i�t��T���Tɱ-2����H3�E��ךeӪ��Ԓ��3�����愦i�CBu_Kkh�Y���6J�[����,UFԪ�v ��@�OB
���3<oS,��V4j�1\���`D���K���W��n�u�=LY�3�����L�jk��^�x��&��^[��`E�`����l%S��[�6ځ���|Ӻ��6�D�CF�k^���!X+U�R���\�OMS����L�2�8�^Zˋ���\�J�8�r�]&��y"���*Dr�+S��>ח��������؋�������k����I
?�S͖�J�Bߗ�x%�,\a�2N#���Y4_D��eQ���,
&��3o9<6��ѕM������F��o�ݾ{}s����^���@l�ǰw���*�%��-�FX�7����$���y����o��ǘ�����VV������D�����ǅ[+-8f`�ֺ�kIDV��K�m$)�uGZ�0&z
���멢js�^/78g���$K��)s����s�Ⱥq��/�βk]���n���c$�� �u�kf��*p6��/��{@0k�`K7�f|Rxc#kc��wMNT��չ���?Z6E��G�4��Y�E|��V���ax��Y+�eY����yE�W�a�ӽ��`�k-eYI.��rC��ȯ�6�@��@`�E�쵂j�1j�`-���s� K�l
e1MS���*lP�HLIA���[<���5#���c9Qzg�/y+>M`0�����@��j��t\hô�y��:0h�\"��'�&��Ϳ�D^�m� �B�A+�R�paOoH�H�Vy�R*��t�4����h�����:sl�%[��H�Xkx�6d�,�\�R]5x�����kV;��d助d�jc�Ry|nl<5�m5$�A��&�B;�%��ӝ����1��a��E�?��#�àU���P<s-C?��y"=��j^CT.b1��U6�����E�Y��1�~W��0��gQx(=�+�?qoa�k>��T�u��؍M�Ґ4d�u��\VC;�-R2$v�#�w^߱_�����izg�CΠڑX�x�jn���Ht�iv�����F�VMk��B���uQ*����M����V��伝���𡴀����{��&�����g�6����@@�/N`�ި�ȉ��������I!����F�,3Mh8=vl��X/���G�J"�)M͉�fB�)4�?::�:Vh�O�G�)��tO�@����J(����\D�y�Sf	�NW~2K���BF3H�`�,�#���|q.��^tB�|W����X��%��rŻ��9��Z�� ���0�8���n$��R�y��|E�&�� 1�x��p�su:��i��+��$��^��}k����k����%���t�d�� ����e��@�&#$�5V�������kSuO>�1���E��c�p��O̶��k�/�2ߪ�;WϨl��F3�f-	�n����HH��~(�~���<Wu��S&-��8�C���7L�ϲ;��C-vXz~t2��ʋd΄�g�|�D�˼Y̗Q,�h�d�l��1�]-��'�_�h�|�}d�S���&t�����\!�A�?u����Ûw|`��qJ���Q]`%1�f���0O���}��M/+V�x1�vu�Y6�y��-kW،Jo%y�uM�A�U9/17�|�ԋkI�@��CW��F�rj4�T?�6��T�\0��4៭u0���>��Ö.Ҭ��a�6L�]R�S�
��ȍ��'F'��/U��]��-�O2�o�b�j�m��>���a[a���b+����r-�U�u�Ժ̶Ua4��U�zc�z�jY�uOD�C�W]�p̋z��\�����H�����8wh�"�� ���nS�����v]�beKp�3����ՙ$�|������~�QX�/��˲(X.�i�Q���e�-.&�&�*x���m�*3���� e2��O��
vۦ�u�}�mo�j���օ����H�(���t��C�&I� ��O�`ѷ- ��i,���Z����,��X-c��ʝdQ���~|W�B�DH=#�ϯ��*:u�}kX���ߊ�X�(�bx�9��#�����ӥ��f�R
iv]4"s�ζm���Ħ�K���'I��b`�\��=�r�/G���)X�A��s�Ɏ�y�z���b�|I����(�â�
UϿ
��_�&oM�#ؿP��lr�c\�i��N7�IIA�o�(ո�Y%��5T��Ԯ,d�>�mÂJ�TVԇ���~�w �91�����/�gl<��{&��ˢ0^R� ��ѱ{`�� <q���ǋW�^�%J��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   :   x�3�4�4202�50�54Q02�22�20�*V�GȘ*�Y�[�c+����� T�w      �   �   x�3�V
HL�Wp�L�,I�Q�R�Pr.�,(����KMI,V�Q�P��Y�����T[�	�*�ɥs����(X�Z[`+�2:�����5�8S�(� d+B$75%393/d!Da����������V��=... ��A+      �   �  x���Kn$7��=��>� �D��``�4�l�"�V����zؙVI�j��_��H�'.�_��~��\���\�?=��Ϸ^�#���W�����4��/�����O�?�<��XQ�ѸQr" d�~f�_��>}{�M��9H&��/ǎ�n�FL�2#o��K�G=k�Xx�4��C�\����ϟ��/�&`N:�P�x�����|����;q!
�V��Ёl�-z$f|5��Ǘ�{�:�h#t�4V� �?��z������?�S˘]� ��^b��w�������~gZ7
vV��6e����9��\��7
�&jM�K��\,$��dF7ON ��1	���_n�����ɼ!*�6�&�vmhi�D-��xW������o�O%�!�pQ�-6�v%������c�|����2�������K9>�+�c�1Z`�k�-��ɱ�jd���L� 'k��gX�TF,����֎��:\�eu�DJ�`Z����� �FV`nː��T�!�����ޡW�)�V �H��;�=����6�1N��,�b���_��_����}{�����ا�w'���[0����2#0qi��O�;h%)��K)I�	�s��,XH��P�3�R�a|@�$� EU�yyF���\"R-I�3]�=hٜ���Z���w������KBⱞTq\�i*w�c�Y����s�P	.��B>!�W�=6m��s��1�BX��)�9F�����9o�8���RiD�
�����c�1��H��Vy�9bKkU)�gJ���N���ގM�"6oH�"�®S,a��b�R!��g�4?q�d�~�J}�9�+�9�"���肵o,�[�t��<7R��E})��*L�Gi�k��sFmzȒ/��W)�9IN�$�f��\pL�Sr�8Z���.q�M�����N�/�*"_�M��8,iB4[� &j�w��"������~�	(=h�ě�$u�����f�*Y	�!y����L���=X���.\X��w�ڔ�I�������:�X�'`����RLJi�t�FR^��4�\b��(y��R�P;G�%����y^��T����Ɯy	�<Ht �ײ�� �f��_�pE;X��5�p<�$�8��ސN�"�l �]����F��eb��6?���5Q/���J#R�50��)�A&gcl%��Ǎ��&��Xׂ�ܤTI{kU=��;Hk|��-:z��dzm�g����_��J{#����O�l����b4������sT_1 ��{�l�MK$j�,oF$� (��ِ="M�%om�����)��#�r��ry�$H����l���x�Fv�,6���۪G}Gz*�ɽC5˝�N�&_��8�;#��)����ψd�!��,�S��(k��Y�TKO	�2:}h�nG3m)�I"KZn+@=c�@�Y�?���E�ԛU@�k�v���S��) (��f���K`a�1l)�>�}�i���]�f	�����ϞG�I:��xL�`mF<��U>I��VA��O��ĆӾ�"k37�8#�*�,6���:Έ���m�i�.0�v���O����?WE`M��,L�#������FxL����+���[ns�g�=%u�}���BxD�[�1�a��1�6���V�,sF��8��e���SG!��U�؝��9m��0<{�F��z�7Rf�3&m����V`Y��P�ևM�ׯ- �Om4���8��}���?Q%*0      �   l  x��Q�N�0}޾�'�J��-!f2��Љ�_JWF����v�zL��[﹧��sn����b>���jL(}�4���W-uo�WaL�A_k�fF�%�C�Za��R��&-V�vOXv(A ��<P����p*4�ݩ��ҍ؋�x#�_���:n�6�7!	��]��$
�(>�Y���,-��t�ϊ?���� �m_IK��H<��*>��)��j:���CT\�n�׈�N�*b�]�&��c7�*S	s�l�D����C/���E�4/�ɬ<���N[�6-!��h�,~p.[w�ٌ\'I�*����]m���B�ۮ�巋�E�(��LA�R��/;���8}�X�J�K�u�:���[���O�F�5      �   B   x�3�4B##c]s]cCc+CC+SS�b%\F �$�7�7&A�	�)�{L��A�X	W� �q#2      �     x���[o�@���_�'�6٫�k���šMT��4���2���ڽ�_�S��H�0{vG;�|$��ћ{��������E=�m?�u0�p4[��HQ�	�����t�;0��~h�t��m�tW������i����P�5���vx�o�E3�}!�IB��[]��B��
6��Z%x̐'�#1��G��G�� ��2ŕ�Bic@D����8f�.�yvy ��ksj�e1O��)Yi�n>	;K���>_��j2>�V;�<.�f��d'�ٝ��a��]vݯ�Ek���%k�=��P5��c�����Ӣ�[Kη9����&�;�.��k���o��,W����e��T�oDI!ޭJ1eK��a	!�h<�8�4���UPV{�`��ֶ���qI"a�*��T�*���A:bG��q&c�8�,D`"�(�����~�A$�&�����/�����A]��Tp�J�#.���=Op������<���W�@2>���L2gG�X[�AH��'H� �an����^���I��[�u     