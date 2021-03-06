PGDMP         #                y            office    12.6    12.6 ?   ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    72734    office    DATABASE     ?   CREATE DATABASE office WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE office;
                postgres    false            ?            1259    72874    IPT_buildings    TABLE     ?  CREATE TABLE public."IPT_buildings" (
    id integer NOT NULL,
    made_year date NOT NULL,
    "occupiedArea" double precision NOT NULL,
    stories integer NOT NULL,
    price integer NOT NULL,
    is_active boolean NOT NULL,
    "buildingType_id" integer NOT NULL,
    "buildingUsage_id" integer NOT NULL,
    "landRef_id" integer NOT NULL,
    owner_id integer NOT NULL,
    "accessibleToRoad_id" integer NOT NULL,
    length double precision NOT NULL,
    width double precision NOT NULL
);
 #   DROP TABLE public."IPT_buildings";
       public         heap    postgres    false            ?            1259    72872    IPT_buildings_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_buildings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."IPT_buildings_id_seq";
       public          postgres    false    235            0           0    0    IPT_buildings_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."IPT_buildings_id_seq" OWNED BY public."IPT_buildings".id;
          public          postgres    false    234            ?            1259    72748    IPT_buildingtype    TABLE     ?   CREATE TABLE public."IPT_buildingtype" (
    id integer NOT NULL,
    type character varying(50) NOT NULL,
    is_active boolean NOT NULL
);
 &   DROP TABLE public."IPT_buildingtype";
       public         heap    postgres    false            ?            1259    72746    IPT_buildingtype_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_buildingtype_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."IPT_buildingtype_id_seq";
       public          postgres    false    205            1           0    0    IPT_buildingtype_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."IPT_buildingtype_id_seq" OWNED BY public."IPT_buildingtype".id;
          public          postgres    false    204            ?            1259    72756    IPT_buildingusage    TABLE     ?   CREATE TABLE public."IPT_buildingusage" (
    id integer NOT NULL,
    usage character varying(100) NOT NULL,
    is_active boolean NOT NULL
);
 '   DROP TABLE public."IPT_buildingusage";
       public         heap    postgres    false            ?            1259    72754    IPT_buildingusage_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_buildingusage_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."IPT_buildingusage_id_seq";
       public          postgres    false    207            2           0    0    IPT_buildingusage_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IPT_buildingusage_id_seq" OWNED BY public."IPT_buildingusage".id;
          public          postgres    false    206            ?            1259    72866    IPT_deprication    TABLE     ?   CREATE TABLE public."IPT_deprication" (
    id integer NOT NULL,
    rate double precision NOT NULL,
    is_active boolean NOT NULL,
    type_id integer NOT NULL
);
 %   DROP TABLE public."IPT_deprication";
       public         heap    postgres    false            ?            1259    72864    IPT_deprication_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_deprication_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."IPT_deprication_id_seq";
       public          postgres    false    233            3           0    0    IPT_deprication_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."IPT_deprication_id_seq" OWNED BY public."IPT_deprication".id;
          public          postgres    false    232            ?            1259    72858    IPT_familymembers    TABLE     ?   CREATE TABLE public."IPT_familymembers" (
    id integer NOT NULL,
    "fullName" character varying(100) NOT NULL,
    "Occupation_id" integer NOT NULL,
    "familyHead_id" integer NOT NULL,
    relation_id integer NOT NULL
);
 '   DROP TABLE public."IPT_familymembers";
       public         heap    postgres    false            ?            1259    72856    IPT_familymembers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_familymembers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."IPT_familymembers_id_seq";
       public          postgres    false    231            4           0    0    IPT_familymembers_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IPT_familymembers_id_seq" OWNED BY public."IPT_familymembers".id;
          public          postgres    false    230            ?            1259    72764    IPT_finereward    TABLE     ?   CREATE TABLE public."IPT_finereward" (
    id integer NOT NULL,
    date_from date NOT NULL,
    date_to date NOT NULL,
    type character varying(10) NOT NULL,
    rate double precision NOT NULL,
    is_active boolean NOT NULL
);
 $   DROP TABLE public."IPT_finereward";
       public         heap    postgres    false            ?            1259    72762    IPT_finereward_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_finereward_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."IPT_finereward_id_seq";
       public          postgres    false    209            5           0    0    IPT_finereward_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."IPT_finereward_id_seq" OWNED BY public."IPT_finereward".id;
          public          postgres    false    208            ?            1259    72850    IPT_infrastructuretaxes    TABLE     )  CREATE TABLE public."IPT_infrastructuretaxes" (
    id integer NOT NULL,
    tax_amount double precision NOT NULL,
    is_active boolean NOT NULL,
    building_type_id integer NOT NULL,
    building_usage_id integer NOT NULL,
    road_access_id integer NOT NULL,
    sector_id integer NOT NULL
);
 -   DROP TABLE public."IPT_infrastructuretaxes";
       public         heap    postgres    false            ?            1259    72848    IPT_infrastructuretaxes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_infrastructuretaxes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."IPT_infrastructuretaxes_id_seq";
       public          postgres    false    229            6           0    0    IPT_infrastructuretaxes_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."IPT_infrastructuretaxes_id_seq" OWNED BY public."IPT_infrastructuretaxes".id;
          public          postgres    false    228            ?            1259    72842    IPT_landdetails    TABLE     ?  CREATE TABLE public."IPT_landdetails" (
    id integer NOT NULL,
    kitta character varying(20) NOT NULL,
    area double precision NOT NULL,
    "accessibleToRoad_id" integer NOT NULL,
    "pricePerUnit" integer NOT NULL,
    property_value integer NOT NULL,
    is_active boolean NOT NULL,
    owner_id integer NOT NULL,
    unit_id integer NOT NULL,
    usage_id integer NOT NULL,
    area_ch character varying(20) NOT NULL
);
 %   DROP TABLE public."IPT_landdetails";
       public         heap    postgres    false            ?            1259    72840    IPT_landdetails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_landdetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."IPT_landdetails_id_seq";
       public          postgres    false    227            7           0    0    IPT_landdetails_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."IPT_landdetails_id_seq" OWNED BY public."IPT_landdetails".id;
          public          postgres    false    226            ?            1259    72834    IPT_landtaxes    TABLE     ?   CREATE TABLE public."IPT_landtaxes" (
    id integer NOT NULL,
    tax_amount double precision NOT NULL,
    is_active boolean NOT NULL,
    road_access_id integer NOT NULL,
    sector_id integer NOT NULL
);
 #   DROP TABLE public."IPT_landtaxes";
       public         heap    postgres    false            ?            1259    72832    IPT_landtaxes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_landtaxes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."IPT_landtaxes_id_seq";
       public          postgres    false    225            8           0    0    IPT_landtaxes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."IPT_landtaxes_id_seq" OWNED BY public."IPT_landtaxes".id;
          public          postgres    false    224            ?            1259    72772    IPT_landunits    TABLE     ?   CREATE TABLE public."IPT_landunits" (
    id integer NOT NULL,
    unit character varying(20) NOT NULL,
    area_per_unit character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    area_per_unit_ft character varying(80) NOT NULL
);
 #   DROP TABLE public."IPT_landunits";
       public         heap    postgres    false            ?            1259    72770    IPT_landunits_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_landunits_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."IPT_landunits_id_seq";
       public          postgres    false    211            9           0    0    IPT_landunits_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."IPT_landunits_id_seq" OWNED BY public."IPT_landunits".id;
          public          postgres    false    210            ?            1259    72780    IPT_landusage    TABLE     ?   CREATE TABLE public."IPT_landusage" (
    id integer NOT NULL,
    usage character varying(500) NOT NULL,
    is_active boolean NOT NULL
);
 #   DROP TABLE public."IPT_landusage";
       public         heap    postgres    false            ?            1259    72778    IPT_landusage_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_landusage_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."IPT_landusage_id_seq";
       public          postgres    false    213            :           0    0    IPT_landusage_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."IPT_landusage_id_seq" OWNED BY public."IPT_landusage".id;
          public          postgres    false    212            ?            1259    72791    IPT_occupation    TABLE     ?   CREATE TABLE public."IPT_occupation" (
    id integer NOT NULL,
    occupation character varying(100) NOT NULL,
    is_active boolean NOT NULL
);
 $   DROP TABLE public."IPT_occupation";
       public         heap    postgres    false            ?            1259    72789    IPT_occupation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_occupation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."IPT_occupation_id_seq";
       public          postgres    false    215            ;           0    0    IPT_occupation_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."IPT_occupation_id_seq" OWNED BY public."IPT_occupation".id;
          public          postgres    false    214            ?            1259    72823    IPT_personalinfo    TABLE     ?   CREATE TABLE public."IPT_personalinfo" (
    id integer NOT NULL,
    fullname character varying(100) NOT NULL,
    address character varying(200) NOT NULL,
    contact character varying(200) NOT NULL,
    occ_id integer NOT NULL
);
 &   DROP TABLE public."IPT_personalinfo";
       public         heap    postgres    false            ?            1259    72821    IPT_personalinfo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_personalinfo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."IPT_personalinfo_id_seq";
       public          postgres    false    223            <           0    0    IPT_personalinfo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."IPT_personalinfo_id_seq" OWNED BY public."IPT_personalinfo".id;
          public          postgres    false    222            ?            1259    72799    IPT_relation    TABLE     ?   CREATE TABLE public."IPT_relation" (
    id integer NOT NULL,
    relation character varying(50) NOT NULL,
    is_active boolean NOT NULL
);
 "   DROP TABLE public."IPT_relation";
       public         heap    postgres    false            ?            1259    72797    IPT_relation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_relation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IPT_relation_id_seq";
       public          postgres    false    217            =           0    0    IPT_relation_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."IPT_relation_id_seq" OWNED BY public."IPT_relation".id;
          public          postgres    false    216            ?            1259    72807    IPT_roadaccessibilitystate    TABLE     ?   CREATE TABLE public."IPT_roadaccessibilitystate" (
    id integer NOT NULL,
    road_type character varying(50) NOT NULL,
    is_active boolean NOT NULL
);
 0   DROP TABLE public."IPT_roadaccessibilitystate";
       public         heap    postgres    false            ?            1259    72805 !   IPT_roadaccessibilitystate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_roadaccessibilitystate_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."IPT_roadaccessibilitystate_id_seq";
       public          postgres    false    219            >           0    0 !   IPT_roadaccessibilitystate_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."IPT_roadaccessibilitystate_id_seq" OWNED BY public."IPT_roadaccessibilitystate".id;
          public          postgres    false    218            ?            1259    72815    IPT_sectors    TABLE     ?   CREATE TABLE public."IPT_sectors" (
    id integer NOT NULL,
    "areaName" character varying(100) NOT NULL,
    is_active boolean NOT NULL
);
 !   DROP TABLE public."IPT_sectors";
       public         heap    postgres    false            ?            1259    72813    IPT_sectors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."IPT_sectors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."IPT_sectors_id_seq";
       public          postgres    false    221            ?           0    0    IPT_sectors_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."IPT_sectors_id_seq" OWNED BY public."IPT_sectors".id;
          public          postgres    false    220            ?            1259    73008 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    73006    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    241            @           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    240            ?            1259    73018    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    73016    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    243            A           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    242            ?            1259    73000    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    72998    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    239            B           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    238            ?            1259    73026 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    73036    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    73034    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    247            C           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    246            ?            1259    73024    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    245            D           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    244            ?            1259    73044    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    73042 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    249            E           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    248            ?            1259    73104    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    73102    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    251            F           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    250            ?            1259    72990    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    72988    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    237            G           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    236            ?            1259    72737    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    72735    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            H           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202                       1259    73361    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    73137    revmgtmt_bill    TABLE     C  CREATE TABLE public.revmgtmt_bill (
    id integer NOT NULL,
    "billNo" integer NOT NULL,
    "billNoNp" character varying(10) NOT NULL,
    "transactionDate" date NOT NULL,
    "transactionDateNp" character varying(20) NOT NULL,
    "clientName" character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    contact character varying(11) NOT NULL,
    "totalAmount" integer NOT NULL,
    "totalAmountNp" character varying(5) NOT NULL,
    "totalAmountInLetters" character varying(100) NOT NULL,
    complete boolean NOT NULL,
    token character varying(150) NOT NULL,
    "isActive" boolean NOT NULL,
    "fyRef_id" integer NOT NULL,
    meta_ref_id integer NOT NULL,
    org_ref_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    "serviceRef_id" integer NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.revmgtmt_bill;
       public         heap    postgres    false            ?            1259    73135    revmgtmt_bill_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_bill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.revmgtmt_bill_id_seq;
       public          postgres    false    253            I           0    0    revmgtmt_bill_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.revmgtmt_bill_id_seq OWNED BY public.revmgtmt_bill.id;
          public          postgres    false    252                       1259    73243    revmgtmt_cancelled    TABLE     ?   CREATE TABLE public.revmgtmt_cancelled (
    id integer NOT NULL,
    "Remarks" text NOT NULL,
    date_cancelled timestamp with time zone NOT NULL,
    "rasidRef_id" integer NOT NULL
);
 &   DROP TABLE public.revmgtmt_cancelled;
       public         heap    postgres    false                       1259    73241    revmgtmt_cancelled_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_cancelled_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.revmgtmt_cancelled_id_seq;
       public          postgres    false    277            J           0    0    revmgtmt_cancelled_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.revmgtmt_cancelled_id_seq OWNED BY public.revmgtmt_cancelled.id;
          public          postgres    false    276            ?            1259    73148    revmgtmt_designation    TABLE     ?   CREATE TABLE public.revmgtmt_designation (
    id integer NOT NULL,
    designation character varying(100) NOT NULL,
    designation_en character varying(100) NOT NULL,
    is_active boolean NOT NULL
);
 (   DROP TABLE public.revmgtmt_designation;
       public         heap    postgres    false            ?            1259    73146    revmgtmt_designation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_designation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.revmgtmt_designation_id_seq;
       public          postgres    false    255            K           0    0    revmgtmt_designation_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.revmgtmt_designation_id_seq OWNED BY public.revmgtmt_designation.id;
          public          postgres    false    254                       1259    73235    revmgtmt_estimated    TABLE     ?   CREATE TABLE public.revmgtmt_estimated (
    id integer NOT NULL,
    metawise integer NOT NULL,
    servicewise integer NOT NULL,
    fyref_id integer NOT NULL,
    meta_ref_id integer NOT NULL,
    service_ref_id integer NOT NULL
);
 &   DROP TABLE public.revmgtmt_estimated;
       public         heap    postgres    false                       1259    73233    revmgtmt_estimated_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_estimated_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.revmgtmt_estimated_id_seq;
       public          postgres    false    275            L           0    0    revmgtmt_estimated_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.revmgtmt_estimated_id_seq OWNED BY public.revmgtmt_estimated.id;
          public          postgres    false    274                       1259    73156    revmgtmt_fy    TABLE     ?   CREATE TABLE public.revmgtmt_fy (
    id integer NOT NULL,
    fy character varying(30) NOT NULL,
    fy_np character varying(30) NOT NULL,
    isactive boolean NOT NULL
);
    DROP TABLE public.revmgtmt_fy;
       public         heap    postgres    false                        1259    73154    revmgtmt_fy_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_fy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.revmgtmt_fy_id_seq;
       public          postgres    false    257            M           0    0    revmgtmt_fy_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.revmgtmt_fy_id_seq OWNED BY public.revmgtmt_fy.id;
          public          postgres    false    256                       1259    73164    revmgtmt_guide    TABLE     ?   CREATE TABLE public.revmgtmt_guide (
    id integer NOT NULL,
    "setupName" character varying(100) NOT NULL,
    path character varying(150) NOT NULL,
    is_complete boolean NOT NULL
);
 "   DROP TABLE public.revmgtmt_guide;
       public         heap    postgres    false                       1259    73162    revmgtmt_guide_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_guide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.revmgtmt_guide_id_seq;
       public          postgres    false    259            N           0    0    revmgtmt_guide_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.revmgtmt_guide_id_seq OWNED BY public.revmgtmt_guide.id;
          public          postgres    false    258                       1259    73172    revmgtmt_office    TABLE     ?   CREATE TABLE public.revmgtmt_office (
    id integer NOT NULL,
    "officeName" character varying(200) NOT NULL,
    "officeAddress" character varying(100) NOT NULL,
    is_active boolean NOT NULL
);
 #   DROP TABLE public.revmgtmt_office;
       public         heap    postgres    false                       1259    73170    revmgtmt_office_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_office_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.revmgtmt_office_id_seq;
       public          postgres    false    261            O           0    0    revmgtmt_office_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.revmgtmt_office_id_seq OWNED BY public.revmgtmt_office.id;
          public          postgres    false    260                       1259    73180    revmgtmt_paymentmethod    TABLE     ?   CREATE TABLE public.revmgtmt_paymentmethod (
    id integer NOT NULL,
    method character varying(100) NOT NULL,
    "paymentId" character varying(200) NOT NULL,
    isactive boolean NOT NULL
);
 *   DROP TABLE public.revmgtmt_paymentmethod;
       public         heap    postgres    false                       1259    73178    revmgtmt_paymentmethod_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_paymentmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.revmgtmt_paymentmethod_id_seq;
       public          postgres    false    263            P           0    0    revmgtmt_paymentmethod_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.revmgtmt_paymentmethod_id_seq OWNED BY public.revmgtmt_paymentmethod.id;
          public          postgres    false    262                       1259    73222    revmgtmt_profile    TABLE     d  CREATE TABLE public.revmgtmt_profile (
    id integer NOT NULL,
    "desc" text NOT NULL,
    "sanketNo" character varying(30) NOT NULL,
    "contactNo" character varying(13) NOT NULL,
    manual_disable boolean NOT NULL,
    first_time boolean NOT NULL,
    guide_complete boolean NOT NULL,
    is_active boolean NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.revmgtmt_profile;
       public         heap    postgres    false                       1259    73220    revmgtmt_profile_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.revmgtmt_profile_id_seq;
       public          postgres    false    273            Q           0    0    revmgtmt_profile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.revmgtmt_profile_id_seq OWNED BY public.revmgtmt_profile.id;
          public          postgres    false    272                       1259    73286    revmgtmt_rasidallocation    TABLE       CREATE TABLE public.revmgtmt_rasidallocation (
    id integer NOT NULL,
    "lowerRasid" integer NOT NULL,
    "upperRasid" integer NOT NULL,
    "currentRasid" integer NOT NULL,
    "isActive" boolean NOT NULL,
    "fyRef_id" integer NOT NULL,
    "officeRef_id" integer NOT NULL
);
 ,   DROP TABLE public.revmgtmt_rasidallocation;
       public         heap    postgres    false                       1259    73284    revmgtmt_rasidallocation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_rasidallocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.revmgtmt_rasidallocation_id_seq;
       public          postgres    false    279            R           0    0    revmgtmt_rasidallocation_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.revmgtmt_rasidallocation_id_seq OWNED BY public.revmgtmt_rasidallocation.id;
          public          postgres    false    278                       1259    73212    revmgtmt_relmap    TABLE     ?   CREATE TABLE public.revmgtmt_relmap (
    id integer NOT NULL,
    "offRef_id" integer NOT NULL,
    "uRef_id" integer NOT NULL
);
 #   DROP TABLE public.revmgtmt_relmap;
       public         heap    postgres    false                       1259    73210    revmgtmt_relmap_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_relmap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.revmgtmt_relmap_id_seq;
       public          postgres    false    271            S           0    0    revmgtmt_relmap_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.revmgtmt_relmap_id_seq OWNED BY public.revmgtmt_relmap.id;
          public          postgres    false    270                       1259    73204    revmgtmt_service    TABLE     H  CREATE TABLE public.revmgtmt_service (
    id integer NOT NULL,
    "serviceSub_ref" character varying(20) NOT NULL,
    "serviceName" character varying(300) NOT NULL,
    "serviceCharge" integer NOT NULL,
    "serviceChargeNp" character varying(5) NOT NULL,
    "isActive" boolean NOT NULL,
    meta_ref_id integer NOT NULL
);
 $   DROP TABLE public.revmgtmt_service;
       public         heap    postgres    false                       1259    73202    revmgtmt_service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.revmgtmt_service_id_seq;
       public          postgres    false    269            T           0    0    revmgtmt_service_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.revmgtmt_service_id_seq OWNED BY public.revmgtmt_service.id;
          public          postgres    false    268            	           1259    73188    revmgtmt_servicemeta    TABLE     ?   CREATE TABLE public.revmgtmt_servicemeta (
    id integer NOT NULL,
    ref_no character varying(10) NOT NULL,
    servicecategory character varying(150) NOT NULL
);
 (   DROP TABLE public.revmgtmt_servicemeta;
       public         heap    postgres    false                       1259    73186    revmgtmt_servicemeta_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_servicemeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.revmgtmt_servicemeta_id_seq;
       public          postgres    false    265            U           0    0    revmgtmt_servicemeta_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.revmgtmt_servicemeta_id_seq OWNED BY public.revmgtmt_servicemeta.id;
          public          postgres    false    264                       1259    73196    revmgtmt_setupguide    TABLE     ?   CREATE TABLE public.revmgtmt_setupguide (
    id integer NOT NULL,
    "setupName" character varying(100) NOT NULL,
    path character varying(150) NOT NULL,
    is_complete boolean NOT NULL
);
 '   DROP TABLE public.revmgtmt_setupguide;
       public         heap    postgres    false            
           1259    73194    revmgtmt_setupguide_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.revmgtmt_setupguide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.revmgtmt_setupguide_id_seq;
       public          postgres    false    267            V           0    0    revmgtmt_setupguide_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.revmgtmt_setupguide_id_seq OWNED BY public.revmgtmt_setupguide.id;
          public          postgres    false    266            ?           2604    72877    IPT_buildings id    DEFAULT     x   ALTER TABLE ONLY public."IPT_buildings" ALTER COLUMN id SET DEFAULT nextval('public."IPT_buildings_id_seq"'::regclass);
 A   ALTER TABLE public."IPT_buildings" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            q           2604    72751    IPT_buildingtype id    DEFAULT     ~   ALTER TABLE ONLY public."IPT_buildingtype" ALTER COLUMN id SET DEFAULT nextval('public."IPT_buildingtype_id_seq"'::regclass);
 D   ALTER TABLE public."IPT_buildingtype" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            r           2604    72759    IPT_buildingusage id    DEFAULT     ?   ALTER TABLE ONLY public."IPT_buildingusage" ALTER COLUMN id SET DEFAULT nextval('public."IPT_buildingusage_id_seq"'::regclass);
 E   ALTER TABLE public."IPT_buildingusage" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                       2604    72869    IPT_deprication id    DEFAULT     |   ALTER TABLE ONLY public."IPT_deprication" ALTER COLUMN id SET DEFAULT nextval('public."IPT_deprication_id_seq"'::regclass);
 C   ALTER TABLE public."IPT_deprication" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            ~           2604    72861    IPT_familymembers id    DEFAULT     ?   ALTER TABLE ONLY public."IPT_familymembers" ALTER COLUMN id SET DEFAULT nextval('public."IPT_familymembers_id_seq"'::regclass);
 E   ALTER TABLE public."IPT_familymembers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            s           2604    72767    IPT_finereward id    DEFAULT     z   ALTER TABLE ONLY public."IPT_finereward" ALTER COLUMN id SET DEFAULT nextval('public."IPT_finereward_id_seq"'::regclass);
 B   ALTER TABLE public."IPT_finereward" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            }           2604    72853    IPT_infrastructuretaxes id    DEFAULT     ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes" ALTER COLUMN id SET DEFAULT nextval('public."IPT_infrastructuretaxes_id_seq"'::regclass);
 K   ALTER TABLE public."IPT_infrastructuretaxes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            |           2604    72845    IPT_landdetails id    DEFAULT     |   ALTER TABLE ONLY public."IPT_landdetails" ALTER COLUMN id SET DEFAULT nextval('public."IPT_landdetails_id_seq"'::regclass);
 C   ALTER TABLE public."IPT_landdetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            {           2604    72837    IPT_landtaxes id    DEFAULT     x   ALTER TABLE ONLY public."IPT_landtaxes" ALTER COLUMN id SET DEFAULT nextval('public."IPT_landtaxes_id_seq"'::regclass);
 A   ALTER TABLE public."IPT_landtaxes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            t           2604    72775    IPT_landunits id    DEFAULT     x   ALTER TABLE ONLY public."IPT_landunits" ALTER COLUMN id SET DEFAULT nextval('public."IPT_landunits_id_seq"'::regclass);
 A   ALTER TABLE public."IPT_landunits" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            u           2604    72783    IPT_landusage id    DEFAULT     x   ALTER TABLE ONLY public."IPT_landusage" ALTER COLUMN id SET DEFAULT nextval('public."IPT_landusage_id_seq"'::regclass);
 A   ALTER TABLE public."IPT_landusage" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            v           2604    72794    IPT_occupation id    DEFAULT     z   ALTER TABLE ONLY public."IPT_occupation" ALTER COLUMN id SET DEFAULT nextval('public."IPT_occupation_id_seq"'::regclass);
 B   ALTER TABLE public."IPT_occupation" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            z           2604    72826    IPT_personalinfo id    DEFAULT     ~   ALTER TABLE ONLY public."IPT_personalinfo" ALTER COLUMN id SET DEFAULT nextval('public."IPT_personalinfo_id_seq"'::regclass);
 D   ALTER TABLE public."IPT_personalinfo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            w           2604    72802    IPT_relation id    DEFAULT     v   ALTER TABLE ONLY public."IPT_relation" ALTER COLUMN id SET DEFAULT nextval('public."IPT_relation_id_seq"'::regclass);
 @   ALTER TABLE public."IPT_relation" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            x           2604    72810    IPT_roadaccessibilitystate id    DEFAULT     ?   ALTER TABLE ONLY public."IPT_roadaccessibilitystate" ALTER COLUMN id SET DEFAULT nextval('public."IPT_roadaccessibilitystate_id_seq"'::regclass);
 N   ALTER TABLE public."IPT_roadaccessibilitystate" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            y           2604    72818    IPT_sectors id    DEFAULT     t   ALTER TABLE ONLY public."IPT_sectors" ALTER COLUMN id SET DEFAULT nextval('public."IPT_sectors_id_seq"'::regclass);
 ?   ALTER TABLE public."IPT_sectors" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            ?           2604    73011    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            ?           2604    73021    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            ?           2604    73003    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            ?           2604    73029    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            ?           2604    73039    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            ?           2604    73047    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            ?           2604    73107    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            ?           2604    72993    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            p           2604    72740    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            ?           2604    73140    revmgtmt_bill id    DEFAULT     t   ALTER TABLE ONLY public.revmgtmt_bill ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_bill_id_seq'::regclass);
 ?   ALTER TABLE public.revmgtmt_bill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            ?           2604    73246    revmgtmt_cancelled id    DEFAULT     ~   ALTER TABLE ONLY public.revmgtmt_cancelled ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_cancelled_id_seq'::regclass);
 D   ALTER TABLE public.revmgtmt_cancelled ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276    277            ?           2604    73151    revmgtmt_designation id    DEFAULT     ?   ALTER TABLE ONLY public.revmgtmt_designation ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_designation_id_seq'::regclass);
 F   ALTER TABLE public.revmgtmt_designation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            ?           2604    73238    revmgtmt_estimated id    DEFAULT     ~   ALTER TABLE ONLY public.revmgtmt_estimated ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_estimated_id_seq'::regclass);
 D   ALTER TABLE public.revmgtmt_estimated ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274    275            ?           2604    73159    revmgtmt_fy id    DEFAULT     p   ALTER TABLE ONLY public.revmgtmt_fy ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_fy_id_seq'::regclass);
 =   ALTER TABLE public.revmgtmt_fy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257            ?           2604    73167    revmgtmt_guide id    DEFAULT     v   ALTER TABLE ONLY public.revmgtmt_guide ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_guide_id_seq'::regclass);
 @   ALTER TABLE public.revmgtmt_guide ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258    259            ?           2604    73175    revmgtmt_office id    DEFAULT     x   ALTER TABLE ONLY public.revmgtmt_office ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_office_id_seq'::regclass);
 A   ALTER TABLE public.revmgtmt_office ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260    261            ?           2604    73183    revmgtmt_paymentmethod id    DEFAULT     ?   ALTER TABLE ONLY public.revmgtmt_paymentmethod ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_paymentmethod_id_seq'::regclass);
 H   ALTER TABLE public.revmgtmt_paymentmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262    263            ?           2604    73225    revmgtmt_profile id    DEFAULT     z   ALTER TABLE ONLY public.revmgtmt_profile ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_profile_id_seq'::regclass);
 B   ALTER TABLE public.revmgtmt_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273            ?           2604    73289    revmgtmt_rasidallocation id    DEFAULT     ?   ALTER TABLE ONLY public.revmgtmt_rasidallocation ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_rasidallocation_id_seq'::regclass);
 J   ALTER TABLE public.revmgtmt_rasidallocation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            ?           2604    73215    revmgtmt_relmap id    DEFAULT     x   ALTER TABLE ONLY public.revmgtmt_relmap ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_relmap_id_seq'::regclass);
 A   ALTER TABLE public.revmgtmt_relmap ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270    271            ?           2604    73207    revmgtmt_service id    DEFAULT     z   ALTER TABLE ONLY public.revmgtmt_service ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_service_id_seq'::regclass);
 B   ALTER TABLE public.revmgtmt_service ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    268    269            ?           2604    73191    revmgtmt_servicemeta id    DEFAULT     ?   ALTER TABLE ONLY public.revmgtmt_servicemeta ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_servicemeta_id_seq'::regclass);
 F   ALTER TABLE public.revmgtmt_servicemeta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264    265            ?           2604    73199    revmgtmt_setupguide id    DEFAULT     ?   ALTER TABLE ONLY public.revmgtmt_setupguide ALTER COLUMN id SET DEFAULT nextval('public.revmgtmt_setupguide_id_seq'::regclass);
 E   ALTER TABLE public.revmgtmt_setupguide ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    267    267            ?          0    72874    IPT_buildings 
   TABLE DATA           ?   COPY public."IPT_buildings" (id, made_year, "occupiedArea", stories, price, is_active, "buildingType_id", "buildingUsage_id", "landRef_id", owner_id, "accessibleToRoad_id", length, width) FROM stdin;
    public          postgres    false    235   ^
      ?          0    72748    IPT_buildingtype 
   TABLE DATA           A   COPY public."IPT_buildingtype" (id, type, is_active) FROM stdin;
    public          postgres    false    205   {
      ?          0    72756    IPT_buildingusage 
   TABLE DATA           C   COPY public."IPT_buildingusage" (id, usage, is_active) FROM stdin;
    public          postgres    false    207   ?
      ?          0    72866    IPT_deprication 
   TABLE DATA           I   COPY public."IPT_deprication" (id, rate, is_active, type_id) FROM stdin;
    public          postgres    false    233   	      ?          0    72858    IPT_familymembers 
   TABLE DATA           l   COPY public."IPT_familymembers" (id, "fullName", "Occupation_id", "familyHead_id", relation_id) FROM stdin;
    public          postgres    false    231   &      ?          0    72764    IPT_finereward 
   TABLE DATA           Y   COPY public."IPT_finereward" (id, date_from, date_to, type, rate, is_active) FROM stdin;
    public          postgres    false    209   C      ?          0    72850    IPT_infrastructuretaxes 
   TABLE DATA           ?   COPY public."IPT_infrastructuretaxes" (id, tax_amount, is_active, building_type_id, building_usage_id, road_access_id, sector_id) FROM stdin;
    public          postgres    false    229   `      ?          0    72842    IPT_landdetails 
   TABLE DATA           ?   COPY public."IPT_landdetails" (id, kitta, area, "accessibleToRoad_id", "pricePerUnit", property_value, is_active, owner_id, unit_id, usage_id, area_ch) FROM stdin;
    public          postgres    false    227   }      ?          0    72834    IPT_landtaxes 
   TABLE DATA           _   COPY public."IPT_landtaxes" (id, tax_amount, is_active, road_access_id, sector_id) FROM stdin;
    public          postgres    false    225   ?      ?          0    72772    IPT_landunits 
   TABLE DATA           _   COPY public."IPT_landunits" (id, unit, area_per_unit, is_active, area_per_unit_ft) FROM stdin;
    public          postgres    false    211   ?      ?          0    72780    IPT_landusage 
   TABLE DATA           ?   COPY public."IPT_landusage" (id, usage, is_active) FROM stdin;
    public          postgres    false    213   w      ?          0    72791    IPT_occupation 
   TABLE DATA           E   COPY public."IPT_occupation" (id, occupation, is_active) FROM stdin;
    public          postgres    false    215   ?      ?          0    72823    IPT_personalinfo 
   TABLE DATA           T   COPY public."IPT_personalinfo" (id, fullname, address, contact, occ_id) FROM stdin;
    public          postgres    false    223   	      ?          0    72799    IPT_relation 
   TABLE DATA           A   COPY public."IPT_relation" (id, relation, is_active) FROM stdin;
    public          postgres    false    217   &      ?          0    72807    IPT_roadaccessibilitystate 
   TABLE DATA           P   COPY public."IPT_roadaccessibilitystate" (id, road_type, is_active) FROM stdin;
    public          postgres    false    219   ]      ?          0    72815    IPT_sectors 
   TABLE DATA           B   COPY public."IPT_sectors" (id, "areaName", is_active) FROM stdin;
    public          postgres    false    221   ?                0    73008 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    241                    0    73018    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    243   =                 0    73000    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    239   Z                0    73026 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    245   ?                0    73036    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    247   ?      
          0    73044    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    249   ?                0    73104    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    251   ?      ?          0    72990    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    237   ?      ?          0    72737    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   Q      )          0    73361    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    280   ?                0    73137    revmgtmt_bill 
   TABLE DATA           0  COPY public.revmgtmt_bill (id, "billNo", "billNoNp", "transactionDate", "transactionDateNp", "clientName", address, contact, "totalAmount", "totalAmountNp", "totalAmountInLetters", complete, token, "isActive", "fyRef_id", meta_ref_id, org_ref_id, payment_method_id, "serviceRef_id", user_id) FROM stdin;
    public          postgres    false    253   $      &          0    73243    revmgtmt_cancelled 
   TABLE DATA           Z   COPY public.revmgtmt_cancelled (id, "Remarks", date_cancelled, "rasidRef_id") FROM stdin;
    public          postgres    false    277                   0    73148    revmgtmt_designation 
   TABLE DATA           Z   COPY public.revmgtmt_designation (id, designation, designation_en, is_active) FROM stdin;
    public          postgres    false    255         $          0    73235    revmgtmt_estimated 
   TABLE DATA           n   COPY public.revmgtmt_estimated (id, metawise, servicewise, fyref_id, meta_ref_id, service_ref_id) FROM stdin;
    public          postgres    false    275   <                0    73156    revmgtmt_fy 
   TABLE DATA           >   COPY public.revmgtmt_fy (id, fy, fy_np, isactive) FROM stdin;
    public          postgres    false    257   }                0    73164    revmgtmt_guide 
   TABLE DATA           L   COPY public.revmgtmt_guide (id, "setupName", path, is_complete) FROM stdin;
    public          postgres    false    259   ?                0    73172    revmgtmt_office 
   TABLE DATA           W   COPY public.revmgtmt_office (id, "officeName", "officeAddress", is_active) FROM stdin;
    public          postgres    false    261   ?                0    73180    revmgtmt_paymentmethod 
   TABLE DATA           S   COPY public.revmgtmt_paymentmethod (id, method, "paymentId", isactive) FROM stdin;
    public          postgres    false    263   H      "          0    73222    revmgtmt_profile 
   TABLE DATA           ?   COPY public.revmgtmt_profile (id, "desc", "sanketNo", "contactNo", manual_disable, first_time, guide_complete, is_active, user_id) FROM stdin;
    public          postgres    false    273   p      (          0    73286    revmgtmt_rasidallocation 
   TABLE DATA           ?   COPY public.revmgtmt_rasidallocation (id, "lowerRasid", "upperRasid", "currentRasid", "isActive", "fyRef_id", "officeRef_id") FROM stdin;
    public          postgres    false    279                    0    73212    revmgtmt_relmap 
   TABLE DATA           E   COPY public.revmgtmt_relmap (id, "offRef_id", "uRef_id") FROM stdin;
    public          postgres    false    271   ,                0    73204    revmgtmt_service 
   TABLE DATA           ?   COPY public.revmgtmt_service (id, "serviceSub_ref", "serviceName", "serviceCharge", "serviceChargeNp", "isActive", meta_ref_id) FROM stdin;
    public          postgres    false    269   O                0    73188    revmgtmt_servicemeta 
   TABLE DATA           K   COPY public.revmgtmt_servicemeta (id, ref_no, servicecategory) FROM stdin;
    public          postgres    false    265   ?                0    73196    revmgtmt_setupguide 
   TABLE DATA           Q   COPY public.revmgtmt_setupguide (id, "setupName", path, is_complete) FROM stdin;
    public          postgres    false    267   4       W           0    0    IPT_buildings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."IPT_buildings_id_seq"', 1, false);
          public          postgres    false    234            X           0    0    IPT_buildingtype_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."IPT_buildingtype_id_seq"', 3, true);
          public          postgres    false    204            Y           0    0    IPT_buildingusage_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."IPT_buildingusage_id_seq"', 1, true);
          public          postgres    false    206            Z           0    0    IPT_deprication_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."IPT_deprication_id_seq"', 1, false);
          public          postgres    false    232            [           0    0    IPT_familymembers_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."IPT_familymembers_id_seq"', 41, true);
          public          postgres    false    230            \           0    0    IPT_finereward_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."IPT_finereward_id_seq"', 1, false);
          public          postgres    false    208            ]           0    0    IPT_infrastructuretaxes_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."IPT_infrastructuretaxes_id_seq"', 1, false);
          public          postgres    false    228            ^           0    0    IPT_landdetails_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."IPT_landdetails_id_seq"', 19, true);
          public          postgres    false    226            _           0    0    IPT_landtaxes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IPT_landtaxes_id_seq"', 2, true);
          public          postgres    false    224            `           0    0    IPT_landunits_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IPT_landunits_id_seq"', 2, true);
          public          postgres    false    210            a           0    0    IPT_landusage_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IPT_landusage_id_seq"', 3, true);
          public          postgres    false    212            b           0    0    IPT_occupation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."IPT_occupation_id_seq"', 1, true);
          public          postgres    false    214            c           0    0    IPT_personalinfo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."IPT_personalinfo_id_seq"', 71, true);
          public          postgres    false    222            d           0    0    IPT_relation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."IPT_relation_id_seq"', 2, true);
          public          postgres    false    216            e           0    0 !   IPT_roadaccessibilitystate_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."IPT_roadaccessibilitystate_id_seq"', 2, true);
          public          postgres    false    218            f           0    0    IPT_sectors_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."IPT_sectors_id_seq"', 2, true);
          public          postgres    false    220            g           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    240            h           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    242            i           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 144, true);
          public          postgres    false    238            j           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    246            k           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    244            l           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    248            m           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    250            n           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 36, true);
          public          postgres    false    236            o           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          postgres    false    202            p           0    0    revmgtmt_bill_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.revmgtmt_bill_id_seq', 8, true);
          public          postgres    false    252            q           0    0    revmgtmt_cancelled_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.revmgtmt_cancelled_id_seq', 1, false);
          public          postgres    false    276            r           0    0    revmgtmt_designation_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.revmgtmt_designation_id_seq', 1, false);
          public          postgres    false    254            s           0    0    revmgtmt_estimated_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.revmgtmt_estimated_id_seq', 8, true);
          public          postgres    false    274            t           0    0    revmgtmt_fy_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.revmgtmt_fy_id_seq', 1, true);
          public          postgres    false    256            u           0    0    revmgtmt_guide_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.revmgtmt_guide_id_seq', 1, false);
          public          postgres    false    258            v           0    0    revmgtmt_office_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.revmgtmt_office_id_seq', 2, true);
          public          postgres    false    260            w           0    0    revmgtmt_paymentmethod_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.revmgtmt_paymentmethod_id_seq', 3, true);
          public          postgres    false    262            x           0    0    revmgtmt_profile_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.revmgtmt_profile_id_seq', 3, true);
          public          postgres    false    272            y           0    0    revmgtmt_rasidallocation_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.revmgtmt_rasidallocation_id_seq', 1, true);
          public          postgres    false    278            z           0    0    revmgtmt_relmap_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.revmgtmt_relmap_id_seq', 1, true);
          public          postgres    false    270            {           0    0    revmgtmt_service_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.revmgtmt_service_id_seq', 5, true);
          public          postgres    false    268            |           0    0    revmgtmt_servicemeta_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.revmgtmt_servicemeta_id_seq', 2, true);
          public          postgres    false    264            }           0    0    revmgtmt_setupguide_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.revmgtmt_setupguide_id_seq', 1, false);
          public          postgres    false    266            ?           2606    72879     IPT_buildings IPT_buildings_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."IPT_buildings"
    ADD CONSTRAINT "IPT_buildings_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."IPT_buildings" DROP CONSTRAINT "IPT_buildings_pkey";
       public            postgres    false    235            ?           2606    72753 &   IPT_buildingtype IPT_buildingtype_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."IPT_buildingtype"
    ADD CONSTRAINT "IPT_buildingtype_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."IPT_buildingtype" DROP CONSTRAINT "IPT_buildingtype_pkey";
       public            postgres    false    205            ?           2606    72761 (   IPT_buildingusage IPT_buildingusage_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."IPT_buildingusage"
    ADD CONSTRAINT "IPT_buildingusage_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."IPT_buildingusage" DROP CONSTRAINT "IPT_buildingusage_pkey";
       public            postgres    false    207            ?           2606    72871 $   IPT_deprication IPT_deprication_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."IPT_deprication"
    ADD CONSTRAINT "IPT_deprication_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."IPT_deprication" DROP CONSTRAINT "IPT_deprication_pkey";
       public            postgres    false    233            ?           2606    72863 (   IPT_familymembers IPT_familymembers_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."IPT_familymembers"
    ADD CONSTRAINT "IPT_familymembers_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."IPT_familymembers" DROP CONSTRAINT "IPT_familymembers_pkey";
       public            postgres    false    231            ?           2606    72769 "   IPT_finereward IPT_finereward_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."IPT_finereward"
    ADD CONSTRAINT "IPT_finereward_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."IPT_finereward" DROP CONSTRAINT "IPT_finereward_pkey";
       public            postgres    false    209            ?           2606    72855 4   IPT_infrastructuretaxes IPT_infrastructuretaxes_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."IPT_infrastructuretaxes"
    ADD CONSTRAINT "IPT_infrastructuretaxes_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."IPT_infrastructuretaxes" DROP CONSTRAINT "IPT_infrastructuretaxes_pkey";
       public            postgres    false    229            ?           2606    72847 $   IPT_landdetails IPT_landdetails_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."IPT_landdetails"
    ADD CONSTRAINT "IPT_landdetails_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."IPT_landdetails" DROP CONSTRAINT "IPT_landdetails_pkey";
       public            postgres    false    227            ?           2606    72839     IPT_landtaxes IPT_landtaxes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."IPT_landtaxes"
    ADD CONSTRAINT "IPT_landtaxes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."IPT_landtaxes" DROP CONSTRAINT "IPT_landtaxes_pkey";
       public            postgres    false    225            ?           2606    72777     IPT_landunits IPT_landunits_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."IPT_landunits"
    ADD CONSTRAINT "IPT_landunits_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."IPT_landunits" DROP CONSTRAINT "IPT_landunits_pkey";
       public            postgres    false    211            ?           2606    72788     IPT_landusage IPT_landusage_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."IPT_landusage"
    ADD CONSTRAINT "IPT_landusage_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."IPT_landusage" DROP CONSTRAINT "IPT_landusage_pkey";
       public            postgres    false    213            ?           2606    72796 "   IPT_occupation IPT_occupation_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."IPT_occupation"
    ADD CONSTRAINT "IPT_occupation_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."IPT_occupation" DROP CONSTRAINT "IPT_occupation_pkey";
       public            postgres    false    215            ?           2606    72831 &   IPT_personalinfo IPT_personalinfo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."IPT_personalinfo"
    ADD CONSTRAINT "IPT_personalinfo_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."IPT_personalinfo" DROP CONSTRAINT "IPT_personalinfo_pkey";
       public            postgres    false    223            ?           2606    72804    IPT_relation IPT_relation_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."IPT_relation"
    ADD CONSTRAINT "IPT_relation_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."IPT_relation" DROP CONSTRAINT "IPT_relation_pkey";
       public            postgres    false    217            ?           2606    72812 :   IPT_roadaccessibilitystate IPT_roadaccessibilitystate_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."IPT_roadaccessibilitystate"
    ADD CONSTRAINT "IPT_roadaccessibilitystate_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."IPT_roadaccessibilitystate" DROP CONSTRAINT "IPT_roadaccessibilitystate_pkey";
       public            postgres    false    219            ?           2606    72820    IPT_sectors IPT_sectors_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."IPT_sectors"
    ADD CONSTRAINT "IPT_sectors_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."IPT_sectors" DROP CONSTRAINT "IPT_sectors_pkey";
       public            postgres    false    221            ?           2606    73133    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    241            ?           2606    73060 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    243    243            ?           2606    73023 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    243            ?           2606    73013    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    241            ?           2606    73051 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    239    239            ?           2606    73005 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    239            ?           2606    73041 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    247            ?           2606    73075 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    247    247            ?           2606    73031    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    245            ?           2606    73049 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    249            ?           2606    73089 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    249    249            ?           2606    73127     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    245            ?           2606    73113 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    251            ?           2606    72997 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    237    237            ?           2606    72995 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    237            ?           2606    72745 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            .           2606    73368 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    280            ?           2606    73293 9   revmgtmt_bill revmgtmt_bill_fyRef_id_billNo_6155c99b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT "revmgtmt_bill_fyRef_id_billNo_6155c99b_uniq" UNIQUE ("fyRef_id", "billNo");
 e   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT "revmgtmt_bill_fyRef_id_billNo_6155c99b_uniq";
       public            postgres    false    253    253            ?           2606    73145     revmgtmt_bill revmgtmt_bill_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT revmgtmt_bill_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT revmgtmt_bill_pkey;
       public            postgres    false    253            #           2606    73251 *   revmgtmt_cancelled revmgtmt_cancelled_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.revmgtmt_cancelled
    ADD CONSTRAINT revmgtmt_cancelled_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.revmgtmt_cancelled DROP CONSTRAINT revmgtmt_cancelled_pkey;
       public            postgres    false    277            %           2606    73253 5   revmgtmt_cancelled revmgtmt_cancelled_rasidRef_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.revmgtmt_cancelled
    ADD CONSTRAINT "revmgtmt_cancelled_rasidRef_id_key" UNIQUE ("rasidRef_id");
 a   ALTER TABLE ONLY public.revmgtmt_cancelled DROP CONSTRAINT "revmgtmt_cancelled_rasidRef_id_key";
       public            postgres    false    277                       2606    73153 .   revmgtmt_designation revmgtmt_designation_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.revmgtmt_designation
    ADD CONSTRAINT revmgtmt_designation_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.revmgtmt_designation DROP CONSTRAINT revmgtmt_designation_pkey;
       public            postgres    false    255                        2606    73240 *   revmgtmt_estimated revmgtmt_estimated_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.revmgtmt_estimated
    ADD CONSTRAINT revmgtmt_estimated_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.revmgtmt_estimated DROP CONSTRAINT revmgtmt_estimated_pkey;
       public            postgres    false    275                       2606    73295 7   revmgtmt_fy revmgtmt_fy_fy_fy_np_isactive_64e94cae_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_fy
    ADD CONSTRAINT revmgtmt_fy_fy_fy_np_isactive_64e94cae_uniq UNIQUE (fy, fy_np, isactive);
 a   ALTER TABLE ONLY public.revmgtmt_fy DROP CONSTRAINT revmgtmt_fy_fy_fy_np_isactive_64e94cae_uniq;
       public            postgres    false    257    257    257                       2606    73161    revmgtmt_fy revmgtmt_fy_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.revmgtmt_fy
    ADD CONSTRAINT revmgtmt_fy_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.revmgtmt_fy DROP CONSTRAINT revmgtmt_fy_pkey;
       public            postgres    false    257                       2606    73169 "   revmgtmt_guide revmgtmt_guide_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.revmgtmt_guide
    ADD CONSTRAINT revmgtmt_guide_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.revmgtmt_guide DROP CONSTRAINT revmgtmt_guide_pkey;
       public            postgres    false    259            
           2606    73177 $   revmgtmt_office revmgtmt_office_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.revmgtmt_office
    ADD CONSTRAINT revmgtmt_office_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.revmgtmt_office DROP CONSTRAINT revmgtmt_office_pkey;
       public            postgres    false    261                       2606    73185 2   revmgtmt_paymentmethod revmgtmt_paymentmethod_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.revmgtmt_paymentmethod
    ADD CONSTRAINT revmgtmt_paymentmethod_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.revmgtmt_paymentmethod DROP CONSTRAINT revmgtmt_paymentmethod_pkey;
       public            postgres    false    263                       2606    73230 &   revmgtmt_profile revmgtmt_profile_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.revmgtmt_profile
    ADD CONSTRAINT revmgtmt_profile_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.revmgtmt_profile DROP CONSTRAINT revmgtmt_profile_pkey;
       public            postgres    false    273                       2606    73232 -   revmgtmt_profile revmgtmt_profile_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.revmgtmt_profile
    ADD CONSTRAINT revmgtmt_profile_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.revmgtmt_profile DROP CONSTRAINT revmgtmt_profile_user_id_key;
       public            postgres    false    273            (           2606    73348 X   revmgtmt_rasidallocation revmgtmt_rasidallocation_fyRef_id_lowerRasid_uppe_d33db5c3_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_rasidallocation
    ADD CONSTRAINT "revmgtmt_rasidallocation_fyRef_id_lowerRasid_uppe_d33db5c3_uniq" UNIQUE ("fyRef_id", "lowerRasid", "upperRasid");
 ?   ALTER TABLE ONLY public.revmgtmt_rasidallocation DROP CONSTRAINT "revmgtmt_rasidallocation_fyRef_id_lowerRasid_uppe_d33db5c3_uniq";
       public            postgres    false    279    279    279            +           2606    73291 6   revmgtmt_rasidallocation revmgtmt_rasidallocation_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.revmgtmt_rasidallocation
    ADD CONSTRAINT revmgtmt_rasidallocation_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.revmgtmt_rasidallocation DROP CONSTRAINT revmgtmt_rasidallocation_pkey;
       public            postgres    false    279                       2606    73217 $   revmgtmt_relmap revmgtmt_relmap_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.revmgtmt_relmap
    ADD CONSTRAINT revmgtmt_relmap_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.revmgtmt_relmap DROP CONSTRAINT revmgtmt_relmap_pkey;
       public            postgres    false    271                       2606    73219 +   revmgtmt_relmap revmgtmt_relmap_uRef_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.revmgtmt_relmap
    ADD CONSTRAINT "revmgtmt_relmap_uRef_id_key" UNIQUE ("uRef_id");
 W   ALTER TABLE ONLY public.revmgtmt_relmap DROP CONSTRAINT "revmgtmt_relmap_uRef_id_key";
       public            postgres    false    271                       2606    73209 &   revmgtmt_service revmgtmt_service_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.revmgtmt_service
    ADD CONSTRAINT revmgtmt_service_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.revmgtmt_service DROP CONSTRAINT revmgtmt_service_pkey;
       public            postgres    false    269                       2606    73193 .   revmgtmt_servicemeta revmgtmt_servicemeta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.revmgtmt_servicemeta
    ADD CONSTRAINT revmgtmt_servicemeta_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.revmgtmt_servicemeta DROP CONSTRAINT revmgtmt_servicemeta_pkey;
       public            postgres    false    265                       2606    73201 ,   revmgtmt_setupguide revmgtmt_setupguide_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.revmgtmt_setupguide
    ADD CONSTRAINT revmgtmt_setupguide_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.revmgtmt_setupguide DROP CONSTRAINT revmgtmt_setupguide_pkey;
       public            postgres    false    267            ?           1259    73390 *   IPT_buildings_accessibleToRoad_id_c045612a    INDEX     y   CREATE INDEX "IPT_buildings_accessibleToRoad_id_c045612a" ON public."IPT_buildings" USING btree ("accessibleToRoad_id");
 @   DROP INDEX public."IPT_buildings_accessibleToRoad_id_c045612a";
       public            postgres    false    235            ?           1259    72984 &   IPT_buildings_buildingType_id_022c1a59    INDEX     q   CREATE INDEX "IPT_buildings_buildingType_id_022c1a59" ON public."IPT_buildings" USING btree ("buildingType_id");
 <   DROP INDEX public."IPT_buildings_buildingType_id_022c1a59";
       public            postgres    false    235            ?           1259    72985 '   IPT_buildings_buildingUsage_id_874c02dc    INDEX     s   CREATE INDEX "IPT_buildings_buildingUsage_id_874c02dc" ON public."IPT_buildings" USING btree ("buildingUsage_id");
 =   DROP INDEX public."IPT_buildings_buildingUsage_id_874c02dc";
       public            postgres    false    235            ?           1259    72986 !   IPT_buildings_landRef_id_36044c6d    INDEX     g   CREATE INDEX "IPT_buildings_landRef_id_36044c6d" ON public."IPT_buildings" USING btree ("landRef_id");
 7   DROP INDEX public."IPT_buildings_landRef_id_36044c6d";
       public            postgres    false    235            ?           1259    72987    IPT_buildings_owner_id_7aa3f258    INDEX     a   CREATE INDEX "IPT_buildings_owner_id_7aa3f258" ON public."IPT_buildings" USING btree (owner_id);
 5   DROP INDEX public."IPT_buildings_owner_id_7aa3f258";
       public            postgres    false    235            ?           1259    72963     IPT_deprication_type_id_a7f21265    INDEX     c   CREATE INDEX "IPT_deprication_type_id_a7f21265" ON public."IPT_deprication" USING btree (type_id);
 6   DROP INDEX public."IPT_deprication_type_id_a7f21265";
       public            postgres    false    233            ?           1259    72955 (   IPT_familymembers_Occupation_id_6bc7f23d    INDEX     u   CREATE INDEX "IPT_familymembers_Occupation_id_6bc7f23d" ON public."IPT_familymembers" USING btree ("Occupation_id");
 >   DROP INDEX public."IPT_familymembers_Occupation_id_6bc7f23d";
       public            postgres    false    231            ?           1259    72956 (   IPT_familymembers_familyHead_id_55ab59b1    INDEX     u   CREATE INDEX "IPT_familymembers_familyHead_id_55ab59b1" ON public."IPT_familymembers" USING btree ("familyHead_id");
 >   DROP INDEX public."IPT_familymembers_familyHead_id_55ab59b1";
       public            postgres    false    231            ?           1259    72957 &   IPT_familymembers_relation_id_f4f44571    INDEX     o   CREATE INDEX "IPT_familymembers_relation_id_f4f44571" ON public."IPT_familymembers" USING btree (relation_id);
 <   DROP INDEX public."IPT_familymembers_relation_id_f4f44571";
       public            postgres    false    231            ?           1259    72936 1   IPT_infrastructuretaxes_building_type_id_8d8b79b3    INDEX     ?   CREATE INDEX "IPT_infrastructuretaxes_building_type_id_8d8b79b3" ON public."IPT_infrastructuretaxes" USING btree (building_type_id);
 G   DROP INDEX public."IPT_infrastructuretaxes_building_type_id_8d8b79b3";
       public            postgres    false    229            ?           1259    72937 2   IPT_infrastructuretaxes_building_usage_id_3eba89ae    INDEX     ?   CREATE INDEX "IPT_infrastructuretaxes_building_usage_id_3eba89ae" ON public."IPT_infrastructuretaxes" USING btree (building_usage_id);
 H   DROP INDEX public."IPT_infrastructuretaxes_building_usage_id_3eba89ae";
       public            postgres    false    229            ?           1259    72938 /   IPT_infrastructuretaxes_road_access_id_e17e0755    INDEX     ?   CREATE INDEX "IPT_infrastructuretaxes_road_access_id_e17e0755" ON public."IPT_infrastructuretaxes" USING btree (road_access_id);
 E   DROP INDEX public."IPT_infrastructuretaxes_road_access_id_e17e0755";
       public            postgres    false    229            ?           1259    72939 *   IPT_infrastructuretaxes_sector_id_e39ab276    INDEX     w   CREATE INDEX "IPT_infrastructuretaxes_sector_id_e39ab276" ON public."IPT_infrastructuretaxes" USING btree (sector_id);
 @   DROP INDEX public."IPT_infrastructuretaxes_sector_id_e39ab276";
       public            postgres    false    229            ?           1259    73384 ,   IPT_landdetails_accessibleToRoad_id_c4c33441    INDEX     }   CREATE INDEX "IPT_landdetails_accessibleToRoad_id_c4c33441" ON public."IPT_landdetails" USING btree ("accessibleToRoad_id");
 B   DROP INDEX public."IPT_landdetails_accessibleToRoad_id_c4c33441";
       public            postgres    false    227            ?           1259    72913 !   IPT_landdetails_owner_id_6025128e    INDEX     e   CREATE INDEX "IPT_landdetails_owner_id_6025128e" ON public."IPT_landdetails" USING btree (owner_id);
 7   DROP INDEX public."IPT_landdetails_owner_id_6025128e";
       public            postgres    false    227            ?           1259    72914     IPT_landdetails_unit_id_c938ad44    INDEX     c   CREATE INDEX "IPT_landdetails_unit_id_c938ad44" ON public."IPT_landdetails" USING btree (unit_id);
 6   DROP INDEX public."IPT_landdetails_unit_id_c938ad44";
       public            postgres    false    227            ?           1259    72915 !   IPT_landdetails_usage_id_f4220761    INDEX     e   CREATE INDEX "IPT_landdetails_usage_id_f4220761" ON public."IPT_landdetails" USING btree (usage_id);
 7   DROP INDEX public."IPT_landdetails_usage_id_f4220761";
       public            postgres    false    227            ?           1259    72896 %   IPT_landtaxes_road_access_id_d5660544    INDEX     m   CREATE INDEX "IPT_landtaxes_road_access_id_d5660544" ON public."IPT_landtaxes" USING btree (road_access_id);
 ;   DROP INDEX public."IPT_landtaxes_road_access_id_d5660544";
       public            postgres    false    225            ?           1259    72897     IPT_landtaxes_sector_id_e5c23ba0    INDEX     c   CREATE INDEX "IPT_landtaxes_sector_id_e5c23ba0" ON public."IPT_landtaxes" USING btree (sector_id);
 6   DROP INDEX public."IPT_landtaxes_sector_id_e5c23ba0";
       public            postgres    false    225            ?           1259    72885     IPT_personalinfo_occ_id_7ced9f5e    INDEX     c   CREATE INDEX "IPT_personalinfo_occ_id_7ced9f5e" ON public."IPT_personalinfo" USING btree (occ_id);
 6   DROP INDEX public."IPT_personalinfo_occ_id_7ced9f5e";
       public            postgres    false    223            ?           1259    73134    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    241            ?           1259    73071 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    243            ?           1259    73072 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    243            ?           1259    73057 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    239            ?           1259    73087 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    247            ?           1259    73086 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    247            ?           1259    73101 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    249            ?           1259    73100 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    249            ?           1259    73128     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    245            ?           1259    73124 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    251            ?           1259    73125 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    251            ,           1259    73370 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    280            /           1259    73369 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    280            ?           1259    73341    revmgtmt_bill_fyRef_id_b2844eea    INDEX     a   CREATE INDEX "revmgtmt_bill_fyRef_id_b2844eea" ON public.revmgtmt_bill USING btree ("fyRef_id");
 5   DROP INDEX public."revmgtmt_bill_fyRef_id_b2844eea";
       public            postgres    false    253            ?           1259    73342 "   revmgtmt_bill_meta_ref_id_04bb60ee    INDEX     c   CREATE INDEX revmgtmt_bill_meta_ref_id_04bb60ee ON public.revmgtmt_bill USING btree (meta_ref_id);
 6   DROP INDEX public.revmgtmt_bill_meta_ref_id_04bb60ee;
       public            postgres    false    253            ?           1259    73343 !   revmgtmt_bill_org_ref_id_7e3928c4    INDEX     a   CREATE INDEX revmgtmt_bill_org_ref_id_7e3928c4 ON public.revmgtmt_bill USING btree (org_ref_id);
 5   DROP INDEX public.revmgtmt_bill_org_ref_id_7e3928c4;
       public            postgres    false    253            ?           1259    73344 (   revmgtmt_bill_payment_method_id_f196a0fc    INDEX     o   CREATE INDEX revmgtmt_bill_payment_method_id_f196a0fc ON public.revmgtmt_bill USING btree (payment_method_id);
 <   DROP INDEX public.revmgtmt_bill_payment_method_id_f196a0fc;
       public            postgres    false    253            ?           1259    73345 $   revmgtmt_bill_serviceRef_id_04adffe3    INDEX     k   CREATE INDEX "revmgtmt_bill_serviceRef_id_04adffe3" ON public.revmgtmt_bill USING btree ("serviceRef_id");
 :   DROP INDEX public."revmgtmt_bill_serviceRef_id_04adffe3";
       public            postgres    false    253                        1259    73346    revmgtmt_bill_user_id_6c89c824    INDEX     [   CREATE INDEX revmgtmt_bill_user_id_6c89c824 ON public.revmgtmt_bill USING btree (user_id);
 2   DROP INDEX public.revmgtmt_bill_user_id_6c89c824;
       public            postgres    false    253                       1259    73333 $   revmgtmt_estimated_fyref_id_7c53658f    INDEX     g   CREATE INDEX revmgtmt_estimated_fyref_id_7c53658f ON public.revmgtmt_estimated USING btree (fyref_id);
 8   DROP INDEX public.revmgtmt_estimated_fyref_id_7c53658f;
       public            postgres    false    275                       1259    73334 '   revmgtmt_estimated_meta_ref_id_7cead91e    INDEX     m   CREATE INDEX revmgtmt_estimated_meta_ref_id_7cead91e ON public.revmgtmt_estimated USING btree (meta_ref_id);
 ;   DROP INDEX public.revmgtmt_estimated_meta_ref_id_7cead91e;
       public            postgres    false    275            !           1259    73335 *   revmgtmt_estimated_service_ref_id_d6d33cea    INDEX     s   CREATE INDEX revmgtmt_estimated_service_ref_id_d6d33cea ON public.revmgtmt_estimated USING btree (service_ref_id);
 >   DROP INDEX public.revmgtmt_estimated_service_ref_id_d6d33cea;
       public            postgres    false    275            &           1259    73359 *   revmgtmt_rasidallocation_fyRef_id_be815ae4    INDEX     w   CREATE INDEX "revmgtmt_rasidallocation_fyRef_id_be815ae4" ON public.revmgtmt_rasidallocation USING btree ("fyRef_id");
 @   DROP INDEX public."revmgtmt_rasidallocation_fyRef_id_be815ae4";
       public            postgres    false    279            )           1259    73360 .   revmgtmt_rasidallocation_officeRef_id_a91453e0    INDEX        CREATE INDEX "revmgtmt_rasidallocation_officeRef_id_a91453e0" ON public.revmgtmt_rasidallocation USING btree ("officeRef_id");
 D   DROP INDEX public."revmgtmt_rasidallocation_officeRef_id_a91453e0";
       public            postgres    false    279                       1259    73312 "   revmgtmt_relmap_offRef_id_c093e7db    INDEX     g   CREATE INDEX "revmgtmt_relmap_offRef_id_c093e7db" ON public.revmgtmt_relmap USING btree ("offRef_id");
 8   DROP INDEX public."revmgtmt_relmap_offRef_id_c093e7db";
       public            postgres    false    271                       1259    73301 %   revmgtmt_service_meta_ref_id_07696332    INDEX     i   CREATE INDEX revmgtmt_service_meta_ref_id_07696332 ON public.revmgtmt_service USING btree (meta_ref_id);
 9   DROP INDEX public.revmgtmt_service_meta_ref_id_07696332;
       public            postgres    false    269            C           2606    73372 E   IPT_buildings IPT_buildings_accessibleToRoad_id_c045612a_fk_IPT_roada    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_buildings"
    ADD CONSTRAINT "IPT_buildings_accessibleToRoad_id_c045612a_fk_IPT_roada" FOREIGN KEY ("accessibleToRoad_id") REFERENCES public."IPT_roadaccessibilitystate"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."IPT_buildings" DROP CONSTRAINT "IPT_buildings_accessibleToRoad_id_c045612a_fk_IPT_roada";
       public          postgres    false    235    219    2985            ?           2606    72964 K   IPT_buildings IPT_buildings_buildingType_id_022c1a59_fk_IPT_buildingtype_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_buildings"
    ADD CONSTRAINT "IPT_buildings_buildingType_id_022c1a59_fk_IPT_buildingtype_id" FOREIGN KEY ("buildingType_id") REFERENCES public."IPT_buildingtype"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."IPT_buildings" DROP CONSTRAINT "IPT_buildings_buildingType_id_022c1a59_fk_IPT_buildingtype_id";
       public          postgres    false    2971    235    205            @           2606    72969 M   IPT_buildings IPT_buildings_buildingUsage_id_874c02dc_fk_IPT_buildingusage_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_buildings"
    ADD CONSTRAINT "IPT_buildings_buildingUsage_id_874c02dc_fk_IPT_buildingusage_id" FOREIGN KEY ("buildingUsage_id") REFERENCES public."IPT_buildingusage"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."IPT_buildings" DROP CONSTRAINT "IPT_buildings_buildingUsage_id_874c02dc_fk_IPT_buildingusage_id";
       public          postgres    false    207    235    2973            A           2606    72974 E   IPT_buildings IPT_buildings_landRef_id_36044c6d_fk_IPT_landdetails_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_buildings"
    ADD CONSTRAINT "IPT_buildings_landRef_id_36044c6d_fk_IPT_landdetails_id" FOREIGN KEY ("landRef_id") REFERENCES public."IPT_landdetails"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."IPT_buildings" DROP CONSTRAINT "IPT_buildings_landRef_id_36044c6d_fk_IPT_landdetails_id";
       public          postgres    false    235    2998    227            B           2606    72979 D   IPT_buildings IPT_buildings_owner_id_7aa3f258_fk_IPT_personalinfo_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_buildings"
    ADD CONSTRAINT "IPT_buildings_owner_id_7aa3f258_fk_IPT_personalinfo_id" FOREIGN KEY (owner_id) REFERENCES public."IPT_personalinfo"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."IPT_buildings" DROP CONSTRAINT "IPT_buildings_owner_id_7aa3f258_fk_IPT_personalinfo_id";
       public          postgres    false    223    2990    235            >           2606    72958 G   IPT_deprication IPT_deprication_type_id_a7f21265_fk_IPT_buildingtype_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_deprication"
    ADD CONSTRAINT "IPT_deprication_type_id_a7f21265_fk_IPT_buildingtype_id" FOREIGN KEY (type_id) REFERENCES public."IPT_buildingtype"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public."IPT_deprication" DROP CONSTRAINT "IPT_deprication_type_id_a7f21265_fk_IPT_buildingtype_id";
       public          postgres    false    205    233    2971            ;           2606    72940 O   IPT_familymembers IPT_familymembers_Occupation_id_6bc7f23d_fk_IPT_occupation_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_familymembers"
    ADD CONSTRAINT "IPT_familymembers_Occupation_id_6bc7f23d_fk_IPT_occupation_id" FOREIGN KEY ("Occupation_id") REFERENCES public."IPT_occupation"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."IPT_familymembers" DROP CONSTRAINT "IPT_familymembers_Occupation_id_6bc7f23d_fk_IPT_occupation_id";
       public          postgres    false    231    215    2981            <           2606    72945 Q   IPT_familymembers IPT_familymembers_familyHead_id_55ab59b1_fk_IPT_personalinfo_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_familymembers"
    ADD CONSTRAINT "IPT_familymembers_familyHead_id_55ab59b1_fk_IPT_personalinfo_id" FOREIGN KEY ("familyHead_id") REFERENCES public."IPT_personalinfo"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."IPT_familymembers" DROP CONSTRAINT "IPT_familymembers_familyHead_id_55ab59b1_fk_IPT_personalinfo_id";
       public          postgres    false    223    231    2990            =           2606    72950 K   IPT_familymembers IPT_familymembers_relation_id_f4f44571_fk_IPT_relation_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_familymembers"
    ADD CONSTRAINT "IPT_familymembers_relation_id_f4f44571_fk_IPT_relation_id" FOREIGN KEY (relation_id) REFERENCES public."IPT_relation"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."IPT_familymembers" DROP CONSTRAINT "IPT_familymembers_relation_id_f4f44571_fk_IPT_relation_id";
       public          postgres    false    2983    217    231            7           2606    72916 S   IPT_infrastructuretaxes IPT_infrastructureta_building_type_id_8d8b79b3_fk_IPT_build    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes"
    ADD CONSTRAINT "IPT_infrastructureta_building_type_id_8d8b79b3_fk_IPT_build" FOREIGN KEY (building_type_id) REFERENCES public."IPT_buildingtype"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes" DROP CONSTRAINT "IPT_infrastructureta_building_type_id_8d8b79b3_fk_IPT_build";
       public          postgres    false    2971    229    205            8           2606    72921 T   IPT_infrastructuretaxes IPT_infrastructureta_building_usage_id_3eba89ae_fk_IPT_build    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes"
    ADD CONSTRAINT "IPT_infrastructureta_building_usage_id_3eba89ae_fk_IPT_build" FOREIGN KEY (building_usage_id) REFERENCES public."IPT_buildingusage"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes" DROP CONSTRAINT "IPT_infrastructureta_building_usage_id_3eba89ae_fk_IPT_build";
       public          postgres    false    229    207    2973            9           2606    72926 Q   IPT_infrastructuretaxes IPT_infrastructureta_road_access_id_e17e0755_fk_IPT_roada    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes"
    ADD CONSTRAINT "IPT_infrastructureta_road_access_id_e17e0755_fk_IPT_roada" FOREIGN KEY (road_access_id) REFERENCES public."IPT_roadaccessibilitystate"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."IPT_infrastructuretaxes" DROP CONSTRAINT "IPT_infrastructureta_road_access_id_e17e0755_fk_IPT_roada";
       public          postgres    false    2985    229    219            :           2606    72931 T   IPT_infrastructuretaxes IPT_infrastructuretaxes_sector_id_e39ab276_fk_IPT_sectors_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes"
    ADD CONSTRAINT "IPT_infrastructuretaxes_sector_id_e39ab276_fk_IPT_sectors_id" FOREIGN KEY (sector_id) REFERENCES public."IPT_sectors"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."IPT_infrastructuretaxes" DROP CONSTRAINT "IPT_infrastructuretaxes_sector_id_e39ab276_fk_IPT_sectors_id";
       public          postgres    false    221    229    2987            6           2606    73385 I   IPT_landdetails IPT_landdetails_accessibleToRoad_id_c4c33441_fk_IPT_roada    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_landdetails"
    ADD CONSTRAINT "IPT_landdetails_accessibleToRoad_id_c4c33441_fk_IPT_roada" FOREIGN KEY ("accessibleToRoad_id") REFERENCES public."IPT_roadaccessibilitystate"(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public."IPT_landdetails" DROP CONSTRAINT "IPT_landdetails_accessibleToRoad_id_c4c33441_fk_IPT_roada";
       public          postgres    false    219    2985    227            3           2606    72898 H   IPT_landdetails IPT_landdetails_owner_id_6025128e_fk_IPT_personalinfo_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_landdetails"
    ADD CONSTRAINT "IPT_landdetails_owner_id_6025128e_fk_IPT_personalinfo_id" FOREIGN KEY (owner_id) REFERENCES public."IPT_personalinfo"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."IPT_landdetails" DROP CONSTRAINT "IPT_landdetails_owner_id_6025128e_fk_IPT_personalinfo_id";
       public          postgres    false    227    2990    223            4           2606    72903 D   IPT_landdetails IPT_landdetails_unit_id_c938ad44_fk_IPT_landunits_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_landdetails"
    ADD CONSTRAINT "IPT_landdetails_unit_id_c938ad44_fk_IPT_landunits_id" FOREIGN KEY (unit_id) REFERENCES public."IPT_landunits"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."IPT_landdetails" DROP CONSTRAINT "IPT_landdetails_unit_id_c938ad44_fk_IPT_landunits_id";
       public          postgres    false    211    2977    227            5           2606    72908 E   IPT_landdetails IPT_landdetails_usage_id_f4220761_fk_IPT_landusage_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_landdetails"
    ADD CONSTRAINT "IPT_landdetails_usage_id_f4220761_fk_IPT_landusage_id" FOREIGN KEY (usage_id) REFERENCES public."IPT_landusage"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."IPT_landdetails" DROP CONSTRAINT "IPT_landdetails_usage_id_f4220761_fk_IPT_landusage_id";
       public          postgres    false    213    227    2979            1           2606    72886 @   IPT_landtaxes IPT_landtaxes_road_access_id_d5660544_fk_IPT_roada    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_landtaxes"
    ADD CONSTRAINT "IPT_landtaxes_road_access_id_d5660544_fk_IPT_roada" FOREIGN KEY (road_access_id) REFERENCES public."IPT_roadaccessibilitystate"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."IPT_landtaxes" DROP CONSTRAINT "IPT_landtaxes_road_access_id_d5660544_fk_IPT_roada";
       public          postgres    false    219    225    2985            2           2606    72891 @   IPT_landtaxes IPT_landtaxes_sector_id_e5c23ba0_fk_IPT_sectors_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_landtaxes"
    ADD CONSTRAINT "IPT_landtaxes_sector_id_e5c23ba0_fk_IPT_sectors_id" FOREIGN KEY (sector_id) REFERENCES public."IPT_sectors"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."IPT_landtaxes" DROP CONSTRAINT "IPT_landtaxes_sector_id_e5c23ba0_fk_IPT_sectors_id";
       public          postgres    false    221    225    2987            0           2606    72880 F   IPT_personalinfo IPT_personalinfo_occ_id_7ced9f5e_fk_IPT_occupation_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."IPT_personalinfo"
    ADD CONSTRAINT "IPT_personalinfo_occ_id_7ced9f5e_fk_IPT_occupation_id" FOREIGN KEY (occ_id) REFERENCES public."IPT_occupation"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."IPT_personalinfo" DROP CONSTRAINT "IPT_personalinfo_occ_id_7ced9f5e_fk_IPT_occupation_id";
       public          postgres    false    223    2981    215            F           2606    73066 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    239    243    3030            E           2606    73061 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    243    241    3035            D           2606    73052 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3025    237    239            H           2606    73081 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    241    247    3035            G           2606    73076 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3043    245    247            J           2606    73095 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    239    249    3030            I           2606    73090 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    249    3043    245            K           2606    73114 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3025    251    237            L           2606    73119 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    245    251    3043            M           2606    73254 ?   revmgtmt_bill revmgtmt_bill_fyRef_id_b2844eea_fk_revmgtmt_fy_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT "revmgtmt_bill_fyRef_id_b2844eea_fk_revmgtmt_fy_id" FOREIGN KEY ("fyRef_id") REFERENCES public.revmgtmt_fy(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT "revmgtmt_bill_fyRef_id_b2844eea_fk_revmgtmt_fy_id";
       public          postgres    false    257    3078    253            N           2606    73259 K   revmgtmt_bill revmgtmt_bill_meta_ref_id_04bb60ee_fk_revmgtmt_servicemeta_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT revmgtmt_bill_meta_ref_id_04bb60ee_fk_revmgtmt_servicemeta_id FOREIGN KEY (meta_ref_id) REFERENCES public.revmgtmt_servicemeta(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT revmgtmt_bill_meta_ref_id_04bb60ee_fk_revmgtmt_servicemeta_id;
       public          postgres    false    253    265    3086            O           2606    73264 E   revmgtmt_bill revmgtmt_bill_org_ref_id_7e3928c4_fk_revmgtmt_office_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT revmgtmt_bill_org_ref_id_7e3928c4_fk_revmgtmt_office_id FOREIGN KEY (org_ref_id) REFERENCES public.revmgtmt_office(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT revmgtmt_bill_org_ref_id_7e3928c4_fk_revmgtmt_office_id;
       public          postgres    false    253    261    3082            P           2606    73269 C   revmgtmt_bill revmgtmt_bill_payment_method_id_f196a0fc_fk_revmgtmt_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT revmgtmt_bill_payment_method_id_f196a0fc_fk_revmgtmt_ FOREIGN KEY (payment_method_id) REFERENCES public.revmgtmt_paymentmethod(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT revmgtmt_bill_payment_method_id_f196a0fc_fk_revmgtmt_;
       public          postgres    false    253    263    3084            Q           2606    73274 I   revmgtmt_bill revmgtmt_bill_serviceRef_id_04adffe3_fk_revmgtmt_service_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT "revmgtmt_bill_serviceRef_id_04adffe3_fk_revmgtmt_service_id" FOREIGN KEY ("serviceRef_id") REFERENCES public.revmgtmt_service(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT "revmgtmt_bill_serviceRef_id_04adffe3_fk_revmgtmt_service_id";
       public          postgres    false    253    269    3091            R           2606    73279 <   revmgtmt_bill revmgtmt_bill_user_id_6c89c824_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_bill
    ADD CONSTRAINT revmgtmt_bill_user_id_6c89c824_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.revmgtmt_bill DROP CONSTRAINT revmgtmt_bill_user_id_6c89c824_fk_auth_user_id;
       public          postgres    false    253    245    3043            Z           2606    73336 N   revmgtmt_cancelled revmgtmt_cancelled_rasidRef_id_873b5fca_fk_revmgtmt_bill_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_cancelled
    ADD CONSTRAINT "revmgtmt_cancelled_rasidRef_id_873b5fca_fk_revmgtmt_bill_id" FOREIGN KEY ("rasidRef_id") REFERENCES public.revmgtmt_bill(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.revmgtmt_cancelled DROP CONSTRAINT "revmgtmt_cancelled_rasidRef_id_873b5fca_fk_revmgtmt_bill_id";
       public          postgres    false    277    253    3070            W           2606    73318 I   revmgtmt_estimated revmgtmt_estimated_fyref_id_7c53658f_fk_revmgtmt_fy_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_estimated
    ADD CONSTRAINT revmgtmt_estimated_fyref_id_7c53658f_fk_revmgtmt_fy_id FOREIGN KEY (fyref_id) REFERENCES public.revmgtmt_fy(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.revmgtmt_estimated DROP CONSTRAINT revmgtmt_estimated_fyref_id_7c53658f_fk_revmgtmt_fy_id;
       public          postgres    false    275    257    3078            X           2606    73323 G   revmgtmt_estimated revmgtmt_estimated_meta_ref_id_7cead91e_fk_revmgtmt_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_estimated
    ADD CONSTRAINT revmgtmt_estimated_meta_ref_id_7cead91e_fk_revmgtmt_ FOREIGN KEY (meta_ref_id) REFERENCES public.revmgtmt_servicemeta(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.revmgtmt_estimated DROP CONSTRAINT revmgtmt_estimated_meta_ref_id_7cead91e_fk_revmgtmt_;
       public          postgres    false    275    265    3086            Y           2606    73328 J   revmgtmt_estimated revmgtmt_estimated_service_ref_id_d6d33cea_fk_revmgtmt_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_estimated
    ADD CONSTRAINT revmgtmt_estimated_service_ref_id_d6d33cea_fk_revmgtmt_ FOREIGN KEY (service_ref_id) REFERENCES public.revmgtmt_service(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.revmgtmt_estimated DROP CONSTRAINT revmgtmt_estimated_service_ref_id_d6d33cea_fk_revmgtmt_;
       public          postgres    false    275    269    3091            V           2606    73313 B   revmgtmt_profile revmgtmt_profile_user_id_156902b1_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_profile
    ADD CONSTRAINT revmgtmt_profile_user_id_156902b1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.revmgtmt_profile DROP CONSTRAINT revmgtmt_profile_user_id_156902b1_fk_auth_user_id;
       public          postgres    false    273    245    3043            \           2606    73354 P   revmgtmt_rasidallocation revmgtmt_rasidalloca_officeRef_id_a91453e0_fk_revmgtmt_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_rasidallocation
    ADD CONSTRAINT "revmgtmt_rasidalloca_officeRef_id_a91453e0_fk_revmgtmt_" FOREIGN KEY ("officeRef_id") REFERENCES public.revmgtmt_office(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.revmgtmt_rasidallocation DROP CONSTRAINT "revmgtmt_rasidalloca_officeRef_id_a91453e0_fk_revmgtmt_";
       public          postgres    false    279    261    3082            [           2606    73349 U   revmgtmt_rasidallocation revmgtmt_rasidallocation_fyRef_id_be815ae4_fk_revmgtmt_fy_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_rasidallocation
    ADD CONSTRAINT "revmgtmt_rasidallocation_fyRef_id_be815ae4_fk_revmgtmt_fy_id" FOREIGN KEY ("fyRef_id") REFERENCES public.revmgtmt_fy(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.revmgtmt_rasidallocation DROP CONSTRAINT "revmgtmt_rasidallocation_fyRef_id_be815ae4_fk_revmgtmt_fy_id";
       public          postgres    false    279    257    3078            T           2606    73302 H   revmgtmt_relmap revmgtmt_relmap_offRef_id_c093e7db_fk_revmgtmt_office_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_relmap
    ADD CONSTRAINT "revmgtmt_relmap_offRef_id_c093e7db_fk_revmgtmt_office_id" FOREIGN KEY ("offRef_id") REFERENCES public.revmgtmt_office(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.revmgtmt_relmap DROP CONSTRAINT "revmgtmt_relmap_offRef_id_c093e7db_fk_revmgtmt_office_id";
       public          postgres    false    271    261    3082            U           2606    73307 @   revmgtmt_relmap revmgtmt_relmap_uRef_id_b6194091_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_relmap
    ADD CONSTRAINT "revmgtmt_relmap_uRef_id_b6194091_fk_auth_user_id" FOREIGN KEY ("uRef_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.revmgtmt_relmap DROP CONSTRAINT "revmgtmt_relmap_uRef_id_b6194091_fk_auth_user_id";
       public          postgres    false    3043    271    245            S           2606    73296 C   revmgtmt_service revmgtmt_service_meta_ref_id_07696332_fk_revmgtmt_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revmgtmt_service
    ADD CONSTRAINT revmgtmt_service_meta_ref_id_07696332_fk_revmgtmt_ FOREIGN KEY (meta_ref_id) REFERENCES public.revmgtmt_servicemeta(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.revmgtmt_service DROP CONSTRAINT revmgtmt_service_meta_ref_id_07696332_fk_revmgtmt_;
       public          postgres    false    269    265    3086            ?      x?????? ? ?      ?   N   x?3?|?dՃ%S,???%\F? ??Y`?Y1c?????K?=X??`?&0cӃ??
??s6 9`c??Zb???? ?)8W      ?       x?3?|?d̓%;,?3?ٜ%\1z\\\ ???      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?       x?3?4?,?4?4?2?4?3????=... 8i?      ?   ?   x?%??B1D?d[?q'?0@??%??p Q $h`?B?i|?+?]p?k;ӛ???
L7????mM_s?bzw<
(k??????$(E???3ĀT}?Oӯ?qF???????~??_????E"? Q?!d????4???????? ?R`      ?   S   x?3?|?dڃ???,y?????U?샰9K????k,??`i7???6
????u@R??????4??,F??? A 9      ?      x?3?|?dꃥ??l?d?g	W? ?c
	      ?      x?????? ? ?      ?   '   x?3?|?d̓%?@??F?.#?@ۃ%??b@^? kR      ?   Q   x?3?|?d݃???L{??????

??x?d??%S,??`i;??????K?ABK?9K??8?jv>X??(L??=... ?B?      ?   R   x?3?|?dӃ???L}?d+??????K?=X?N?????{?d??Q?Y?eDP?t?֥?`(?
l ?? ????? ?K?            x?????? ? ?            x?????? ? ?          ?  x?}?[??8E??(2????????.8?TH???3?6?licr???D?ۖɳ???P5??{i???????Y??ؿ!??L???W??lBSJ?????i?1??~??O??A?O??e?6+@???????o?S?eW}H?ȧ?????  ?{po{{??jl???_#0???(+?t?u#͢5]?dd?^M?QmW??a??yʎ^???&?j? ?TŞ?R`Y?bϢH/Sq??J??'Q?>??*?*???*??*=[|mU2)*?ˣʡ??W5?C???J	?$??0?`֩a?4@?P??F?u?:ã)?[?b?????T>R??&??g??Pյ???????}??j?ٕ??fh???[???Џ????????QF??%4^!?l=???? ??)???p#??;1eI?????_v????m2????Bp??L??,S??I
????h???#??~2W??)??????9ɆI??0\&;J?Ֆ??q??D4?)?Pic???YD?2?s?V?JoL?$?U????
??#,Nvc>V?<.???6??NDl?N??ß??G?/ ?~z?p?ʷ??}?w?ű???v???>????r:X)?As????$ps?jLR?NS?4?qzc_c[Ӧ??ɫB?6????????k?????n`?ݡ2s<C?8??n???M???ݚ׳??ѱ;??'?Tt??tۮ?r:???挅-7Y??:?? ??l?v??[ojf????p^yfc?\?pf?3??g?8??/???3?X??w??9x?Z?7۸V??o?p??????Zd????q?>?o??\`?G???X????'??Vv$?nWU???֮??)z2W,'#jI????T("??dd?zdBV??r?D??-d?54YA'G)h???ӌp?c??4) ???{?B% &?&;?v?[?*+J??|l?X`K?:K%??	??R	?[?k/??p^^a?Y??ҹm*C`?l?7"?Q??P)̒?l?:+Nz????3?+??kn???]9Tw??JFt??`:H??n ????prO s	#? ??]???0e/?????q???SM?:=%T0S?GEP{G02M??/v?ۧ??8k?y&??@?>?O f?V??Ԡ?????v???aw ?J5? ??jX9P?T??WE??z?uW6%6>.a?N?K?3???e?????_@??h	'Y??5<n??Yɗ??????,?;??x??l????X????p?qv|????v?WY?8}?\cG?.WX???WAŉ?qX^YIG?09~?D(L?E(T&)?E?J?i??T??????k?v???* ,??? x	?,??~^O}?i????c??r??"?x?<d?c???:C????~??!??	???ȓ?? ? ?7O? *c(?OF???????7         ?  x?m??n?@???^xg?Μ??e?HPH??@(?"U?ǎ?8?@?Uw??	?uWu?????$TM????M?G??4U1|.	?ҁXc????v?3}???(??͓???`?մX?}k??^2???Y:?pj?'??=??JfQ??j??????ߪ???~T?????a???????v?\P?t	?)?????&??q???.???v??7=?'??}?ќ?<?ΦE?ti?i?b6??ɋD*?+?69g6?O??|??R?J?J??$2????<~[Mbk? ?3Ӧvݣ???$???o?[?????R??(.#nPk0Y]W?V?q:~???ئ????%p???ء????H?lv??S}???,??0???31??T?3?(?6??_???x            x?????? ? ?      
      x?????? ? ?            x?????? ? ?      ?   b  x?e?MR?0???a(bw7p?ٱ`?Fm+AU?+[f&?G?4$???>?[zR?????p?<?Y?B`~??p&?+?8Q??X=?V0??X?w?^??:;?
?O+?6??Ɍ????ʁei?B??6r?k??q??j?	?)?8???Gj2??? E[???ؤv'??ݽ??a??D?W???2x*????x?5?<i??8K?A;0>??S?9?o??|Z?<?r??u??N?4?SdvTP?JI>?c??F?S?z?`NG.???>?gsٙn!bsSj?8?퐇?p?}h?C??QJ?!???=????>rB?5G]???|??Y~3??5?????-?=.'ѫ??؋?Z_h???  _S??      ?   .  x???M??0???ُ??.?p???b?#YV⤑?Iun?&??V3"2???sQ@?????1?j?P?:C??????dP
??\??JA?N]\????=??I?j???}OT??F?D"???jwT?r$?$&-*4uw????x?twg?????y?Qi>Q?B?%*?=??kͥ?Wsz??Sc???dJ}??i3???ۤ	???D?s?hl?77盪?Gc#?4??Ԯ?Ʒ6i??8???'????5??w9?/???$?&???Tw?Q	?$? 3?֘??a<?*nq??? V ?A2??1T~N?yf??R?j2t?uu?????$???7??{{?O5?Q?D???N쒩U?4Êoy?D?0?6???n?????A`?[˙??>?R?NJ??>C?Kp??K?_ܝ???+2???54a??@?0???w??%???j??Bj?????
&A??^??$J9*tj?I?m?C\8??wv?Ҍ???9?J?\R?y<q?????????0Wu??"??i??Bl???*{}*9?? M?(??'????{      )   ?  x???K??@ ??u?)z??TU?ST@A?3???F^r??I:3???\???C?I*R??}?燺????#o?????2?O???4?tu2?Ů;K??@f????Z????~??S1??G???????~ΆE?g????}
?'}?F!,.Ґ?R?(???6?MQ??e ?(1?-?s??Օ?5??????9?|R?`?>3֮?|?8???%Y?5?_? ?n]?B?Y׾1K??pg?uK?^?h4N???K(C?M????o ? ??	?0?d(D????????_\ľ??j????|.?G?#@d?)m???72<?O????*VCF]w?^S??????^c??f@???5?`?4?_?\?j????:4??޲	??h?_?a؉ni??
և??)?fX?v??5R?lͫlj?N?C0Y?=????*_L??????l??fْ??????-.?R6$?ʼÆo????, ???r?K? ???L^?)Mq|?2?'?>c<<{.?????? q???1p??N{(Y???s'{?Q??j?5??J|@V@_Jh	?)?Vj??An\?
H??=3?+DL?$<??????B??[ɸ???{v?
??Sg~e???M?km??(t??oK??????:??????s??????{_         ?   x???M
1?יSx?J????K??^W
??A??? (?ѫ????BAP?Ф??>?QB?y띱???>W?d9?ڄŒ????J;?VZ?"Q?}
?1O;???Ѐ?q?q???B?z|?S?}??r?jz7?{0?? ???????S??!#j*[?<?R?al?7??2??~lSˠ???7ڿ3????H c??u?(z pXв      &      x?????? ? ?            x?????? ? ?      $   1   x?3?42 NC	?\?bF\f??0!?Ә?MĄ?MĔ+F??? ?         (   x?3?407?7??|?tŃ??,]D?`jg	W? (??            x?????? ? ?         f   x?3?|?dӃ???L}?d+??????KV<X2?????z?dHђ?`E????}?tك?kt?:w<X?ҹ????i`K8K??8KR?K8?]???=... ??J0            x?3?tN,????,?????? ?!      "   ?   x?3?|?d??%,٧?`ɊK?,]dN}?dÃ????{?dP?m?|?t탥?,]?iia`llbiaaƙ?Y?i??\F?>??I???
?!
?)??y??ՆP?%?F\??@ ?l????? `?7?      (      x?3?4?440?4?,??b???? !??             x?3?4?4?????? ?Y         ?   x?m?1?0k?+?????()ih??T??+??\6)b??$?hn?9???Hv'?=??m5??,?Qܸ_??g?G??{??????=??Y!???M??????_?W??OڪO??Gݫ??֕wK?J)??ߘ?  ?{         :   x?3?|?t9??%;,??`??K?=X????e?[?k}?dŃ?????????? N??            x?????? ? ?     