--
-- PostgreSQL database dump
--

-- Started on 2012-07-23 14:10:56

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 509 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 302 (class 1247 OID 24683016)
-- Dependencies: 6
-- Name: dbooleano; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dbooleano AS boolean NOT NULL;


ALTER DOMAIN public.dbooleano OWNER TO postgres;

--
-- TOC entry 303 (class 1247 OID 24683017)
-- Dependencies: 6
-- Name: dbooleano2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dbooleano2 AS boolean DEFAULT false;


ALTER DOMAIN public.dbooleano2 OWNER TO postgres;

--
-- TOC entry 304 (class 1247 OID 24683018)
-- Dependencies: 6
-- Name: dbooleano3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dbooleano3 AS boolean DEFAULT true;


ALTER DOMAIN public.dbooleano3 OWNER TO postgres;

--
-- TOC entry 305 (class 1247 OID 24683019)
-- Dependencies: 6
-- Name: dentero; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero AS integer NOT NULL;


ALTER DOMAIN public.dentero OWNER TO postgres;

--
-- TOC entry 306 (class 1247 OID 24683020)
-- Dependencies: 6
-- Name: dentero2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero2 AS integer DEFAULT (-1000000);


ALTER DOMAIN public.dentero2 OWNER TO postgres;

--
-- TOC entry 307 (class 1247 OID 24683021)
-- Dependencies: 6
-- Name: dentero3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero3 AS integer;


ALTER DOMAIN public.dentero3 OWNER TO postgres;

--
-- TOC entry 308 (class 1247 OID 24683022)
-- Dependencies: 6
-- Name: dentero4; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero4 AS integer DEFAULT 0;


ALTER DOMAIN public.dentero4 OWNER TO postgres;

--
-- TOC entry 309 (class 1247 OID 24683023)
-- Dependencies: 6
-- Name: dfec_modificacion; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dfec_modificacion AS timestamp without time zone DEFAULT now();


ALTER DOMAIN public.dfec_modificacion OWNER TO postgres;

--
-- TOC entry 310 (class 1247 OID 24683024)
-- Dependencies: 6
-- Name: dfecha; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dfecha AS date NOT NULL;


ALTER DOMAIN public.dfecha OWNER TO postgres;

--
-- TOC entry 311 (class 1247 OID 24683025)
-- Dependencies: 6
-- Name: dfecha2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dfecha2 AS date DEFAULT '1000-01-01'::date;


ALTER DOMAIN public.dfecha2 OWNER TO postgres;

--
-- TOC entry 312 (class 1247 OID 24683026)
-- Dependencies: 6
-- Name: dhora; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dhora AS time without time zone NOT NULL;


ALTER DOMAIN public.dhora OWNER TO postgres;

--
-- TOC entry 313 (class 1247 OID 24683027)
-- Dependencies: 6
-- Name: dhora2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dhora2 AS time without time zone DEFAULT now();


ALTER DOMAIN public.dhora2 OWNER TO postgres;

--
-- TOC entry 314 (class 1247 OID 24683028)
-- Dependencies: 6
-- Name: did_estado; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN did_estado AS text;


ALTER DOMAIN public.did_estado OWNER TO postgres;

--
-- TOC entry 315 (class 1247 OID 24683029)
-- Dependencies: 6
-- Name: did_usuario; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN did_usuario AS integer NOT NULL;


ALTER DOMAIN public.did_usuario OWNER TO postgres;

--
-- TOC entry 316 (class 1247 OID 24683030)
-- Dependencies: 6
-- Name: dmoneda; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dmoneda AS numeric(15,2) NOT NULL;


ALTER DOMAIN public.dmoneda OWNER TO postgres;

--
-- TOC entry 317 (class 1247 OID 24683031)
-- Dependencies: 6
-- Name: dmoneda2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dmoneda2 AS numeric(15,2) DEFAULT 0.00;


ALTER DOMAIN public.dmoneda2 OWNER TO postgres;

--
-- TOC entry 318 (class 1247 OID 24683032)
-- Dependencies: 6
-- Name: dmoneda3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dmoneda3 AS numeric(20,6) DEFAULT 0.0;


ALTER DOMAIN public.dmoneda3 OWNER TO postgres;

--
-- TOC entry 319 (class 1247 OID 24683033)
-- Dependencies: 6
-- Name: dnota; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dnota AS numeric(10,7) NOT NULL;


ALTER DOMAIN public.dnota OWNER TO postgres;

--
-- TOC entry 320 (class 1247 OID 24683034)
-- Dependencies: 6
-- Name: dnota2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dnota2 AS numeric(10,7) DEFAULT 0.00;


ALTER DOMAIN public.dnota2 OWNER TO postgres;

--
-- TOC entry 321 (class 1247 OID 24683035)
-- Dependencies: 6
-- Name: dreal; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dreal AS double precision NOT NULL;


ALTER DOMAIN public.dreal OWNER TO postgres;

--
-- TOC entry 322 (class 1247 OID 24683036)
-- Dependencies: 6
-- Name: dreal2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dreal2 AS double precision DEFAULT (-1000000.0);


ALTER DOMAIN public.dreal2 OWNER TO postgres;

--
-- TOC entry 323 (class 1247 OID 24683037)
-- Dependencies: 6
-- Name: dreal3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dreal3 AS double precision DEFAULT 0.00;


ALTER DOMAIN public.dreal3 OWNER TO postgres;

--
-- TOC entry 324 (class 1247 OID 24683038)
-- Dependencies: 6
-- Name: dtexto; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dtexto AS text NOT NULL;


ALTER DOMAIN public.dtexto OWNER TO postgres;

--
-- TOC entry 325 (class 1247 OID 24683039)
-- Dependencies: 6
-- Name: dtexto2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dtexto2 AS text DEFAULT ''::text;


