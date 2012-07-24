--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.4
-- Dumped by pg_dump version 9.1.4
-- Started on 2012-07-24 19:47:14

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 247 (class 3079 OID 11639)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2520 (class 0 OID 0)
-- Dependencies: 247
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 568 (class 1247 OID 17559)
-- Dependencies: 6
-- Name: dbooleano; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dbooleano AS boolean NOT NULL;


ALTER DOMAIN public.dbooleano OWNER TO postgres;

--
-- TOC entry 569 (class 1247 OID 17560)
-- Dependencies: 6
-- Name: dbooleano2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dbooleano2 AS boolean DEFAULT false;


ALTER DOMAIN public.dbooleano2 OWNER TO postgres;

--
-- TOC entry 570 (class 1247 OID 17561)
-- Dependencies: 6
-- Name: dbooleano3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dbooleano3 AS boolean DEFAULT true;


ALTER DOMAIN public.dbooleano3 OWNER TO postgres;

--
-- TOC entry 571 (class 1247 OID 17562)
-- Dependencies: 6
-- Name: dentero; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero AS integer NOT NULL;


ALTER DOMAIN public.dentero OWNER TO postgres;

--
-- TOC entry 572 (class 1247 OID 17563)
-- Dependencies: 6
-- Name: dentero2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero2 AS integer DEFAULT (-1000000);


ALTER DOMAIN public.dentero2 OWNER TO postgres;

--
-- TOC entry 573 (class 1247 OID 17564)
-- Dependencies: 6
-- Name: dentero3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero3 AS integer;


ALTER DOMAIN public.dentero3 OWNER TO postgres;

--
-- TOC entry 574 (class 1247 OID 17565)
-- Dependencies: 6
-- Name: dentero4; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dentero4 AS integer DEFAULT 0;


ALTER DOMAIN public.dentero4 OWNER TO postgres;

--
-- TOC entry 575 (class 1247 OID 17566)
-- Dependencies: 6
-- Name: dfec_modificacion; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dfec_modificacion AS timestamp without time zone DEFAULT now();


ALTER DOMAIN public.dfec_modificacion OWNER TO postgres;

--
-- TOC entry 576 (class 1247 OID 17567)
-- Dependencies: 6
-- Name: dfecha; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dfecha AS date NOT NULL;


ALTER DOMAIN public.dfecha OWNER TO postgres;

--
-- TOC entry 577 (class 1247 OID 17568)
-- Dependencies: 6
-- Name: dfecha2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dfecha2 AS date DEFAULT '1000-01-01'::date;


ALTER DOMAIN public.dfecha2 OWNER TO postgres;

--
-- TOC entry 578 (class 1247 OID 17569)
-- Dependencies: 6
-- Name: dhora; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dhora AS time without time zone NOT NULL;


ALTER DOMAIN public.dhora OWNER TO postgres;

--
-- TOC entry 579 (class 1247 OID 17570)
-- Dependencies: 6
-- Name: dhora2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dhora2 AS time without time zone DEFAULT now();


ALTER DOMAIN public.dhora2 OWNER TO postgres;

--
-- TOC entry 580 (class 1247 OID 17571)
-- Dependencies: 6
-- Name: did_estado; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN did_estado AS text;


ALTER DOMAIN public.did_estado OWNER TO postgres;

--
-- TOC entry 581 (class 1247 OID 17572)
-- Dependencies: 6
-- Name: did_usuario; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN did_usuario AS integer NOT NULL;


ALTER DOMAIN public.did_usuario OWNER TO postgres;

--
-- TOC entry 582 (class 1247 OID 17573)
-- Dependencies: 6
-- Name: dmoneda; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dmoneda AS numeric(15,2) NOT NULL;


ALTER DOMAIN public.dmoneda OWNER TO postgres;

--
-- TOC entry 583 (class 1247 OID 17574)
-- Dependencies: 6
-- Name: dmoneda2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dmoneda2 AS numeric(15,2) DEFAULT 0.00;


ALTER DOMAIN public.dmoneda2 OWNER TO postgres;

--
-- TOC entry 584 (class 1247 OID 17575)
-- Dependencies: 6
-- Name: dmoneda3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dmoneda3 AS numeric(20,6) DEFAULT 0.0;


ALTER DOMAIN public.dmoneda3 OWNER TO postgres;

--
-- TOC entry 585 (class 1247 OID 17576)
-- Dependencies: 6
-- Name: dnota; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dnota AS numeric(10,7) NOT NULL;


ALTER DOMAIN public.dnota OWNER TO postgres;

--
-- TOC entry 586 (class 1247 OID 17577)
-- Dependencies: 6
-- Name: dnota2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dnota2 AS numeric(10,7) DEFAULT 0.00;


ALTER DOMAIN public.dnota2 OWNER TO postgres;

--
-- TOC entry 587 (class 1247 OID 17578)
-- Dependencies: 6
-- Name: dreal; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dreal AS double precision NOT NULL;


ALTER DOMAIN public.dreal OWNER TO postgres;

--
-- TOC entry 588 (class 1247 OID 17579)
-- Dependencies: 6
-- Name: dreal2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dreal2 AS double precision DEFAULT (-1000000.0);


ALTER DOMAIN public.dreal2 OWNER TO postgres;

--
-- TOC entry 589 (class 1247 OID 17580)
-- Dependencies: 6
-- Name: dreal3; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dreal3 AS double precision DEFAULT 0.00;


ALTER DOMAIN public.dreal3 OWNER TO postgres;

--
-- TOC entry 590 (class 1247 OID 17581)
-- Dependencies: 6
-- Name: dtexto; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dtexto AS text NOT NULL;


ALTER DOMAIN public.dtexto OWNER TO postgres;

--
-- TOC entry 591 (class 1247 OID 17582)
-- Dependencies: 6
-- Name: dtexto2; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN dtexto2 AS text DEFAULT ''::text;


ALTER DOMAIN public.dtexto2 OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 161 (class 1259 OID 17583)
-- Dependencies: 2185 6 575 580 575 581
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
-- TOC entry 162 (class 1259 OID 17590)
-- Dependencies: 161 6
-- Name: cargos_id_cargo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cargos_id_cargo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cargos_id_cargo_seq OWNER TO postgres;

--
-- TOC entry 2521 (class 0 OID 0)
-- Dependencies: 162
-- Name: cargos_id_cargo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cargos_id_cargo_seq OWNED BY emp_cargos.id_cargo;


--
-- TOC entry 2522 (class 0 OID 0)
-- Dependencies: 162
-- Name: cargos_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cargos_id_cargo_seq', 15, true);


--
-- TOC entry 163 (class 1259 OID 17592)
-- Dependencies: 2187 2188 6 580 575 575 581
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
-- TOC entry 164 (class 1259 OID 17600)
-- Dependencies: 163 6
-- Name: categorias_enlaces_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categorias_enlaces_id_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_enlaces_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 2523 (class 0 OID 0)
-- Dependencies: 164
-- Name: categorias_enlaces_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categorias_enlaces_id_categoria_seq OWNED BY categorias_enlaces.id_categoria;


--
-- TOC entry 2524 (class 0 OID 0)
-- Dependencies: 164
-- Name: categorias_enlaces_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categorias_enlaces_id_categoria_seq', 4, true);


--
-- TOC entry 165 (class 1259 OID 17602)
-- Dependencies: 2190 581 575 6 575 580
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
-- TOC entry 166 (class 1259 OID 17609)
-- Dependencies: 165 6
-- Name: cursos_capacitaciones_id_curso_capacitacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cursos_capacitaciones_id_curso_capacitacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cursos_capacitaciones_id_curso_capacitacion_seq OWNER TO postgres;

--
-- TOC entry 2525 (class 0 OID 0)
-- Dependencies: 166
-- Name: cursos_capacitaciones_id_curso_capacitacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cursos_capacitaciones_id_curso_capacitacion_seq OWNED BY emp_cursos_capacitaciones.id_curso_capacitacion;


--
-- TOC entry 2526 (class 0 OID 0)
-- Dependencies: 166
-- Name: cursos_capacitaciones_id_curso_capacitacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cursos_capacitaciones_id_curso_capacitacion_seq', 3, true);


--
-- TOC entry 167 (class 1259 OID 17611)
-- Dependencies: 2192 575 575 580 6
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
-- TOC entry 168 (class 1259 OID 17618)
-- Dependencies: 2194 2195 580 6 581 575 575
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
-- TOC entry 169 (class 1259 OID 17626)
-- Dependencies: 6
-- Name: emp_competencias_id_competencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_competencias_id_competencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.emp_competencias_id_competencia_seq OWNER TO postgres;

--
-- TOC entry 2527 (class 0 OID 0)
-- Dependencies: 169
-- Name: emp_competencias_id_competencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_competencias_id_competencia_seq', 4, true);


--
-- TOC entry 170 (class 1259 OID 17628)
-- Dependencies: 2196 575 580 575 581 6
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
-- TOC entry 171 (class 1259 OID 17635)
-- Dependencies: 2197 581 6 575 575 580
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
-- TOC entry 172 (class 1259 OID 17642)
-- Dependencies: 2199 2200 6 591 581 575 575 580 591
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
-- TOC entry 173 (class 1259 OID 17650)
-- Dependencies: 2202 580 6 581 575 575
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
-- TOC entry 174 (class 1259 OID 17657)
-- Dependencies: 2203 575 581 580 575 6
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
-- TOC entry 175 (class 1259 OID 17664)
-- Dependencies: 2205 6 575 581 575 580
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
-- TOC entry 176 (class 1259 OID 17671)
-- Dependencies: 2207 6 580 575 581 575
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
-- TOC entry 177 (class 1259 OID 17678)
-- Dependencies: 2208 575 575 580 581 6
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
-- TOC entry 178 (class 1259 OID 17685)
-- Dependencies: 2209 580 6 581 575 575
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
-- TOC entry 2528 (class 0 OID 0)
-- Dependencies: 178
-- Name: COLUMN emp_formularios.id_persona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_formularios.id_persona IS 'representa identificador de la persona';


--
-- TOC entry 179 (class 1259 OID 17692)
-- Dependencies: 6 178
-- Name: emp_formularios_nro_formulario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_formularios_nro_formulario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emp_formularios_nro_formulario_seq OWNER TO postgres;

--
-- TOC entry 2529 (class 0 OID 0)
-- Dependencies: 179
-- Name: emp_formularios_nro_formulario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE emp_formularios_nro_formulario_seq OWNED BY emp_formularios.nro_formulario;


--
-- TOC entry 2530 (class 0 OID 0)
-- Dependencies: 179
-- Name: emp_formularios_nro_formulario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_formularios_nro_formulario_seq', 2, true);


--
-- TOC entry 180 (class 1259 OID 17694)
-- Dependencies: 2212 581 575 575 580 6
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
-- TOC entry 181 (class 1259 OID 17701)
-- Dependencies: 2213 581 575 575 580 6
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
-- TOC entry 182 (class 1259 OID 17708)
-- Dependencies: 2214 580 6 581 575 575
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
-- TOC entry 183 (class 1259 OID 17715)
-- Dependencies: 2215 581 575 575 580 6
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
-- TOC entry 184 (class 1259 OID 17722)
-- Dependencies: 2216 6 575 575 580 581
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
-- TOC entry 185 (class 1259 OID 17729)
-- Dependencies: 2218 6 581 575 580 575
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
-- TOC entry 186 (class 1259 OID 17736)
-- Dependencies: 2220 2221 6 580 575 575 581
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
-- TOC entry 2531 (class 0 OID 0)
-- Dependencies: 186
-- Name: COLUMN emp_ofertas_laborales.vigente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_ofertas_laborales.vigente IS 'S=ABIERTO
N=CERRADO';


--
-- TOC entry 187 (class 1259 OID 17744)
-- Dependencies: 6 186
-- Name: emp_ofertas_laborales_id_oferta_laboral_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_ofertas_laborales_id_oferta_laboral_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emp_ofertas_laborales_id_oferta_laboral_seq OWNER TO postgres;

--
-- TOC entry 2532 (class 0 OID 0)
-- Dependencies: 187
-- Name: emp_ofertas_laborales_id_oferta_laboral_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE emp_ofertas_laborales_id_oferta_laboral_seq OWNED BY emp_ofertas_laborales.id_oferta_laboral;


