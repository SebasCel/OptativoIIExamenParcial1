PGDMP     8                    {            ExamenParcialPgAdmin    15.3    15.3 *    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    25123    ExamenParcialPgAdmin    DATABASE     �   CREATE DATABASE "ExamenParcialPgAdmin" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 &   DROP DATABASE "ExamenParcialPgAdmin";
                postgres    false            �            1259    25162    Ciudad    TABLE     �   CREATE TABLE public."Ciudad" (
    "IdCiudad" integer NOT NULL,
    "Ciudad" character varying(50),
    "Departamento" character varying(50),
    "PostalCode" character varying(30)
);
    DROP TABLE public."Ciudad";
       public         heap    postgres    false            �            1259    25161    Ciudad_IdCiudad_seq    SEQUENCE     �   CREATE SEQUENCE public."Ciudad_IdCiudad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Ciudad_IdCiudad_seq";
       public          postgres    false    215            )           0    0    Ciudad_IdCiudad_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Ciudad_IdCiudad_seq" OWNED BY public."Ciudad"."IdCiudad";
          public          postgres    false    214            �            1259    25178    Cliente    TABLE     �   CREATE TABLE public."Cliente" (
    "IdCliente" integer NOT NULL,
    "IdPersona" integer NOT NULL,
    "FechaIngreso" date NOT NULL,
    "Calificacion" character varying(50),
    "Estado" character varying(50)
);
    DROP TABLE public."Cliente";
       public         heap    postgres    false            �            1259    25177    Cliente_IdCliente_seq    SEQUENCE     �   CREATE SEQUENCE public."Cliente_IdCliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Cliente_IdCliente_seq";
       public          postgres    false    219            *           0    0    Cliente_IdCliente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Cliente_IdCliente_seq" OWNED BY public."Cliente"."IdCliente";
          public          postgres    false    218            �            1259    25185    Cuentas    TABLE     �  CREATE TABLE public."Cuentas" (
    "IdCuenta" integer NOT NULL,
    "IdCliente" integer NOT NULL,
    "NroCuenta" character varying(50) NOT NULL,
    "FechaAlta" date NOT NULL,
    "TipoCuenta" character varying(50) NOT NULL,
    "Estado" character varying(50),
    "Saldo" numeric(5,0) NOT NULL,
    "NroContrato" character varying(50),
    "CostoMantenimiento" numeric(5,0) NOT NULL,
    "PromedioAcreditacion" numeric(5,0),
    "Moneda" character varying(50) NOT NULL
);
    DROP TABLE public."Cuentas";
       public         heap    postgres    false            �            1259    25184    Cuentas_IdCuenta_seq    SEQUENCE     �   CREATE SEQUENCE public."Cuentas_IdCuenta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Cuentas_IdCuenta_seq";
       public          postgres    false    221            +           0    0    Cuentas_IdCuenta_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Cuentas_IdCuenta_seq" OWNED BY public."Cuentas"."IdCuenta";
          public          postgres    false    220            �            1259    25192    Movimientos    TABLE     �  CREATE TABLE public."Movimientos" (
    "IdMovimiento" integer NOT NULL,
    "IdCuenta" integer NOT NULL,
    "FechaMovimiento" date NOT NULL,
    "TipoMovimiento" character varying(50),
    "SaldoAnterior" numeric(5,0),
    "SaldoActual" numeric(5,0),
    "MontoMovimiento" numeric(5,0),
    "CuentaOrigen" numeric(5,0),
    "CuentaDestino" numeric(5,0),
    "Canal" numeric(5,0)
);
 !   DROP TABLE public."Movimientos";
       public         heap    postgres    false            �            1259    25191    Movimientos_IdMovimiento_seq    SEQUENCE     �   CREATE SEQUENCE public."Movimientos_IdMovimiento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Movimientos_IdMovimiento_seq";
       public          postgres    false    223            ,           0    0    Movimientos_IdMovimiento_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Movimientos_IdMovimiento_seq" OWNED BY public."Movimientos"."IdMovimiento";
          public          postgres    false    222            �            1259    25169    Persona    TABLE     �  CREATE TABLE public."Persona" (
    "IdPersona" integer NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    "Apellido" character varying(50) NOT NULL,
    "TipoDocumento" character varying(50) NOT NULL,
    "NroDocumento" character varying(50) NOT NULL,
    "Direccion" character varying(100),
    "Celular" character varying(50),
    "Email" character varying(100),
    "Estado" character varying(50)
);
    DROP TABLE public."Persona";
       public         heap    postgres    false            �            1259    25168    Persona_IdPersona_seq    SEQUENCE     �   CREATE SEQUENCE public."Persona_IdPersona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Persona_IdPersona_seq";
       public          postgres    false    217            -           0    0    Persona_IdPersona_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Persona_IdPersona_seq" OWNED BY public."Persona"."IdPersona";
          public          postgres    false    216            y           2604    25165    Ciudad IdCiudad    DEFAULT     x   ALTER TABLE ONLY public."Ciudad" ALTER COLUMN "IdCiudad" SET DEFAULT nextval('public."Ciudad_IdCiudad_seq"'::regclass);
 B   ALTER TABLE public."Ciudad" ALTER COLUMN "IdCiudad" DROP DEFAULT;
       public          postgres    false    214    215    215            {           2604    25181    Cliente IdCliente    DEFAULT     |   ALTER TABLE ONLY public."Cliente" ALTER COLUMN "IdCliente" SET DEFAULT nextval('public."Cliente_IdCliente_seq"'::regclass);
 D   ALTER TABLE public."Cliente" ALTER COLUMN "IdCliente" DROP DEFAULT;
       public          postgres    false    218    219    219            |           2604    25188    Cuentas IdCuenta    DEFAULT     z   ALTER TABLE ONLY public."Cuentas" ALTER COLUMN "IdCuenta" SET DEFAULT nextval('public."Cuentas_IdCuenta_seq"'::regclass);
 C   ALTER TABLE public."Cuentas" ALTER COLUMN "IdCuenta" DROP DEFAULT;
       public          postgres    false    220    221    221            }           2604    25195    Movimientos IdMovimiento    DEFAULT     �   ALTER TABLE ONLY public."Movimientos" ALTER COLUMN "IdMovimiento" SET DEFAULT nextval('public."Movimientos_IdMovimiento_seq"'::regclass);
 K   ALTER TABLE public."Movimientos" ALTER COLUMN "IdMovimiento" DROP DEFAULT;
       public          postgres    false    223    222    223            z           2604    25172    Persona IdPersona    DEFAULT     |   ALTER TABLE ONLY public."Persona" ALTER COLUMN "IdPersona" SET DEFAULT nextval('public."Persona_IdPersona_seq"'::regclass);
 D   ALTER TABLE public."Persona" ALTER COLUMN "IdPersona" DROP DEFAULT;
       public          postgres    false    216    217    217                      0    25162    Ciudad 
   TABLE DATA           V   COPY public."Ciudad" ("IdCiudad", "Ciudad", "Departamento", "PostalCode") FROM stdin;
    public          postgres    false    215   �4                 0    25178    Cliente 
   TABLE DATA           g   COPY public."Cliente" ("IdCliente", "IdPersona", "FechaIngreso", "Calificacion", "Estado") FROM stdin;
    public          postgres    false    219   �4                  0    25185    Cuentas 
   TABLE DATA           �   COPY public."Cuentas" ("IdCuenta", "IdCliente", "NroCuenta", "FechaAlta", "TipoCuenta", "Estado", "Saldo", "NroContrato", "CostoMantenimiento", "PromedioAcreditacion", "Moneda") FROM stdin;
    public          postgres    false    221   5       "          0    25192    Movimientos 
   TABLE DATA           �   COPY public."Movimientos" ("IdMovimiento", "IdCuenta", "FechaMovimiento", "TipoMovimiento", "SaldoAnterior", "SaldoActual", "MontoMovimiento", "CuentaOrigen", "CuentaDestino", "Canal") FROM stdin;
    public          postgres    false    223   35                 0    25169    Persona 
   TABLE DATA           �   COPY public."Persona" ("IdPersona", "Nombre", "Apellido", "TipoDocumento", "NroDocumento", "Direccion", "Celular", "Email", "Estado") FROM stdin;
    public          postgres    false    217   P5       .           0    0    Ciudad_IdCiudad_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Ciudad_IdCiudad_seq"', 1, false);
          public          postgres    false    214            /           0    0    Cliente_IdCliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Cliente_IdCliente_seq"', 1, false);
          public          postgres    false    218            0           0    0    Cuentas_IdCuenta_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Cuentas_IdCuenta_seq"', 1, false);
          public          postgres    false    220            1           0    0    Movimientos_IdMovimiento_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Movimientos_IdMovimiento_seq"', 1, false);
          public          postgres    false    222            2           0    0    Persona_IdPersona_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Persona_IdPersona_seq"', 1, false);
          public          postgres    false    216                       2606    25167    Ciudad Ciudad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Ciudad"
    ADD CONSTRAINT "Ciudad_pkey" PRIMARY KEY ("IdCiudad");
 @   ALTER TABLE ONLY public."Ciudad" DROP CONSTRAINT "Ciudad_pkey";
       public            postgres    false    215            �           2606    25183    Cliente Cliente_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT "Cliente_pkey" PRIMARY KEY ("IdCliente");
 B   ALTER TABLE ONLY public."Cliente" DROP CONSTRAINT "Cliente_pkey";
       public            postgres    false    219            �           2606    25190    Cuentas Cuentas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Cuentas"
    ADD CONSTRAINT "Cuentas_pkey" PRIMARY KEY ("IdCuenta");
 B   ALTER TABLE ONLY public."Cuentas" DROP CONSTRAINT "Cuentas_pkey";
       public            postgres    false    221            �           2606    25197    Movimientos Movimientos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Movimientos"
    ADD CONSTRAINT "Movimientos_pkey" PRIMARY KEY ("IdMovimiento");
 J   ALTER TABLE ONLY public."Movimientos" DROP CONSTRAINT "Movimientos_pkey";
       public            postgres    false    223            �           2606    25176    Persona Persona_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT "Persona_pkey" PRIMARY KEY ("IdPersona");
 B   ALTER TABLE ONLY public."Persona" DROP CONSTRAINT "Persona_pkey";
       public            postgres    false    217            �           2606    25198    Cliente ClientePersona    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT "ClientePersona" FOREIGN KEY ("IdPersona") REFERENCES public."Persona"("IdPersona") ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public."Cliente" DROP CONSTRAINT "ClientePersona";
       public          postgres    false    3201    217    219            �           2606    25203    Cuentas CuentasCliente    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cuentas"
    ADD CONSTRAINT "CuentasCliente" FOREIGN KEY ("IdCliente") REFERENCES public."Cliente"("IdCliente") ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public."Cuentas" DROP CONSTRAINT "CuentasCliente";
       public          postgres    false    219    3203    221            �           2606    25208    Movimientos MovimientosCuentas    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movimientos"
    ADD CONSTRAINT "MovimientosCuentas" FOREIGN KEY ("IdCuenta") REFERENCES public."Cuentas"("IdCuenta") ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."Movimientos" DROP CONSTRAINT "MovimientosCuentas";
       public          postgres    false    221    223    3205                  x������ � �            x������ � �             x������ � �      "      x������ � �            x������ � �     