ALTER DOMAIN public.dtexto2 OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1696 (class 1259 OID 24683040)
-- Dependencies: 2060 315 6 309 314 309
-- Name: emp_cargos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_cargos (
    id_cargo integer NOT NULL,
    cargo character varying,
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_cargos OWNER TO postgres;

--
-- TOC entry 1697 (class 1259 OID 24683047)
-- Dependencies: 6 1696
-- Name: cargos_id_cargo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cargos_id_cargo_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cargos_id_cargo_seq OWNER TO postgres;

--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 1697
-- Name: cargos_id_cargo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cargos_id_cargo_seq OWNED BY emp_cargos.id_cargo;


--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 1697
-- Name: cargos_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cargos_id_cargo_seq', 15, true);


--
-- TOC entry 1698 (class 1259 OID 24683049)
-- Dependencies: 2062 2063 314 315 6 309 309
-- Name: categorias_enlaces; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categorias_enlaces (
    id_categoria integer NOT NULL,
    categoria_enlace character varying(30),
    orden integer DEFAULT 0,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.categorias_enlaces OWNER TO postgres;

--
-- TOC entry 1699 (class 1259 OID 24683057)
-- Dependencies: 1698 6
-- Name: categorias_enlaces_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categorias_enlaces_id_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.categorias_enlaces_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 1699
-- Name: categorias_enlaces_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categorias_enlaces_id_categoria_seq OWNED BY categorias_enlaces.id_categoria;


--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 1699
-- Name: categorias_enlaces_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categorias_enlaces_id_categoria_seq', 1, true);


--
-- TOC entry 1700 (class 1259 OID 24683059)
-- Dependencies: 2065 315 309 309 6 314
-- Name: emp_cursos_capacitaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_cursos_capacitaciones (
    id_curso_capacitacion integer NOT NULL,
    curso_capacitacion text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_cursos_capacitaciones OWNER TO postgres;

--
-- TOC entry 1701 (class 1259 OID 24683066)
-- Dependencies: 1700 6
-- Name: cursos_capacitaciones_id_curso_capacitacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cursos_capacitaciones_id_curso_capacitacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cursos_capacitaciones_id_curso_capacitacion_seq OWNER TO postgres;

--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 1701
-- Name: cursos_capacitaciones_id_curso_capacitacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cursos_capacitaciones_id_curso_capacitacion_seq OWNED BY emp_cursos_capacitaciones.id_curso_capacitacion;


--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 1701
-- Name: cursos_capacitaciones_id_curso_capacitacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cursos_capacitaciones_id_curso_capacitacion_seq', 3, true);


--
-- TOC entry 1702 (class 1259 OID 24683068)
-- Dependencies: 2067 314 309 6 309
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE departamentos (
    id_departamento integer NOT NULL,
    departamento character varying NOT NULL,
    fec_registro dfec_modificacion,
    id_pais integer NOT NULL,
    sigla character varying(10) NOT NULL,
    fec_modificacion dfec_modificacion,
    ult_usuario integer,
    estado did_estado DEFAULT 'A'::text
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- TOC entry 1703 (class 1259 OID 24683075)
-- Dependencies: 2069 2070 315 309 309 314 6
-- Name: emp_competencias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_competencias (
    id_competencia integer DEFAULT nextval(('public.emp_competencias_id_competencia_seq'::text)::regclass) NOT NULL,
    competencia character varying,
    id_tipo_competencia integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_competencias OWNER TO postgres;

--
-- TOC entry 1704 (class 1259 OID 24683083)
-- Dependencies: 6
-- Name: emp_competencias_id_competencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_competencias_id_competencia_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 2147483647
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.emp_competencias_id_competencia_seq OWNER TO postgres;

--
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 1704
-- Name: emp_competencias_id_competencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_competencias_id_competencia_seq', 3, true);


--
-- TOC entry 1705 (class 1259 OID 24683085)
-- Dependencies: 2071 6 315 314 309 309
-- Name: emp_detalles_competencias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_detalles_competencias (
    id_empleado integer,
    id_competencia integer,
    fecha date,
    id_institucion integer,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_detalles_competencias OWNER TO postgres;

--
-- TOC entry 1706 (class 1259 OID 24683099)
-- Dependencies: 2072 315 314 309 309 6
-- Name: emp_empleadores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_empleadores (
    id_empleador integer NOT NULL,
    firma character varying,
    id_persona integer,
    id_empresa integer,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_empleadores OWNER TO postgres;

--
-- TOC entry 1707 (class 1259 OID 24683106)
-- Dependencies: 2074 2075 325 314 309 309 315 325 6
-- Name: emp_empleados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_empleados (
    id_empleado integer NOT NULL,
    firma character varying,
    id_persona integer NOT NULL,
    nit text,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario,
    foto dtexto2,
    pagina_web dtexto2,
    estado_laboral character(2) DEFAULT 'ST'::bpchar
);


ALTER TABLE public.emp_empleados OWNER TO postgres;

--
-- TOC entry 1708 (class 1259 OID 24683114)
-- Dependencies: 2077 309 6 315 314 309
-- Name: emp_empleados_empresas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_empleados_empresas (
    id_empleado integer,
    id_empresa integer,
    id_cargo integer,
    id_nivel_frm integer,
    salario numeric(8,2),
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_empleados_empresas OWNER TO postgres;

--
-- TOC entry 1709 (class 1259 OID 24683121)
-- Dependencies: 2078 315 309 309 314 6
-- Name: emp_empresas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_empresas (
    id_empresa integer NOT NULL,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario,
    logo character varying
);


ALTER TABLE public.emp_empresas OWNER TO postgres;

--
-- TOC entry 1710 (class 1259 OID 24683128)
-- Dependencies: 2080 309 309 314 6 315
-- Name: emp_establecimientos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_establecimientos (
    id_establecimiento integer NOT NULL,
    establecimiento character varying,
    sigla character varying(30),
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    id_tipo_est integer,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_establecimientos OWNER TO postgres;

--
-- TOC entry 1711 (class 1259 OID 24683135)
-- Dependencies: 2082 314 309 6 315 309
-- Name: emp_estudios_empleados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_estudios_empleados (
    id_empleado integer,
    id_nivel_frm integer,
    id_establecimiento integer,
    titulo_obtenido character varying,
    tiempo_estudio character varying,
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_estudios_empleados OWNER TO postgres;

--
-- TOC entry 1712 (class 1259 OID 24683142)
-- Dependencies: 2083 315 309 309 314 6
-- Name: emp_experiencias_laborales; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_experiencias_laborales (
    id_empleado integer,
    id_empresa integer,
    id_cargo integer,
    tiempo_trabajo double precision,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_experiencias_laborales OWNER TO postgres;

--
-- TOC entry 1713 (class 1259 OID 24683149)
-- Dependencies: 2084 315 6 309 309 314
-- Name: emp_formularios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_formularios (
    id_formulario integer NOT NULL,
    gestion integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    id_tipo integer,
    id_persona integer,
    observacion text,
    ult_usuario did_usuario,
    nro_formulario integer NOT NULL,
    serie character varying(100),
    req_contratacion text
);


ALTER TABLE public.emp_formularios OWNER TO postgres;

--
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 1713
-- Name: COLUMN emp_formularios.id_persona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_formularios.id_persona IS 'representa identificador de la persona';


--
-- TOC entry 1714 (class 1259 OID 24683156)
-- Dependencies: 6 1713
-- Name: emp_formularios_nro_formulario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_formularios_nro_formulario_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.emp_formularios_nro_formulario_seq OWNER TO postgres;

--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 1714
-- Name: emp_formularios_nro_formulario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE emp_formularios_nro_formulario_seq OWNED BY emp_formularios.nro_formulario;


--
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 1714
-- Name: emp_formularios_nro_formulario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_formularios_nro_formulario_seq', 1, false);


--
-- TOC entry 1715 (class 1259 OID 24683158)
-- Dependencies: 2087 309 314 315 309 6
-- Name: emp_frm_cargos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_frm_cargos (
    id_formulario integer,
    id_cargo integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_frm_cargos OWNER TO postgres;

--
-- TOC entry 1716 (class 1259 OID 24683165)
-- Dependencies: 2088 315 309 309 6 314
-- Name: emp_frm_cursos_capacitaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_frm_cursos_capacitaciones (
    id_curso_capacitacion integer NOT NULL,
    id_formulario integer NOT NULL,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_frm_cursos_capacitaciones OWNER TO postgres;

--
-- TOC entry 1717 (class 1259 OID 24683172)
-- Dependencies: 2089 309 6 314 309 315
-- Name: emp_frm_niveles_establecimientos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_frm_niveles_establecimientos (
    id_nivel_formacion integer,
    id_establecimiento integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_frm_niveles_establecimientos OWNER TO postgres;

--
-- TOC entry 1718 (class 1259 OID 24683179)
-- Dependencies: 2090 6 309 309 314 315
-- Name: emp_frm_titulos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_frm_titulos (
    id_formulario integer,
    id_titulo integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_frm_titulos OWNER TO postgres;

--
-- TOC entry 1719 (class 1259 OID 24683186)
-- Dependencies: 2091 6 309 309 314 315
-- Name: emp_instituciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_instituciones (
    id_institucion integer NOT NULL,
    institucion character varying,
    sigla character varying(10),
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_instituciones OWNER TO postgres;

--
-- TOC entry 1720 (class 1259 OID 24683193)
-- Dependencies: 2093 314 309 309 6 315
-- Name: emp_niveles_formaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_niveles_formaciones (
    id_nivel_formacion integer NOT NULL,
    nivel_formacion character varying,
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_niveles_formaciones OWNER TO postgres;

--
-- TOC entry 1721 (class 1259 OID 24683200)
-- Dependencies: 2095 2096 309 314 309 315 6
-- Name: emp_ofertas_laborales; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_ofertas_laborales (
    id_oferta_laboral integer NOT NULL,
    ofeta_laboral character varying(140),
    detalle text,
    vigente character varying(1) DEFAULT 'S'::character varying,
    sueldo character varying(30),
    id_empleador integer,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario,
    fecha_fin date
);


ALTER TABLE public.emp_ofertas_laborales OWNER TO postgres;

--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 1721
-- Name: COLUMN emp_ofertas_laborales.vigente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_ofertas_laborales.vigente IS 'S=ABIERTO
N=CERRADO';


--
-- TOC entry 1722 (class 1259 OID 24683208)
-- Dependencies: 1721 6
-- Name: emp_ofertas_laborales_id_oferta_laboral_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_ofertas_laborales_id_oferta_laboral_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.emp_ofertas_laborales_id_oferta_laboral_seq OWNER TO postgres;

--
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 1722
-- Name: emp_ofertas_laborales_id_oferta_laboral_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE emp_ofertas_laborales_id_oferta_laboral_seq OWNED BY emp_ofertas_laborales.id_oferta_laboral;


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 1722
-- Name: emp_ofertas_laborales_id_oferta_laboral_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_ofertas_laborales_id_oferta_laboral_seq', 1, false);


--
-- TOC entry 1723 (class 1259 OID 24683210)
-- Dependencies: 2098 309 309 314 6
-- Name: emp_ofertas_rubros; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_ofertas_rubros (
    id_oferta_laboral integer,
    id_rubro integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario integer
);


ALTER TABLE public.emp_ofertas_rubros OWNER TO postgres;

--
-- TOC entry 1724 (class 1259 OID 24683217)
-- Dependencies: 2099 314 309 309 6 315
-- Name: emp_productos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_productos (
    id_producto integer NOT NULL,
    producto character varying(100),
    fec_registro dfec_modificacion,
    detalle character varying(100),
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_productos OWNER TO postgres;

--
-- TOC entry 1725 (class 1259 OID 24683224)
-- Dependencies: 2101 314 309 315 6 309
-- Name: emp_productos_empresas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_productos_empresas (
    id_producto integer,
    id_empresa integer,
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text NOT NULL,
    id_prod_empr integer NOT NULL,
    id_rubro integer NOT NULL,
    cantidad numeric(8,2),
    gestion integer,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_productos_empresas OWNER TO postgres;

--
-- TOC entry 1726 (class 1259 OID 24683231)
-- Dependencies: 2103 2104 309 309 6 314 315
-- Name: emp_reuniones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_reuniones (
    id_reunion integer NOT NULL,
    reunion character varying(30) NOT NULL,
    detalle text,
    fecha_reunion timestamp without time zone,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    vigente character(1) DEFAULT 'V'::bpchar,
    id_persona integer,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_reuniones OWNER TO postgres;

--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 1726
-- Name: COLUMN emp_reuniones.vigente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_reuniones.vigente IS 'V=vigente
C=cerrado';


--
-- TOC entry 1727 (class 1259 OID 24683239)
-- Dependencies: 6 315 314
-- Name: emp_reuniones_empleadores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_reuniones_empleadores (
    id_reunion integer,
    id_empleador integer,
    observacion text,
    fec_registro timestamp without time zone,
    fec_modificacion timestamp without time zone,
    estado did_estado,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_reuniones_empleadores OWNER TO postgres;

--
-- TOC entry 1728 (class 1259 OID 24683245)
-- Dependencies: 314 309 315 6 309
-- Name: emp_reuniones_empleados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_reuniones_empleados (
    id_empleado integer,
    id_reunion integer,
    observacion text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_reuniones_empleados OWNER TO postgres;

--
-- TOC entry 1729 (class 1259 OID 24683251)
-- Dependencies: 6 1726
-- Name: emp_reuniones_id_reunion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_reuniones_id_reunion_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.emp_reuniones_id_reunion_seq OWNER TO postgres;

--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 1729
-- Name: emp_reuniones_id_reunion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE emp_reuniones_id_reunion_seq OWNED BY emp_reuniones.id_reunion;


--
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 1729
-- Name: emp_reuniones_id_reunion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_reuniones_id_reunion_seq', 1, false);


--
-- TOC entry 1730 (class 1259 OID 24683253)
-- Dependencies: 2106 6 309 309 315 314
-- Name: emp_rubros; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_rubros (
    id_rubro integer NOT NULL,
    rubro character varying(30),
    sigla character varying(30),
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario,
    estado did_estado DEFAULT 'A'::text
);


ALTER TABLE public.emp_rubros OWNER TO postgres;

--
-- TOC entry 1731 (class 1259 OID 24683260)
-- Dependencies: 2108 309 6 315 314 309
-- Name: emp_rubros_empresas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_rubros_empresas (
    id_rubro integer NOT NULL,
    id_empresa integer NOT NULL,
    id_rubro_empresa integer NOT NULL,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_rubros_empresas OWNER TO postgres;

--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 1731
-- Name: COLUMN emp_rubros_empresas.id_rubro_empresa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_rubros_empresas.id_rubro_empresa IS 'Identificador de rubros de empresa.';


--
-- TOC entry 1732 (class 1259 OID 24683267)
-- Dependencies: 2110 315 309 314 309 6
-- Name: emp_servicios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_servicios (
    "id_servicio " integer NOT NULL,
    servicio character varying(100),
    fecha_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_servicios OWNER TO postgres;

--
-- TOC entry 1733 (class 1259 OID 24683274)
-- Dependencies: 2112 2113 309 6 309 314 315
-- Name: emp_servicios_empresas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_servicios_empresas (
    id_empresa integer,
    id_servicio integer,
    fecha_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    id_serv_emp integer NOT NULL,
    id_rubro integer NOT NULL,
    cantidad numeric(8,2) DEFAULT 0.0,
    gestion integer,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_servicios_empresas OWNER TO postgres;

--
-- TOC entry 1734 (class 1259 OID 24683282)
-- Dependencies: 2115 2116 2117 2118 309 6 314 315 309
-- Name: emp_sucursales; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_sucursales (
    id_sucursal integer DEFAULT nextval(('public.emp_sucursales_id_sucursal_seq'::text)::regclass) NOT NULL,
    sucursal text NOT NULL,
    direccion text,
    nro_fundo_empresa text,
    nro_codeco text,
    telefono text,
    celular text,
    fax text,
    email text,
    pagina_web text,
    nro_empleados integer,
    fecha_inicio_empresa date,
    tipo_sucursal integer DEFAULT 1,
    id_empresa integer NOT NULL,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario,
    estado did_estado DEFAULT 'A'::text,
    id_pais integer DEFAULT 1,
    id_departamento integer,
    id_provincia integer,
    id_localidad integer,
    id_municipio integer
);


ALTER TABLE public.emp_sucursales OWNER TO postgres;

--
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 1734
-- Name: COLUMN emp_sucursales.tipo_sucursal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_sucursales.tipo_sucursal IS '1= Central
2= Sucursal';


--
-- TOC entry 1735 (class 1259 OID 24683292)
-- Dependencies: 6
-- Name: emp_sucursales_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_sucursales_id_sucursal_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 2147483647
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.emp_sucursales_id_sucursal_seq OWNER TO postgres;

--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 1735
-- Name: emp_sucursales_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_sucursales_id_sucursal_seq', 12, true);


--
-- TOC entry 1736 (class 1259 OID 24683294)
-- Dependencies: 2119 309 6 315 309 314
-- Name: emp_tipo_competencias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_tipo_competencias (
    id_tipo_competencia integer NOT NULL,
    tipo_competencia character varying,
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_tipo_competencias OWNER TO postgres;

--
-- TOC entry 1737 (class 1259 OID 24683301)
-- Dependencies: 2121 309 6 309 314 315
-- Name: emp_tipo_establecimientos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_tipo_establecimientos (
    id_tipo_establecimiento integer NOT NULL,
    tipo_establecimiento character varying,
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_tipo_establecimientos OWNER TO postgres;

--
-- TOC entry 1738 (class 1259 OID 24683308)
-- Dependencies: 2123 315 314 309 309 6
-- Name: emp_tipos_formularios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_tipos_formularios (
    id_tipo integer NOT NULL,
    tipo_formulario character varying(100),
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_tipos_formularios OWNER TO postgres;

--
-- TOC entry 1739 (class 1259 OID 24683315)
-- Dependencies: 2125 314 6 309 309 315
-- Name: emp_titulos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emp_titulos (
    id_titulo integer NOT NULL,
    titulo text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.emp_titulos OWNER TO postgres;

--
-- TOC entry 1740 (class 1259 OID 24683324)
-- Dependencies: 1707 6
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empleado_id_empleado_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.empleado_id_empleado_seq OWNER TO postgres;

--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 1740
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empleado_id_empleado_seq OWNED BY emp_empleados.id_empleado;


--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 1740
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleado_id_empleado_seq', 13, true);


--
-- TOC entry 1741 (class 1259 OID 24683326)
-- Dependencies: 1706 6
-- Name: empleador_id_empleador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empleador_id_empleador_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.empleador_id_empleador_seq OWNER TO postgres;

--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 1741
-- Name: empleador_id_empleador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empleador_id_empleador_seq OWNED BY emp_empleadores.id_empleador;


--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 1741
-- Name: empleador_id_empleador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleador_id_empleador_seq', 1, false);


--
-- TOC entry 1742 (class 1259 OID 24683328)
-- Dependencies: 6 1709
-- Name: empresa_id_empresa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empresa_id_empresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.empresa_id_empresa_seq OWNER TO postgres;

--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 1742
-- Name: empresa_id_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empresa_id_empresa_seq OWNED BY emp_empresas.id_empresa;


--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 1742
-- Name: empresa_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empresa_id_empresa_seq', 17, true);


--
-- TOC entry 1743 (class 1259 OID 24683330)
-- Dependencies: 2126 2127 314 309 6 315 309
-- Name: enlaces; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE enlaces (
    id_enlace integer NOT NULL,
    enlace character varying(30) NOT NULL,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modifiacion dfec_modificacion,
    ult_usuario did_usuario,
    ruta_enlace text,
    orden integer DEFAULT 1,
    id_categoria integer,
    id_padre_enlace integer
);


ALTER TABLE public.enlaces OWNER TO postgres;

--
-- TOC entry 1744 (class 1259 OID 24683338)
-- Dependencies: 6 1743
-- Name: enlaces_id_enlace_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE enlaces_id_enlace_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.enlaces_id_enlace_seq OWNER TO postgres;

--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 1744
-- Name: enlaces_id_enlace_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE enlaces_id_enlace_seq OWNED BY enlaces.id_enlace;


--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 1744
-- Name: enlaces_id_enlace_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('enlaces_id_enlace_seq', 1, true);


--
-- TOC entry 1745 (class 1259 OID 24683340)
-- Dependencies: 6 1710
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE establecimientos_id_establecimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.establecimientos_id_establecimiento_seq OWNER TO postgres;

--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 1745
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE establecimientos_id_establecimiento_seq OWNED BY emp_establecimientos.id_establecimiento;


--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 1745
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('establecimientos_id_establecimiento_seq', 51, true);


--
-- TOC entry 1746 (class 1259 OID 24683342)
-- Dependencies: 1713 6
-- Name: formularioregistro_id_formulario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE formularioregistro_id_formulario_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.formularioregistro_id_formulario_seq OWNER TO postgres;

--
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 1746
-- Name: formularioregistro_id_formulario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE formularioregistro_id_formulario_seq OWNED BY emp_formularios.id_formulario;


--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 1746
-- Name: formularioregistro_id_formulario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('formularioregistro_id_formulario_seq', 1, false);


--
-- TOC entry 1747 (class 1259 OID 24683344)
-- Dependencies: 1719 6
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instituciones_id_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.instituciones_id_institucion_seq OWNER TO postgres;

--
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 1747
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instituciones_id_institucion_seq OWNED BY emp_instituciones.id_institucion;


--
-- TOC entry 2427 (class 0 OID 0)
-- Dependencies: 1747
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instituciones_id_institucion_seq', 2, true);


--
-- TOC entry 1748 (class 1259 OID 24683346)
-- Dependencies: 6
-- Name: localidad_id_localidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE localidad_id_localidad_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 2147483647
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.localidad_id_localidad_seq OWNER TO postgres;

--
-- TOC entry 2428 (class 0 OID 0)
-- Dependencies: 1748
-- Name: localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('localidad_id_localidad_seq', 1, false);


--
-- TOC entry 1749 (class 1259 OID 24683348)
-- Dependencies: 2129 314 309 309 315 6
-- Name: localidades; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE localidades (
    id_localidad integer NOT NULL,
    localidad character varying NOT NULL,
    estado did_estado DEFAULT 'A'::text NOT NULL,
    id_provincia integer NOT NULL,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.localidades OWNER TO postgres;

--
-- TOC entry 1750 (class 1259 OID 24683355)
-- Dependencies: 2131 309 309 315 6 314
-- Name: menus; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE menus (
    id_menu integer NOT NULL,
    id_rol integer,
    id_enlace integer NOT NULL,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.menus OWNER TO postgres;

--
-- TOC entry 1751 (class 1259 OID 24683362)
-- Dependencies: 6 1750
-- Name: menus_id_menu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE menus_id_menu_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.menus_id_menu_seq OWNER TO postgres;

--
-- TOC entry 2429 (class 0 OID 0)
-- Dependencies: 1751
-- Name: menus_id_menu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE menus_id_menu_seq OWNED BY menus.id_menu;


--
-- TOC entry 2430 (class 0 OID 0)
-- Dependencies: 1751
-- Name: menus_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('menus_id_menu_seq', 1, false);


--
-- TOC entry 1752 (class 1259 OID 24683364)
-- Dependencies: 315 6 309 309 314
-- Name: municipios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE municipios (
    id_municipio integer NOT NULL,
    id_localidad integer NOT NULL,
    municipio text NOT NULL,
    sigla character varying(10),
    estado did_estado,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.municipios OWNER TO postgres;

--
-- TOC entry 1753 (class 1259 OID 24683370)
-- Dependencies: 6 1752
-- Name: municipios_id_municipio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE municipios_id_municipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.municipios_id_municipio_seq OWNER TO postgres;

--
-- TOC entry 2431 (class 0 OID 0)
-- Dependencies: 1753
-- Name: municipios_id_municipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipios_id_municipio_seq OWNED BY municipios.id_municipio;


--
-- TOC entry 2432 (class 0 OID 0)
-- Dependencies: 1753
-- Name: municipios_id_municipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipios_id_municipio_seq', 1, true);


--
-- TOC entry 1754 (class 1259 OID 24683372)
-- Dependencies: 6 1720
-- Name: niveles_fromacion_id_nivel_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE niveles_fromacion_id_nivel_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.niveles_fromacion_id_nivel_seq OWNER TO postgres;

--
-- TOC entry 2433 (class 0 OID 0)
-- Dependencies: 1754
-- Name: niveles_fromacion_id_nivel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE niveles_fromacion_id_nivel_seq OWNED BY emp_niveles_formaciones.id_nivel_formacion;


--
-- TOC entry 2434 (class 0 OID 0)
-- Dependencies: 1754
-- Name: niveles_fromacion_id_nivel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('niveles_fromacion_id_nivel_seq', 10, true);


--
-- TOC entry 1755 (class 1259 OID 24683374)
-- Dependencies: 2134 6 309 314 315 309
-- Name: paises; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE paises (
    id_pais integer NOT NULL,
    pais character varying NOT NULL,
    fec_registro dfec_modificacion,
    nacionalidad text NOT NULL,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario,
    estado did_estado DEFAULT 'A'::text
);


ALTER TABLE public.paises OWNER TO postgres;

--
-- TOC entry 1756 (class 1259 OID 24683381)
-- Dependencies: 6 1755
-- Name: paises_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE paises_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.paises_id_pais_seq OWNER TO postgres;

--
-- TOC entry 2435 (class 0 OID 0)
-- Dependencies: 1756
-- Name: paises_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE paises_id_pais_seq OWNED BY paises.id_pais;


--
-- TOC entry 2436 (class 0 OID 0)
-- Dependencies: 1756
-- Name: paises_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('paises_id_pais_seq', 9, true);


--
-- TOC entry 1757 (class 1259 OID 24683383)
-- Dependencies: 2136 2138 314 6 325 324 325 325 311 325 325 325 305 325 315 309 309 305 307 307 307
-- Name: personas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE personas (
    id_persona integer NOT NULL,
    nombres dtexto NOT NULL,
    paterno dtexto2 NOT NULL,
    materno dtexto2 NOT NULL,
    fec_nacimiento dfecha2,
    telefono dtexto2,
    celular dtexto2,
    correo dtexto2,
    fax dtexto2,
    id_identificacion dentero,
    direccion dtexto2,
    ult_usuario did_usuario,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    id_pais dentero DEFAULT 1,
    id_departamento dentero3,
    id_provincia dentero3,
    id_localidad dentero3,
    id_sexo did_estado DEFAULT 'M'::text NOT NULL
);


ALTER TABLE public.personas OWNER TO postgres;

--
-- TOC entry 2437 (class 0 OID 0)
-- Dependencies: 1757
-- Name: COLUMN personas.id_sexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN personas.id_sexo IS 'M=Masculino, F=Femenino';


--
-- TOC entry 1758 (class 1259 OID 24683390)
-- Dependencies: 1757 6
-- Name: persona_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE persona_id_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.persona_id_persona_seq OWNER TO postgres;

--
-- TOC entry 2438 (class 0 OID 0)
-- Dependencies: 1758
-- Name: persona_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE persona_id_persona_seq OWNED BY personas.id_persona;


--
-- TOC entry 2439 (class 0 OID 0)
-- Dependencies: 1758
-- Name: persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_id_persona_seq', 14, true);


--
-- TOC entry 1759 (class 1259 OID 24683392)
-- Dependencies: 1725 6
-- Name: productos_empresa_id_prod_empr_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE productos_empresa_id_prod_empr_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.productos_empresa_id_prod_empr_seq OWNER TO postgres;

--
-- TOC entry 2440 (class 0 OID 0)
-- Dependencies: 1759
-- Name: productos_empresa_id_prod_empr_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE productos_empresa_id_prod_empr_seq OWNED BY emp_productos_empresas.id_prod_empr;


--
-- TOC entry 2441 (class 0 OID 0)
-- Dependencies: 1759
-- Name: productos_empresa_id_prod_empr_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_empresa_id_prod_empr_seq', 1, false);


--
-- TOC entry 1760 (class 1259 OID 24683394)
-- Dependencies: 1724 6
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE productos_id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.productos_id_producto_seq OWNER TO postgres;

--
-- TOC entry 2442 (class 0 OID 0)
-- Dependencies: 1760
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE productos_id_producto_seq OWNED BY emp_productos.id_producto;


--
-- TOC entry 2443 (class 0 OID 0)
-- Dependencies: 1760
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_id_producto_seq', 1, false);


--
-- TOC entry 1761 (class 1259 OID 24683396)
-- Dependencies: 2139 309 309 315 314 6
-- Name: provincias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE provincias (
    id_provincia integer NOT NULL,
    provincia character varying NOT NULL,
    id_departamento integer NOT NULL,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario,
    estado did_estado DEFAULT 'A'::text
);


ALTER TABLE public.provincias OWNER TO postgres;

--
-- TOC entry 1762 (class 1259 OID 24683403)
-- Dependencies: 6 1761
-- Name: provincias_id_proivincia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE provincias_id_proivincia_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.provincias_id_proivincia_seq OWNER TO postgres;

--
-- TOC entry 2444 (class 0 OID 0)
-- Dependencies: 1762
-- Name: provincias_id_proivincia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE provincias_id_proivincia_seq OWNED BY provincias.id_provincia;


--
-- TOC entry 2445 (class 0 OID 0)
-- Dependencies: 1762
-- Name: provincias_id_proivincia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('provincias_id_proivincia_seq', 1, true);


--
-- TOC entry 1763 (class 1259 OID 24683405)
-- Dependencies: 6 1702
-- Name: prs_departamentos_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prs_departamentos_id_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.prs_departamentos_id_departamento_seq OWNER TO postgres;

--
-- TOC entry 2446 (class 0 OID 0)
-- Dependencies: 1763
-- Name: prs_departamentos_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prs_departamentos_id_departamento_seq OWNED BY departamentos.id_departamento;


--
-- TOC entry 2447 (class 0 OID 0)
-- Dependencies: 1763
-- Name: prs_departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_departamentos_id_departamento_seq', 7, true);


--
-- TOC entry 1764 (class 1259 OID 24683407)
-- Dependencies: 2141 2142 314 6 309 309
-- Name: prs_identificaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prs_identificaciones (
    id_idenficacion integer DEFAULT nextval(('public.prs_identificaciones_id_idenficacion_seq'::text)::regclass) NOT NULL,
    ci integer,
    id_departamento integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario integer
);


ALTER TABLE public.prs_identificaciones OWNER TO postgres;

--
-- TOC entry 1765 (class 1259 OID 24683415)
-- Dependencies: 6
-- Name: prs_identificaciones_id_idenficacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prs_identificaciones_id_idenficacion_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 2147483647
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.prs_identificaciones_id_idenficacion_seq OWNER TO postgres;

--
-- TOC entry 2448 (class 0 OID 0)
-- Dependencies: 1765
-- Name: prs_identificaciones_id_idenficacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_identificaciones_id_idenficacion_seq', 14, true);


--
-- TOC entry 1766 (class 1259 OID 24683417)
-- Dependencies: 6 1749
-- Name: prs_localidad_id_localidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prs_localidad_id_localidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.prs_localidad_id_localidad_seq OWNER TO postgres;

--
-- TOC entry 2449 (class 0 OID 0)
-- Dependencies: 1766
-- Name: prs_localidad_id_localidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prs_localidad_id_localidad_seq OWNED BY localidades.id_localidad;


--
-- TOC entry 2450 (class 0 OID 0)
-- Dependencies: 1766
-- Name: prs_localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_localidad_id_localidad_seq', 1, true);


--
-- TOC entry 1767 (class 1259 OID 24683419)
-- Dependencies: 2143 6 314 309 309 315
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles (
    id_rol integer NOT NULL,
    rol character varying(30) NOT NULL,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 1768 (class 1259 OID 24683426)
-- Dependencies: 1767 6
-- Name: roles_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.roles_id_rol_seq OWNER TO postgres;

--
-- TOC entry 2451 (class 0 OID 0)
-- Dependencies: 1768
-- Name: roles_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_rol_seq OWNED BY roles.id_rol;


--
-- TOC entry 2452 (class 0 OID 0)
-- Dependencies: 1768
-- Name: roles_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_rol_seq', 5, true);


--
-- TOC entry 1769 (class 1259 OID 24683428)
-- Dependencies: 1731 6
-- Name: rubros_empresa_id_rubro_empresa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rubros_empresa_id_rubro_empresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.rubros_empresa_id_rubro_empresa_seq OWNER TO postgres;

--
-- TOC entry 2453 (class 0 OID 0)
-- Dependencies: 1769
-- Name: rubros_empresa_id_rubro_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rubros_empresa_id_rubro_empresa_seq OWNED BY emp_rubros_empresas.id_rubro_empresa;


--
-- TOC entry 2454 (class 0 OID 0)
-- Dependencies: 1769
-- Name: rubros_empresa_id_rubro_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rubros_empresa_id_rubro_empresa_seq', 1, false);


--
-- TOC entry 1770 (class 1259 OID 24683430)
-- Dependencies: 6 1730
-- Name: rubros_id_rubro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rubros_id_rubro_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.rubros_id_rubro_seq OWNER TO postgres;

--
-- TOC entry 2455 (class 0 OID 0)
-- Dependencies: 1770
-- Name: rubros_id_rubro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rubros_id_rubro_seq OWNED BY emp_rubros.id_rubro;


--
-- TOC entry 2456 (class 0 OID 0)
-- Dependencies: 1770
-- Name: rubros_id_rubro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rubros_id_rubro_seq', 1, false);


--
-- TOC entry 1771 (class 1259 OID 24683432)
-- Dependencies: 1733 6
-- Name: servicios_empresa_id_serv_emp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE servicios_empresa_id_serv_emp_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.servicios_empresa_id_serv_emp_seq OWNER TO postgres;

--
-- TOC entry 2457 (class 0 OID 0)
-- Dependencies: 1771
-- Name: servicios_empresa_id_serv_emp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE servicios_empresa_id_serv_emp_seq OWNED BY emp_servicios_empresas.id_serv_emp;


--
-- TOC entry 2458 (class 0 OID 0)
-- Dependencies: 1771
-- Name: servicios_empresa_id_serv_emp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('servicios_empresa_id_serv_emp_seq', 1, false);


--
-- TOC entry 1772 (class 1259 OID 24683434)
-- Dependencies: 1732 6
-- Name: servicios_id_servicio _seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "servicios_id_servicio _seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."servicios_id_servicio _seq" OWNER TO postgres;

--
-- TOC entry 2459 (class 0 OID 0)
-- Dependencies: 1772
-- Name: servicios_id_servicio _seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "servicios_id_servicio _seq" OWNED BY emp_servicios."id_servicio ";


--
-- TOC entry 2460 (class 0 OID 0)
-- Dependencies: 1772
-- Name: servicios_id_servicio _seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"servicios_id_servicio _seq"', 1, false);


--
-- TOC entry 1773 (class 1259 OID 24683436)
-- Dependencies: 1736 6
-- Name: tipo_competencias_id_tipo_competencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_competencias_id_tipo_competencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tipo_competencias_id_tipo_competencia_seq OWNER TO postgres;

--
-- TOC entry 2461 (class 0 OID 0)
-- Dependencies: 1773
-- Name: tipo_competencias_id_tipo_competencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_competencias_id_tipo_competencia_seq OWNED BY emp_tipo_competencias.id_tipo_competencia;


--
-- TOC entry 2462 (class 0 OID 0)
-- Dependencies: 1773
-- Name: tipo_competencias_id_tipo_competencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_competencias_id_tipo_competencia_seq', 2, true);


--
-- TOC entry 1774 (class 1259 OID 24683438)
-- Dependencies: 6 1737
-- Name: tipo_establecimiento_id_tipo_establecimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_establecimiento_id_tipo_establecimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tipo_establecimiento_id_tipo_establecimiento_seq OWNER TO postgres;

--
-- TOC entry 2463 (class 0 OID 0)
-- Dependencies: 1774
-- Name: tipo_establecimiento_id_tipo_establecimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_establecimiento_id_tipo_establecimiento_seq OWNED BY emp_tipo_establecimientos.id_tipo_establecimiento;


--
-- TOC entry 2464 (class 0 OID 0)
-- Dependencies: 1774
-- Name: tipo_establecimiento_id_tipo_establecimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_establecimiento_id_tipo_establecimiento_seq', 3, true);


--
-- TOC entry 1775 (class 1259 OID 24683440)
-- Dependencies: 6 1738
-- Name: tipo_formulario_id_tipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_formulario_id_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tipo_formulario_id_tipo_seq OWNER TO postgres;

--
-- TOC entry 2465 (class 0 OID 0)
-- Dependencies: 1775
-- Name: tipo_formulario_id_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_formulario_id_tipo_seq OWNED BY emp_tipos_formularios.id_tipo;


--
-- TOC entry 2466 (class 0 OID 0)
-- Dependencies: 1775
-- Name: tipo_formulario_id_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_formulario_id_tipo_seq', 2, true);


--
-- TOC entry 1776 (class 1259 OID 24683442)
-- Dependencies: 2145 314 309 315 309 6
-- Name: ubicaciones_geograficas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ubicaciones_geograficas (
    id_ubicacion_geografica integer NOT NULL,
    id_pais integer,
    id_localidad integer,
    id_departamento integer,
    id_provincia integer,
    fec_registro dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario,
    id_empleado integer,
    fec_modificacio dfec_modificacion,
    id_municipio integer
);


ALTER TABLE public.ubicaciones_geograficas OWNER TO postgres;

--
-- TOC entry 1777 (class 1259 OID 24683449)
-- Dependencies: 2146 309 309 314 315 6
-- Name: usr_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usr_roles (
    id_usr_rol integer NOT NULL,
    id_usuario integer,
    id_rol integer,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    estado did_estado DEFAULT 'A'::text,
    ult_usuario did_usuario
);


ALTER TABLE public.usr_roles OWNER TO postgres;

--
-- TOC entry 1778 (class 1259 OID 24683456)
-- Dependencies: 6 1777
-- Name: usr_roles_id_usr_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usr_roles_id_usr_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usr_roles_id_usr_rol_seq OWNER TO postgres;

--
-- TOC entry 2467 (class 0 OID 0)
-- Dependencies: 1778
-- Name: usr_roles_id_usr_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usr_roles_id_usr_rol_seq OWNED BY usr_roles.id_usr_rol;


--
-- TOC entry 2468 (class 0 OID 0)
-- Dependencies: 1778
-- Name: usr_roles_id_usr_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usr_roles_id_usr_rol_seq', 1, true);


--
-- TOC entry 1779 (class 1259 OID 24683458)
-- Dependencies: 2148 309 6 325 324 309 314 325 305
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    id_usuario integer NOT NULL,
    usuario dtexto,
    password dtexto2,
    fec_registro dfec_modificacion,
    id_persona dentero,
    id_estado did_estado DEFAULT 'A'::text,
    fec_modificacion dfec_modificacion,
    recordatorio dtexto2
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 1780 (class 1259 OID 24683465)
-- Dependencies: 6 1779
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2469 (class 0 OID 0)
-- Dependencies: 1780
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_id_usuario_seq OWNED BY usuarios.id_usuario;


--
-- TOC entry 2470 (class 0 OID 0)
-- Dependencies: 1780
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_usuario_seq', 1, true);


--
-- TOC entry 1781 (class 1259 OID 24683467)
-- Dependencies: 1868 325 325 325 324 325 325 311 325 325 305 325 6 324 325
-- Name: vusuario_persona; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW vusuario_persona AS
    SELECT u.id_usuario, u.usuario, u.password, u.recordatorio, p.id_persona, p.nombres, p.paterno, p.materno, p.fec_nacimiento, p.telefono, p.celular, p.correo, p.fax, p.id_identificacion, p.direccion FROM usuarios u, personas p WHERE ((u.id_persona)::integer = p.id_persona);


ALTER TABLE public.vusuario_persona OWNER TO postgres;

--
-- TOC entry 2064 (class 2604 OID 24683471)
-- Dependencies: 1699 1698
-- Name: id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE categorias_enlaces ALTER COLUMN id_categoria SET DEFAULT nextval('categorias_enlaces_id_categoria_seq'::regclass);


--
-- TOC entry 2068 (class 2604 OID 24683472)
-- Dependencies: 1763 1702
-- Name: id_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('prs_departamentos_id_departamento_seq'::regclass);


--
-- TOC entry 2061 (class 2604 OID 24683473)
-- Dependencies: 1697 1696
-- Name: id_cargo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_cargos ALTER COLUMN id_cargo SET DEFAULT nextval('cargos_id_cargo_seq'::regclass);


--
-- TOC entry 2066 (class 2604 OID 24683474)
-- Dependencies: 1701 1700
-- Name: id_curso_capacitacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_cursos_capacitaciones ALTER COLUMN id_curso_capacitacion SET DEFAULT nextval('cursos_capacitaciones_id_curso_capacitacion_seq'::regclass);


--
-- TOC entry 2073 (class 2604 OID 24683476)
-- Dependencies: 1741 1706
-- Name: id_empleador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_empleadores ALTER COLUMN id_empleador SET DEFAULT nextval('empleador_id_empleador_seq'::regclass);


--
-- TOC entry 2076 (class 2604 OID 24683477)
-- Dependencies: 1740 1707
-- Name: id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_empleados ALTER COLUMN id_empleado SET DEFAULT nextval('empleado_id_empleado_seq'::regclass);


--
-- TOC entry 2079 (class 2604 OID 24683478)
-- Dependencies: 1742 1709
-- Name: id_empresa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_empresas ALTER COLUMN id_empresa SET DEFAULT nextval('empresa_id_empresa_seq'::regclass);


--
-- TOC entry 2081 (class 2604 OID 24683479)
-- Dependencies: 1745 1710
-- Name: id_establecimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_establecimientos ALTER COLUMN id_establecimiento SET DEFAULT nextval('establecimientos_id_establecimiento_seq'::regclass);


--
-- TOC entry 2085 (class 2604 OID 24683480)
-- Dependencies: 1746 1713
-- Name: id_formulario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_formularios ALTER COLUMN id_formulario SET DEFAULT nextval('formularioregistro_id_formulario_seq'::regclass);


--
-- TOC entry 2086 (class 2604 OID 24683481)
-- Dependencies: 1714 1713
-- Name: nro_formulario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_formularios ALTER COLUMN nro_formulario SET DEFAULT nextval('emp_formularios_nro_formulario_seq'::regclass);


--
-- TOC entry 2092 (class 2604 OID 24683482)
-- Dependencies: 1747 1719
-- Name: id_institucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_instituciones ALTER COLUMN id_institucion SET DEFAULT nextval('instituciones_id_institucion_seq'::regclass);


--
-- TOC entry 2094 (class 2604 OID 24683483)
-- Dependencies: 1754 1720
-- Name: id_nivel_formacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_niveles_formaciones ALTER COLUMN id_nivel_formacion SET DEFAULT nextval('niveles_fromacion_id_nivel_seq'::regclass);


--
-- TOC entry 2097 (class 2604 OID 24683484)
-- Dependencies: 1722 1721
-- Name: id_oferta_laboral; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_ofertas_laborales ALTER COLUMN id_oferta_laboral SET DEFAULT nextval('emp_ofertas_laborales_id_oferta_laboral_seq'::regclass);


--
-- TOC entry 2100 (class 2604 OID 24683485)
-- Dependencies: 1760 1724
-- Name: id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_productos ALTER COLUMN id_producto SET DEFAULT nextval('productos_id_producto_seq'::regclass);


--
-- TOC entry 2102 (class 2604 OID 24683486)
-- Dependencies: 1759 1725
-- Name: id_prod_empr; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_productos_empresas ALTER COLUMN id_prod_empr SET DEFAULT nextval('productos_empresa_id_prod_empr_seq'::regclass);


--
-- TOC entry 2105 (class 2604 OID 24683487)
-- Dependencies: 1729 1726
-- Name: id_reunion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_reuniones ALTER COLUMN id_reunion SET DEFAULT nextval('emp_reuniones_id_reunion_seq'::regclass);


--
-- TOC entry 2107 (class 2604 OID 24683488)
-- Dependencies: 1770 1730
-- Name: id_rubro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_rubros ALTER COLUMN id_rubro SET DEFAULT nextval('rubros_id_rubro_seq'::regclass);


--
-- TOC entry 2109 (class 2604 OID 24683489)
-- Dependencies: 1769 1731
-- Name: id_rubro_empresa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_rubros_empresas ALTER COLUMN id_rubro_empresa SET DEFAULT nextval('rubros_empresa_id_rubro_empresa_seq'::regclass);


--
-- TOC entry 2111 (class 2604 OID 24683490)
-- Dependencies: 1772 1732
-- Name: id_servicio ; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_servicios ALTER COLUMN "id_servicio " SET DEFAULT nextval('"servicios_id_servicio _seq"'::regclass);


--
-- TOC entry 2114 (class 2604 OID 24683491)
-- Dependencies: 1771 1733
-- Name: id_serv_emp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_servicios_empresas ALTER COLUMN id_serv_emp SET DEFAULT nextval('servicios_empresa_id_serv_emp_seq'::regclass);


--
-- TOC entry 2120 (class 2604 OID 24683492)
-- Dependencies: 1773 1736
-- Name: id_tipo_competencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_tipo_competencias ALTER COLUMN id_tipo_competencia SET DEFAULT nextval('tipo_competencias_id_tipo_competencia_seq'::regclass);


--
-- TOC entry 2122 (class 2604 OID 24683493)
-- Dependencies: 1774 1737
-- Name: id_tipo_establecimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_tipo_establecimientos ALTER COLUMN id_tipo_establecimiento SET DEFAULT nextval('tipo_establecimiento_id_tipo_establecimiento_seq'::regclass);


--
-- TOC entry 2124 (class 2604 OID 24683494)
-- Dependencies: 1775 1738
-- Name: id_tipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE emp_tipos_formularios ALTER COLUMN id_tipo SET DEFAULT nextval('tipo_formulario_id_tipo_seq'::regclass);


--
-- TOC entry 2128 (class 2604 OID 24683495)
-- Dependencies: 1744 1743
-- Name: id_enlace; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE enlaces ALTER COLUMN id_enlace SET DEFAULT nextval('enlaces_id_enlace_seq'::regclass);


--
-- TOC entry 2130 (class 2604 OID 24683496)
-- Dependencies: 1766 1749
-- Name: id_localidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE localidades ALTER COLUMN id_localidad SET DEFAULT nextval('prs_localidad_id_localidad_seq'::regclass);


--
-- TOC entry 2132 (class 2604 OID 24683497)
-- Dependencies: 1751 1750
-- Name: id_menu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE menus ALTER COLUMN id_menu SET DEFAULT nextval('menus_id_menu_seq'::regclass);


--
-- TOC entry 2133 (class 2604 OID 24683498)
-- Dependencies: 1753 1752
-- Name: id_municipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE municipios ALTER COLUMN id_municipio SET DEFAULT nextval('municipios_id_municipio_seq'::regclass);


--
-- TOC entry 2135 (class 2604 OID 24683499)
-- Dependencies: 1756 1755
-- Name: id_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE paises ALTER COLUMN id_pais SET DEFAULT nextval('paises_id_pais_seq'::regclass);


--
-- TOC entry 2137 (class 2604 OID 24683500)
-- Dependencies: 1758 1757
-- Name: id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE personas ALTER COLUMN id_persona SET DEFAULT nextval('persona_id_persona_seq'::regclass);


--
-- TOC entry 2140 (class 2604 OID 24683501)
-- Dependencies: 1762 1761
-- Name: id_provincia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE provincias ALTER COLUMN id_provincia SET DEFAULT nextval('provincias_id_proivincia_seq'::regclass);


--
-- TOC entry 2144 (class 2604 OID 24683502)
-- Dependencies: 1768 1767
-- Name: id_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE roles ALTER COLUMN id_rol SET DEFAULT nextval('roles_id_rol_seq'::regclass);


--
-- TOC entry 2147 (class 2604 OID 24683503)
-- Dependencies: 1778 1777
-- Name: id_usr_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE usr_roles ALTER COLUMN id_usr_rol SET DEFAULT nextval('usr_roles_id_usr_rol_seq'::regclass);


--
-- TOC entry 2149 (class 2604 OID 24683504)
-- Dependencies: 1780 1779
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 2343 (class 0 OID 24683049)
-- Dependencies: 1698
-- Data for Name: categorias_enlaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categorias_enlaces (id_categoria, categoria_enlace, orden, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	ADMINISTRACION	1	A	2012-07-02 22:31:06.838	2012-07-02 22:31:06.838	1
\.


--
-- TOC entry 2345 (class 0 OID 24683068)
-- Dependencies: 1702
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) FROM stdin;
1	La Paz	2012-07-02 21:20:27.315	1	Lpz	2012-07-02 21:20:27.315	1	A
2	Tarija	2012-07-06 16:38:57.107	1	Tja	2012-07-06 16:38:57.107	1	A
3	Cochabamba	2012-07-06 16:39:11.829	1	Cbba	2012-07-06 16:39:11.829	1	A
4	Santa Cruz	2012-07-06 16:39:20.485	1	Scz	2012-07-06 16:39:20.485	1	A
5	Beni	2012-07-06 16:39:27.852	1	Ben	2012-07-06 16:39:27.852	1	A
6	Pando	2012-07-06 16:39:35.813	1	Pdo	2012-07-06 16:39:35.813	1	A
7	Oruro	2012-07-06 16:39:42.406	1	Oro	2012-07-06 16:39:42.406	1	A
\.


--
-- TOC entry 2342 (class 0 OID 24683040)
-- Dependencies: 1696
-- Data for Name: emp_cargos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
4	Promotor de Ventas	2012-07-06 18:12:41.661	A	2012-07-06 18:12:41.661	1
5	Auditora	2012-07-06 18:13:22.104	A	2012-07-06 18:13:22.104	1
6	Contadora	2012-07-06 18:13:28.563	A	2012-07-06 18:13:28.563	1
7	ssss	2012-07-06 18:13:51.339	X	2012-07-06 18:13:51.339	1
8	Carpintero	2012-07-13 13:20:47.375	A	2012-07-13 13:20:47.375	1
9	pintor	2012-07-16 20:25:39.046	A	2012-07-16 20:25:39.046	1
10	Administrador	2012-07-16 21:13:45.774	A	2012-07-16 21:13:45.774	1
11	Gerente Regional	2012-07-17 01:28:36.302	A	2012-07-17 01:28:36.302	1
12	Asistente de Gerencia	2012-07-17 01:29:02.088	A	2012-07-17 01:29:02.088	1
13	Secretaria	2012-07-17 01:29:28.613	A	2012-07-17 01:29:28.613	1
14	Gerente	2012-07-17 01:30:12.71	A	2012-07-17 01:30:12.71	1
15	adiestrador de perros	2012-07-22 19:16:34.315	A	2012-07-22 19:16:34.315	1
\.


--
-- TOC entry 2346 (class 0 OID 24683075)
-- Dependencies: 1703
-- Data for Name: emp_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_competencias (id_competencia, competencia, id_tipo_competencia, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
2	Manejo de Office	1	2012-07-06 12:09:58.994	2012-07-06 12:09:58.994	A	1
1	Cooperativismo	2	2012-07-06 12:02:15.863	2012-07-06 12:02:15.863	X	1
3	manejo de excel	\N	2012-07-16 20:26:28.301	2012-07-16 20:26:28.301	A	1
\.


--
-- TOC entry 2344 (class 0 OID 24683059)
-- Dependencies: 1700
-- Data for Name: emp_cursos_capacitaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_cursos_capacitaciones (id_curso_capacitacion, curso_capacitacion, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	Manejo de Paquetes de Contabilidad	2012-07-13 10:43:26.236	2012-07-13 10:43:26.236	A	1
2	Actualizaciones de Impuestos	2012-07-13 10:43:52.522	2012-07-13 10:43:52.522	A	1
3	Actualización Contable	2012-07-13 10:53:48.088	2012-07-13 10:53:48.088	A	1
\.


--
-- TOC entry 2347 (class 0 OID 24683085)
-- Dependencies: 1705
-- Data for Name: emp_detalles_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_detalles_competencias (id_empleado, id_competencia, fecha, id_institucion, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2348 (class 0 OID 24683099)
-- Dependencies: 1706
-- Data for Name: emp_empleadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_empleadores (id_empleador, firma, id_persona, id_empresa, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2349 (class 0 OID 24683106)
-- Dependencies: 1707
-- Data for Name: emp_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_empleados (id_empleado, firma, id_persona, nit, estado, fec_registro, fec_modificacion, ult_usuario, foto, pagina_web, estado_laboral) FROM stdin;
\.


--
-- TOC entry 2350 (class 0 OID 24683114)
-- Dependencies: 1708
-- Data for Name: emp_empleados_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_empleados_empresas (id_empleado, id_empresa, id_cargo, id_nivel_frm, salario, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2351 (class 0 OID 24683121)
-- Dependencies: 1709
-- Data for Name: emp_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_empresas (id_empresa, fec_registro, fec_modificacion, estado, ult_usuario, logo) FROM stdin;
5	2012-07-06 10:39:56.815	2012-07-06 10:39:56.815	A	1	\N
6	2012-07-06 10:56:19.558	2012-07-06 10:56:19.558	A	1	\N
7	2012-07-06 12:00:25	2012-07-06 12:00:25	A	1	\N
8	2012-07-06 12:00:33.863	2012-07-06 12:00:33.863	A	1	\N
9	2012-07-12 16:31:07.395	2012-07-12 16:31:07.395	A	1	\N
10	2012-07-13 13:23:23.089	2012-07-13 13:23:23.089	A	1	\N
11	2012-07-16 20:25:49.369	2012-07-16 20:25:49.369	A	1	\N
12	2012-07-16 21:13:11.737	2012-07-16 21:13:11.737	A	1	\N
13	2012-07-16 21:13:51.235	2012-07-16 21:13:51.235	A	1	\N
14	2012-07-16 21:14:15.13	2012-07-16 21:14:15.13	A	1	\N
15	2012-07-17 01:28:42.704	2012-07-17 01:28:42.704	A	1	\N
16	2012-07-17 01:29:42.17	2012-07-17 01:29:42.17	A	1	\N
17	2012-07-22 19:11:05.664	2012-07-22 19:11:05.664	A	1	\N
\.


--
-- TOC entry 2352 (class 0 OID 24683128)
-- Dependencies: 1710
-- Data for Name: emp_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_establecimientos (id_establecimiento, establecimiento, sigla, fec_registro, estado, id_tipo_est, fec_modificacion, ult_usuario) FROM stdin;
1	Colegio Santa Ana	Santa Ana	2012-07-06 17:29:26.193	A	3	2012-07-06 17:29:26.193	1
2	Universidad Juan Misael Saracho	UAJMS	2012-07-06 17:30:34.511	A	2	2012-07-06 17:30:34.511	1
3	Colegio Nacional San Luis	CNSL	2012-07-06 17:31:47.419	A	3	2012-07-06 17:31:47.419	1
4	Universidad Catolica Bolivia	UCB	2012-07-06 17:32:52.876	A	2	2012-07-06 17:32:52.876	1
5	Colegio Eustaquío Mendez	CEM	2012-07-06 17:36:05.544	A	3	2012-07-06 17:36:05.544	1
43	Colegio de la conchinchina	\N	2012-07-13 12:10:29.538	A	\N	2012-07-13 12:10:29.538	1
44	Colegio de las marianas	\N	2012-07-13 12:14:36.192	A	\N	2012-07-13 12:14:36.192	1
47	Escuela de Manejo	\N	2012-07-16 20:25:09.353	A	\N	2012-07-16 20:25:09.353	1
48	LIceo Tarija	\N	2012-07-17 01:25:55.08	A	\N	2012-07-17 01:25:55.08	1
49	Instituto Tarija	\N	2012-07-17 01:26:36.85	A	\N	2012-07-17 01:26:36.85	1
50	IPC Pascal	\N	2012-07-17 01:27:53.852	A	\N	2012-07-17 01:27:53.852	1
51	Catec Tarija	\N	2012-07-22 19:10:19.728	A	\N	2012-07-22 19:10:19.728	1
\.


--
-- TOC entry 2353 (class 0 OID 24683135)
-- Dependencies: 1711
-- Data for Name: emp_estudios_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_estudios_empleados (id_empleado, id_nivel_frm, id_establecimiento, titulo_obtenido, tiempo_estudio, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2354 (class 0 OID 24683142)
-- Dependencies: 1712
-- Data for Name: emp_experiencias_laborales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_experiencias_laborales (id_empleado, id_empresa, id_cargo, tiempo_trabajo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2355 (class 0 OID 24683149)
-- Dependencies: 1713
-- Data for Name: emp_formularios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_formularios (id_formulario, gestion, fec_registro, fec_modificacion, estado, id_tipo, id_persona, observacion, ult_usuario, nro_formulario, serie, req_contratacion) FROM stdin;
\.


--
-- TOC entry 2356 (class 0 OID 24683158)
-- Dependencies: 1715
-- Data for Name: emp_frm_cargos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_cargos (id_formulario, id_cargo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2357 (class 0 OID 24683165)
-- Dependencies: 1716
-- Data for Name: emp_frm_cursos_capacitaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_cursos_capacitaciones (id_curso_capacitacion, id_formulario, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2358 (class 0 OID 24683172)
-- Dependencies: 1717
-- Data for Name: emp_frm_niveles_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_niveles_establecimientos (id_nivel_formacion, id_establecimiento, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2359 (class 0 OID 24683179)
-- Dependencies: 1718
-- Data for Name: emp_frm_titulos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_titulos (id_formulario, id_titulo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2360 (class 0 OID 24683186)
-- Dependencies: 1719
-- Data for Name: emp_instituciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_instituciones (id_institucion, institucion, sigla, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	Ministerio de Trabajo	MinTra	2012-07-06 12:28:09.571	2012-07-06 12:28:09.571	A	1
2	intituto cca	\N	2012-07-16 20:26:36.529	2012-07-16 20:26:36.529	A	1
\.


--
-- TOC entry 2361 (class 0 OID 24683193)
-- Dependencies: 1720
-- Data for Name: emp_niveles_formaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
5	Universidad	2012-07-06 16:54:08.784	A	2012-07-06 16:54:08.784	1
6	Post Grado	2012-07-06 16:55:09.795	A	2012-07-06 16:55:09.795	1
9	Doctorado	2012-07-06 16:56:03.717	A	2012-07-06 16:56:03.717	1
10	Otros	2012-07-06 16:56:10.82	A	2012-07-06 16:56:10.82	1
8	Maestria	2012-07-06 16:55:50.542	A	2012-07-06 16:55:50.542	1
2	Secundaria	2012-07-06 16:53:51.055	A	2012-07-06 16:53:51.055	1
1	Primaria	2012-07-06 16:53:14.112	A	2012-07-06 16:53:14.112	1
4	Tecnico	2012-07-06 16:54:01.76	X	2012-07-06 16:54:01.76	1
\.


--
-- TOC entry 2362 (class 0 OID 24683200)
-- Dependencies: 1721
-- Data for Name: emp_ofertas_laborales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_ofertas_laborales (id_oferta_laboral, ofeta_laboral, detalle, vigente, sueldo, id_empleador, estado, fec_registro, fec_modificacion, ult_usuario, fecha_fin) FROM stdin;
\.


--
-- TOC entry 2363 (class 0 OID 24683210)
-- Dependencies: 1723
-- Data for Name: emp_ofertas_rubros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_ofertas_rubros (id_oferta_laboral, id_rubro, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2364 (class 0 OID 24683217)
-- Dependencies: 1724
-- Data for Name: emp_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_productos (id_producto, producto, fec_registro, detalle, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2365 (class 0 OID 24683224)
-- Dependencies: 1725
-- Data for Name: emp_productos_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_productos_empresas (id_producto, id_empresa, fec_registro, estado, id_prod_empr, id_rubro, cantidad, gestion, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2366 (class 0 OID 24683231)
-- Dependencies: 1726
-- Data for Name: emp_reuniones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_reuniones (id_reunion, reunion, detalle, fecha_reunion, fec_registro, fec_modificacion, estado, vigente, id_persona, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2367 (class 0 OID 24683239)
-- Dependencies: 1727
-- Data for Name: emp_reuniones_empleadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_reuniones_empleadores (id_reunion, id_empleador, observacion, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2368 (class 0 OID 24683245)
-- Dependencies: 1728
-- Data for Name: emp_reuniones_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_reuniones_empleados (id_empleado, id_reunion, observacion, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2369 (class 0 OID 24683253)
-- Dependencies: 1730
-- Data for Name: emp_rubros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_rubros (id_rubro, rubro, sigla, fec_registro, fec_modificacion, ult_usuario, estado) FROM stdin;
\.


--
-- TOC entry 2370 (class 0 OID 24683260)
-- Dependencies: 1731
-- Data for Name: emp_rubros_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_rubros_empresas (id_rubro, id_empresa, id_rubro_empresa, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2371 (class 0 OID 24683267)
-- Dependencies: 1732
-- Data for Name: emp_servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_servicios ("id_servicio ", servicio, fecha_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2372 (class 0 OID 24683274)
-- Dependencies: 1733
-- Data for Name: emp_servicios_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_servicios_empresas (id_empresa, id_servicio, fecha_registro, estado, id_serv_emp, id_rubro, cantidad, gestion, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2373 (class 0 OID 24683282)
-- Dependencies: 1734
-- Data for Name: emp_sucursales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_sucursales (id_sucursal, sucursal, direccion, nro_fundo_empresa, nro_codeco, telefono, celular, fax, email, pagina_web, nro_empleados, fecha_inicio_empresa, tipo_sucursal, id_empresa, fec_registro, fec_modificacion, ult_usuario, estado, id_pais, id_departamento, id_provincia, id_localidad, id_municipio) FROM stdin;
2	adfa	adfa			22333					323	2012-07-17	1	5	2012-07-06 10:39:56.817	2012-07-06 10:39:56.817	1	A	1	1	1	1	1
3	SinapSysIT	Barrio Morros Blancos	53	43	66-45655	76188392		webtarija@gmail.com	www.sinapsysit.com	32	2007-07-12	1	6	2012-07-06 10:56:19.574	2012-07-06 10:56:19.574	1	X	1	2	1	1	1
4	Prometa	Barrio Las panosas	773892	33234	78944564				www.prometa.org	3	1984-07-10	1	9	2012-07-12 16:31:07.512	2012-07-12 16:31:07.512	1	A	1	1	1	1	1
5	Fundación Fautapo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	10	2012-07-13 13:23:23.192	2012-07-13 13:23:23.192	1	A	1	\N	\N	\N	\N
6	Catec	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	11	2012-07-16 20:25:49.372	2012-07-16 20:25:49.372	1	A	1	\N	\N	\N	\N
8	Punto entel	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	13	2012-07-16 21:13:51.239	2012-07-16 21:13:51.239	1	A	1	\N	\N	\N	\N
9	Agengia de Cigarrillos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	14	2012-07-16 21:14:15.133	2012-07-16 21:14:15.133	1	A	1	\N	\N	\N	\N
7	Inmobiliaria financiera El Progreso	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	12	2012-07-16 21:13:11.791	2012-07-16 21:13:11.791	1	A	1	\N	\N	\N	\N
10	Satelite	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	15	2012-07-17 01:28:42.708	2012-07-17 01:28:42.708	1	A	1	\N	\N	\N	\N
11	Hospital San Juan de Dios	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	16	2012-07-17 01:29:42.191	2012-07-17 01:29:42.191	1	A	1	\N	\N	\N	\N
12	nuevito	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	17	2012-07-22 19:11:05.731	2012-07-22 19:11:05.731	1	A	1	\N	\N	\N	\N
\.


--
-- TOC entry 2374 (class 0 OID 24683294)
-- Dependencies: 1736
-- Data for Name: emp_tipo_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_tipo_competencias (id_tipo_competencia, tipo_competencia, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
1	cursos	2012-07-06 11:59:06.28	A	2012-07-06 11:59:06.28	1
2	habilidades	2012-07-06 11:59:17.272	A	2012-07-06 11:59:17.272	1
\.


--
-- TOC entry 2375 (class 0 OID 24683301)
-- Dependencies: 1737
-- Data for Name: emp_tipo_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_tipo_establecimientos (id_tipo_establecimiento, tipo_establecimiento, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
1	Instituto	2012-07-06 17:11:13.502	A	2012-07-06 17:11:13.502	1
2	Universidad	2012-07-06 17:11:30.988	A	2012-07-06 17:11:30.988	1
3	Colegio	2012-07-06 17:29:07.107	A	2012-07-06 17:29:07.107	1
\.


--
-- TOC entry 2376 (class 0 OID 24683308)
-- Dependencies: 1738
-- Data for Name: emp_tipos_formularios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_tipos_formularios (id_tipo, tipo_formulario, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	Empleado	2012-07-17 00:55:30.873	2012-07-17 00:55:30.873	A	1
2	Empleador	2012-07-17 00:55:49.244	2012-07-17 00:55:49.244	A	1
\.


--
-- TOC entry 2377 (class 0 OID 24683315)
-- Dependencies: 1739
-- Data for Name: emp_titulos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_titulos (id_titulo, titulo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2378 (class 0 OID 24683330)
-- Dependencies: 1743
-- Data for Name: enlaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY enlaces (id_enlace, enlace, estado, fec_registro, fec_modifiacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) FROM stdin;
1	Gestion enlaces	A	2012-07-22 20:59:26.077	2012-07-22 20:59:26.077	1	enlaces/abm	1	1	0
\.


--
-- TOC entry 2379 (class 0 OID 24683348)
-- Dependencies: 1749
-- Data for Name: localidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY localidades (id_localidad, localidad, estado, id_provincia, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	Murillo	A	1	2012-07-02 21:24:21.987	2012-07-02 21:24:21.987	1
\.


--
-- TOC entry 2380 (class 0 OID 24683355)
-- Dependencies: 1750
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2381 (class 0 OID 24683364)
-- Dependencies: 1752
-- Data for Name: municipios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY municipios (id_municipio, id_localidad, municipio, sigla, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	1	La Paz	Lpz	\N	2012-07-02 21:46:46.687	2012-07-02 21:46:46.687	1
\.


--
-- TOC entry 2382 (class 0 OID 24683374)
-- Dependencies: 1755
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) FROM stdin;
4	Argentina	2012-07-03 17:11:50.152	<p>Argentinos</p>	2012-07-03 17:11:50.152	1	A
7	Venezuela	2012-07-04 17:35:18.171	Venezolano	2012-07-04 19:50:00	1	A
8	Brazil	2012-07-04 17:58:14.978	Brasileño	2012-07-04 17:58:14.978	1	A
1	Bolivia	2012-07-02 21:18:31.013	<p>Bolivianos</p>	2012-07-02 21:18:31.013	1	A
6	Peru	2012-07-04 17:14:55.115	<p>Peruanosss</p>	2012-07-04 00:00:00	1	X
\.


--
-- TOC entry 2383 (class 0 OID 24683383)
-- Dependencies: 1757
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY personas (id_persona, nombres, paterno, materno, fec_nacimiento, telefono, celular, correo, fax, id_identificacion, direccion, ult_usuario, fec_registro, fec_modificacion, id_pais, id_departamento, id_provincia, id_localidad, id_sexo) FROM stdin;
1	Josue	Mancilla	Gordillo	1000-01-01					1		1	2012-07-02 21:40:19.577	2012-07-02 21:40:19.577	1	1	1	1	M
\.


--
-- TOC entry 2384 (class 0 OID 24683396)
-- Dependencies: 1761
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY provincias (id_provincia, provincia, id_departamento, fec_registro, fec_modificacion, ult_usuario, estado) FROM stdin;
1	Murillo	1	2012-07-02 21:22:20.317	2012-07-02 21:22:20.317	1	A
\.


--
-- TOC entry 2385 (class 0 OID 24683407)
-- Dependencies: 1764
-- Data for Name: prs_identificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prs_identificaciones (id_idenficacion, ci, id_departamento, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	5781310	1	2012-07-02 21:31:16.209	2012-07-02 21:31:16.209	A	1
2	1845917	2	2012-07-17 01:31:44.73	2012-07-17 01:31:44.73	A	1
3	1845917	2	2012-07-17 01:34:45.969	2012-07-17 01:34:45.969	A	1
4	1845917	2	2012-07-17 01:36:00.879	2012-07-17 01:36:00.879	A	1
5	1845917	2	2012-07-17 01:36:40.024	2012-07-17 01:36:40.024	A	1
6	1845917	2	2012-07-17 01:36:54.995	2012-07-17 01:36:54.995	A	1
7	1845917	2	2012-07-17 01:38:48.78	2012-07-17 01:38:48.78	A	1
8	1845917	2	2012-07-17 01:39:13.525	2012-07-17 01:39:13.525	A	1
9	1845917	2	2012-07-17 01:40:30.31	2012-07-17 01:40:30.31	A	1
10	1845917	2	2012-07-17 01:40:44.514	2012-07-17 01:40:44.514	A	1
11	1845917	2	2012-07-17 01:41:19.836	2012-07-17 01:41:19.836	A	1
12	1845917	2	2012-07-17 01:41:37.314	2012-07-17 01:41:37.314	A	1
13	1845917	2	2012-07-17 01:41:57.178	2012-07-17 01:41:57.178	A	1
14	1845917	2	2012-07-17 01:42:39.985	2012-07-17 01:42:39.985	A	1
\.


--
-- TOC entry 2386 (class 0 OID 24683419)
-- Dependencies: 1767
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	Administrador	A	2012-07-02 22:11:56.457	2012-07-02 22:11:56.457	1
2	Empadronador	A	2012-07-22 19:19:16.149	2012-07-22 19:19:16.149	1
3	Empleado	A	2012-07-22 20:58:14.14	2012-07-22 20:58:14.14	1
4	Empleador	A	2012-07-22 20:58:19.878	2012-07-22 20:58:19.878	1
5	Encargado del Proyecto	A	2012-07-22 20:58:36.81	2012-07-22 20:58:36.81	1
\.


--
-- TOC entry 2387 (class 0 OID 24683442)
-- Dependencies: 1776
-- Data for Name: ubicaciones_geograficas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ubicaciones_geograficas (id_ubicacion_geografica, id_pais, id_localidad, id_departamento, id_provincia, fec_registro, estado, ult_usuario, id_empleado, fec_modificacio, id_municipio) FROM stdin;
\.


--
-- TOC entry 2388 (class 0 OID 24683449)
-- Dependencies: 1777
-- Data for Name: usr_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usr_roles (id_usr_rol, id_usuario, id_rol, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	1	1	2012-07-02 22:13:00.118	2012-07-02 22:13:00.118	A	1
\.


--
-- TOC entry 2389 (class 0 OID 24683458)
-- Dependencies: 1779
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuarios (id_usuario, usuario, password, fec_registro, id_persona, id_estado, fec_modificacion, recordatorio) FROM stdin;
1	josue	josues	2012-07-02 21:12:51.549	1	A	2012-07-02 21:12:51.549	
\.


--
-- TOC entry 2151 (class 2606 OID 24683506)
-- Dependencies: 1696 1696
-- Name: cargos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_cargos
    ADD CONSTRAINT cargos_pkey PRIMARY KEY (id_cargo);


--
-- TOC entry 2153 (class 2606 OID 24683508)
-- Dependencies: 1698 1698
-- Name: categorias_enlaces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categorias_enlaces
    ADD CONSTRAINT categorias_enlaces_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 2159 (class 2606 OID 24683510)
-- Dependencies: 1703 1703
-- Name: competencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_competencias
    ADD CONSTRAINT competencias_pkey PRIMARY KEY (id_competencia);


--
-- TOC entry 2155 (class 2606 OID 24683512)
-- Dependencies: 1700 1700
-- Name: cursos_capacitaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_cursos_capacitaciones
    ADD CONSTRAINT cursos_capacitaciones_pkey PRIMARY KEY (id_curso_capacitacion);


--
-- TOC entry 2177 (class 2606 OID 24683514)
-- Dependencies: 1721 1721
-- Name: emp_ofertas_laborales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_ofertas_laborales
    ADD CONSTRAINT emp_ofertas_laborales_pkey PRIMARY KEY (id_oferta_laboral);


--
-- TOC entry 2183 (class 2606 OID 24683516)
-- Dependencies: 1726 1726
-- Name: emp_reuniones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_reuniones
    ADD CONSTRAINT emp_reuniones_pkey PRIMARY KEY (id_reunion);


--
-- TOC entry 2163 (class 2606 OID 24683520)
-- Dependencies: 1707 1707
-- Name: empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_empleados
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 2161 (class 2606 OID 24683522)
-- Dependencies: 1706 1706
-- Name: empleador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT empleador_pkey PRIMARY KEY (id_empleador);


--
-- TOC entry 2165 (class 2606 OID 24683524)
-- Dependencies: 1709 1709
-- Name: empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_empresas
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);


--
-- TOC entry 2203 (class 2606 OID 24683526)
-- Dependencies: 1743 1743
-- Name: enlaces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY enlaces
    ADD CONSTRAINT enlaces_pkey PRIMARY KEY (id_enlace);


--
-- TOC entry 2167 (class 2606 OID 24683528)
-- Dependencies: 1710 1710
-- Name: establecimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_establecimientos
    ADD CONSTRAINT establecimientos_pkey PRIMARY KEY (id_establecimiento);


--
-- TOC entry 2169 (class 2606 OID 24683530)
-- Dependencies: 1713 1713
-- Name: formularioregistro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT formularioregistro_pkey PRIMARY KEY (id_formulario);


--
-- TOC entry 2171 (class 2606 OID 24683532)
-- Dependencies: 1716 1716 1716
-- Name: frm_cursos_capacitaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT frm_cursos_capacitaciones_pkey PRIMARY KEY (id_curso_capacitacion, id_formulario);


--
-- TOC entry 2173 (class 2606 OID 24683534)
-- Dependencies: 1719 1719
-- Name: instituciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_instituciones
    ADD CONSTRAINT instituciones_pkey PRIMARY KEY (id_institucion);


--
-- TOC entry 2207 (class 2606 OID 24683536)
-- Dependencies: 1750 1750
-- Name: menus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id_menu);


--
-- TOC entry 2209 (class 2606 OID 24683538)
-- Dependencies: 1752 1752
-- Name: municipios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY municipios
    ADD CONSTRAINT municipios_pkey PRIMARY KEY (id_municipio);


--
-- TOC entry 2175 (class 2606 OID 24683540)
-- Dependencies: 1720 1720
-- Name: niveles_fromacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_niveles_formaciones
    ADD CONSTRAINT niveles_fromacion_pkey PRIMARY KEY (id_nivel_formacion);


--
-- TOC entry 2211 (class 2606 OID 24683542)
-- Dependencies: 1755 1755
-- Name: paises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id_pais);


--
-- TOC entry 2213 (class 2606 OID 24683544)
-- Dependencies: 1757 1757
-- Name: persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);


--
-- TOC entry 2181 (class 2606 OID 24683546)
-- Dependencies: 1725 1725
-- Name: productos_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT productos_empresa_pkey PRIMARY KEY (id_prod_empr);


--
-- TOC entry 2179 (class 2606 OID 24683548)
-- Dependencies: 1724 1724
-- Name: productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 2215 (class 2606 OID 24683550)
-- Dependencies: 1761 1761
-- Name: provincias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY provincias
    ADD CONSTRAINT provincias_pkey PRIMARY KEY (id_provincia);


--
-- TOC entry 2157 (class 2606 OID 24683552)
-- Dependencies: 1702 1702
-- Name: prs_departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY departamentos
    ADD CONSTRAINT prs_departamentos_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 2217 (class 2606 OID 24683554)
-- Dependencies: 1764 1764
-- Name: prs_identificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prs_identificaciones
    ADD CONSTRAINT prs_identificaciones_pkey PRIMARY KEY (id_idenficacion);


--
-- TOC entry 2205 (class 2606 OID 24683556)
-- Dependencies: 1749 1749
-- Name: prs_localidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY localidades
    ADD CONSTRAINT prs_localidad_pkey PRIMARY KEY (id_localidad);


--
-- TOC entry 2219 (class 2606 OID 24683558)
-- Dependencies: 1767 1767
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);


--
-- TOC entry 2187 (class 2606 OID 24683560)
-- Dependencies: 1731 1731
-- Name: rubros_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT rubros_empresa_pkey PRIMARY KEY (id_rubro_empresa);


--
-- TOC entry 2185 (class 2606 OID 24683562)
-- Dependencies: 1730 1730
-- Name: rubros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_rubros
    ADD CONSTRAINT rubros_pkey PRIMARY KEY (id_rubro);


--
-- TOC entry 2191 (class 2606 OID 24683564)
-- Dependencies: 1733 1733
-- Name: servicios_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT servicios_empresa_pkey PRIMARY KEY (id_serv_emp);


--
-- TOC entry 2189 (class 2606 OID 24683566)
-- Dependencies: 1732 1732
-- Name: servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY ("id_servicio ");


--
-- TOC entry 2193 (class 2606 OID 24683568)
-- Dependencies: 1734 1734
-- Name: sucursales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT sucursales_pkey PRIMARY KEY (id_sucursal);


--
-- TOC entry 2195 (class 2606 OID 24683570)
-- Dependencies: 1736 1736
-- Name: tipo_competencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_tipo_competencias
    ADD CONSTRAINT tipo_competencias_pkey PRIMARY KEY (id_tipo_competencia);


--
-- TOC entry 2197 (class 2606 OID 24683572)
-- Dependencies: 1737 1737
-- Name: tipo_establecimiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_tipo_establecimientos
    ADD CONSTRAINT tipo_establecimiento_pkey PRIMARY KEY (id_tipo_establecimiento);


--
-- TOC entry 2199 (class 2606 OID 24683574)
-- Dependencies: 1738 1738
-- Name: tipo_formulario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_tipos_formularios
    ADD CONSTRAINT tipo_formulario_pkey PRIMARY KEY (id_tipo);


--
-- TOC entry 2201 (class 2606 OID 24683576)
-- Dependencies: 1739 1739
-- Name: titulos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_titulos
    ADD CONSTRAINT titulos_pkey PRIMARY KEY (id_titulo);


--
-- TOC entry 2221 (class 2606 OID 24683578)
-- Dependencies: 1776 1776
-- Name: ubicaciones_geograficas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT ubicaciones_geograficas_pkey PRIMARY KEY (id_ubicacion_geografica);


--
-- TOC entry 2223 (class 2606 OID 24683580)
-- Dependencies: 1777 1777
-- Name: usr_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT usr_roles_pkey PRIMARY KEY (id_usr_rol);


--
-- TOC entry 2225 (class 2606 OID 24683582)
-- Dependencies: 1779 1779
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 2312 (class 2606 OID 24683583)
-- Dependencies: 2152 1698 1743
-- Name: fk_categorias_enlaces; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY enlaces
    ADD CONSTRAINT fk_categorias_enlaces FOREIGN KEY (id_categoria) REFERENCES categorias_enlaces(id_categoria);


--
-- TOC entry 2321 (class 2606 OID 24683588)
-- Dependencies: 1757 2156 1702
-- Name: fk_departamentos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_departamentos FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2228 (class 2606 OID 24683593)
-- Dependencies: 2210 1755 1702
-- Name: fk_dpto_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamentos
    ADD CONSTRAINT fk_dpto_paises FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2327 (class 2606 OID 24683598)
-- Dependencies: 2156 1702 1761
-- Name: fk_dpto_provincias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provincias
    ADD CONSTRAINT fk_dpto_provincias FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2229 (class 2606 OID 24683603)
-- Dependencies: 1702 1779 2224
-- Name: fk_dpto_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamentos
    ADD CONSTRAINT fk_dpto_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2239 (class 2606 OID 24683608)
-- Dependencies: 1707 1757 2212
-- Name: fk_emp_personas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados
    ADD CONSTRAINT fk_emp_personas FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2289 (class 2606 OID 24683613)
-- Dependencies: 1726 1728 2182
-- Name: fk_emp_reuniones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleados
    ADD CONSTRAINT fk_emp_reuniones FOREIGN KEY (id_reunion) REFERENCES emp_reuniones(id_reunion);


--
-- TOC entry 2240 (class 2606 OID 24683618)
-- Dependencies: 1707 2224 1779
-- Name: fk_emp_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados
    ADD CONSTRAINT fk_emp_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2313 (class 2606 OID 24683623)
-- Dependencies: 1743 2224 1779
-- Name: fk_enlaces_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY enlaces
    ADD CONSTRAINT fk_enlaces_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2329 (class 2606 OID 24683628)
-- Dependencies: 2156 1702 1764
-- Name: fk_identificacion_dpto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prs_identificaciones
    ADD CONSTRAINT fk_identificacion_dpto FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2330 (class 2606 OID 24683633)
-- Dependencies: 1779 2224 1764
-- Name: fk_identificacion_usr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prs_identificaciones
    ADD CONSTRAINT fk_identificacion_usr FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2322 (class 2606 OID 24683638)
-- Dependencies: 1764 1757 2216
-- Name: fk_identificaciones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_identificaciones FOREIGN KEY (id_identificacion) REFERENCES prs_identificaciones(id_idenficacion);


--
-- TOC entry 2319 (class 2606 OID 24683643)
-- Dependencies: 1749 2204 1752
-- Name: fk_localidad_municipios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipios
    ADD CONSTRAINT fk_localidad_municipios FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2314 (class 2606 OID 24683648)
-- Dependencies: 1761 2214 1749
-- Name: fk_localidad_prv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY localidades
    ADD CONSTRAINT fk_localidad_prv FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2315 (class 2606 OID 24683653)
-- Dependencies: 1779 1749 2224
-- Name: fk_localidad_usr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY localidades
    ADD CONSTRAINT fk_localidad_usr FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2323 (class 2606 OID 24683658)
-- Dependencies: 2204 1757 1749
-- Name: fk_localidades; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_localidades FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2316 (class 2606 OID 24683663)
-- Dependencies: 2202 1750 1743
-- Name: fk_menu_enlace; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT fk_menu_enlace FOREIGN KEY (id_enlace) REFERENCES enlaces(id_enlace);


--
-- TOC entry 2317 (class 2606 OID 24683668)
-- Dependencies: 1767 1750 2218
-- Name: fk_menu_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT fk_menu_rol FOREIGN KEY (id_rol) REFERENCES roles(id_rol);


--
-- TOC entry 2318 (class 2606 OID 24683673)
-- Dependencies: 1750 1779 2224
-- Name: fk_menu_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT fk_menu_usuario FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2324 (class 2606 OID 24683678)
-- Dependencies: 1755 2210 1757
-- Name: fk_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_paises FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2325 (class 2606 OID 24683683)
-- Dependencies: 1757 2214 1761
-- Name: fk_provincias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_provincias FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2328 (class 2606 OID 24683688)
-- Dependencies: 2224 1761 1779
-- Name: fk_provincias_usr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provincias
    ADD CONSTRAINT fk_provincias_usr FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2286 (class 2606 OID 24683693)
-- Dependencies: 1706 1727 2160
-- Name: fk_reuniones_empleadores; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleadores
    ADD CONSTRAINT fk_reuniones_empleadores FOREIGN KEY (id_empleador) REFERENCES emp_empleadores(id_empleador);


--
-- TOC entry 2290 (class 2606 OID 24683698)
-- Dependencies: 2162 1728 1707
-- Name: fk_reuniones_empleados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleados
    ADD CONSTRAINT fk_reuniones_empleados FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2284 (class 2606 OID 24683703)
-- Dependencies: 1757 2212 1726
-- Name: fk_reuniones_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones
    ADD CONSTRAINT fk_reuniones_persona FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2287 (class 2606 OID 24683708)
-- Dependencies: 2182 1727 1726
-- Name: fk_reuniones_reunion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleadores
    ADD CONSTRAINT fk_reuniones_reunion FOREIGN KEY (id_reunion) REFERENCES emp_reuniones(id_reunion);


--
-- TOC entry 2288 (class 2606 OID 24683713)
-- Dependencies: 2224 1727 1779
-- Name: fk_reuniones_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleadores
    ADD CONSTRAINT fk_reuniones_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2291 (class 2606 OID 24683718)
-- Dependencies: 1779 1728 2224
-- Name: fk_reuniones_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleados
    ADD CONSTRAINT fk_reuniones_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2332 (class 2606 OID 24683723)
-- Dependencies: 1776 2156 1702
-- Name: fk_ug_departamentos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_departamentos FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2333 (class 2606 OID 24683728)
-- Dependencies: 1776 2162 1707
-- Name: fk_ug_empleados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_empleados FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2334 (class 2606 OID 24683733)
-- Dependencies: 1776 2204 1749
-- Name: fk_ug_localidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_localidad FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2335 (class 2606 OID 24683738)
-- Dependencies: 1776 2208 1752
-- Name: fk_ug_municipios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_municipios FOREIGN KEY (id_municipio) REFERENCES municipios(id_municipio);


--
-- TOC entry 2336 (class 2606 OID 24683743)
-- Dependencies: 1755 1776 2210
-- Name: fk_ug_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_paises FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2337 (class 2606 OID 24683748)
-- Dependencies: 2214 1776 1761
-- Name: fk_ug_provincias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_provincias FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2338 (class 2606 OID 24683753)
-- Dependencies: 2224 1776 1779
-- Name: fk_ug_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2285 (class 2606 OID 24683758)
-- Dependencies: 2224 1779 1726
-- Name: fk_ult_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones
    ADD CONSTRAINT fk_ult_usuario FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2339 (class 2606 OID 24683763)
-- Dependencies: 1767 2218 1777
-- Name: fk_usr_roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT fk_usr_roles FOREIGN KEY (id_rol) REFERENCES roles(id_rol);


--
-- TOC entry 2340 (class 2606 OID 24683768)
-- Dependencies: 2224 1777 1779
-- Name: fk_usr_ult; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT fk_usr_ult FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2341 (class 2606 OID 24683773)
-- Dependencies: 1779 2224 1777
-- Name: fk_usr_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT fk_usr_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2331 (class 2606 OID 24683778)
-- Dependencies: 1779 2224 1767
-- Name: fk_usuario_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT fk_usuario_rol FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2326 (class 2606 OID 24683783)
-- Dependencies: 1757 2224 1779
-- Name: fk_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2320 (class 2606 OID 24683788)
-- Dependencies: 1779 1755 2224
-- Name: fk_usuarios_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paises
    ADD CONSTRAINT fk_usuarios_paises FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2236 (class 2606 OID 24683793)
-- Dependencies: 1757 2212 1706
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2293 (class 2606 OID 24683798)
-- Dependencies: 1731 2184 1730
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_rubro) REFERENCES emp_rubros(id_rubro);


--
-- TOC entry 2280 (class 2606 OID 24683803)
-- Dependencies: 1724 1725 2178
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_producto) REFERENCES emp_productos(id_producto);


--
-- TOC entry 2297 (class 2606 OID 24683808)
-- Dependencies: 2164 1733 1709
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2241 (class 2606 OID 24683813)
-- Dependencies: 2162 1707 1708
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2232 (class 2606 OID 24683818)
-- Dependencies: 1705 1707 2162
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2257 (class 2606 OID 24683823)
-- Dependencies: 1738 2198 1713
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_tipo) REFERENCES emp_tipos_formularios(id_tipo);


--
-- TOC entry 2253 (class 2606 OID 24683828)
-- Dependencies: 2162 1712 1707
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2230 (class 2606 OID 24683833)
-- Dependencies: 1736 1703 2194
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_competencias
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_tipo_competencia) REFERENCES emp_tipo_competencias(id_tipo_competencia);


--
-- TOC entry 2247 (class 2606 OID 24683838)
-- Dependencies: 2196 1737 1710
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_establecimientos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_tipo_est) REFERENCES emp_tipo_establecimientos(id_tipo_establecimiento);


--
-- TOC entry 2249 (class 2606 OID 24683843)
-- Dependencies: 1707 1711 2162
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2263 (class 2606 OID 24683853)
-- Dependencies: 1700 1716 2154
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_curso_capacitacion) REFERENCES emp_cursos_capacitaciones(id_curso_capacitacion);


--
-- TOC entry 2266 (class 2606 OID 24683858)
-- Dependencies: 1720 2174 1717
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_niveles_establecimientos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_nivel_formacion) REFERENCES emp_niveles_formaciones(id_nivel_formacion);


--
-- TOC entry 2269 (class 2606 OID 24683863)
-- Dependencies: 1718 1739 2200
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_titulos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_titulo) REFERENCES emp_titulos(id_titulo);


--
-- TOC entry 2260 (class 2606 OID 24683868)
-- Dependencies: 1715 1696 2150
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cargos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_cargo) REFERENCES emp_cargos(id_cargo);


--
-- TOC entry 2301 (class 2606 OID 24683873)
-- Dependencies: 1709 2164 1734
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2292 (class 2606 OID 24683878)
-- Dependencies: 1779 2224 1730
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2246 (class 2606 OID 24683883)
-- Dependencies: 2224 1779 1709
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2226 (class 2606 OID 24683888)
-- Dependencies: 2224 1696 1779
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_cargos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2227 (class 2606 OID 24683893)
-- Dependencies: 1700 1779 2224
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_cursos_capacitaciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2272 (class 2606 OID 24683898)
-- Dependencies: 1719 2224 1779
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_instituciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2273 (class 2606 OID 24683903)
-- Dependencies: 2224 1720 1779
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_niveles_formaciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2279 (class 2606 OID 24683908)
-- Dependencies: 1724 1779 2224
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2296 (class 2606 OID 24683913)
-- Dependencies: 2224 1732 1779
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2308 (class 2606 OID 24683918)
-- Dependencies: 1736 2224 1779
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipo_competencias
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2309 (class 2606 OID 24683923)
-- Dependencies: 1779 2224 1737
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipo_establecimientos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2310 (class 2606 OID 24683928)
-- Dependencies: 2224 1738 1779
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipos_formularios
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2311 (class 2606 OID 24683933)
-- Dependencies: 1739 2224 1779
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_titulos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2274 (class 2606 OID 24683938)
-- Dependencies: 1706 2160 1721
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_laborales
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleador) REFERENCES emp_empleadores(id_empleador);


--
-- TOC entry 2276 (class 2606 OID 24683943)
-- Dependencies: 1779 1723 2224
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_rubros
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2294 (class 2606 OID 24683948)
-- Dependencies: 1709 2164 1731
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2281 (class 2606 OID 24683953)
-- Dependencies: 2164 1709 1725
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2298 (class 2606 OID 24683958)
-- Dependencies: 1733 2188 1732
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_servicio) REFERENCES emp_servicios("id_servicio ");


--
-- TOC entry 2242 (class 2606 OID 24683963)
-- Dependencies: 1709 2164 1708
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2258 (class 2606 OID 24683968)
-- Dependencies: 1713 2212 1757
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2237 (class 2606 OID 24683973)
-- Dependencies: 1709 2164 1706
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2254 (class 2606 OID 24683978)
-- Dependencies: 1712 2164 1709
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2250 (class 2606 OID 24683983)
-- Dependencies: 1720 2174 1711
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_nivel_frm) REFERENCES emp_niveles_formaciones(id_nivel_formacion);


--
-- TOC entry 2267 (class 2606 OID 24683988)
-- Dependencies: 1717 2166 1710
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_niveles_establecimientos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_establecimiento) REFERENCES emp_establecimientos(id_establecimiento);


--
-- TOC entry 2270 (class 2606 OID 24683993)
-- Dependencies: 1713 2168 1718
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_titulos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_formulario) REFERENCES emp_formularios(id_formulario);


--
-- TOC entry 2264 (class 2606 OID 24683998)
-- Dependencies: 1716 2168 1713
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_formulario) REFERENCES emp_formularios(id_formulario);


--
-- TOC entry 2261 (class 2606 OID 24684003)
-- Dependencies: 1713 2168 1715
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cargos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_formulario) REFERENCES emp_formularios(id_formulario);


--
-- TOC entry 2248 (class 2606 OID 24684013)
-- Dependencies: 1710 2224 1779
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_establecimientos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2231 (class 2606 OID 24684018)
-- Dependencies: 2224 1703 1779
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_competencias
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2302 (class 2606 OID 24684023)
-- Dependencies: 1755 2210 1734
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2275 (class 2606 OID 24684028)
-- Dependencies: 2224 1779 1721
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_laborales
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2277 (class 2606 OID 24684033)
-- Dependencies: 1723 2176 1721
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_rubros
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_oferta_laboral) REFERENCES emp_ofertas_laborales(id_oferta_laboral);


--
-- TOC entry 2233 (class 2606 OID 24684038)
-- Dependencies: 1703 2158 1705
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_competencia) REFERENCES emp_competencias(id_competencia);


--
-- TOC entry 2282 (class 2606 OID 24684043)
-- Dependencies: 1725 2186 1731
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_rubro) REFERENCES emp_rubros_empresas(id_rubro_empresa);


--
-- TOC entry 2299 (class 2606 OID 24684048)
-- Dependencies: 1731 2186 1733
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_rubro) REFERENCES emp_rubros_empresas(id_rubro_empresa);


--
-- TOC entry 2255 (class 2606 OID 24684053)
-- Dependencies: 1712 2150 1696
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_cargo) REFERENCES emp_cargos(id_cargo);


--
-- TOC entry 2234 (class 2606 OID 24684058)
-- Dependencies: 1719 2172 1705
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_institucion) REFERENCES emp_instituciones(id_institucion);


--
-- TOC entry 2251 (class 2606 OID 24684063)
-- Dependencies: 1711 2166 1710
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_establecimiento) REFERENCES emp_establecimientos(id_establecimiento);


--
-- TOC entry 2243 (class 2606 OID 24684068)
-- Dependencies: 1708 1696 2150
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_cargo) REFERENCES emp_cargos(id_cargo);


--
-- TOC entry 2303 (class 2606 OID 24684078)
-- Dependencies: 1734 2224 1779
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2238 (class 2606 OID 24684083)
-- Dependencies: 1779 2224 1706
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2262 (class 2606 OID 24684088)
-- Dependencies: 1779 1715 2224
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cargos
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2265 (class 2606 OID 24684093)
-- Dependencies: 1779 1716 2224
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2268 (class 2606 OID 24684098)
-- Dependencies: 2224 1779 1717
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_niveles_establecimientos
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2271 (class 2606 OID 24684103)
-- Dependencies: 1718 2224 1779
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_titulos
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2295 (class 2606 OID 24684108)
-- Dependencies: 2224 1731 1779
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2278 (class 2606 OID 24684113)
-- Dependencies: 2184 1730 1723
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_rubros
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_rubro) REFERENCES emp_rubros(id_rubro);


--
-- TOC entry 2244 (class 2606 OID 24684118)
-- Dependencies: 1708 2174 1720
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (id_nivel_frm) REFERENCES emp_niveles_formaciones(id_nivel_formacion);


--
-- TOC entry 2235 (class 2606 OID 24684123)
-- Dependencies: 1779 1705 2224
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2252 (class 2606 OID 24684128)
-- Dependencies: 1711 2224 1779
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2256 (class 2606 OID 24684133)
-- Dependencies: 1712 1779 2224
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2259 (class 2606 OID 24684138)
-- Dependencies: 1713 1779 2224
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2283 (class 2606 OID 24684143)
-- Dependencies: 2224 1725 1779
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2300 (class 2606 OID 24684148)
-- Dependencies: 2224 1779 1733
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2304 (class 2606 OID 24684153)
-- Dependencies: 2156 1702 1734
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2245 (class 2606 OID 24684158)
-- Dependencies: 2224 1779 1708
-- Name: foreign_key05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key05 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2305 (class 2606 OID 24684163)
-- Dependencies: 1761 1734 2214
-- Name: foreign_key05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key05 FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2306 (class 2606 OID 24684168)
-- Dependencies: 1749 2204 1734
-- Name: foreign_key06; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key06 FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2307 (class 2606 OID 24684173)
-- Dependencies: 2208 1752 1734
-- Name: foreign_key07; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key07 FOREIGN KEY (id_municipio) REFERENCES municipios(id_municipio);


--
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-07-23 14:10:57

--
-- PostgreSQL database dump complete
--