--
-- TOC entry 2533 (class 0 OID 0)
-- Dependencies: 187
-- Name: emp_ofertas_laborales_id_oferta_laboral_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_ofertas_laborales_id_oferta_laboral_seq', 1, false);


--
-- TOC entry 188 (class 1259 OID 17746)
-- Dependencies: 2223 575 580 6 575
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
-- TOC entry 189 (class 1259 OID 17753)
-- Dependencies: 2224 575 6 581 580 575
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
-- TOC entry 190 (class 1259 OID 17760)
-- Dependencies: 2226 575 575 580 581 6
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
-- TOC entry 191 (class 1259 OID 17767)
-- Dependencies: 2228 2229 580 6 575 581 575
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
-- TOC entry 2534 (class 0 OID 0)
-- Dependencies: 191
-- Name: COLUMN emp_reuniones.vigente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_reuniones.vigente IS 'V=vigente
C=cerrado';


--
-- TOC entry 192 (class 1259 OID 17775)
-- Dependencies: 580 6 581
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
-- TOC entry 193 (class 1259 OID 17781)
-- Dependencies: 6 575 581 580 575
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
-- TOC entry 194 (class 1259 OID 17787)
-- Dependencies: 191 6
-- Name: emp_reuniones_id_reunion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_reuniones_id_reunion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emp_reuniones_id_reunion_seq OWNER TO postgres;

--
-- TOC entry 2535 (class 0 OID 0)
-- Dependencies: 194
-- Name: emp_reuniones_id_reunion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE emp_reuniones_id_reunion_seq OWNED BY emp_reuniones.id_reunion;


--
-- TOC entry 2536 (class 0 OID 0)
-- Dependencies: 194
-- Name: emp_reuniones_id_reunion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_reuniones_id_reunion_seq', 1, false);


--
-- TOC entry 195 (class 1259 OID 17789)
-- Dependencies: 2231 575 580 6 575 581
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
-- TOC entry 196 (class 1259 OID 17796)
-- Dependencies: 2233 580 575 575 581 6
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
-- TOC entry 2537 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN emp_rubros_empresas.id_rubro_empresa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_rubros_empresas.id_rubro_empresa IS 'Identificador de rubros de empresa.';


--
-- TOC entry 197 (class 1259 OID 17803)
-- Dependencies: 2235 575 580 575 581 6
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
-- TOC entry 198 (class 1259 OID 17810)
-- Dependencies: 2237 2238 575 575 581 6 580
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
-- TOC entry 199 (class 1259 OID 17818)
-- Dependencies: 2240 2241 2242 2243 575 575 581 580 6
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
-- TOC entry 2538 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN emp_sucursales.tipo_sucursal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN emp_sucursales.tipo_sucursal IS '1= Central
2= Sucursal';


--
-- TOC entry 200 (class 1259 OID 17828)
-- Dependencies: 6
-- Name: emp_sucursales_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp_sucursales_id_sucursal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.emp_sucursales_id_sucursal_seq OWNER TO postgres;

--
-- TOC entry 2539 (class 0 OID 0)
-- Dependencies: 200
-- Name: emp_sucursales_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_sucursales_id_sucursal_seq', 12, true);


--
-- TOC entry 201 (class 1259 OID 17830)
-- Dependencies: 2244 6 580 575 581 575
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
-- TOC entry 202 (class 1259 OID 17837)
-- Dependencies: 2246 580 575 575 581 6
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
-- TOC entry 203 (class 1259 OID 17844)
-- Dependencies: 2248 6 581 580 575 575
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
-- TOC entry 204 (class 1259 OID 17851)
-- Dependencies: 2250 575 580 581 575 6
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
-- TOC entry 205 (class 1259 OID 17858)
-- Dependencies: 6 172
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empleado_id_empleado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleado_id_empleado_seq OWNER TO postgres;

--
-- TOC entry 2540 (class 0 OID 0)
-- Dependencies: 205
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empleado_id_empleado_seq OWNED BY emp_empleados.id_empleado;


--
-- TOC entry 2541 (class 0 OID 0)
-- Dependencies: 205
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleado_id_empleado_seq', 15, true);


--
-- TOC entry 206 (class 1259 OID 17860)
-- Dependencies: 6 171
-- Name: empleador_id_empleador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empleador_id_empleador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleador_id_empleador_seq OWNER TO postgres;

--
-- TOC entry 2542 (class 0 OID 0)
-- Dependencies: 206
-- Name: empleador_id_empleador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empleador_id_empleador_seq OWNED BY emp_empleadores.id_empleador;


--
-- TOC entry 2543 (class 0 OID 0)
-- Dependencies: 206
-- Name: empleador_id_empleador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleador_id_empleador_seq', 1, false);


--
-- TOC entry 207 (class 1259 OID 17862)
-- Dependencies: 6 174
-- Name: empresa_id_empresa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empresa_id_empresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresa_id_empresa_seq OWNER TO postgres;

--
-- TOC entry 2544 (class 0 OID 0)
-- Dependencies: 207
-- Name: empresa_id_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empresa_id_empresa_seq OWNED BY emp_empresas.id_empresa;


--
-- TOC entry 2545 (class 0 OID 0)
-- Dependencies: 207
-- Name: empresa_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empresa_id_empresa_seq', 17, true);


--
-- TOC entry 208 (class 1259 OID 17864)
-- Dependencies: 2251 2252 575 580 6 581 575
-- Name: enlaces; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE enlaces (
    id_enlace integer NOT NULL,
    enlace character varying(30) NOT NULL,
    estado did_estado DEFAULT 'A'::text,
    fec_registro dfec_modificacion,
    fec_modificacion dfec_modificacion,
    ult_usuario did_usuario,
    ruta_enlace text,
    orden integer DEFAULT 1,
    id_categoria integer,
    id_padre_enlace integer
);


ALTER TABLE public.enlaces OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17872)
-- Dependencies: 6 208
-- Name: enlaces_id_enlace_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE enlaces_id_enlace_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enlaces_id_enlace_seq OWNER TO postgres;

--
-- TOC entry 2546 (class 0 OID 0)
-- Dependencies: 209
-- Name: enlaces_id_enlace_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE enlaces_id_enlace_seq OWNED BY enlaces.id_enlace;


--
-- TOC entry 2547 (class 0 OID 0)
-- Dependencies: 209
-- Name: enlaces_id_enlace_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('enlaces_id_enlace_seq', 19, true);


--
-- TOC entry 210 (class 1259 OID 17874)
-- Dependencies: 6 175
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE establecimientos_id_establecimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.establecimientos_id_establecimiento_seq OWNER TO postgres;

--
-- TOC entry 2548 (class 0 OID 0)
-- Dependencies: 210
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE establecimientos_id_establecimiento_seq OWNED BY emp_establecimientos.id_establecimiento;


--
-- TOC entry 2549 (class 0 OID 0)
-- Dependencies: 210
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('establecimientos_id_establecimiento_seq', 51, true);


--
-- TOC entry 211 (class 1259 OID 17876)
-- Dependencies: 6 178
-- Name: formularioregistro_id_formulario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE formularioregistro_id_formulario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formularioregistro_id_formulario_seq OWNER TO postgres;

--
-- TOC entry 2550 (class 0 OID 0)
-- Dependencies: 211
-- Name: formularioregistro_id_formulario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE formularioregistro_id_formulario_seq OWNED BY emp_formularios.id_formulario;


--
-- TOC entry 2551 (class 0 OID 0)
-- Dependencies: 211
-- Name: formularioregistro_id_formulario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('formularioregistro_id_formulario_seq', 2, true);


--
-- TOC entry 212 (class 1259 OID 17878)
-- Dependencies: 6 184
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instituciones_id_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instituciones_id_institucion_seq OWNER TO postgres;

--
-- TOC entry 2552 (class 0 OID 0)
-- Dependencies: 212
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instituciones_id_institucion_seq OWNED BY emp_instituciones.id_institucion;


--
-- TOC entry 2553 (class 0 OID 0)
-- Dependencies: 212
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instituciones_id_institucion_seq', 2, true);


--
-- TOC entry 213 (class 1259 OID 17880)
-- Dependencies: 6
-- Name: localidad_id_localidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE localidad_id_localidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.localidad_id_localidad_seq OWNER TO postgres;

--
-- TOC entry 2554 (class 0 OID 0)
-- Dependencies: 213
-- Name: localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('localidad_id_localidad_seq', 1, false);


--
-- TOC entry 214 (class 1259 OID 17882)
-- Dependencies: 2254 580 6 575 575 581
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
-- TOC entry 215 (class 1259 OID 17889)
-- Dependencies: 2256 575 580 581 6 575
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
-- TOC entry 216 (class 1259 OID 17896)
-- Dependencies: 215 6
-- Name: menus_id_menu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE menus_id_menu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_id_menu_seq OWNER TO postgres;

--
-- TOC entry 2555 (class 0 OID 0)
-- Dependencies: 216
-- Name: menus_id_menu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE menus_id_menu_seq OWNED BY menus.id_menu;


--
-- TOC entry 2556 (class 0 OID 0)
-- Dependencies: 216
-- Name: menus_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('menus_id_menu_seq', 40, true);


--
-- TOC entry 217 (class 1259 OID 17898)
-- Dependencies: 580 575 581 6 575
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
-- TOC entry 218 (class 1259 OID 17904)
-- Dependencies: 6 217
-- Name: municipios_id_municipio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE municipios_id_municipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipios_id_municipio_seq OWNER TO postgres;

--
-- TOC entry 2557 (class 0 OID 0)
-- Dependencies: 218
-- Name: municipios_id_municipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipios_id_municipio_seq OWNED BY municipios.id_municipio;


--
-- TOC entry 2558 (class 0 OID 0)
-- Dependencies: 218
-- Name: municipios_id_municipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipios_id_municipio_seq', 1, true);


--
-- TOC entry 219 (class 1259 OID 17906)
-- Dependencies: 185 6
-- Name: niveles_fromacion_id_nivel_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE niveles_fromacion_id_nivel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.niveles_fromacion_id_nivel_seq OWNER TO postgres;

--
-- TOC entry 2559 (class 0 OID 0)
-- Dependencies: 219
-- Name: niveles_fromacion_id_nivel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE niveles_fromacion_id_nivel_seq OWNED BY emp_niveles_formaciones.id_nivel_formacion;


--
-- TOC entry 2560 (class 0 OID 0)
-- Dependencies: 219
-- Name: niveles_fromacion_id_nivel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('niveles_fromacion_id_nivel_seq', 10, true);


--
-- TOC entry 220 (class 1259 OID 17908)
-- Dependencies: 2259 575 581 580 6 575
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
-- TOC entry 221 (class 1259 OID 17915)
-- Dependencies: 6 220
-- Name: paises_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE paises_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paises_id_pais_seq OWNER TO postgres;

--
-- TOC entry 2561 (class 0 OID 0)
-- Dependencies: 221
-- Name: paises_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE paises_id_pais_seq OWNED BY paises.id_pais;


--
-- TOC entry 2562 (class 0 OID 0)
-- Dependencies: 221
-- Name: paises_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('paises_id_pais_seq', 19, true);


--
-- TOC entry 222 (class 1259 OID 17917)
-- Dependencies: 2261 2262 591 6 580 573 573 573 571 575 575 581 591 571 591 591 591 591 590 577 591
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
-- TOC entry 2563 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN personas.id_sexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN personas.id_sexo IS 'M=Masculino, F=Femenino';


--
-- TOC entry 223 (class 1259 OID 17925)
-- Dependencies: 222 6
-- Name: persona_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE persona_id_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_id_persona_seq OWNER TO postgres;

--
-- TOC entry 2564 (class 0 OID 0)
-- Dependencies: 223
-- Name: persona_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE persona_id_persona_seq OWNED BY personas.id_persona;


--
-- TOC entry 2565 (class 0 OID 0)
-- Dependencies: 223
-- Name: persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_id_persona_seq', 21, true);


--
-- TOC entry 224 (class 1259 OID 17927)
-- Dependencies: 190 6
-- Name: productos_empresa_id_prod_empr_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE productos_empresa_id_prod_empr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_empresa_id_prod_empr_seq OWNER TO postgres;

