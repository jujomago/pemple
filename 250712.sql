--
-- PostgreSQL database dump
--

-- Started on 2012-07-25 13:06:58

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2393 (class 0 OID 0)
-- Dependencies: 1697
-- Name: cargos_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cargos_id_cargo_seq', 15, true);


--
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 1699
-- Name: categorias_enlaces_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categorias_enlaces_id_categoria_seq', 4, true);


--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 1701
-- Name: cursos_capacitaciones_id_curso_capacitacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cursos_capacitaciones_id_curso_capacitacion_seq', 3, true);


--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 1704
-- Name: emp_competencias_id_competencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_competencias_id_competencia_seq', 4, true);


--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 1714
-- Name: emp_formularios_nro_formulario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_formularios_nro_formulario_seq', 3, true);


--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 1722
-- Name: emp_ofertas_laborales_id_oferta_laboral_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_ofertas_laborales_id_oferta_laboral_seq', 1, false);


--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 1729
-- Name: emp_reuniones_id_reunion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_reuniones_id_reunion_seq', 1, false);


--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 1735
-- Name: emp_sucursales_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp_sucursales_id_sucursal_seq', 12, true);


--
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 1740
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleado_id_empleado_seq', 16, true);


--
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 1741
-- Name: empleador_id_empleador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleador_id_empleador_seq', 1, false);


--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 1742
-- Name: empresa_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empresa_id_empresa_seq', 17, true);


--
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 1744
-- Name: enlaces_id_enlace_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('enlaces_id_enlace_seq', 19, true);


--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 1745
-- Name: establecimientos_id_establecimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('establecimientos_id_establecimiento_seq', 51, true);


--
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 1746
-- Name: formularioregistro_id_formulario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('formularioregistro_id_formulario_seq', 3, true);


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 1747
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instituciones_id_institucion_seq', 2, true);


--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 1748
-- Name: localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('localidad_id_localidad_seq', 1, false);


--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 1751
-- Name: menus_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('menus_id_menu_seq', 40, true);


--
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 1753
-- Name: municipios_id_municipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipios_id_municipio_seq', 1, true);


--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 1754
-- Name: niveles_fromacion_id_nivel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('niveles_fromacion_id_nivel_seq', 10, true);


--
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 1756
-- Name: paises_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('paises_id_pais_seq', 19, true);


--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 1758
-- Name: persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_id_persona_seq', 22, true);


--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 1759
-- Name: productos_empresa_id_prod_empr_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_empresa_id_prod_empr_seq', 1, false);


--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 1760
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_id_producto_seq', 1, false);


--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 1762
-- Name: provincias_id_proivincia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('provincias_id_proivincia_seq', 1, true);


--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 1763
-- Name: prs_departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_departamentos_id_departamento_seq', 7, true);


--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 1765
-- Name: prs_identificaciones_id_idenficacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_identificaciones_id_idenficacion_seq', 23, true);


--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 1766
-- Name: prs_localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prs_localidad_id_localidad_seq', 1, true);


--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 1768
-- Name: roles_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_rol_seq', 6, true);


--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 1769
-- Name: rubros_empresa_id_rubro_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rubros_empresa_id_rubro_empresa_seq', 1, false);


--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 1770
-- Name: rubros_id_rubro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rubros_id_rubro_seq', 1, false);


--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 1771
-- Name: servicios_empresa_id_serv_emp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('servicios_empresa_id_serv_emp_seq', 1, false);


--
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 1772
-- Name: servicios_id_servicio _seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"servicios_id_servicio _seq"', 1, false);


--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 1773
-- Name: tipo_competencias_id_tipo_competencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_competencias_id_tipo_competencia_seq', 2, true);


--
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 1774
-- Name: tipo_establecimiento_id_tipo_establecimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_establecimiento_id_tipo_establecimiento_seq', 3, true);


--
-- TOC entry 2427 (class 0 OID 0)
-- Dependencies: 1775
-- Name: tipo_formulario_id_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_formulario_id_tipo_seq', 2, true);


--
-- TOC entry 2428 (class 0 OID 0)
-- Dependencies: 1778
-- Name: usr_roles_id_usr_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usr_roles_id_usr_rol_seq', 12, true);


--
-- TOC entry 2429 (class 0 OID 0)
-- Dependencies: 1780
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_usuario_seq', 23, true);


