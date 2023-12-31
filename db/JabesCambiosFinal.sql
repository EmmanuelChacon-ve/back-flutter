PGDMP                         {            JabesCambiosFinal    15.3    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32841    JabesCambiosFinal    DATABASE     �   CREATE DATABASE "JabesCambiosFinal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
 #   DROP DATABASE "JabesCambiosFinal";
                postgres    false                        2615    32842    causes    SCHEMA        CREATE SCHEMA causes;
    DROP SCHEMA causes;
                postgres    false                        2615    32843    orders    SCHEMA        CREATE SCHEMA orders;
    DROP SCHEMA orders;
                postgres    false            	            2615    32844    payment_method    SCHEMA        CREATE SCHEMA payment_method;
    DROP SCHEMA payment_method;
                postgres    false            
            2615    32845    users    SCHEMA        CREATE SCHEMA users;
    DROP SCHEMA users;
                postgres    false                        3079    32846    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            �           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2                       1255    32883    auditoria_address()    FUNCTION     �  CREATE FUNCTION public.auditoria_address() RETURNS trigger
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
       public          postgres    false                       1255    32884    auditoria_categories()    FUNCTION     �  CREATE FUNCTION public.auditoria_categories() RETURNS trigger
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
       public          postgres    false            '           1255    32885    auditoria_causes()    FUNCTION     �  CREATE FUNCTION public.auditoria_causes() RETURNS trigger
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
       public          postgres    false            (           1255    32886    auditoria_order_has_causes()    FUNCTION     �  CREATE FUNCTION public.auditoria_order_has_causes() RETURNS trigger
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
       public          postgres    false            )           1255    32887    auditoria_orders()    FUNCTION     �  CREATE FUNCTION public.auditoria_orders() RETURNS trigger
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
       public          postgres    false            *           1255    32888    auditoria_pay()    FUNCTION     �  CREATE FUNCTION public.auditoria_pay() RETURNS trigger
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
       public          postgres    false            +           1255    32889    auditoria_payment_methods()    FUNCTION       CREATE FUNCTION public.auditoria_payment_methods() RETURNS trigger
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
       public          postgres    false            ,           1255    32890    auditoria_payment_type()    FUNCTION     �  CREATE FUNCTION public.auditoria_payment_type() RETURNS trigger
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
       public          postgres    false            -           1255    32891    auditoria_roles()    FUNCTION     �  CREATE FUNCTION public.auditoria_roles() RETURNS trigger
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
       public          postgres    false            .           1255    32892    auditoria_user_has_roles()    FUNCTION     �  CREATE FUNCTION public.auditoria_user_has_roles() RETURNS trigger
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
       public          postgres    false            /           1255    32893    auditoria_users()    FUNCTION     �  CREATE FUNCTION public.auditoria_users() RETURNS trigger
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
       public          postgres    false            0           1255    32894    visor()    FUNCTION     �   CREATE FUNCTION public.visor() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO auditoria_actor (accion, fecha, id_actor, nombre)
  VALUES ('Inserción', now(), NEW.id_actor, NEW.nombre);
  RETURN NEW;
END;
$$;
    DROP FUNCTION public.visor();
       public          postgres    false            �            1259    32895 
   categories    TABLE     .  CREATE TABLE causes.categories (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean,
    id_user bigint
);
    DROP TABLE causes.categories;
       causes         heap    postgres    false    7            �           0    0    COLUMN categories.id_user    COMMENT     L   COMMENT ON COLUMN causes.categories.id_user IS 'llave foranea con usuario';
          causes          postgres    false    219            �            1259    32898    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE causes.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE causes.categories_id_seq;
       causes          postgres    false    219    7            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE causes.categories_id_seq OWNED BY causes.categories.id;
          causes          postgres    false    220            �            1259    32899    causes    TABLE     �  CREATE TABLE causes.causes (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    description character varying(255) NOT NULL,
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
       causes         heap    postgres    false    7            �            1259    32905    causes_id_seq    SEQUENCE     v   CREATE SEQUENCE causes.causes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE causes.causes_id_seq;
       causes          postgres    false    221    7            �           0    0    causes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE causes.causes_id_seq OWNED BY causes.causes.id;
          causes          postgres    false    222            �            1259    32906    address    TABLE     n  CREATE TABLE orders.address (
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
       orders         heap    postgres    false    8            �            1259    32913    address_id_seq    SEQUENCE     w   CREATE SEQUENCE orders.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE orders.address_id_seq;
       orders          postgres    false    223    8            �           0    0    address_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE orders.address_id_seq OWNED BY orders.address.id;
          orders          postgres    false    224            �            1259    32914    order_has_causes    TABLE        CREATE TABLE orders.order_has_causes (
    id integer NOT NULL,
    id_order bigint NOT NULL,
    id_cause bigint NOT NULL,
    quantity bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 $   DROP TABLE orders.order_has_causes;
       orders         heap    postgres    false    8            �            1259    32917    order_has_causes_id_seq    SEQUENCE     �   CREATE SEQUENCE orders.order_has_causes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE orders.order_has_causes_id_seq;
       orders          postgres    false    225    8            �           0    0    order_has_causes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE orders.order_has_causes_id_seq OWNED BY orders.order_has_causes.id;
          orders          postgres    false    226            �            1259    32918    orders    TABLE     �  CREATE TABLE orders.orders (
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
       orders         heap    postgres    false    8            �            1259    32925    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE orders.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE orders.orders_id_seq;
       orders          postgres    false    227    8            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE orders.orders_id_seq OWNED BY orders.orders.id;
          orders          postgres    false    228            �            1259    32926    pay    TABLE     �  CREATE TABLE payment_method.pay (
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
       payment_method         heap    postgres    false    9            �            1259    32931 
   pay_id_seq    SEQUENCE     {   CREATE SEQUENCE payment_method.pay_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE payment_method.pay_id_seq;
       payment_method          postgres    false    9    229            �           0    0 
   pay_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE payment_method.pay_id_seq OWNED BY payment_method.pay.id;
          payment_method          postgres    false    230            �            1259    32932    payment_methods    TABLE       CREATE TABLE payment_method.payment_methods (
    id_payment_methods bigint NOT NULL,
    id_payment_type bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 +   DROP TABLE payment_method.payment_methods;
       payment_method         heap    postgres    false    9            �            1259    32935 &   payment_methods_id_payment_methods_seq    SEQUENCE     �   CREATE SEQUENCE payment_method.payment_methods_id_payment_methods_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE payment_method.payment_methods_id_payment_methods_seq;
       payment_method          postgres    false    9    231            �           0    0 &   payment_methods_id_payment_methods_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE payment_method.payment_methods_id_payment_methods_seq OWNED BY payment_method.payment_methods.id_payment_methods;
          payment_method          postgres    false    232            �            1259    32936    payment_type    TABLE     0  CREATE TABLE payment_method.payment_type (
    id_payment_type bigint NOT NULL,
    selector_id_payment_type json,
    name_payment_type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 (   DROP TABLE payment_method.payment_type;
       payment_method         heap    postgres    false    9            �            1259    32941     payment_type_id_payment_type_seq    SEQUENCE     �   CREATE SEQUENCE payment_method.payment_type_id_payment_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE payment_method.payment_type_id_payment_type_seq;
       payment_method          postgres    false    9    233            �           0    0     payment_type_id_payment_type_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE payment_method.payment_type_id_payment_type_seq OWNED BY payment_method.payment_type.id_payment_type;
          payment_method          postgres    false    234            �            1259    32942 	   auditoria    TABLE     �   CREATE TABLE public.auditoria (
    id integer NOT NULL,
    nombre_tabla character varying(255) NOT NULL,
    novedad character varying(256) NOT NULL,
    id_registro integer NOT NULL,
    fecha_novedad timestamp with time zone NOT NULL
);
    DROP TABLE public.auditoria;
       public         heap    postgres    false            �            1259    32947    auditoria_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auditoria_id_seq;
       public          postgres    false            �            1259    32948    auditoria_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.auditoria_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auditoria_id_seq1;
       public          postgres    false    235            �           0    0    auditoria_id_seq1    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.auditoria_id_seq1 OWNED BY public.auditoria.id;
          public          postgres    false    237            �            1259    32949    roles    TABLE     '  CREATE TABLE users.roles (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    image character varying(255),
    route character varying(255),
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
    DROP TABLE users.roles;
       users         heap    postgres    false    10            �            1259    32954    roles_id_seq    SEQUENCE     t   CREATE SEQUENCE users.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE users.roles_id_seq;
       users          postgres    false    10    238            �           0    0    roles_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE users.roles_id_seq OWNED BY users.roles.id;
          users          postgres    false    239            �            1259    32955    user_has_roles    TABLE     �   CREATE TABLE users.user_has_roles (
    id integer NOT NULL,
    id_user bigint NOT NULL,
    id_rol bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    status boolean
);
 !   DROP TABLE users.user_has_roles;
       users         heap    postgres    false    10            �            1259    32958    user_has_roles_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE users.user_has_roles_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE users.user_has_roles_id_rol_seq;
       users          postgres    false    10    240            �           0    0    user_has_roles_id_rol_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE users.user_has_roles_id_rol_seq OWNED BY users.user_has_roles.id_rol;
          users          postgres    false    241            �            1259    32959    user_has_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE users.user_has_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE users.user_has_roles_id_seq;
       users          postgres    false    240    10            �           0    0    user_has_roles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE users.user_has_roles_id_seq OWNED BY users.user_has_roles.id;
          users          postgres    false    242            �            1259    32960    user_has_roles_id_user_seq    SEQUENCE     �   CREATE SEQUENCE users.user_has_roles_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE users.user_has_roles_id_user_seq;
       users          postgres    false    240    10            �           0    0    user_has_roles_id_user_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE users.user_has_roles_id_user_seq OWNED BY users.user_has_roles.id_user;
          users          postgres    false    243            �            1259    32961    users    TABLE       CREATE TABLE users.users (
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
       users         heap    postgres    false    10            �            1259    32966    users_id_seq    SEQUENCE     t   CREATE SEQUENCE users.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE users.users_id_seq;
       users          postgres    false    244    10            �           0    0    users_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE users.users_id_seq OWNED BY users.users.id;
          users          postgres    false    245            �           2604    32967    categories id    DEFAULT     n   ALTER TABLE ONLY causes.categories ALTER COLUMN id SET DEFAULT nextval('causes.categories_id_seq'::regclass);
 <   ALTER TABLE causes.categories ALTER COLUMN id DROP DEFAULT;
       causes          postgres    false    220    219            �           2604    32968 	   causes id    DEFAULT     f   ALTER TABLE ONLY causes.causes ALTER COLUMN id SET DEFAULT nextval('causes.causes_id_seq'::regclass);
 8   ALTER TABLE causes.causes ALTER COLUMN id DROP DEFAULT;
       causes          postgres    false    222    221            �           2604    32969 
   address id    DEFAULT     h   ALTER TABLE ONLY orders.address ALTER COLUMN id SET DEFAULT nextval('orders.address_id_seq'::regclass);
 9   ALTER TABLE orders.address ALTER COLUMN id DROP DEFAULT;
       orders          postgres    false    224    223            �           2604    32970    order_has_causes id    DEFAULT     z   ALTER TABLE ONLY orders.order_has_causes ALTER COLUMN id SET DEFAULT nextval('orders.order_has_causes_id_seq'::regclass);
 B   ALTER TABLE orders.order_has_causes ALTER COLUMN id DROP DEFAULT;
       orders          postgres    false    226    225            �           2604    32971 	   orders id    DEFAULT     f   ALTER TABLE ONLY orders.orders ALTER COLUMN id SET DEFAULT nextval('orders.orders_id_seq'::regclass);
 8   ALTER TABLE orders.orders ALTER COLUMN id DROP DEFAULT;
       orders          postgres    false    228    227            �           2604    32972    pay id    DEFAULT     p   ALTER TABLE ONLY payment_method.pay ALTER COLUMN id SET DEFAULT nextval('payment_method.pay_id_seq'::regclass);
 =   ALTER TABLE payment_method.pay ALTER COLUMN id DROP DEFAULT;
       payment_method          postgres    false    230    229            �           2604    32973 "   payment_methods id_payment_methods    DEFAULT     �   ALTER TABLE ONLY payment_method.payment_methods ALTER COLUMN id_payment_methods SET DEFAULT nextval('payment_method.payment_methods_id_payment_methods_seq'::regclass);
 Y   ALTER TABLE payment_method.payment_methods ALTER COLUMN id_payment_methods DROP DEFAULT;
       payment_method          postgres    false    232    231            �           2604    32974    payment_type id_payment_type    DEFAULT     �   ALTER TABLE ONLY payment_method.payment_type ALTER COLUMN id_payment_type SET DEFAULT nextval('payment_method.payment_type_id_payment_type_seq'::regclass);
 S   ALTER TABLE payment_method.payment_type ALTER COLUMN id_payment_type DROP DEFAULT;
       payment_method          postgres    false    234    233            �           2604    32975    auditoria id    DEFAULT     m   ALTER TABLE ONLY public.auditoria ALTER COLUMN id SET DEFAULT nextval('public.auditoria_id_seq1'::regclass);
 ;   ALTER TABLE public.auditoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    235            �           2604    32976    roles id    DEFAULT     b   ALTER TABLE ONLY users.roles ALTER COLUMN id SET DEFAULT nextval('users.roles_id_seq'::regclass);
 6   ALTER TABLE users.roles ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    239    238            �           2604    32977    user_has_roles id    DEFAULT     t   ALTER TABLE ONLY users.user_has_roles ALTER COLUMN id SET DEFAULT nextval('users.user_has_roles_id_seq'::regclass);
 ?   ALTER TABLE users.user_has_roles ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    242    240            �           2604    32978    user_has_roles id_user    DEFAULT     ~   ALTER TABLE ONLY users.user_has_roles ALTER COLUMN id_user SET DEFAULT nextval('users.user_has_roles_id_user_seq'::regclass);
 D   ALTER TABLE users.user_has_roles ALTER COLUMN id_user DROP DEFAULT;
       users          postgres    false    243    240            �           2604    32979    user_has_roles id_rol    DEFAULT     |   ALTER TABLE ONLY users.user_has_roles ALTER COLUMN id_rol SET DEFAULT nextval('users.user_has_roles_id_rol_seq'::regclass);
 C   ALTER TABLE users.user_has_roles ALTER COLUMN id_rol DROP DEFAULT;
       users          postgres    false    241    240            �           2604    32980    users id    DEFAULT     b   ALTER TABLE ONLY users.users ALTER COLUMN id SET DEFAULT nextval('users.users_id_seq'::regclass);
 6   ALTER TABLE users.users ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    245    244            �          0    32895 
   categories 
   TABLE DATA           d   COPY causes.categories (id, name, description, created_at, updated_at, status, id_user) FROM stdin;
    causes          postgres    false    219   z�       �          0    32899    causes 
   TABLE DATA           �   COPY causes.causes (id, name, description, image1, image2, image3, id_category, created_at, updated_at, status, id_user) FROM stdin;
    causes          postgres    false    221   ��       �          0    32906    address 
   TABLE DATA           o   COPY orders.address (id, id_user, address, neighborhood, lat, lng, created_at, updated_at, status) FROM stdin;
    orders          postgres    false    223   ��       �          0    32914    order_has_causes 
   TABLE DATA           l   COPY orders.order_has_causes (id, id_order, id_cause, quantity, created_at, updated_at, status) FROM stdin;
    orders          postgres    false    225   �       �          0    32918    orders 
   TABLE DATA           �   COPY orders.orders (id, id_user, id_dis, id_address, lat, lng, statuss, "timestamp", created_at, updated_at, status) FROM stdin;
    orders          postgres    false    227   W�       �          0    32926    pay 
   TABLE DATA           �   COPY payment_method.pay (id, id_payment_method, amount, name_cause, date, img, description, id_user, created_at, updated_at, status) FROM stdin;
    payment_method          postgres    false    229   ��       �          0    32932    payment_methods 
   TABLE DATA           v   COPY payment_method.payment_methods (id_payment_methods, id_payment_type, created_at, updated_at, status) FROM stdin;
    payment_method          postgres    false    231   3�       �          0    32936    payment_type 
   TABLE DATA           �   COPY payment_method.payment_type (id_payment_type, selector_id_payment_type, name_payment_type, created_at, updated_at, status) FROM stdin;
    payment_method          postgres    false    233   }�       �          0    32942 	   auditoria 
   TABLE DATA           Z   COPY public.auditoria (id, nombre_tabla, novedad, id_registro, fecha_novedad) FROM stdin;
    public          postgres    false    235   �       �          0    32949    roles 
   TABLE DATA           V   COPY users.roles (id, name, image, route, created_at, updated_at, status) FROM stdin;
    users          postgres    false    238   ��       �          0    32955    user_has_roles 
   TABLE DATA           \   COPY users.user_has_roles (id, id_user, id_rol, created_at, updated_at, status) FROM stdin;
    users          postgres    false    240   e�       �          0    32961    users 
   TABLE DATA           �   COPY users.users (id, email, name, lastname, phone, image, password, is_available, session_token, notification_token, created_at, updated_at) FROM stdin;
    users          postgres    false    244   ��       �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('causes.categories_id_seq', 2, true);
          causes          postgres    false    220            �           0    0    causes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('causes.causes_id_seq', 1, false);
          causes          postgres    false    222            �           0    0    address_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('orders.address_id_seq', 1, false);
          orders          postgres    false    224            �           0    0    order_has_causes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('orders.order_has_causes_id_seq', 1, false);
          orders          postgres    false    226            �           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('orders.orders_id_seq', 1, false);
          orders          postgres    false    228            �           0    0 
   pay_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('payment_method.pay_id_seq', 1, false);
          payment_method          postgres    false    230            �           0    0 &   payment_methods_id_payment_methods_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('payment_method.payment_methods_id_payment_methods_seq', 1, false);
          payment_method          postgres    false    232            �           0    0     payment_type_id_payment_type_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('payment_method.payment_type_id_payment_type_seq', 1, false);
          payment_method          postgres    false    234            �           0    0    auditoria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auditoria_id_seq', 1, false);
          public          postgres    false    236            �           0    0    auditoria_id_seq1    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auditoria_id_seq1', 45, true);
          public          postgres    false    237            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('users.roles_id_seq', 1, false);
          users          postgres    false    239            �           0    0    user_has_roles_id_rol_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('users.user_has_roles_id_rol_seq', 1, false);
          users          postgres    false    241            �           0    0    user_has_roles_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('users.user_has_roles_id_seq', 1, false);
          users          postgres    false    242            �           0    0    user_has_roles_id_user_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('users.user_has_roles_id_user_seq', 1, false);
          users          postgres    false    243            �           0    0    users_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('users.users_id_seq', 1, true);
          users          postgres    false    245            �           2606    32982    categories categories_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY causes.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);
 H   ALTER TABLE ONLY causes.categories DROP CONSTRAINT categories_name_key;
       causes            postgres    false    219            �           2606    32984    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY causes.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY causes.categories DROP CONSTRAINT categories_pkey;
       causes            postgres    false    219            �           2606    32986    causes causes_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT causes_name_key UNIQUE (name);
 @   ALTER TABLE ONLY causes.causes DROP CONSTRAINT causes_name_key;
       causes            postgres    false    221            �           2606    32988    causes causes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT causes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY causes.causes DROP CONSTRAINT causes_pkey;
       causes            postgres    false    221            �           2606    32990    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY orders.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY orders.address DROP CONSTRAINT address_pkey;
       orders            postgres    false    223            �           2606    32992 &   order_has_causes order_has_causes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY orders.order_has_causes
    ADD CONSTRAINT order_has_causes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY orders.order_has_causes DROP CONSTRAINT order_has_causes_pkey;
       orders            postgres    false    225            �           2606    32994    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_pkey;
       orders            postgres    false    227            �           2606    32996    pay pay_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_pkey;
       payment_method            postgres    false    229            �           2606    32998 $   payment_methods payment_methods_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY payment_method.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (id_payment_methods);
 V   ALTER TABLE ONLY payment_method.payment_methods DROP CONSTRAINT payment_methods_pkey;
       payment_method            postgres    false    231            �           2606    33000    payment_type payment_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY payment_method.payment_type
    ADD CONSTRAINT payment_type_pkey PRIMARY KEY (id_payment_type);
 P   ALTER TABLE ONLY payment_method.payment_type DROP CONSTRAINT payment_type_pkey;
       payment_method            postgres    false    233            �           2606    33002    auditoria auditoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auditoria DROP CONSTRAINT auditoria_pkey;
       public            postgres    false    235            �           2606    33004    roles roles_name_key 
   CONSTRAINT     N   ALTER TABLE ONLY users.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 =   ALTER TABLE ONLY users.roles DROP CONSTRAINT roles_name_key;
       users            postgres    false    238                        2606    33006    roles roles_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY users.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY users.roles DROP CONSTRAINT roles_pkey;
       users            postgres    false    238                       2606    33008 "   user_has_roles user_has_roles_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY users.user_has_roles
    ADD CONSTRAINT user_has_roles_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY users.user_has_roles DROP CONSTRAINT user_has_roles_pkey;
       users            postgres    false    240                       2606    33010    users users_email_key 
   CONSTRAINT     P   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 >   ALTER TABLE ONLY users.users DROP CONSTRAINT users_email_key;
       users            postgres    false    244                       2606    33012    users users_phone_key 
   CONSTRAINT     P   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 >   ALTER TABLE ONLY users.users DROP CONSTRAINT users_phone_key;
       users            postgres    false    244                       2606    33014    users users_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY users.users DROP CONSTRAINT users_pkey;
       users            postgres    false    244            �           1259    33015    fki_fk_usuario    INDEX     H   CREATE INDEX fki_fk_usuario ON causes.categories USING btree (id_user);
 "   DROP INDEX causes.fki_fk_usuario;
       causes            postgres    false    219                       2620    33016    categories visor_categories    TRIGGER     �   CREATE TRIGGER visor_categories AFTER INSERT OR DELETE OR UPDATE ON causes.categories FOR EACH ROW EXECUTE FUNCTION public.auditoria_categories();
 4   DROP TRIGGER visor_categories ON causes.categories;
       causes          postgres    false    283    219                       2620    33017    causes visor_causes    TRIGGER     �   CREATE TRIGGER visor_causes AFTER INSERT OR DELETE OR UPDATE ON causes.causes FOR EACH ROW EXECUTE FUNCTION public.auditoria_causes();
 ,   DROP TRIGGER visor_causes ON causes.causes;
       causes          postgres    false    295    221                       2620    33018    address visor_address    TRIGGER     �   CREATE TRIGGER visor_address AFTER INSERT OR DELETE OR UPDATE ON orders.address FOR EACH ROW EXECUTE FUNCTION public.auditoria_address();
 .   DROP TRIGGER visor_address ON orders.address;
       orders          postgres    false    223    282                       2620    33019 '   order_has_causes visor_order_has_causes    TRIGGER     �   CREATE TRIGGER visor_order_has_causes AFTER INSERT OR DELETE OR UPDATE ON orders.order_has_causes FOR EACH ROW EXECUTE FUNCTION public.auditoria_order_has_causes();
 @   DROP TRIGGER visor_order_has_causes ON orders.order_has_causes;
       orders          postgres    false    296    225                       2620    33020    orders visor_orders    TRIGGER     �   CREATE TRIGGER visor_orders AFTER INSERT OR DELETE OR UPDATE ON orders.orders FOR EACH ROW EXECUTE FUNCTION public.auditoria_orders();
 ,   DROP TRIGGER visor_orders ON orders.orders;
       orders          postgres    false    227    297                       2620    33021    pay visor_pay    TRIGGER     �   CREATE TRIGGER visor_pay AFTER INSERT OR DELETE OR UPDATE ON payment_method.pay FOR EACH ROW EXECUTE FUNCTION public.auditoria_pay();
 .   DROP TRIGGER visor_pay ON payment_method.pay;
       payment_method          postgres    false    229    298                       2620    33022 %   payment_methods visor_payment_methods    TRIGGER     �   CREATE TRIGGER visor_payment_methods AFTER INSERT OR DELETE OR UPDATE ON payment_method.payment_methods FOR EACH ROW EXECUTE FUNCTION public.auditoria_payment_methods();
 F   DROP TRIGGER visor_payment_methods ON payment_method.payment_methods;
       payment_method          postgres    false    231    299                       2620    33023    payment_type visor_payment_type    TRIGGER     �   CREATE TRIGGER visor_payment_type AFTER INSERT OR DELETE OR UPDATE ON payment_method.payment_type FOR EACH ROW EXECUTE FUNCTION public.auditoria_payment_type();
 @   DROP TRIGGER visor_payment_type ON payment_method.payment_type;
       payment_method          postgres    false    300    233                       2620    33024    roles visor_roles    TRIGGER     �   CREATE TRIGGER visor_roles AFTER INSERT OR DELETE OR UPDATE ON users.roles FOR EACH ROW EXECUTE FUNCTION public.auditoria_roles();
 )   DROP TRIGGER visor_roles ON users.roles;
       users          postgres    false    301    238                        2620    33025 #   user_has_roles visor_user_has_roles    TRIGGER     �   CREATE TRIGGER visor_user_has_roles AFTER INSERT OR DELETE OR UPDATE ON users.user_has_roles FOR EACH ROW EXECUTE FUNCTION public.auditoria_user_has_roles();
 ;   DROP TRIGGER visor_user_has_roles ON users.user_has_roles;
       users          postgres    false    302    240            !           2620    33026    users visor_users    TRIGGER     �   CREATE TRIGGER visor_users AFTER INSERT OR DELETE OR UPDATE ON users.users FOR EACH ROW EXECUTE FUNCTION public.auditoria_users();
 )   DROP TRIGGER visor_users ON users.users;
       users          postgres    false    244    303            
           2606    33027    causes causes_id_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT causes_id_category_fkey FOREIGN KEY (id_category) REFERENCES causes.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY causes.causes DROP CONSTRAINT causes_id_category_fkey;
       causes          postgres    false    3305    221    219            	           2606    33032    categories fk_id_user    FK CONSTRAINT     }   ALTER TABLE ONLY causes.categories
    ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES users.users(id) NOT VALID;
 ?   ALTER TABLE ONLY causes.categories DROP CONSTRAINT fk_id_user;
       causes          postgres    false    244    3336    219                       2606    33093    causes fk_id_user    FK CONSTRAINT     y   ALTER TABLE ONLY causes.causes
    ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES users.users(id) NOT VALID;
 ;   ALTER TABLE ONLY causes.causes DROP CONSTRAINT fk_id_user;
       causes          postgres    false    244    3336    221                       2606    33037    address address_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.address
    ADD CONSTRAINT address_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY orders.address DROP CONSTRAINT address_id_user_fkey;
       orders          postgres    false    3336    244    223                       2606    33042 /   order_has_causes order_has_causes_id_cause_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.order_has_causes
    ADD CONSTRAINT order_has_causes_id_cause_fkey FOREIGN KEY (id_cause) REFERENCES causes.causes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY orders.order_has_causes DROP CONSTRAINT order_has_causes_id_cause_fkey;
       orders          postgres    false    3310    225    221                       2606    33047 /   order_has_causes order_has_causes_id_order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.order_has_causes
    ADD CONSTRAINT order_has_causes_id_order_fkey FOREIGN KEY (id_order) REFERENCES orders.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY orders.order_has_causes DROP CONSTRAINT order_has_causes_id_order_fkey;
       orders          postgres    false    227    225    3316                       2606    33052    orders orders_id_address_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_id_address_fkey FOREIGN KEY (id_address) REFERENCES orders.address(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_id_address_fkey;
       orders          postgres    false    223    3312    227                       2606    33057    orders orders_id_dis_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_id_dis_fkey FOREIGN KEY (id_dis) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_id_dis_fkey;
       orders          postgres    false    3336    227    244                       2606    33062    orders orders_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY orders.orders
    ADD CONSTRAINT orders_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY orders.orders DROP CONSTRAINT orders_id_user_fkey;
       orders          postgres    false    3336    244    227                       2606    33067    pay pay_id_payment_method_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_id_payment_method_fkey FOREIGN KEY (id_payment_method) REFERENCES payment_method.payment_methods(id_payment_methods) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_id_payment_method_fkey;
       payment_method          postgres    false    231    229    3320                       2606    33072    pay pay_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.pay
    ADD CONSTRAINT pay_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY payment_method.pay DROP CONSTRAINT pay_id_user_fkey;
       payment_method          postgres    false    244    3336    229                       2606    33077 4   payment_methods payment_methods_id_payment_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY payment_method.payment_methods
    ADD CONSTRAINT payment_methods_id_payment_type_fkey FOREIGN KEY (id_payment_type) REFERENCES payment_method.payment_type(id_payment_type) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY payment_method.payment_methods DROP CONSTRAINT payment_methods_id_payment_type_fkey;
       payment_method          postgres    false    231    233    3322                       2606    33082 )   user_has_roles user_has_roles_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY users.user_has_roles
    ADD CONSTRAINT user_has_roles_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES users.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY users.user_has_roles DROP CONSTRAINT user_has_roles_id_rol_fkey;
       users          postgres    false    238    240    3328                       2606    33087 *   user_has_roles user_has_roles_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY users.user_has_roles
    ADD CONSTRAINT user_has_roles_id_user_fkey FOREIGN KEY (id_user) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY users.user_has_roles DROP CONSTRAINT user_has_roles_id_user_fkey;
       users          postgres    false    240    244    3336            �   i   x�3��K-WpN,IM�/�T@幤'e�d��q����(ZZ�XZ��`+���2�L)�OO�L�,MIT ��᪍,ͭL-��M���ps��qqq 2d&�      �   �   x���=
�0Fg��@JdǴ͖t��E�Mjp�������S����'��L�/\F�[����������+�M-l��e���~g�K�#����sG�u�è.�� 		7.5�o��[��[򜼩a��?II�m�+���$�� �eD\      �   ^   x�3�4�K�K�*M�I�N�Sp.�,.�OJ��r����(ZZ��[Zb+�2�F����n��������9V��=... '�"�      �   A   x�3�4C##c]s]CSCS+c+#S�b%\F� �E��V�.cN�4Yc+c�b%\1z\\\ <�K      �   E   x�3�4���Ē�b ����X��\��D���������X	�X#�L-.A�k�` Vg`�U��+F��� ��      �   w   x�3�4�4�L���M�I-�4202�50�54���M�,HL�w�e������M�����L���pq�`^bIi��Dt�]���3��}�����7U04�2��25�*V����� ��+�      �   :   x�3�4�4202�50�54Q02�22�20�*V�GȘ*�Y�[�c+����� T�w      �   �   x�3�V
HL�Wp�L�,I�Q�R�Pr.�,(����KMI,V�Q�P��Y�����T[�	�*�ɥs����(X�Z[`+�2:�����5�8S�(� d+B$75%393/d!Da����������V��=... ��A+      �   �  x���In1E׭S�&j�x� F�j�l)h��Z9B.�"[v,�@ܾ�����S~���p鎧�0>��9u�?�@�%�$h|��?���+�?]�����~B�FC�h�$�,e�����ԯ$��:X��L��o�m��8�E���LC%C2Ļ��lS�B�8�t5����8\6r��"� (t��0�k�݃J�c��\a�v�6�!P�ڐ�)��sy��\�̉�p�aJ�����_������kX��TjB2 `C��O�u�>�������U�$�3�	�d5:�R)���
!Y���P�vjɸ�2>�a��u����G��\�Q�Y�\c�*kFq"-ca�����v^]�6�%q0^y.�������>Aq�`��ŤLΖ@�܆�ӈ�nQ(�\��L-c��x�&[k�I�����wY	උu�tf�A�BT(�DչfT��a;�x����$[4�E`�#-��2��.�ø�ϲ�8}N�VbΤ6 �H^#g9kR�s��%/1�e�m�XPq�5CԽ2�?6U[>�	Q ���.����7X��(,ed
4W�'�-iu��Ғ�+�Ln�w�� 10a���o��n�A�{?e���y��gMd���������s����f���?̳      �   �   x�3�u�����MLO�-.M,�̇��''����d�p����(ZZ�[�Xb+�2��rw��rt�����_����Y������"��+#�b%\Ɯ�.��~��!A�.�AP[Sr3�%�����g����g�b%\1z\\\ F�N�      �   6   x�3�4A#c]s]CSC3+c+cS�b%\F��@�&gbej�U��+F��� �i      �   �   x�}�]�!���Sx���g�SN��EfM�tIN�jva ��B�������;^���~J��;���@�ǃ�#�`�.���	�Xҷ���/~��vL�PP�Fr3譌 �7_V�f��T�\h�Pi�˥o�����������W�f�ͯX�� ���))*��0���+6�x�CH��R����w���^�ɑ2f��2r�B~ zy(     