--
-- TOC entry 2566 (class 0 OID 0)
-- Dependencies: 224
-- Name: productos_empresa_id_prod_empr_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE productos_empresa_id_prod_empr_seq OWNED BY emp_productos_empresas.id_prod_empr;


--
-- TOC entry 2567 (class 0 OID 0)
-- Dependencies: 224
-- Name: productos_empresa_id_prod_empr_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_empresa_id_prod_empr_seq', 1, false);


--
-- TOC entry 225 (class 1259 OID 17929)
-- Dependencies: 189 6
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE productos_id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_producto_seq OWNER TO postgres;

--
-- TOC entry 2568 (class 0 OID 0)
-- Dependencies: 225
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE productos_id_producto_seq OWNED BY emp_productos.id_producto;


--
-- TOC entry 2569 (class 0 OID 0)
-- Dependencies: 225
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_id_producto_seq', 1, false);


--
-- TOC entry 226 (class 1259 OID 17931)
-- Dependencies: 2264 6 580 581 575 575
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
-- TOC entry 227 (class 1259 OID 17938)
-- Dependencies: 226 6
-- Name: provincias_id_proivincia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE provincias_id_proivincia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provincias_id_proivincia_seq OWNER TO postgres;

--
-- TOC entry 2570 (class 0 OID 0)
-- Dependencies: 227
-- Name: provincias_id_proivincia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE provincias_id_proivincia_seq OWNED BY provincias.id_provincia;


--
-- TOC entry 2571 (class 0 OID 0)
-- Dependencies: 227
-- Name: provincias_id_proivincia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('provincias_id_proivincia_seq', 1, true);


--
-- TOC entry 228 (class 1259 OID 17940)
-- Dependencies: 6 167
-- Name: prs_departamentos_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prs_departamentos_id_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prs_departamentos_id_departamento_seq OWNER TO postgres;

--
-- TOC entry 2572 (class 0 OID 0)
-- Dependencies: 228
-- Name: prs_departamentos_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prs_departamentos_id_departamento_seq OWNED BY departamentos.id_departamento;


--
-- TOC entry 2573 (class 0 OID 0)
-- Dependencies: 228
-- Name: prs_departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_departamentos_id_departamento_seq', 7, true);


--
-- TOC entry 229 (class 1259 OID 17942)
-- Dependencies: 2266 2267 575 6 580 575
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
-- TOC entry 230 (class 1259 OID 17950)
-- Dependencies: 6
-- Name: prs_identificaciones_id_idenficacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prs_identificaciones_id_idenficacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.prs_identificaciones_id_idenficacion_seq OWNER TO postgres;

--
-- TOC entry 2574 (class 0 OID 0)
-- Dependencies: 230
-- Name: prs_identificaciones_id_idenficacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_identificaciones_id_idenficacion_seq', 22, true);


--
-- TOC entry 231 (class 1259 OID 17952)
-- Dependencies: 6 214
-- Name: prs_localidad_id_localidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prs_localidad_id_localidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prs_localidad_id_localidad_seq OWNER TO postgres;

--
-- TOC entry 2575 (class 0 OID 0)
-- Dependencies: 231
-- Name: prs_localidad_id_localidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prs_localidad_id_localidad_seq OWNED BY localidades.id_localidad;


--
-- TOC entry 2576 (class 0 OID 0)
-- Dependencies: 231
-- Name: prs_localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_localidad_id_localidad_seq', 1, true);


--
-- TOC entry 232 (class 1259 OID 17954)
-- Dependencies: 2268 581 6 575 580 575
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
-- TOC entry 233 (class 1259 OID 17961)
-- Dependencies: 6 232
-- Name: roles_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_rol_seq OWNER TO postgres;

--
-- TOC entry 2577 (class 0 OID 0)
-- Dependencies: 233
-- Name: roles_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_rol_seq OWNED BY roles.id_rol;


--
-- TOC entry 2578 (class 0 OID 0)
-- Dependencies: 233
-- Name: roles_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_rol_seq', 6, true);


--
-- TOC entry 234 (class 1259 OID 17963)
-- Dependencies: 196 6
-- Name: rubros_empresa_id_rubro_empresa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rubros_empresa_id_rubro_empresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rubros_empresa_id_rubro_empresa_seq OWNER TO postgres;

--
-- TOC entry 2579 (class 0 OID 0)
-- Dependencies: 234
-- Name: rubros_empresa_id_rubro_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rubros_empresa_id_rubro_empresa_seq OWNED BY emp_rubros_empresas.id_rubro_empresa;


--
-- TOC entry 2580 (class 0 OID 0)
-- Dependencies: 234
-- Name: rubros_empresa_id_rubro_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rubros_empresa_id_rubro_empresa_seq', 1, false);


--
-- TOC entry 235 (class 1259 OID 17965)
-- Dependencies: 6 195
-- Name: rubros_id_rubro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rubros_id_rubro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rubros_id_rubro_seq OWNER TO postgres;

--
-- TOC entry 2581 (class 0 OID 0)
-- Dependencies: 235
-- Name: rubros_id_rubro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rubros_id_rubro_seq OWNED BY emp_rubros.id_rubro;


--
-- TOC entry 2582 (class 0 OID 0)
-- Dependencies: 235
-- Name: rubros_id_rubro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rubros_id_rubro_seq', 1, false);


--
-- TOC entry 236 (class 1259 OID 17967)
-- Dependencies: 198 6
-- Name: servicios_empresa_id_serv_emp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE servicios_empresa_id_serv_emp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicios_empresa_id_serv_emp_seq OWNER TO postgres;

--
-- TOC entry 2583 (class 0 OID 0)
-- Dependencies: 236
-- Name: servicios_empresa_id_serv_emp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE servicios_empresa_id_serv_emp_seq OWNED BY emp_servicios_empresas.id_serv_emp;


--
-- TOC entry 2584 (class 0 OID 0)
-- Dependencies: 236
-- Name: servicios_empresa_id_serv_emp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('servicios_empresa_id_serv_emp_seq', 1, false);


--
-- TOC entry 237 (class 1259 OID 17969)
-- Dependencies: 197 6
-- Name: servicios_id_servicio _seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "servicios_id_servicio _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."servicios_id_servicio _seq" OWNER TO postgres;

--
-- TOC entry 2585 (class 0 OID 0)
-- Dependencies: 237
-- Name: servicios_id_servicio _seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "servicios_id_servicio _seq" OWNED BY emp_servicios."id_servicio ";


--
-- TOC entry 2586 (class 0 OID 0)
-- Dependencies: 237
-- Name: servicios_id_servicio _seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"servicios_id_servicio _seq"', 1, false);


--
-- TOC entry 238 (class 1259 OID 17971)
-- Dependencies: 6 201
-- Name: tipo_competencias_id_tipo_competencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_competencias_id_tipo_competencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_competencias_id_tipo_competencia_seq OWNER TO postgres;

--
-- TOC entry 2587 (class 0 OID 0)
-- Dependencies: 238
-- Name: tipo_competencias_id_tipo_competencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_competencias_id_tipo_competencia_seq OWNED BY emp_tipo_competencias.id_tipo_competencia;


--
-- TOC entry 2588 (class 0 OID 0)
-- Dependencies: 238
-- Name: tipo_competencias_id_tipo_competencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_competencias_id_tipo_competencia_seq', 2, true);


--
-- TOC entry 239 (class 1259 OID 17973)
-- Dependencies: 6 202
-- Name: tipo_establecimiento_id_tipo_establecimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_establecimiento_id_tipo_establecimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_establecimiento_id_tipo_establecimiento_seq OWNER TO postgres;

--
-- TOC entry 2589 (class 0 OID 0)
-- Dependencies: 239
-- Name: tipo_establecimiento_id_tipo_establecimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_establecimiento_id_tipo_establecimiento_seq OWNED BY emp_tipo_establecimientos.id_tipo_establecimiento;


--
-- TOC entry 2590 (class 0 OID 0)
-- Dependencies: 239
-- Name: tipo_establecimiento_id_tipo_establecimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_establecimiento_id_tipo_establecimiento_seq', 3, true);


--
-- TOC entry 240 (class 1259 OID 17975)
-- Dependencies: 6 203
-- Name: tipo_formulario_id_tipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_formulario_id_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_formulario_id_tipo_seq OWNER TO postgres;

--
-- TOC entry 2591 (class 0 OID 0)
-- Dependencies: 240
-- Name: tipo_formulario_id_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_formulario_id_tipo_seq OWNED BY emp_tipos_formularios.id_tipo;


--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 240
-- Name: tipo_formulario_id_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_formulario_id_tipo_seq', 2, true);


--
-- TOC entry 241 (class 1259 OID 17977)
-- Dependencies: 2270 575 581 575 6 580
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
-- TOC entry 242 (class 1259 OID 17984)
-- Dependencies: 2271 580 581 6 575 575
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
-- TOC entry 243 (class 1259 OID 17991)
-- Dependencies: 242 6
-- Name: usr_roles_id_usr_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usr_roles_id_usr_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usr_roles_id_usr_rol_seq OWNER TO postgres;

--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 243
-- Name: usr_roles_id_usr_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usr_roles_id_usr_rol_seq OWNED BY usr_roles.id_usr_rol;


--
-- TOC entry 2594 (class 0 OID 0)
-- Dependencies: 243
-- Name: usr_roles_id_usr_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usr_roles_id_usr_rol_seq', 11, true);


--
-- TOC entry 244 (class 1259 OID 17993)
-- Dependencies: 2273 580 575 575 591 590 6 591 571
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
-- TOC entry 245 (class 1259 OID 18000)
-- Dependencies: 6 244
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2595 (class 0 OID 0)
-- Dependencies: 245
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_id_usuario_seq OWNED BY usuarios.id_usuario;


--
-- TOC entry 2596 (class 0 OID 0)
-- Dependencies: 245
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_usuario_seq', 22, true);


--
-- TOC entry 246 (class 1259 OID 18002)
-- Dependencies: 2184 591 6 591 571 591 591 591 591 577 591 591 590 591 590
-- Name: vusuario_persona; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW vusuario_persona AS
    SELECT u.id_usuario, u.usuario, u.password, u.recordatorio, p.id_persona, p.nombres, p.paterno, p.materno, p.fec_nacimiento, p.telefono, p.celular, p.correo, p.fax, p.id_identificacion, p.direccion FROM usuarios u, personas p WHERE ((u.id_persona)::integer = p.id_persona);


ALTER TABLE public.vusuario_persona OWNER TO postgres;

--
-- TOC entry 2189 (class 2604 OID 18006)
-- Dependencies: 164 163
-- Name: id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categorias_enlaces ALTER COLUMN id_categoria SET DEFAULT nextval('categorias_enlaces_id_categoria_seq'::regclass);


--
-- TOC entry 2193 (class 2604 OID 18007)
-- Dependencies: 228 167
-- Name: id_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('prs_departamentos_id_departamento_seq'::regclass);


--
-- TOC entry 2186 (class 2604 OID 18008)
-- Dependencies: 162 161
-- Name: id_cargo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_cargos ALTER COLUMN id_cargo SET DEFAULT nextval('cargos_id_cargo_seq'::regclass);


--
-- TOC entry 2191 (class 2604 OID 18009)
-- Dependencies: 166 165
-- Name: id_curso_capacitacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_cursos_capacitaciones ALTER COLUMN id_curso_capacitacion SET DEFAULT nextval('cursos_capacitaciones_id_curso_capacitacion_seq'::regclass);


--
-- TOC entry 2198 (class 2604 OID 18010)
-- Dependencies: 206 171
-- Name: id_empleador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleadores ALTER COLUMN id_empleador SET DEFAULT nextval('empleador_id_empleador_seq'::regclass);


--
-- TOC entry 2201 (class 2604 OID 18011)
-- Dependencies: 205 172
-- Name: id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados ALTER COLUMN id_empleado SET DEFAULT nextval('empleado_id_empleado_seq'::regclass);


--
-- TOC entry 2204 (class 2604 OID 18012)
-- Dependencies: 207 174
-- Name: id_empresa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empresas ALTER COLUMN id_empresa SET DEFAULT nextval('empresa_id_empresa_seq'::regclass);