--
-- TOC entry 2344 (class 0 OID 24691247)
-- Dependencies: 1698
-- Data for Name: categorias_enlaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categorias_enlaces (id_categoria, categoria_enlace, orden, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (1, 'ADMINISTRACION', 1, 'A', '2012-07-02 22:31:06.838', '2012-07-02 22:31:06.838', 1);
INSERT INTO categorias_enlaces (id_categoria, categoria_enlace, orden, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (4, 'GESTION SISTEMA', 2, 'A', '2012-07-23 18:23:27.386', '2012-07-23 18:23:27.386', 1);
INSERT INTO categorias_enlaces (id_categoria, categoria_enlace, orden, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (2, 'FORMULARIOS', 3, 'A', '2012-07-23 18:21:46.022', '2012-07-23 18:21:46.022', 1);
INSERT INTO categorias_enlaces (id_categoria, categoria_enlace, orden, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (3, 'REPORTES', 4, 'X', '2012-07-23 18:22:48.674', '2012-07-23 18:22:48.674', 1);


--
-- TOC entry 2390 (class 0 OID 24691648)
-- Dependencies: 1779
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuarios (id_usuario, usuario, password, fec_registro, id_persona, id_estado, fec_modificacion, recordatorio) VALUES (1, 'josue', 'josues', '2012-07-02 21:12:51.549', 1, 'A', '2012-07-02 21:12:51.549', '');


--
-- TOC entry 2383 (class 0 OID 24691563)
-- Dependencies: 1755 2390
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (4, 'Argentina', '2012-07-03 17:11:50.152', '<p>Argentinos</p>', '2012-07-03 17:11:50.152', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (7, 'Venezuela', '2012-07-04 17:35:18.171', 'Venezolano', '2012-07-04 19:50:00', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (8, 'Brazil', '2012-07-04 17:58:14.978', 'Brasileño', '2012-07-04 17:58:14.978', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (1, 'Bolivia', '2012-07-02 21:18:31.013', '<p>Bolivianos</p>', '2012-07-02 21:18:31.013', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (16, 'Colombia', '2012-07-24 14:42:24.673', 'Colombiana', '2012-07-24 14:42:24.673', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (17, 'España', '2012-07-24 14:43:39.765', 'Español', '2012-07-24 14:43:39.765', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (18, 'Francia', '2012-07-24 15:05:59.686', 'Frances', '2012-07-24 15:05:59.686', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (19, 'Holanda', '2012-07-24 15:10:40.083', 'Holandes', '2012-07-24 15:10:40.083', 1, 'A');
INSERT INTO paises (id_pais, pais, fec_registro, nacionalidad, fec_modificacion, ult_usuario, estado) VALUES (6, 'Peru', '2012-07-04 17:14:55.115', 'Peruano', '2012-07-04 00:00:00', 1, 'A');


--
-- TOC entry 2346 (class 0 OID 24691266)
-- Dependencies: 1702 2383 2390
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) VALUES (1, 'La Paz', '2012-07-02 21:20:27.315', 1, 'Lpz', '2012-07-02 21:20:27.315', 1, 'A');
INSERT INTO departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) VALUES (2, 'Tarija', '2012-07-06 16:38:57.107', 1, 'Tja', '2012-07-06 16:38:57.107', 1, 'A');
INSERT INTO departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) VALUES (3, 'Cochabamba', '2012-07-06 16:39:11.829', 1, 'Cbba', '2012-07-06 16:39:11.829', 1, 'A');
INSERT INTO departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) VALUES (4, 'Santa Cruz', '2012-07-06 16:39:20.485', 1, 'Scz', '2012-07-06 16:39:20.485', 1, 'A');
INSERT INTO departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) VALUES (5, 'Beni', '2012-07-06 16:39:27.852', 1, 'Ben', '2012-07-06 16:39:27.852', 1, 'A');
INSERT INTO departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) VALUES (6, 'Pando', '2012-07-06 16:39:35.813', 1, 'Pdo', '2012-07-06 16:39:35.813', 1, 'A');
INSERT INTO departamentos (id_departamento, departamento, fec_registro, id_pais, sigla, fec_modificacion, ult_usuario, estado) VALUES (7, 'Oruro', '2012-07-06 16:39:42.406', 1, 'Oro', '2012-07-06 16:39:42.406', 1, 'A');


--
-- TOC entry 2343 (class 0 OID 24691238)
-- Dependencies: 1696 2390
-- Data for Name: emp_cargos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (4, 'Promotor de Ventas', '2012-07-06 18:12:41.661', 'A', '2012-07-06 18:12:41.661', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (8, 'Carpintero', '2012-07-13 13:20:47.375', 'A', '2012-07-13 13:20:47.375', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (10, 'Administrador', '2012-07-16 21:13:45.774', 'A', '2012-07-16 21:13:45.774', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (12, 'Asistente de Gerencia', '2012-07-17 01:29:02.088', 'A', '2012-07-17 01:29:02.088', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (13, 'Secretaria', '2012-07-17 01:29:28.613', 'A', '2012-07-17 01:29:28.613', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (14, 'Gerente', '2012-07-17 01:30:12.71', 'A', '2012-07-17 01:30:12.71', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (5, 'Auditor', '2012-07-06 18:13:22.104', 'A', '2012-07-06 18:13:22.104', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (6, 'Contador', '2012-07-06 18:13:28.563', 'A', '2012-07-06 18:13:28.563', 1);
INSERT INTO emp_cargos (id_cargo, cargo, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (9, 'Pintor', '2012-07-16 20:25:39.046', 'A', '2012-07-16 20:25:39.046', 1);


--
-- TOC entry 2375 (class 0 OID 24691485)
-- Dependencies: 1736 2390
-- Data for Name: emp_tipo_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_tipo_competencias (id_tipo_competencia, tipo_competencia, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (1, 'Cursos', '2012-07-06 11:59:06.28', 'A', '2012-07-06 11:59:06.28', 1);
INSERT INTO emp_tipo_competencias (id_tipo_competencia, tipo_competencia, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (2, 'Habilidades', '2012-07-06 11:59:17.272', 'A', '2012-07-06 11:59:17.272', 1);


--
-- TOC entry 2347 (class 0 OID 24691273)
-- Dependencies: 1703 2375 2390
-- Data for Name: emp_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_competencias (id_competencia, competencia, id_tipo_competencia, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (2, 'Manejo de Office', 1, '2012-07-06 12:09:58.994', '2012-07-06 12:09:58.994', 'A', 1);
INSERT INTO emp_competencias (id_competencia, competencia, id_tipo_competencia, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (1, 'Cooperativismo', 2, '2012-07-06 12:02:15.863', '2012-07-06 12:02:15.863', 'A', 1);


--
-- TOC entry 2345 (class 0 OID 24691257)
-- Dependencies: 1700 2390
-- Data for Name: emp_cursos_capacitaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_cursos_capacitaciones (id_curso_capacitacion, curso_capacitacion, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (1, 'Manejo de Paquetes de Contabilidad', '2012-07-13 10:43:26.236', '2012-07-13 10:43:26.236', 'A', 1);
INSERT INTO emp_cursos_capacitaciones (id_curso_capacitacion, curso_capacitacion, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (2, 'Actualizaciones de Impuestos', '2012-07-13 10:43:52.522', '2012-07-13 10:43:52.522', 'A', 1);
INSERT INTO emp_cursos_capacitaciones (id_curso_capacitacion, curso_capacitacion, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (3, 'Actualización Contable', '2012-07-13 10:53:48.088', '2012-07-13 10:53:48.088', 'A', 1);


--
-- TOC entry 2385 (class 0 OID 24691586)
-- Dependencies: 1761 2346 2390
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO provincias (id_provincia, provincia, id_departamento, fec_registro, fec_modificacion, ult_usuario, estado) VALUES (1, 'Murillo', 1, '2012-07-02 21:22:20.317', '2012-07-02 21:22:20.317', 1, 'A');


--
-- TOC entry 2380 (class 0 OID 24691537)
-- Dependencies: 1749 2385 2390
-- Data for Name: localidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO localidades (id_localidad, localidad, estado, id_provincia, fec_registro, fec_modificacion, ult_usuario) VALUES (1, 'Murillo', 'A', 1, '2012-07-02 21:24:21.987', '2012-07-02 21:24:21.987', 1);


--
-- TOC entry 2386 (class 0 OID 24691597)
-- Dependencies: 1764 2346 2390
-- Data for Name: prs_identificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prs_identificaciones (id_idenficacion, ci, id_departamento, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (1, 5781310, 1, '2012-07-02 21:31:16.209', '2012-07-02 21:31:16.209', 'A', 1);


--
-- TOC entry 2384 (class 0 OID 24691572)
-- Dependencies: 1757 2346 2386 2380 2383 2385 2390
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO personas (id_persona, nombres, paterno, materno, fec_nacimiento, telefono, celular, correo, fax, id_identificacion, direccion, ult_usuario, fec_registro, fec_modificacion, id_pais, id_departamento, id_provincia, id_localidad, id_sexo, estado) VALUES (1, 'Josue', 'Mancilla', 'Gordillo', '1000-01-01', '', '', '', '', 1, '', 1, '2012-07-02 21:40:19.577', '2012-07-02 21:40:19.577', 1, 1, 1, 1, 'M', 'A');


--
-- TOC entry 2350 (class 0 OID 24691297)
-- Dependencies: 1707 2384 2390
-- Data for Name: emp_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2361 (class 0 OID 24691377)
-- Dependencies: 1719 2390
-- Data for Name: emp_instituciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_instituciones (id_institucion, institucion, sigla, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (1, 'Ministerio de Trabajo', 'MinTra', '2012-07-06 12:28:09.571', '2012-07-06 12:28:09.571', 'A', 1);


--
-- TOC entry 2348 (class 0 OID 24691283)
-- Dependencies: 1705 2350 2347 2361 2390
-- Data for Name: emp_detalles_competencias; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2352 (class 0 OID 24691312)
-- Dependencies: 1709 2390
-- Data for Name: emp_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2349 (class 0 OID 24691290)
-- Dependencies: 1706 2384 2352 2390
-- Data for Name: emp_empleadores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2362 (class 0 OID 24691384)
-- Dependencies: 1720 2390
-- Data for Name: emp_niveles_formaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (5, 'Universidad', '2012-07-06 16:54:08.784', 'A', '2012-07-06 16:54:08.784', 1);
INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (6, 'Post Grado', '2012-07-06 16:55:09.795', 'A', '2012-07-06 16:55:09.795', 1);
INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (9, 'Doctorado', '2012-07-06 16:56:03.717', 'A', '2012-07-06 16:56:03.717', 1);
INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (10, 'Otros', '2012-07-06 16:56:10.82', 'A', '2012-07-06 16:56:10.82', 1);
INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (8, 'Maestria', '2012-07-06 16:55:50.542', 'A', '2012-07-06 16:55:50.542', 1);
INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (1, 'Primaria', '2012-07-06 16:53:14.112', 'A', '2012-07-06 16:53:14.112', 1);
INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (4, 'Tecnico', '2012-07-06 16:54:01.76', 'A', '2012-07-06 16:54:01.76', 1);
INSERT INTO emp_niveles_formaciones (id_nivel_formacion, nivel_formacion, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (2, 'Secundaria', '2012-07-06 16:53:51.055', 'A', '2012-07-06 16:53:51.055', 1);


--
-- TOC entry 2351 (class 0 OID 24691305)
-- Dependencies: 1708 2350 2352 2343 2362 2390
-- Data for Name: emp_empleados_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2376 (class 0 OID 24691492)
-- Dependencies: 1737 2390
-- Data for Name: emp_tipo_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_tipo_establecimientos (id_tipo_establecimiento, tipo_establecimiento, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (1, 'Instituto', '2012-07-06 17:11:13.502', 'A', '2012-07-06 17:11:13.502', 1);
INSERT INTO emp_tipo_establecimientos (id_tipo_establecimiento, tipo_establecimiento, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (2, 'Universidad', '2012-07-06 17:11:30.988', 'A', '2012-07-06 17:11:30.988', 1);
INSERT INTO emp_tipo_establecimientos (id_tipo_establecimiento, tipo_establecimiento, fec_registro, estado, fec_modificacion, ult_usuario) VALUES (3, 'Colegio', '2012-07-06 17:29:07.107', 'A', '2012-07-06 17:29:07.107', 1);


--
-- TOC entry 2353 (class 0 OID 24691319)
-- Dependencies: 1710 2376 2390
-- Data for Name: emp_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_establecimientos (id_establecimiento, establecimiento, sigla, fec_registro, estado, id_tipo_est, fec_modificacion, ult_usuario) VALUES (1, 'Colegio Santa Ana', 'Santa Ana', '2012-07-06 17:29:26.193', 'A', 3, '2012-07-06 17:29:26.193', 1);
INSERT INTO emp_establecimientos (id_establecimiento, establecimiento, sigla, fec_registro, estado, id_tipo_est, fec_modificacion, ult_usuario) VALUES (2, 'Universidad Juan Misael Saracho', 'UAJMS', '2012-07-06 17:30:34.511', 'A', 2, '2012-07-06 17:30:34.511', 1);
INSERT INTO emp_establecimientos (id_establecimiento, establecimiento, sigla, fec_registro, estado, id_tipo_est, fec_modificacion, ult_usuario) VALUES (3, 'Colegio Nacional San Luis', 'CNSL', '2012-07-06 17:31:47.419', 'A', 3, '2012-07-06 17:31:47.419', 1);


--
-- TOC entry 2354 (class 0 OID 24691326)
-- Dependencies: 1711 2350 2362 2353 2390
-- Data for Name: emp_estudios_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2355 (class 0 OID 24691333)
-- Dependencies: 1712 2350 2352 2343 2390
-- Data for Name: emp_experiencias_laborales; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2377 (class 0 OID 24691499)
-- Dependencies: 1738 2390
-- Data for Name: emp_tipos_formularios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emp_tipos_formularios (id_tipo, tipo_formulario, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (1, 'Empleado', '2012-07-17 00:55:30.873', '2012-07-17 00:55:30.873', 'A', 1);
INSERT INTO emp_tipos_formularios (id_tipo, tipo_formulario, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (2, 'Empleador', '2012-07-17 00:55:49.244', '2012-07-17 00:55:49.244', 'A', 1);


--
-- TOC entry 2356 (class 0 OID 24691340)
-- Dependencies: 1713 2377 2384 2390
-- Data for Name: emp_formularios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2357 (class 0 OID 24691349)
-- Dependencies: 1715 2343 2356 2390
-- Data for Name: emp_frm_cargos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2358 (class 0 OID 24691356)
-- Dependencies: 1716 2345 2356 2390
-- Data for Name: emp_frm_cursos_capacitaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2359 (class 0 OID 24691363)
-- Dependencies: 1717 2362 2353 2390
-- Data for Name: emp_frm_niveles_establecimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2378 (class 0 OID 24691506)
-- Dependencies: 1739 2390
-- Data for Name: emp_titulos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2360 (class 0 OID 24691370)
-- Dependencies: 1718 2378 2356 2390
-- Data for Name: emp_frm_titulos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2363 (class 0 OID 24691391)
-- Dependencies: 1721 2349 2390
-- Data for Name: emp_ofertas_laborales; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2370 (class 0 OID 24691444)
-- Dependencies: 1730 2390
-- Data for Name: emp_rubros; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2364 (class 0 OID 24691401)
-- Dependencies: 1723 2390 2363 2370
-- Data for Name: emp_ofertas_rubros; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2365 (class 0 OID 24691408)
-- Dependencies: 1724 2390
-- Data for Name: emp_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2371 (class 0 OID 24691451)
-- Dependencies: 1731 2370 2352 2390
-- Data for Name: emp_rubros_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2366 (class 0 OID 24691415)
-- Dependencies: 1725 2365 2352 2371 2390
-- Data for Name: emp_productos_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2367 (class 0 OID 24691422)
-- Dependencies: 1726 2384 2390
-- Data for Name: emp_reuniones; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2368 (class 0 OID 24691430)
-- Dependencies: 1727 2349 2367 2390
-- Data for Name: emp_reuniones_empleadores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2369 (class 0 OID 24691436)
-- Dependencies: 1728 2367 2350 2390
-- Data for Name: emp_reuniones_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2372 (class 0 OID 24691458)
-- Dependencies: 1732 2390
-- Data for Name: emp_servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2373 (class 0 OID 24691465)
-- Dependencies: 1733 2352 2372 2371 2390
-- Data for Name: emp_servicios_empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2382 (class 0 OID 24691553)
-- Dependencies: 1752 2380
-- Data for Name: municipios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO municipios (id_municipio, id_localidad, municipio, sigla, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (1, 1, 'La Paz', 'Lpz', NULL, '2012-07-02 21:46:46.687', '2012-07-02 21:46:46.687', 1);


--
-- TOC entry 2374 (class 0 OID 24691473)
-- Dependencies: 1734 2352 2383 2390 2346 2385 2380 2382
-- Data for Name: emp_sucursales; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2379 (class 0 OID 24691519)
-- Dependencies: 1743 2344 2390
-- Data for Name: enlaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (2, 'Gestión de Estamecimientos', 'A', '2012-07-23 18:06:53.812', '2012-07-23 18:06:53.812', 1, 'establecimientos/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (3, 'Gestion Tipo de Est.', 'A', '2012-07-23 18:07:41.78', '2012-07-23 18:07:41.78', 1, 'tipo_establecimientos/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (5, 'Cargos', 'A', '2012-07-23 18:09:10.546', '2012-07-23 18:09:10.546', 1, 'cargos/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (6, 'Competencias', 'A', '2012-07-23 18:09:38.376', '2012-07-23 18:09:38.376', 1, 'competencias/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (7, 'Tipo de Competencias', 'A', '2012-07-23 18:10:00.481', '2012-07-23 18:10:00.481', 1, 'tipo_competencias/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (8, 'Tipo de Formularios', 'A', '2012-07-23 18:10:27.189', '2012-07-23 18:10:27.189', 1, 'tipo_formularios/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (9, 'Empresas', 'A', '2012-07-23 18:10:51.697', '2012-07-23 18:10:51.697', 1, 'empresas/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (10, 'Instituciones', 'A', '2012-07-23 18:11:17.779', '2012-07-23 18:11:17.779', 1, 'instituciones/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (11, 'Paises', 'A', '2012-07-23 18:11:44.394', '2012-07-23 18:11:44.394', 1, 'paises/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (14, 'Cursos de Capacitación', 'A', '2012-07-23 18:17:58.754', '2012-07-23 18:17:58.754', 1, 'cursos_capacitaciones/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (15, 'Personas', 'A', '2012-07-23 18:18:36.198', '2012-07-23 18:18:36.198', 1, 'personas/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (4, 'Niveles de Formación', 'A', '2012-07-23 18:08:45.037', '2012-07-03 00:00:00', 1, 'niveles/abm', 1, 1, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (18, 'F. Empleados ', 'A', '2012-07-23 18:42:20.71', '2012-07-23 18:42:20.71', 1, 'empleados/registro', 1, 2, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (12, 'Roles del Sistema', 'A', '2012-07-23 18:12:07.413', '2012-07-23 18:12:07.413', 1, 'roles/abm', 1, 4, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (13, 'Enlaces del Sistema', 'A', '2012-07-23 18:13:49.443', '2012-07-23 18:13:49.443', 1, 'enlaces/abm', 1, 4, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (19, 'Categoria de Enlaces', 'A', '2012-07-24 16:35:11.643', '2012-07-24 16:35:11.643', 1, 'categoria_enlaces/abm', 1, 4, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (16, 'Listar Usuarios', 'A', '2012-07-23 18:19:30.976', '2012-07-23 18:19:30.976', 1, 'usuarios', 1, 4, 0);
INSERT INTO enlaces (id_enlace, enlace, estado, fec_registro, fec_modificacion, ult_usuario, ruta_enlace, orden, id_categoria, id_padre_enlace) VALUES (1, 'Gestion enlaces', 'X', '2012-07-22 20:59:26.077', '2012-07-22 20:59:26.077', 1, 'enlaces/abm', 1, 4, 0);


--
-- TOC entry 2387 (class 0 OID 24691609)
-- Dependencies: 1767 2390
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (1, 'Administrador', 'A', '2012-07-02 22:11:56.457', '2012-07-02 22:11:56.457', 1);
INSERT INTO roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (2, 'Empadronador', 'A', '2012-07-22 19:19:16.149', '2012-07-22 19:19:16.149', 1);
INSERT INTO roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (3, 'Empleado', 'A', '2012-07-22 20:58:14.14', '2012-07-22 20:58:14.14', 1);
INSERT INTO roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (4, 'Empleador', 'A', '2012-07-22 20:58:19.878', '2012-07-22 20:58:19.878', 1);
INSERT INTO roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (5, 'Encargado del Proyecto', 'A', '2012-07-22 20:58:36.81', '2012-07-22 20:58:36.81', 1);
INSERT INTO roles (id_rol, rol, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (6, 'Educador', 'A', '2012-07-24 17:18:25.639', '2012-07-24 17:18:25.639', 1);


--
-- TOC entry 2381 (class 0 OID 24691544)
-- Dependencies: 1750 2379 2387 2390
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (9, 6, 2, 'A', '2012-07-24 17:26:18.773', '2012-07-24 17:26:18.773', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (10, 6, 6, 'A', '2012-07-24 17:26:18.783', '2012-07-24 17:26:18.783', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (11, 6, 18, 'A', '2012-07-24 17:26:18.783', '2012-07-24 17:26:18.783', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (18, 5, 2, 'A', '2012-07-24 17:28:25.157', '2012-07-24 17:28:25.157', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (19, 5, 3, 'A', '2012-07-24 17:28:25.167', '2012-07-24 17:28:25.167', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (20, 5, 5, 'A', '2012-07-24 17:28:25.177', '2012-07-24 17:28:25.177', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (21, 5, 6, 'A', '2012-07-24 17:28:25.177', '2012-07-24 17:28:25.177', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (22, 5, 9, 'A', '2012-07-24 17:28:25.177', '2012-07-24 17:28:25.177', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (23, 5, 14, 'A', '2012-07-24 17:28:25.177', '2012-07-24 17:28:25.177', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (24, 1, 2, 'A', '2012-07-24 18:40:24.897', '2012-07-24 18:40:24.897', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (25, 1, 3, 'A', '2012-07-24 18:40:24.897', '2012-07-24 18:40:24.897', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (26, 1, 5, 'A', '2012-07-24 18:40:24.897', '2012-07-24 18:40:24.897', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (27, 1, 6, 'A', '2012-07-24 18:40:24.897', '2012-07-24 18:40:24.897', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (28, 1, 7, 'A', '2012-07-24 18:40:24.907', '2012-07-24 18:40:24.907', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (29, 1, 8, 'A', '2012-07-24 18:40:24.907', '2012-07-24 18:40:24.907', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (30, 1, 9, 'A', '2012-07-24 18:40:24.907', '2012-07-24 18:40:24.907', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (31, 1, 10, 'A', '2012-07-24 18:40:24.917', '2012-07-24 18:40:24.917', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (32, 1, 11, 'A', '2012-07-24 18:40:24.917', '2012-07-24 18:40:24.917', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (33, 1, 14, 'A', '2012-07-24 18:40:24.917', '2012-07-24 18:40:24.917', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (34, 1, 15, 'A', '2012-07-24 18:40:24.917', '2012-07-24 18:40:24.917', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (35, 1, 4, 'A', '2012-07-24 18:40:24.927', '2012-07-24 18:40:24.927', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (36, 1, 18, 'A', '2012-07-24 18:40:24.957', '2012-07-24 18:40:24.957', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (37, 1, 12, 'A', '2012-07-24 18:40:24.957', '2012-07-24 18:40:24.957', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (38, 1, 13, 'A', '2012-07-24 18:40:24.957', '2012-07-24 18:40:24.957', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (39, 1, 19, 'A', '2012-07-24 18:40:24.957', '2012-07-24 18:40:24.957', 1);
INSERT INTO menus (id_menu, id_rol, id_enlace, estado, fec_registro, fec_modificacion, ult_usuario) VALUES (40, 1, 16, 'A', '2012-07-24 18:40:24.957', '2012-07-24 18:40:24.957', 1);


--
-- TOC entry 2388 (class 0 OID 24691632)
-- Dependencies: 1776 2346 2350 2380 2382 2383 2385 2390
-- Data for Name: ubicaciones_geograficas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2389 (class 0 OID 24691639)
-- Dependencies: 1777 2387 2390 2390
-- Data for Name: usr_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usr_roles (id_usr_rol, id_usuario, id_rol, fec_registro, fec_modificacion, estado, ult_usuario) VALUES (1, 1, 1, '2012-07-02 22:13:00.118', '2012-07-02 22:13:00.118', 'A', 1);


-- Completed on 2012-07-25 13:06:59

--
-- PostgreSQL database dump complete
--