--
-- TOC entry 2206 (class 2604 OID 18013)
-- Dependencies: 210 175
-- Name: id_establecimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_establecimientos ALTER COLUMN id_establecimiento SET DEFAULT nextval('establecimientos_id_establecimiento_seq'::regclass);


--
-- TOC entry 2210 (class 2604 OID 18014)
-- Dependencies: 211 178
-- Name: id_formulario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios ALTER COLUMN id_formulario SET DEFAULT nextval('formularioregistro_id_formulario_seq'::regclass);


--
-- TOC entry 2211 (class 2604 OID 18015)
-- Dependencies: 179 178
-- Name: nro_formulario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios ALTER COLUMN nro_formulario SET DEFAULT nextval('emp_formularios_nro_formulario_seq'::regclass);


--
-- TOC entry 2217 (class 2604 OID 18016)
-- Dependencies: 212 184
-- Name: id_institucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_instituciones ALTER COLUMN id_institucion SET DEFAULT nextval('instituciones_id_institucion_seq'::regclass);


--
-- TOC entry 2219 (class 2604 OID 18017)
-- Dependencies: 219 185
-- Name: id_nivel_formacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_niveles_formaciones ALTER COLUMN id_nivel_formacion SET DEFAULT nextval('niveles_fromacion_id_nivel_seq'::regclass);


--
-- TOC entry 2222 (class 2604 OID 18018)
-- Dependencies: 187 186
-- Name: id_oferta_laboral; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_laborales ALTER COLUMN id_oferta_laboral SET DEFAULT nextval('emp_ofertas_laborales_id_oferta_laboral_seq'::regclass);


--
-- TOC entry 2225 (class 2604 OID 18019)
-- Dependencies: 225 189
-- Name: id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos ALTER COLUMN id_producto SET DEFAULT nextval('productos_id_producto_seq'::regclass);


--
-- TOC entry 2227 (class 2604 OID 18020)
-- Dependencies: 224 190
-- Name: id_prod_empr; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas ALTER COLUMN id_prod_empr SET DEFAULT nextval('productos_empresa_id_prod_empr_seq'::regclass);


--
-- TOC entry 2230 (class 2604 OID 18021)
-- Dependencies: 194 191
-- Name: id_reunion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones ALTER COLUMN id_reunion SET DEFAULT nextval('emp_reuniones_id_reunion_seq'::regclass);


--
-- TOC entry 2232 (class 2604 OID 18022)
-- Dependencies: 235 195
-- Name: id_rubro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros ALTER COLUMN id_rubro SET DEFAULT nextval('rubros_id_rubro_seq'::regclass);


--
-- TOC entry 2234 (class 2604 OID 18023)
-- Dependencies: 234 196
-- Name: id_rubro_empresa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros_empresas ALTER COLUMN id_rubro_empresa SET DEFAULT nextval('rubros_empresa_id_rubro_empresa_seq'::regclass);


--
-- TOC entry 2236 (class 2604 OID 18024)
-- Dependencies: 237 197
-- Name: id_servicio ; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios ALTER COLUMN "id_servicio " SET DEFAULT nextval('"servicios_id_servicio _seq"'::regclass);


--
-- TOC entry 2239 (class 2604 OID 18025)
-- Dependencies: 236 198
-- Name: id_serv_emp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas ALTER COLUMN id_serv_emp SET DEFAULT nextval('servicios_empresa_id_serv_emp_seq'::regclass);


--
-- TOC entry 2245 (class 2604 OID 18026)
-- Dependencies: 238 201
-- Name: id_tipo_competencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipo_competencias ALTER COLUMN id_tipo_competencia SET DEFAULT nextval('tipo_competencias_id_tipo_competencia_seq'::regclass);


--
-- TOC entry 2247 (class 2604 OID 18027)
-- Dependencies: 239 202
-- Name: id_tipo_establecimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipo_establecimientos ALTER COLUMN id_tipo_establecimiento SET DEFAULT nextval('tipo_establecimiento_id_tipo_establecimiento_seq'::regclass);


--
-- TOC entry 2249 (class 2604 OID 18028)
-- Dependencies: 240 203
-- Name: id_tipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipos_formularios ALTER COLUMN id_tipo SET DEFAULT nextval('tipo_formulario_id_tipo_seq'::regclass);


--
-- TOC entry 2253 (class 2604 OID 18029)
-- Dependencies: 209 208
-- Name: id_enlace; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY enlaces ALTER COLUMN id_enlace SET DEFAULT nextval('enlaces_id_enlace_seq'::regclass);


--
-- TOC entry 2255 (class 2604 OID 18030)
-- Dependencies: 231 214
-- Name: id_localidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY localidades ALTER COLUMN id_localidad SET DEFAULT nextval('prs_localidad_id_localidad_seq'::regclass);


--
-- TOC entry 2257 (class 2604 OID 18031)
-- Dependencies: 216 215
-- Name: id_menu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menus ALTER COLUMN id_menu SET DEFAULT nextval('menus_id_menu_seq'::regclass);


--
-- TOC entry 2258 (class 2604 OID 18032)
-- Dependencies: 218 217
-- Name: id_municipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipios ALTER COLUMN id_municipio SET DEFAULT nextval('municipios_id_municipio_seq'::regclass);


--
-- TOC entry 2260 (class 2604 OID 18033)
-- Dependencies: 221 220
-- Name: id_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paises ALTER COLUMN id_pais SET DEFAULT nextval('paises_id_pais_seq'::regclass);


--
-- TOC entry 2263 (class 2604 OID 18034)
-- Dependencies: 223 222
-- Name: id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas ALTER COLUMN id_persona SET DEFAULT nextval('persona_id_persona_seq'::regclass);


--
-- TOC entry 2265 (class 2604 OID 18035)
-- Dependencies: 227 226
-- Name: id_provincia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provincias ALTER COLUMN id_provincia SET DEFAULT nextval('provincias_id_proivincia_seq'::regclass);


--
-- TOC entry 2269 (class 2604 OID 18036)
-- Dependencies: 233 232
-- Name: id_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles ALTER COLUMN id_rol SET DEFAULT nextval('roles_id_rol_seq'::regclass);


--
-- TOC entry 2272 (class 2604 OID 18037)
-- Dependencies: 243 242
-- Name: id_usr_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usr_roles ALTER COLUMN id_usr_rol SET DEFAULT nextval('usr_roles_id_usr_rol_seq'::regclass);


--
-- TOC entry 2274 (class 2604 OID 18038)
-- Dependencies: 245 244
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 2468 (class 0 OID 17592)
-- Dependencies: 163
-- Data for Name: categorias_enlaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categorias_enlaces (id_categoria, categoria_enlace, orden, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	ADMINISTRACION	1	A	2012-07-02 22:31:06.838	2012-07-02 22:31:06.838	1
4	GESTION SISTEMA	2	A	2012-07-23 18:23:27.386	2012-07-23 18:23:27.386	1
2	FORMULARIOS	3	A	2012-07-23 18:21:46.022	2012-07-23 18:21:46.022	1
3	REPORTES	4	X	2012-07-23 18:22:48.674	2012-07-23 18:22:48.674	1
\.


--
-- TOC entry 2470 (class 0 OID 17611)
-- Dependencies: 167
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
-- TOC entry 2467 (class 0 OID 17583)
-- Dependencies: 161
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
15	adiestrador de perros	2012-07-22 19:16:34.315	X	2012-07-22 19:16:34.315	1
\.


--
-- TOC entry 2471 (class 0 OID 17618)
-- Dependencies: 168
-- Data for Name: emp_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_competencias (id_competencia, competencia, id_tipo_competencia, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
2	Manejo de Office	1	2012-07-06 12:09:58.994	2012-07-06 12:09:58.994	A	1
1	Cooperativismo	2	2012-07-06 12:02:15.863	2012-07-06 12:02:15.863	X	1
3	manejo de excel	\N	2012-07-16 20:26:28.301	2012-07-16 20:26:28.301	A	1
4	Cooperativismo	\N	2012-07-23 19:50:21.71	2012-07-23 19:50:21.71	A	1
\.


--
-- TOC entry 2469 (class 0 OID 17602)
-- Dependencies: 165
-- Data for Name: emp_cursos_capacitaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_cursos_capacitaciones (id_curso_capacitacion, curso_capacitacion, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	Manejo de Paquetes de Contabilidad	2012-07-13 10:43:26.236	2012-07-13 10:43:26.236	A	1
2	Actualizaciones de Impuestos	2012-07-13 10:43:52.522	2012-07-13 10:43:52.522	A	1
3	Actualización Contable	2012-07-13 10:53:48.088	2012-07-13 10:53:48.088	A	1
\.


--
-- TOC entry 2472 (class 0 OID 17628)
-- Dependencies: 170
-- Data for Name: emp_detalles_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_detalles_competencias (id_empleado, id_competencia, fecha, id_institucion, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
14	2	1976-02-12	2	A	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	1
15	3	1993-02-25	1	A	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	1
\.


--
-- TOC entry 2473 (class 0 OID 17635)
-- Dependencies: 171
-- Data for Name: emp_empleadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_empleadores (id_empleador, firma, id_persona, id_empresa, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2474 (class 0 OID 17642)
-- Dependencies: 172
-- Data for Name: emp_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_empleados (id_empleado, firma, id_persona, nit, estado, fec_registro, fec_modificacion, ult_usuario, foto, pagina_web, estado_laboral) FROM stdin;
14	\N	19	83298374	A	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	1		www.jui.com	ST
15	\N	20	5006968010	A	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	1			ST
\.


--
-- TOC entry 2475 (class 0 OID 17650)
-- Dependencies: 173
-- Data for Name: emp_empleados_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_empleados_empresas (id_empleado, id_empresa, id_cargo, id_nivel_frm, salario, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2476 (class 0 OID 17657)
-- Dependencies: 174
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
-- TOC entry 2477 (class 0 OID 17664)
-- Dependencies: 175
-- Data for Name: emp_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_establecimientos (id_establecimiento, establecimiento, sigla, fec_registro, estado, id_tipo_est, fec_modificacion, ult_usuario) FROM stdin;
1	Colegio Santa Ana	Santa Ana	2012-07-06 17:29:26.193	A	3	2012-07-06 17:29:26.193	1
2	Universidad Juan Misael Saracho	UAJMS	2012-07-06 17:30:34.511	A	2	2012-07-06 17:30:34.511	1
3	Colegio Nacional San Luis	CNSL	2012-07-06 17:31:47.419	A	3	2012-07-06 17:31:47.419	1
4	Universidad Catolica Bolivia	UCB	2012-07-06 17:32:52.876	A	2	2012-07-06 17:32:52.876	1
5	Colegio Eustaquío Mendez	CEM	2012-07-06 17:36:05.544	A	3	2012-07-06 17:36:05.544	1
47	Escuela de Manejo	\N	2012-07-16 20:25:09.353	A	\N	2012-07-16 20:25:09.353	1
48	LIceo Tarija	\N	2012-07-17 01:25:55.08	A	\N	2012-07-17 01:25:55.08	1
49	Instituto Tarija	\N	2012-07-17 01:26:36.85	A	\N	2012-07-17 01:26:36.85	1
50	IPC Pascal	\N	2012-07-17 01:27:53.852	A	\N	2012-07-17 01:27:53.852	1
51	Catec Tarija	\N	2012-07-22 19:10:19.728	A	\N	2012-07-22 19:10:19.728	1
43	Colegio de la conchinchina		2012-07-13 12:10:29.538	X	3	2012-07-13 12:10:29.538	1
44	Colegio de las marianas	COLMAR	2012-07-13 12:14:36.192	A	3	2012-07-13 12:14:36.192	1
\.


--
-- TOC entry 2478 (class 0 OID 17671)
-- Dependencies: 176
-- Data for Name: emp_estudios_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_estudios_empleados (id_empleado, id_nivel_frm, id_establecimiento, titulo_obtenido, tiempo_estudio, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
14	5	4	Doctorado en Robotica	5 años	2012-07-23 19:36:36.549	A	2012-07-23 19:36:36.549	1
14	2	5	Bachiller en humanidades	4 años	2012-07-23 19:36:36.549	A	2012-07-23 19:36:36.549	1
15	1	1			2012-07-23 19:51:40.501	A	2012-07-23 19:51:40.501	1
15	2	1	Bachiller en humanidades	4 años	2012-07-23 19:51:40.501	A	2012-07-23 19:51:40.501	1
15	5	2	Lic. Contaduria Publica	5 años	2012-07-23 19:51:40.501	A	2012-07-23 19:51:40.501	1
15	6	2	Postgrado en Pedagogia	6 meses	2012-07-23 19:51:40.501	A	2012-07-23 19:51:40.501	1
\.


--
-- TOC entry 2479 (class 0 OID 17678)
-- Dependencies: 177
-- Data for Name: emp_experiencias_laborales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_experiencias_laborales (id_empleado, id_empresa, id_cargo, tiempo_trabajo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
14	\N	8	4	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1
14	\N	14	1	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1
15	\N	5	9	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
15	\N	10	1	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
15	\N	4	1	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
\.


--
-- TOC entry 2480 (class 0 OID 17685)
-- Dependencies: 178
-- Data for Name: emp_formularios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_formularios (id_formulario, gestion, fec_registro, fec_modificacion, estado, id_tipo, id_persona, observacion, ult_usuario, nro_formulario, serie, req_contratacion) FROM stdin;
1	2012	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1	19	este formulario no tiene ninguna observacion	1	1	FF-PE-02/2012	\N
2	2012	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1	20	ninguna informacion extraa	1	2	FF-PE-02/2012	\N
\.


--
-- TOC entry 2481 (class 0 OID 17694)
-- Dependencies: 180
-- Data for Name: emp_frm_cargos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_cargos (id_formulario, id_cargo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	11	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1
1	13	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1
2	10	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
\.


--
-- TOC entry 2482 (class 0 OID 17701)
-- Dependencies: 181
-- Data for Name: emp_frm_cursos_capacitaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_cursos_capacitaciones (id_curso_capacitacion, id_formulario, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
3	1	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1
2	2	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
3	2	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
\.


--
-- TOC entry 2483 (class 0 OID 17708)
-- Dependencies: 182
-- Data for Name: emp_frm_niveles_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_niveles_establecimientos (id_nivel_formacion, id_establecimiento, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2484 (class 0 OID 17715)
-- Dependencies: 183
-- Data for Name: emp_frm_titulos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_frm_titulos (id_formulario, id_titulo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2485 (class 0 OID 17722)
-- Dependencies: 184
-- Data for Name: emp_instituciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_instituciones (id_institucion, institucion, sigla, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	Ministerio de Trabajo	MinTra	2012-07-06 12:28:09.571	2012-07-06 12:28:09.571	A	1
2	intituto cca	\N	2012-07-16 20:26:36.529	2012-07-16 20:26:36.529	A	1
\.


--
-- TOC entry 2486 (class 0 OID 17729)
-- Dependencies: 185
-- Data for Name: emp_niveles_formaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
5	Universidad	2012-07-06 16:54:08.784	A	2012-07-06 16:54:08.784	1
6	Post Grado	2012-07-06 16:55:09.795	A	2012-07-06 16:55:09.795	1
9	Doctorado	2012-07-06 16:56:03.717	A	2012-07-06 16:56:03.717	1
10	Otros	2012-07-06 16:56:10.82	A	2012-07-06 16:56:10.82	1
8	Maestria	2012-07-06 16:55:50.542	A	2012-07-06 16:55:50.542	1
1	Primaria	2012-07-06 16:53:14.112	A	2012-07-06 16:53:14.112	1
4	Tecnico	2012-07-06 16:54:01.76	A	2012-07-06 16:54:01.76	1
2	Secundaria	2012-07-06 16:53:51.055	X	2012-07-06 16:53:51.055	1
\.


--
-- TOC entry 2487 (class 0 OID 17736)
-- Dependencies: 186
-- Data for Name: emp_ofertas_laborales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_ofertas_laborales (id_oferta_laboral, ofeta_laboral, detalle, vigente, sueldo, id_empleador, estado, fec_registro, fec_modificacion, ult_usuario, fecha_fin) FROM stdin;
\.


--
-- TOC entry 2488 (class 0 OID 17746)
-- Dependencies: 188
-- Data for Name: emp_ofertas_rubros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_ofertas_rubros (id_oferta_laboral, id_rubro, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2489 (class 0 OID 17753)
-- Dependencies: 189
-- Data for Name: emp_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_productos (id_producto, producto, fec_registro, detalle, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2490 (class 0 OID 17760)
-- Dependencies: 190
-- Data for Name: emp_productos_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_productos_empresas (id_producto, id_empresa, fec_registro, estado, id_prod_empr, id_rubro, cantidad, gestion, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2491 (class 0 OID 17767)
-- Dependencies: 191
-- Data for Name: emp_reuniones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_reuniones (id_reunion, reunion, detalle, fecha_reunion, fec_registro, fec_modificacion, estado, vigente, id_persona, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2492 (class 0 OID 17775)
-- Dependencies: 192
-- Data for Name: emp_reuniones_empleadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_reuniones_empleadores (id_reunion, id_empleador, observacion, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2493 (class 0 OID 17781)
-- Dependencies: 193
-- Data for Name: emp_reuniones_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_reuniones_empleados (id_empleado, id_reunion, observacion, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2494 (class 0 OID 17789)
-- Dependencies: 195
-- Data for Name: emp_rubros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_rubros (id_rubro, rubro, sigla, fec_registro, fec_modificacion, ult_usuario, estado) FROM stdin;
\.


--
-- TOC entry 2495 (class 0 OID 17796)
-- Dependencies: 196
-- Data for Name: emp_rubros_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_rubros_empresas (id_rubro, id_empresa, id_rubro_empresa, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2496 (class 0 OID 17803)
-- Dependencies: 197
-- Data for Name: emp_servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_servicios ("id_servicio ", servicio, fecha_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2497 (class 0 OID 17810)
-- Dependencies: 198
-- Data for Name: emp_servicios_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_servicios_empresas (id_empresa, id_servicio, fecha_registro, estado, id_serv_emp, id_rubro, cantidad, gestion, fec_modificacion, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2498 (class 0 OID 17818)
-- Dependencies: 199
-- Data for Name: emp_sucursales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_sucursales (id_sucursal, sucursal, direccion, nro_fundo_empresa, nro_codeco, telefono, celular, fax, email, pagina_web, nro_empleados, fecha_inicio_empresa, tipo_sucursal, id_empresa, fec_registro, fec_modificacion, ult_usuario, estado, id_pais, id_departamento, id_provincia, id_localidad, id_municipio) FROM stdin;
3	SinapSysIT	Barrio Morros Blancos	53	43	66-45655	76188392		webtarija@gmail.com	www.sinapsysit.com	32	2007-07-12	1	6	2012-07-06 10:56:19.574	2012-07-06 10:56:19.574	1	X	1	2	1	1	1
4	Prometa	Barrio Las panosas	773892	33234	78944564				www.prometa.org	3	1984-07-10	1	9	2012-07-12 16:31:07.512	2012-07-12 16:31:07.512	1	A	1	1	1	1	1
5	Fundación Fautapo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	10	2012-07-13 13:23:23.192	2012-07-13 13:23:23.192	1	A	1	\N	\N	\N	\N
6	Catec	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	11	2012-07-16 20:25:49.372	2012-07-16 20:25:49.372	1	A	1	\N	\N	\N	\N
8	Punto entel	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	13	2012-07-16 21:13:51.239	2012-07-16 21:13:51.239	1	A	1	\N	\N	\N	\N
9	Agengia de Cigarrillos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	14	2012-07-16 21:14:15.133	2012-07-16 21:14:15.133	1	A	1	\N	\N	\N	\N
7	Inmobiliaria financiera El Progreso	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	12	2012-07-16 21:13:11.791	2012-07-16 21:13:11.791	1	A	1	\N	\N	\N	\N
10	Satelite	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	15	2012-07-17 01:28:42.708	2012-07-17 01:28:42.708	1	A	1	\N	\N	\N	\N
11	Hospital San Juan de Dios	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	16	2012-07-17 01:29:42.191	2012-07-17 01:29:42.191	1	A	1	\N	\N	\N	\N
2	adfa	adfa			22333					323	2012-07-17	1	5	2012-07-06 10:39:56.817	2012-07-06 10:39:56.817	1	X	1	1	1	1	1
12	nuevito	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	17	2012-07-22 19:11:05.731	2012-07-22 19:11:05.731	1	X	1	\N	\N	\N	\N
\.


--
-- TOC entry 2499 (class 0 OID 17830)
-- Dependencies: 201
-- Data for Name: emp_tipo_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_tipo_competencias (id_tipo_competencia, tipo_competencia, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
1	cursos	2012-07-06 11:59:06.28	A	2012-07-06 11:59:06.28	1
2	habilidades	2012-07-06 11:59:17.272	A	2012-07-06 11:59:17.272	1
\.


--
-- TOC entry 2500 (class 0 OID 17837)
-- Dependencies: 202
-- Data for Name: emp_tipo_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_tipo_establecimientos (id_tipo_establecimiento, tipo_establecimiento, fec_registro, estado, fec_modificacion, ult_usuario) FROM stdin;
1	Instituto	2012-07-06 17:11:13.502	A	2012-07-06 17:11:13.502	1
2	Universidad	2012-07-06 17:11:30.988	A	2012-07-06 17:11:30.988	1
3	Colegio	2012-07-06 17:29:07.107	A	2012-07-06 17:29:07.107	1
\.


--
-- TOC entry 2501 (class 0 OID 17844)
-- Dependencies: 203
-- Data for Name: emp_tipos_formularios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_tipos_formularios (id_tipo, tipo_formulario, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	Empleado	2012-07-17 00:55:30.873	2012-07-17 00:55:30.873	A	1
2	Empleador	2012-07-17 00:55:49.244	2012-07-17 00:55:49.244	A	1
\.


--
-- TOC entry 2502 (class 0 OID 17851)
-- Dependencies: 204
-- Data for Name: emp_titulos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp_titulos (id_titulo, titulo, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
\.


--
-- TOC entry 2503 (class 0 OID 17864)
-- Dependencies: 208
-- Data for Name: enlaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) FROM stdin;
2	Gestión de Estamecimientos	A	2012-07-23 18:06:53.812	2012-07-23 18:06:53.812	1	establecimientos/abm	1	1	0
3	Gestion Tipo de Est.	A	2012-07-23 18:07:41.78	2012-07-23 18:07:41.78	1	tipo_establecimientos/abm	1	1	0
5	Cargos	A	2012-07-23 18:09:10.546	2012-07-23 18:09:10.546	1	cargos/abm	1	1	0
6	Competencias	A	2012-07-23 18:09:38.376	2012-07-23 18:09:38.376	1	competencias/abm	1	1	0
7	Tipo de Competencias	A	2012-07-23 18:10:00.481	2012-07-23 18:10:00.481	1	tipo_competencias/abm	1	1	0
8	Tipo de Formularios	A	2012-07-23 18:10:27.189	2012-07-23 18:10:27.189	1	tipo_formularios/abm	1	1	0
9	Empresas	A	2012-07-23 18:10:51.697	2012-07-23 18:10:51.697	1	empresas/abm	1	1	0
10	Instituciones	A	2012-07-23 18:11:17.779	2012-07-23 18:11:17.779	1	instituciones/abm	1	1	0
11	Paises	A	2012-07-23 18:11:44.394	2012-07-23 18:11:44.394	1	paises/abm	1	1	0
14	Cursos de Capacitación	A	2012-07-23 18:17:58.754	2012-07-23 18:17:58.754	1	cursos_capacitaciones/abm	1	1	0
15	Personas	A	2012-07-23 18:18:36.198	2012-07-23 18:18:36.198	1	personas/abm	1	1	0
4	Niveles de Formación	A	2012-07-23 18:08:45.037	2012-07-03 00:00:00	1	niveles/abm	1	1	0
18	F. Empleados 	A	2012-07-23 18:42:20.71	2012-07-23 18:42:20.71	1	empleados/registro	1	2	0
12	Roles del Sistema	A	2012-07-23 18:12:07.413	2012-07-23 18:12:07.413	1	roles/abm	1	4	0
13	Enlaces del Sistema	A	2012-07-23 18:13:49.443	2012-07-23 18:13:49.443	1	enlaces/abm	1	4	0
19	Categoria de Enlaces	A	2012-07-24 16:35:11.643	2012-07-24 16:35:11.643	1	categoria_enlaces/abm	1	4	0
16	Listar Usuarios	A	2012-07-23 18:19:30.976	2012-07-23 18:19:30.976	1	usuarios	1	4	0
1	Gestion enlaces	X	2012-07-22 20:59:26.077	2012-07-22 20:59:26.077	1	enlaces/abm	1	4	0
\.


--
-- TOC entry 2504 (class 0 OID 17882)
-- Dependencies: 214
-- Data for Name: localidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY localidades (id_localidad, localidad, estado, id_provincia, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	Murillo	A	1	2012-07-02 21:24:21.987	2012-07-02 21:24:21.987	1
\.


--
-- TOC entry 2505 (class 0 OID 17889)
-- Dependencies: 215
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
9	6	2	A	2012-07-24 17:26:18.773	2012-07-24 17:26:18.773	1
10	6	6	A	2012-07-24 17:26:18.783	2012-07-24 17:26:18.783	1
11	6	18	A	2012-07-24 17:26:18.783	2012-07-24 17:26:18.783	1
18	5	2	A	2012-07-24 17:28:25.157	2012-07-24 17:28:25.157	1
19	5	3	A	2012-07-24 17:28:25.167	2012-07-24 17:28:25.167	1
20	5	5	A	2012-07-24 17:28:25.177	2012-07-24 17:28:25.177	1
21	5	6	A	2012-07-24 17:28:25.177	2012-07-24 17:28:25.177	1
22	5	9	A	2012-07-24 17:28:25.177	2012-07-24 17:28:25.177	1
23	5	14	A	2012-07-24 17:28:25.177	2012-07-24 17:28:25.177	1
24	1	2	A	2012-07-24 18:40:24.897	2012-07-24 18:40:24.897	1
25	1	3	A	2012-07-24 18:40:24.897	2012-07-24 18:40:24.897	1
26	1	5	A	2012-07-24 18:40:24.897	2012-07-24 18:40:24.897	1
27	1	6	A	2012-07-24 18:40:24.897	2012-07-24 18:40:24.897	1
28	1	7	A	2012-07-24 18:40:24.907	2012-07-24 18:40:24.907	1
29	1	8	A	2012-07-24 18:40:24.907	2012-07-24 18:40:24.907	1
30	1	9	A	2012-07-24 18:40:24.907	2012-07-24 18:40:24.907	1
31	1	10	A	2012-07-24 18:40:24.917	2012-07-24 18:40:24.917	1
32	1	11	A	2012-07-24 18:40:24.917	2012-07-24 18:40:24.917	1
33	1	14	A	2012-07-24 18:40:24.917	2012-07-24 18:40:24.917	1
34	1	15	A	2012-07-24 18:40:24.917	2012-07-24 18:40:24.917	1
35	1	4	A	2012-07-24 18:40:24.927	2012-07-24 18:40:24.927	1
36	1	18	A	2012-07-24 18:40:24.957	2012-07-24 18:40:24.957	1
37	1	12	A	2012-07-24 18:40:24.957	2012-07-24 18:40:24.957	1
38	1	13	A	2012-07-24 18:40:24.957	2012-07-24 18:40:24.957	1
39	1	19	A	2012-07-24 18:40:24.957	2012-07-24 18:40:24.957	1
40	1	16	A	2012-07-24 18:40:24.957	2012-07-24 18:40:24.957	1
\.


--
-- TOC entry 2506 (class 0 OID 17898)
-- Dependencies: 217
-- Data for Name: municipios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY municipios (id_municipio, id_localidad, municipio, sigla, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	1	La Paz	Lpz	\N	2012-07-02 21:46:46.687	2012-07-02 21:46:46.687	1
\.


--
-- TOC entry 2507 (class 0 OID 17908)
-- Dependencies: 220
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) FROM stdin;
4	Argentina	2012-07-03 17:11:50.152	<p>Argentinos</p>	2012-07-03 17:11:50.152	1	A
7	Venezuela	2012-07-04 17:35:18.171	Venezolano	2012-07-04 19:50:00	1	A
8	Brazil	2012-07-04 17:58:14.978	Brasileño	2012-07-04 17:58:14.978	1	A
1	Bolivia	2012-07-02 21:18:31.013	<p>Bolivianos</p>	2012-07-02 21:18:31.013	1	A
6	Peru	2012-07-04 17:14:55.115	<p>Peruanosss</p>	2012-07-04 00:00:00	1	X
14	probando	2012-07-23 19:16:08.658	fofo	2012-07-23 19:16:08.658	1	A
16	Colombia	2012-07-24 14:42:24.673	Colombiana	2012-07-24 14:42:24.673	1	A
17	España	2012-07-24 14:43:39.765	Español	2012-07-24 14:43:39.765	1	A
18	Francia	2012-07-24 15:05:59.686	Frances	2012-07-24 15:05:59.686	1	A
19	Holanda	2012-07-24 15:10:40.083	Holandes	2012-07-24 15:10:40.083	1	A
\.


--
-- TOC entry 2508 (class 0 OID 17917)
-- Dependencies: 222
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY personas (id_persona, nombres, paterno, materno, fec_nacimiento, telefono, celular, correo, fax, id_identificacion, direccion, ult_usuario, fec_registro, fec_modificacion, id_pais, id_departamento, id_provincia, id_localidad, id_sexo) FROM stdin;
1	Josue	Mancilla	Gordillo	1000-01-01					1		1	2012-07-02 21:40:19.577	2012-07-02 21:40:19.577	1	1	1	1	M
16	Roberto	Gomez	Chespirito	2002-07-16	66666	55555	roberto@gad.com	234324	17	Esta es la direccion	1	2012-07-23 16:39:46.994	2012-07-23 16:39:46.994	1	7	1	1	M
17	Gabriela	Garcia	Mallea	1993-07-15	234324	234	assa@fae.com	ffdsd	18	Zona San Jacinto	1	2012-07-23 16:48:11.488	2012-07-23 16:48:11.488	1	1	1	1	F
18	Green Day	MusicA	bANDA	2012-07-18	2334234	2342	SDGS@D.COM	A32424	19	SDFGSDFG	1	2012-07-23 17:09:49.206	2012-07-23 17:09:49.206	8	2	1	1	M
19	Jason	Mraz		1985-02-09	23asa	2392	jm.neutron@gmail.com	38239	20	Nueva York	1	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	1	4	\N	\N	M
20	LILIANA	RIVERA	AMADOR	1985-02-18	33751	720233423	liliana_292@hotmail.com	34468	21	Calle Suipacha	1	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	1	2	\N	\N	F
21	Juan	Mancilla	G	1985-02-13	65443456	77654	jm.neutron@gmail.com	65646	22	Barrio Mendez Arcos	1	2012-07-24 17:38:51.02	2012-07-24 17:38:51.02	1	2	1	1	M
\.


--
-- TOC entry 2509 (class 0 OID 17931)
-- Dependencies: 226
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY provincias (id_provincia, provincia, id_departamento, fec_registro, fec_modificacion, ult_usuario, estado) FROM stdin;
1	Murillo	1	2012-07-02 21:22:20.317	2012-07-02 21:22:20.317	1	A
\.


--
-- TOC entry 2510 (class 0 OID 17942)
-- Dependencies: 229
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
17	2383247	5	2012-07-23 16:39:46.988	2012-07-23 16:39:46.988	A	1
18	4432234	5	2012-07-23 16:48:11.476	2012-07-23 16:48:11.476	A	1
19	3242342	3	2012-07-23 17:09:49.197	2012-07-23 17:09:49.197	A	1
20	434252345	4	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1
21	5006968	2	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
22	5781311	1	2012-07-24 17:38:51	2012-07-24 17:38:51	A	1
\.


--
-- TOC entry 2511 (class 0 OID 17954)
-- Dependencies: 232
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) FROM stdin;
1	Administrador	A	2012-07-02 22:11:56.457	2012-07-02 22:11:56.457	1
2	Empadronador	A	2012-07-22 19:19:16.149	2012-07-22 19:19:16.149	1
3	Empleado	A	2012-07-22 20:58:14.14	2012-07-22 20:58:14.14	1
4	Empleador	A	2012-07-22 20:58:19.878	2012-07-22 20:58:19.878	1
5	Encargado del Proyecto	A	2012-07-22 20:58:36.81	2012-07-22 20:58:36.81	1
6	Educador	A	2012-07-24 17:18:25.639	2012-07-24 17:18:25.639	1
\.


--
-- TOC entry 2512 (class 0 OID 17977)
-- Dependencies: 241
-- Data for Name: ubicaciones_geograficas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ubicaciones_geograficas (id_ubicacion_geografica, id_pais, id_localidad, id_departamento, id_provincia, fec_registro, estado, ult_usuario, id_empleado, fec_modificacio, id_municipio) FROM stdin;
\.


--
-- TOC entry 2513 (class 0 OID 17984)
-- Dependencies: 242
-- Data for Name: usr_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usr_roles (id_usr_rol, id_usuario, id_rol, fec_registro, fec_modificacion, estado, ult_usuario) FROM stdin;
1	1	1	2012-07-02 22:13:00.118	2012-07-02 22:13:00.118	A	1
2	4	2	2012-07-23 18:04:32.644	2012-07-23 18:04:32.644	A	1
3	7	3	2012-07-23 18:05:04.72	2012-07-23 18:05:04.72	A	1
4	7	4	2012-07-23 18:05:04.726	2012-07-23 18:05:04.726	A	1
5	20	3	2012-07-23 19:36:36.549	2012-07-23 19:36:36.549	A	1
6	21	3	2012-07-23 19:51:40.501	2012-07-23 19:51:40.501	A	1
11	22	5	2012-07-24 18:17:42.144	2012-07-24 18:17:42.144	A	22
\.


--
-- TOC entry 2514 (class 0 OID 17993)
-- Dependencies: 244
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuarios (id_usuario, usuario, password, fec_registro, id_persona, id_estado, fec_modificacion, recordatorio) FROM stdin;
1	josue	josues	2012-07-02 21:12:51.549	1	A	2012-07-02 21:12:51.549	
4	gaby	gaby123	2012-07-23 16:59:21.817	17	A	2012-07-23 16:59:21.817	mi nombre mas 123
7	chapulin	chapu	2012-07-23 17:02:22.775	16	A	2012-07-23 17:02:22.775	el chapu
10	green	grenndat	2012-07-23 17:14:13.77	18	A	2012-07-23 17:14:13.77	musiquita
20	MMPWU		2012-07-23 19:36:36.549	19	A	2012-07-23 19:36:36.549	
21	bxQbJ	tnbXGCL3	2012-07-23 19:51:40.501	20	A	2012-07-23 19:51:40.501	
22	jujomago	jujomago	2012-07-24 18:03:03.661	21	A	2012-07-24 18:03:03.661	mi nick
\.


--
-- TOC entry 2276 (class 2606 OID 18040)
-- Dependencies: 161 161
-- Name: cargos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_cargos
    ADD CONSTRAINT cargos_pkey PRIMARY KEY (id_cargo);


--
-- TOC entry 2278 (class 2606 OID 18042)
-- Dependencies: 163 163
-- Name: categorias_enlaces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categorias_enlaces
    ADD CONSTRAINT categorias_enlaces_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 2284 (class 2606 OID 18044)
-- Dependencies: 168 168
-- Name: competencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_competencias
    ADD CONSTRAINT competencias_pkey PRIMARY KEY (id_competencia);


--
-- TOC entry 2280 (class 2606 OID 18046)
-- Dependencies: 165 165
-- Name: cursos_capacitaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_cursos_capacitaciones
    ADD CONSTRAINT cursos_capacitaciones_pkey PRIMARY KEY (id_curso_capacitacion);


--
-- TOC entry 2302 (class 2606 OID 18048)
-- Dependencies: 186 186
-- Name: emp_ofertas_laborales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_ofertas_laborales
    ADD CONSTRAINT emp_ofertas_laborales_pkey PRIMARY KEY (id_oferta_laboral);


--
-- TOC entry 2308 (class 2606 OID 18050)
-- Dependencies: 191 191
-- Name: emp_reuniones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_reuniones
    ADD CONSTRAINT emp_reuniones_pkey PRIMARY KEY (id_reunion);


--
-- TOC entry 2288 (class 2606 OID 18052)
-- Dependencies: 172 172
-- Name: empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_empleados
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 2286 (class 2606 OID 18054)
-- Dependencies: 171 171
-- Name: empleador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT empleador_pkey PRIMARY KEY (id_empleador);


--
-- TOC entry 2290 (class 2606 OID 18056)
-- Dependencies: 174 174
-- Name: empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_empresas
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);


--
-- TOC entry 2328 (class 2606 OID 18058)
-- Dependencies: 208 208
-- Name: enlaces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY enlaces
    ADD CONSTRAINT enlaces_pkey PRIMARY KEY (id_enlace);


--
-- TOC entry 2292 (class 2606 OID 18060)
-- Dependencies: 175 175
-- Name: establecimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_establecimientos
    ADD CONSTRAINT establecimientos_pkey PRIMARY KEY (id_establecimiento);


--
-- TOC entry 2294 (class 2606 OID 18062)
-- Dependencies: 178 178
-- Name: formularioregistro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT formularioregistro_pkey PRIMARY KEY (id_formulario);


--
-- TOC entry 2296 (class 2606 OID 18064)
-- Dependencies: 181 181 181
-- Name: frm_cursos_capacitaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT frm_cursos_capacitaciones_pkey PRIMARY KEY (id_curso_capacitacion, id_formulario);


--
-- TOC entry 2298 (class 2606 OID 18066)
-- Dependencies: 184 184
-- Name: instituciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_instituciones
    ADD CONSTRAINT instituciones_pkey PRIMARY KEY (id_institucion);


--
-- TOC entry 2332 (class 2606 OID 18068)
-- Dependencies: 215 215
-- Name: menus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id_menu);


--
-- TOC entry 2334 (class 2606 OID 18070)
-- Dependencies: 217 217
-- Name: municipios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY municipios
    ADD CONSTRAINT municipios_pkey PRIMARY KEY (id_municipio);


--
-- TOC entry 2300 (class 2606 OID 18072)
-- Dependencies: 185 185
-- Name: niveles_fromacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_niveles_formaciones
    ADD CONSTRAINT niveles_fromacion_pkey PRIMARY KEY (id_nivel_formacion);


--
-- TOC entry 2336 (class 2606 OID 18074)
-- Dependencies: 220 220
-- Name: paises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id_pais);


--
-- TOC entry 2338 (class 2606 OID 18076)
-- Dependencies: 222 222
-- Name: persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);


--
-- TOC entry 2306 (class 2606 OID 18078)
-- Dependencies: 190 190
-- Name: productos_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT productos_empresa_pkey PRIMARY KEY (id_prod_empr);


--
-- TOC entry 2304 (class 2606 OID 18080)
-- Dependencies: 189 189
-- Name: productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 2340 (class 2606 OID 18082)
-- Dependencies: 226 226
-- Name: provincias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY provincias
    ADD CONSTRAINT provincias_pkey PRIMARY KEY (id_provincia);


--
-- TOC entry 2282 (class 2606 OID 18084)
-- Dependencies: 167 167
-- Name: prs_departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY departamentos
    ADD CONSTRAINT prs_departamentos_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 2342 (class 2606 OID 18086)
-- Dependencies: 229 229
-- Name: prs_identificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prs_identificaciones
    ADD CONSTRAINT prs_identificaciones_pkey PRIMARY KEY (id_idenficacion);


--
-- TOC entry 2330 (class 2606 OID 18088)
-- Dependencies: 214 214
-- Name: prs_localidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY localidades
    ADD CONSTRAINT prs_localidad_pkey PRIMARY KEY (id_localidad);


--
-- TOC entry 2344 (class 2606 OID 18090)
-- Dependencies: 232 232
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);


--
-- TOC entry 2312 (class 2606 OID 18092)
-- Dependencies: 196 196
-- Name: rubros_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT rubros_empresa_pkey PRIMARY KEY (id_rubro_empresa);


--
-- TOC entry 2310 (class 2606 OID 18094)
-- Dependencies: 195 195
-- Name: rubros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_rubros
    ADD CONSTRAINT rubros_pkey PRIMARY KEY (id_rubro);


--
-- TOC entry 2316 (class 2606 OID 18096)
-- Dependencies: 198 198
-- Name: servicios_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT servicios_empresa_pkey PRIMARY KEY (id_serv_emp);


--
-- TOC entry 2314 (class 2606 OID 18098)
-- Dependencies: 197 197
-- Name: servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY ("id_servicio ");


--
-- TOC entry 2318 (class 2606 OID 18100)
-- Dependencies: 199 199
-- Name: sucursales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT sucursales_pkey PRIMARY KEY (id_sucursal);


--
-- TOC entry 2320 (class 2606 OID 18102)
-- Dependencies: 201 201
-- Name: tipo_competencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_tipo_competencias
    ADD CONSTRAINT tipo_competencias_pkey PRIMARY KEY (id_tipo_competencia);


--
-- TOC entry 2322 (class 2606 OID 18104)
-- Dependencies: 202 202
-- Name: tipo_establecimiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_tipo_establecimientos
    ADD CONSTRAINT tipo_establecimiento_pkey PRIMARY KEY (id_tipo_establecimiento);


--
-- TOC entry 2324 (class 2606 OID 18106)
-- Dependencies: 203 203
-- Name: tipo_formulario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_tipos_formularios
    ADD CONSTRAINT tipo_formulario_pkey PRIMARY KEY (id_tipo);


--
-- TOC entry 2326 (class 2606 OID 18108)
-- Dependencies: 204 204
-- Name: titulos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emp_titulos
    ADD CONSTRAINT titulos_pkey PRIMARY KEY (id_titulo);


--
-- TOC entry 2346 (class 2606 OID 18110)
-- Dependencies: 241 241
-- Name: ubicaciones_geograficas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT ubicaciones_geograficas_pkey PRIMARY KEY (id_ubicacion_geografica);


--
-- TOC entry 2348 (class 2606 OID 18112)
-- Dependencies: 242 242
-- Name: usr_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT usr_roles_pkey PRIMARY KEY (id_usr_rol);


--
-- TOC entry 2350 (class 2606 OID 18114)
-- Dependencies: 244 244
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 2437 (class 2606 OID 18115)
-- Dependencies: 208 2277 163
-- Name: fk_categorias_enlaces; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY enlaces
    ADD CONSTRAINT fk_categorias_enlaces FOREIGN KEY (id_categoria) REFERENCES categorias_enlaces(id_categoria);


--
-- TOC entry 2446 (class 2606 OID 18120)
-- Dependencies: 222 2281 167
-- Name: fk_departamentos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_departamentos FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2353 (class 2606 OID 18125)
-- Dependencies: 167 2335 220
-- Name: fk_dpto_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamentos
    ADD CONSTRAINT fk_dpto_paises FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2452 (class 2606 OID 18130)
-- Dependencies: 226 167 2281
-- Name: fk_dpto_provincias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provincias
    ADD CONSTRAINT fk_dpto_provincias FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2354 (class 2606 OID 18135)
-- Dependencies: 244 167 2349
-- Name: fk_dpto_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamentos
    ADD CONSTRAINT fk_dpto_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2364 (class 2606 OID 18140)
-- Dependencies: 172 222 2337
-- Name: fk_emp_personas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados
    ADD CONSTRAINT fk_emp_personas FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2414 (class 2606 OID 18145)
-- Dependencies: 191 193 2307
-- Name: fk_emp_reuniones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleados
    ADD CONSTRAINT fk_emp_reuniones FOREIGN KEY (id_reunion) REFERENCES emp_reuniones(id_reunion);


--
-- TOC entry 2365 (class 2606 OID 18150)
-- Dependencies: 172 244 2349
-- Name: fk_emp_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados
    ADD CONSTRAINT fk_emp_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2438 (class 2606 OID 18155)
-- Dependencies: 208 244 2349
-- Name: fk_enlaces_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY enlaces
    ADD CONSTRAINT fk_enlaces_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2454 (class 2606 OID 18160)
-- Dependencies: 2281 167 229
-- Name: fk_identificacion_dpto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prs_identificaciones
    ADD CONSTRAINT fk_identificacion_dpto FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2455 (class 2606 OID 18165)
-- Dependencies: 229 244 2349
-- Name: fk_identificacion_usr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prs_identificaciones
    ADD CONSTRAINT fk_identificacion_usr FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2447 (class 2606 OID 18170)
-- Dependencies: 229 2341 222
-- Name: fk_identificaciones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_identificaciones FOREIGN KEY (id_identificacion) REFERENCES prs_identificaciones(id_idenficacion);


--
-- TOC entry 2444 (class 2606 OID 18175)
-- Dependencies: 2329 217 214
-- Name: fk_localidad_municipios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipios
    ADD CONSTRAINT fk_localidad_municipios FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2439 (class 2606 OID 18180)
-- Dependencies: 214 226 2339
-- Name: fk_localidad_prv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY localidades
    ADD CONSTRAINT fk_localidad_prv FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2440 (class 2606 OID 18185)
-- Dependencies: 244 214 2349
-- Name: fk_localidad_usr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY localidades
    ADD CONSTRAINT fk_localidad_usr FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2448 (class 2606 OID 18190)
-- Dependencies: 222 2329 214
-- Name: fk_localidades; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_localidades FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2441 (class 2606 OID 18195)
-- Dependencies: 2327 215 208
-- Name: fk_menu_enlace; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT fk_menu_enlace FOREIGN KEY (id_enlace) REFERENCES enlaces(id_enlace);


--
-- TOC entry 2442 (class 2606 OID 18200)
-- Dependencies: 2343 215 232
-- Name: fk_menu_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT fk_menu_rol FOREIGN KEY (id_rol) REFERENCES roles(id_rol);


--
-- TOC entry 2443 (class 2606 OID 18205)
-- Dependencies: 215 2349 244
-- Name: fk_menu_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menus
    ADD CONSTRAINT fk_menu_usuario FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2449 (class 2606 OID 18210)
-- Dependencies: 220 222 2335
-- Name: fk_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_paises FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2450 (class 2606 OID 18215)
-- Dependencies: 222 226 2339
-- Name: fk_provincias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_provincias FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2453 (class 2606 OID 18220)
-- Dependencies: 226 244 2349
-- Name: fk_provincias_usr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provincias
    ADD CONSTRAINT fk_provincias_usr FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2411 (class 2606 OID 18225)
-- Dependencies: 192 171 2285
-- Name: fk_reuniones_empleadores; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleadores
    ADD CONSTRAINT fk_reuniones_empleadores FOREIGN KEY (id_empleador) REFERENCES emp_empleadores(id_empleador);


--
-- TOC entry 2415 (class 2606 OID 18230)
-- Dependencies: 193 172 2287
-- Name: fk_reuniones_empleados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleados
    ADD CONSTRAINT fk_reuniones_empleados FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2409 (class 2606 OID 18235)
-- Dependencies: 222 2337 191
-- Name: fk_reuniones_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones
    ADD CONSTRAINT fk_reuniones_persona FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2412 (class 2606 OID 18240)
-- Dependencies: 191 192 2307
-- Name: fk_reuniones_reunion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleadores
    ADD CONSTRAINT fk_reuniones_reunion FOREIGN KEY (id_reunion) REFERENCES emp_reuniones(id_reunion);


--
-- TOC entry 2413 (class 2606 OID 18245)
-- Dependencies: 192 244 2349
-- Name: fk_reuniones_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleadores
    ADD CONSTRAINT fk_reuniones_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2416 (class 2606 OID 18250)
-- Dependencies: 193 244 2349
-- Name: fk_reuniones_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones_empleados
    ADD CONSTRAINT fk_reuniones_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2457 (class 2606 OID 18255)
-- Dependencies: 241 167 2281
-- Name: fk_ug_departamentos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_departamentos FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2458 (class 2606 OID 18260)
-- Dependencies: 241 172 2287
-- Name: fk_ug_empleados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_empleados FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2459 (class 2606 OID 18265)
-- Dependencies: 241 214 2329
-- Name: fk_ug_localidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_localidad FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2460 (class 2606 OID 18270)
-- Dependencies: 217 241 2333
-- Name: fk_ug_municipios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_municipios FOREIGN KEY (id_municipio) REFERENCES municipios(id_municipio);


--
-- TOC entry 2461 (class 2606 OID 18275)
-- Dependencies: 220 241 2335
-- Name: fk_ug_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_paises FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2462 (class 2606 OID 18280)
-- Dependencies: 226 241 2339
-- Name: fk_ug_provincias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_provincias FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2463 (class 2606 OID 18285)
-- Dependencies: 241 244 2349
-- Name: fk_ug_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ubicaciones_geograficas
    ADD CONSTRAINT fk_ug_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2410 (class 2606 OID 18290)
-- Dependencies: 191 244 2349
-- Name: fk_ult_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_reuniones
    ADD CONSTRAINT fk_ult_usuario FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2464 (class 2606 OID 18295)
-- Dependencies: 2343 242 232
-- Name: fk_usr_roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT fk_usr_roles FOREIGN KEY (id_rol) REFERENCES roles(id_rol);


--
-- TOC entry 2465 (class 2606 OID 18300)
-- Dependencies: 244 242 2349
-- Name: fk_usr_ult; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT fk_usr_ult FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2466 (class 2606 OID 18305)
-- Dependencies: 244 242 2349
-- Name: fk_usr_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usr_roles
    ADD CONSTRAINT fk_usr_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2456 (class 2606 OID 18310)
-- Dependencies: 244 232 2349
-- Name: fk_usuario_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT fk_usuario_rol FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2451 (class 2606 OID 18315)
-- Dependencies: 244 222 2349
-- Name: fk_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT fk_usuarios FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2445 (class 2606 OID 18320)
-- Dependencies: 244 220 2349
-- Name: fk_usuarios_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paises
    ADD CONSTRAINT fk_usuarios_paises FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2361 (class 2606 OID 18325)
-- Dependencies: 222 171 2337
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2418 (class 2606 OID 18330)
-- Dependencies: 196 2309 195
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_rubro) REFERENCES emp_rubros(id_rubro);


--
-- TOC entry 2405 (class 2606 OID 18335)
-- Dependencies: 189 2303 190
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_producto) REFERENCES emp_productos(id_producto);


--
-- TOC entry 2422 (class 2606 OID 18340)
-- Dependencies: 174 2289 198
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2366 (class 2606 OID 18345)
-- Dependencies: 173 172 2287
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2357 (class 2606 OID 18350)
-- Dependencies: 170 172 2287
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2382 (class 2606 OID 18355)
-- Dependencies: 178 203 2323
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_tipo) REFERENCES emp_tipos_formularios(id_tipo);


--
-- TOC entry 2378 (class 2606 OID 18360)
-- Dependencies: 177 172 2287
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2355 (class 2606 OID 18365)
-- Dependencies: 201 168 2319
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_competencias
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_tipo_competencia) REFERENCES emp_tipo_competencias(id_tipo_competencia);


--
-- TOC entry 2372 (class 2606 OID 18370)
-- Dependencies: 175 202 2321
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_establecimientos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_tipo_est) REFERENCES emp_tipo_establecimientos(id_tipo_establecimiento);


--
-- TOC entry 2374 (class 2606 OID 18375)
-- Dependencies: 176 172 2287
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleado) REFERENCES emp_empleados(id_empleado);


--
-- TOC entry 2388 (class 2606 OID 18380)
-- Dependencies: 181 165 2279
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_curso_capacitacion) REFERENCES emp_cursos_capacitaciones(id_curso_capacitacion);


--
-- TOC entry 2391 (class 2606 OID 18385)
-- Dependencies: 182 185 2299
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_niveles_establecimientos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_nivel_formacion) REFERENCES emp_niveles_formaciones(id_nivel_formacion);


--
-- TOC entry 2394 (class 2606 OID 18390)
-- Dependencies: 2325 183 204
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_titulos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_titulo) REFERENCES emp_titulos(id_titulo);


--
-- TOC entry 2385 (class 2606 OID 18395)
-- Dependencies: 2275 161 180
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cargos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_cargo) REFERENCES emp_cargos(id_cargo);


--
-- TOC entry 2426 (class 2606 OID 18400)
-- Dependencies: 199 174 2289
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2417 (class 2606 OID 18405)
-- Dependencies: 195 244 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2371 (class 2606 OID 18410)
-- Dependencies: 174 244 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empresas
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2351 (class 2606 OID 18415)
-- Dependencies: 161 244 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_cargos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2352 (class 2606 OID 18420)
-- Dependencies: 165 244 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_cursos_capacitaciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2397 (class 2606 OID 18425)
-- Dependencies: 184 244 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_instituciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2398 (class 2606 OID 18430)
-- Dependencies: 185 244 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_niveles_formaciones
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2404 (class 2606 OID 18435)
-- Dependencies: 189 244 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2421 (class 2606 OID 18440)
-- Dependencies: 244 2349 197
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2433 (class 2606 OID 18445)
-- Dependencies: 244 201 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipo_competencias
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2434 (class 2606 OID 18450)
-- Dependencies: 2349 202 244
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipo_establecimientos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2435 (class 2606 OID 18455)
-- Dependencies: 244 203 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_tipos_formularios
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2436 (class 2606 OID 18460)
-- Dependencies: 244 204 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_titulos
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2399 (class 2606 OID 18465)
-- Dependencies: 171 186 2285
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_laborales
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_empleador) REFERENCES emp_empleadores(id_empleador);


--
-- TOC entry 2401 (class 2606 OID 18470)
-- Dependencies: 244 188 2349
-- Name: foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_rubros
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2419 (class 2606 OID 18475)
-- Dependencies: 174 196 2289
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2406 (class 2606 OID 18480)
-- Dependencies: 190 174 2289
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2423 (class 2606 OID 18485)
-- Dependencies: 2313 198 197
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_servicio) REFERENCES emp_servicios("id_servicio ");


--
-- TOC entry 2367 (class 2606 OID 18490)
-- Dependencies: 173 174 2289
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2383 (class 2606 OID 18495)
-- Dependencies: 222 2337 178
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_persona) REFERENCES personas(id_persona);


--
-- TOC entry 2362 (class 2606 OID 18500)
-- Dependencies: 171 174 2289
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2379 (class 2606 OID 18505)
-- Dependencies: 177 174 2289
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_empresa) REFERENCES emp_empresas(id_empresa);


--
-- TOC entry 2375 (class 2606 OID 18510)
-- Dependencies: 176 185 2299
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_nivel_frm) REFERENCES emp_niveles_formaciones(id_nivel_formacion);


--
-- TOC entry 2392 (class 2606 OID 18515)
-- Dependencies: 175 182 2291
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_niveles_establecimientos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_establecimiento) REFERENCES emp_establecimientos(id_establecimiento);


--
-- TOC entry 2395 (class 2606 OID 18520)
-- Dependencies: 178 2293 183
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_titulos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_formulario) REFERENCES emp_formularios(id_formulario);


--
-- TOC entry 2389 (class 2606 OID 18525)
-- Dependencies: 2293 178 181
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_formulario) REFERENCES emp_formularios(id_formulario);


--
-- TOC entry 2386 (class 2606 OID 18530)
-- Dependencies: 180 178 2293
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cargos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_formulario) REFERENCES emp_formularios(id_formulario);


--
-- TOC entry 2373 (class 2606 OID 18535)
-- Dependencies: 175 2349 244
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_establecimientos
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2356 (class 2606 OID 18540)
-- Dependencies: 168 2349 244
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_competencias
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2427 (class 2606 OID 18545)
-- Dependencies: 2335 220 199
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_pais) REFERENCES paises(id_pais);


--
-- TOC entry 2400 (class 2606 OID 18550)
-- Dependencies: 186 2349 244
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_laborales
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2402 (class 2606 OID 18555)
-- Dependencies: 2301 186 188
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_rubros
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_oferta_laboral) REFERENCES emp_ofertas_laborales(id_oferta_laboral);


--
-- TOC entry 2358 (class 2606 OID 18560)
-- Dependencies: 2283 168 170
-- Name: foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_competencia) REFERENCES emp_competencias(id_competencia);


--
-- TOC entry 2407 (class 2606 OID 18565)
-- Dependencies: 2311 196 190
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_rubro) REFERENCES emp_rubros_empresas(id_rubro_empresa);


--
-- TOC entry 2424 (class 2606 OID 18570)
-- Dependencies: 2311 196 198
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_rubro) REFERENCES emp_rubros_empresas(id_rubro_empresa);


--
-- TOC entry 2380 (class 2606 OID 18575)
-- Dependencies: 2275 161 177
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_cargo) REFERENCES emp_cargos(id_cargo);


--
-- TOC entry 2359 (class 2606 OID 18580)
-- Dependencies: 2297 184 170
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_institucion) REFERENCES emp_instituciones(id_institucion);


--
-- TOC entry 2376 (class 2606 OID 18585)
-- Dependencies: 175 2291 176
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_establecimiento) REFERENCES emp_establecimientos(id_establecimiento);


--
-- TOC entry 2368 (class 2606 OID 18590)
-- Dependencies: 173 161 2275
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_cargo) REFERENCES emp_cargos(id_cargo);


--
-- TOC entry 2428 (class 2606 OID 18595)
-- Dependencies: 2349 199 244
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2363 (class 2606 OID 18600)
-- Dependencies: 171 2349 244
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleadores
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2387 (class 2606 OID 18605)
-- Dependencies: 180 244 2349
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cargos
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2390 (class 2606 OID 18610)
-- Dependencies: 181 244 2349
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_cursos_capacitaciones
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2393 (class 2606 OID 18615)
-- Dependencies: 182 244 2349
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_niveles_establecimientos
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2396 (class 2606 OID 18620)
-- Dependencies: 183 244 2349
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_frm_titulos
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2420 (class 2606 OID 18625)
-- Dependencies: 2349 244 196
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_rubros_empresas
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2403 (class 2606 OID 18630)
-- Dependencies: 195 188 2309
-- Name: foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_ofertas_rubros
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_rubro) REFERENCES emp_rubros(id_rubro);


--
-- TOC entry 2369 (class 2606 OID 18635)
-- Dependencies: 2299 173 185
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (id_nivel_frm) REFERENCES emp_niveles_formaciones(id_nivel_formacion);


--
-- TOC entry 2360 (class 2606 OID 18640)
-- Dependencies: 244 170 2349
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_detalles_competencias
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2377 (class 2606 OID 18645)
-- Dependencies: 244 176 2349
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_estudios_empleados
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2381 (class 2606 OID 18650)
-- Dependencies: 244 177 2349
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_experiencias_laborales
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2384 (class 2606 OID 18655)
-- Dependencies: 178 244 2349
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_formularios
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2408 (class 2606 OID 18660)
-- Dependencies: 190 244 2349
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_productos_empresas
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2425 (class 2606 OID 18665)
-- Dependencies: 2349 198 244
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_servicios_empresas
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2429 (class 2606 OID 18670)
-- Dependencies: 167 199 2281
-- Name: foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


--
-- TOC entry 2370 (class 2606 OID 18675)
-- Dependencies: 244 173 2349
-- Name: foreign_key05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_empleados_empresas
    ADD CONSTRAINT foreign_key05 FOREIGN KEY (ult_usuario) REFERENCES usuarios(id_usuario);


--
-- TOC entry 2430 (class 2606 OID 18680)
-- Dependencies: 199 2339 226
-- Name: foreign_key05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key05 FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia);


--
-- TOC entry 2431 (class 2606 OID 18685)
-- Dependencies: 199 2329 214
-- Name: foreign_key06; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key06 FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);


--
-- TOC entry 2432 (class 2606 OID 18690)
-- Dependencies: 199 217 2333
-- Name: foreign_key07; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp_sucursales
    ADD CONSTRAINT foreign_key07 FOREIGN KEY (id_municipio) REFERENCES municipios(id_municipio);


--
-- TOC entry 2519 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-07-24 19:47:15

--
-- PostgreSQL database dump complete
--

