--
-- PostgreSQL database dump
--

\restrict vzlAkwDYpHcDQHDoGzTLj4lhjvwQzoJjoRnVqLveb12FMe4p5IFQaN9pUXhWEQF

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-11-21 02:56:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4954 (class 1262 OID 16533)
-- Name: BD_PaoDouradoMassas; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "BD_PaoDouradoMassas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


\unrestrict vzlAkwDYpHcDQHDoGzTLj4lhjvwQzoJjoRnVqLveb12FMe4p5IFQaN9pUXhWEQF
\connect "BD_PaoDouradoMassas"
\restrict vzlAkwDYpHcDQHDoGzTLj4lhjvwQzoJjoRnVqLveb12FMe4p5IFQaN9pUXhWEQF

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 4954
-- Name: DATABASE "BD_PaoDouradoMassas"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON DATABASE "BD_PaoDouradoMassas" IS 'Um trabalho da disciplina de Banco de Dados I';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16535)
-- Name: colaborador; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.colaborador (
    idcolaborador integer NOT NULL,
    nomecolaborador character varying(45) NOT NULL,
    cargocolaborador character varying(45),
    datainiciocolaborador date,
    experienciacolaborador character varying(45),
    salariocolaborador numeric(10,2),
    funcaocolaborador character varying(45),
    statuscolaborador smallint
);


--
-- TOC entry 217 (class 1259 OID 16534)
-- Name: colaborador_idcolaborador_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.colaborador_idcolaborador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 217
-- Name: colaborador_idcolaborador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.colaborador_idcolaborador_seq OWNED BY public.colaborador.idcolaborador;


--
-- TOC entry 226 (class 1259 OID 16573)
-- Name: despesa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.despesa (
    iddespesa integer NOT NULL,
    datadespesa date NOT NULL,
    valordespesa numeric(10,2) NOT NULL,
    tipodespesa character varying(45),
    colaborador_idcolaborador integer NOT NULL,
    estoque_iditemestoque integer
);


--
-- TOC entry 225 (class 1259 OID 16572)
-- Name: despesa_iddespesa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.despesa_iddespesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 225
-- Name: despesa_iddespesa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.despesa_iddespesa_seq OWNED BY public.despesa.iddespesa;


--
-- TOC entry 224 (class 1259 OID 16556)
-- Name: estoque; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.estoque (
    iditemestoque integer NOT NULL,
    nomeitemestoque character varying(45) NOT NULL,
    custoitemestoque numeric(10,2),
    quantidadeitemestoque integer,
    unidademedidaitemestoque character varying(45),
    fornecedor_idfornecedor integer NOT NULL,
    produto_idproduto integer
);


--
-- TOC entry 223 (class 1259 OID 16555)
-- Name: estoque_iditemestoque_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.estoque_iditemestoque_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 223
-- Name: estoque_iditemestoque_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.estoque_iditemestoque_seq OWNED BY public.estoque.iditemestoque;


--
-- TOC entry 220 (class 1259 OID 16542)
-- Name: fornecedor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fornecedor (
    idfornecedor integer NOT NULL,
    nomefornecedor character varying(45) NOT NULL,
    contatofornecedor character varying(45),
    enderecofornecedor character varying(200)
);


--
-- TOC entry 219 (class 1259 OID 16541)
-- Name: fornecedor_idfornecedor_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fornecedor_idfornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 219
-- Name: fornecedor_idfornecedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fornecedor_idfornecedor_seq OWNED BY public.fornecedor.idfornecedor;


--
-- TOC entry 229 (class 1259 OID 16601)
-- Name: itensvenda; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.itensvenda (
    venda_idvenda integer NOT NULL,
    produto_idproduto integer NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 16549)
-- Name: produto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produto (
    idproduto integer NOT NULL,
    nomeproduto character varying(45) NOT NULL,
    datavencimentoproduto date,
    tipoproduto character varying(45),
    origemproduto character varying(45)
);


--
-- TOC entry 221 (class 1259 OID 16548)
-- Name: produto_idproduto_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.produto_idproduto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 221
-- Name: produto_idproduto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.produto_idproduto_seq OWNED BY public.produto.idproduto;


--
-- TOC entry 228 (class 1259 OID 16590)
-- Name: venda; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.venda (
    idvenda integer NOT NULL,
    valorunivenda numeric(10,2),
    datavenda date NOT NULL,
    formapagamento character varying(45),
    quantidadevenda integer,
    colaborador_idcolaborador integer NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 16589)
-- Name: venda_idvenda_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.venda_idvenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 227
-- Name: venda_idvenda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.venda_idvenda_seq OWNED BY public.venda.idvenda;


--
-- TOC entry 4764 (class 2604 OID 16538)
-- Name: colaborador idcolaborador; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.colaborador ALTER COLUMN idcolaborador SET DEFAULT nextval('public.colaborador_idcolaborador_seq'::regclass);


--
-- TOC entry 4768 (class 2604 OID 16576)
-- Name: despesa iddespesa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despesa ALTER COLUMN iddespesa SET DEFAULT nextval('public.despesa_iddespesa_seq'::regclass);


--
-- TOC entry 4767 (class 2604 OID 16559)
-- Name: estoque iditemestoque; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estoque ALTER COLUMN iditemestoque SET DEFAULT nextval('public.estoque_iditemestoque_seq'::regclass);


--
-- TOC entry 4765 (class 2604 OID 16545)
-- Name: fornecedor idfornecedor; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fornecedor ALTER COLUMN idfornecedor SET DEFAULT nextval('public.fornecedor_idfornecedor_seq'::regclass);


--
-- TOC entry 4766 (class 2604 OID 16552)
-- Name: produto idproduto; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto ALTER COLUMN idproduto SET DEFAULT nextval('public.produto_idproduto_seq'::regclass);


--
-- TOC entry 4769 (class 2604 OID 16593)
-- Name: venda idvenda; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda ALTER COLUMN idvenda SET DEFAULT nextval('public.venda_idvenda_seq'::regclass);


--
-- TOC entry 4937 (class 0 OID 16535)
-- Dependencies: 218
-- Data for Name: colaborador; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.colaborador (idcolaborador, nomecolaborador, cargocolaborador, datainiciocolaborador, experienciacolaborador, salariocolaborador, funcaocolaborador, statuscolaborador) VALUES (1, 'Francisco Junior', 'Gerente', '2023-01-01', NULL, 3500.00, 'Administração', 1);
INSERT INTO public.colaborador (idcolaborador, nomecolaborador, cargocolaborador, datainiciocolaborador, experienciacolaborador, salariocolaborador, funcaocolaborador, statuscolaborador) VALUES (2, 'Igor Manoel Ciqueira', 'Padeiro', '2023-02-10', NULL, 2200.00, 'Produção', 1);
INSERT INTO public.colaborador (idcolaborador, nomecolaborador, cargocolaborador, datainiciocolaborador, experienciacolaborador, salariocolaborador, funcaocolaborador, statuscolaborador) VALUES (3, 'Jeane Rego da Silva', 'Padeiro', '2023-03-15', NULL, 2200.00, 'Produção', 1);
INSERT INTO public.colaborador (idcolaborador, nomecolaborador, cargocolaborador, datainiciocolaborador, experienciacolaborador, salariocolaborador, funcaocolaborador, statuscolaborador) VALUES (4, 'Marcos Barbosa de Sá', 'Padeiro', '2023-03-20', NULL, 2200.00, 'Produção', 1);
INSERT INTO public.colaborador (idcolaborador, nomecolaborador, cargocolaborador, datainiciocolaborador, experienciacolaborador, salariocolaborador, funcaocolaborador, statuscolaborador) VALUES (5, 'Caio Bezerra', 'Atendente', '2024-01-05', NULL, 1800.00, 'Vendas', 1);
INSERT INTO public.colaborador (idcolaborador, nomecolaborador, cargocolaborador, datainiciocolaborador, experienciacolaborador, salariocolaborador, funcaocolaborador, statuscolaborador) VALUES (6, 'Thiago Alvez', 'Atendente', '2024-02-01', NULL, 1800.00, 'Vendas', 1);


--
-- TOC entry 4945 (class 0 OID 16573)
-- Dependencies: 226
-- Data for Name: despesa; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.despesa (iddespesa, datadespesa, valordespesa, tipodespesa, colaborador_idcolaborador, estoque_iditemestoque) VALUES (1, '2025-11-10', 1335.00, 'Compra Matéria Prima', 1, 1);
INSERT INTO public.despesa (iddespesa, datadespesa, valordespesa, tipodespesa, colaborador_idcolaborador, estoque_iditemestoque) VALUES (2, '2025-11-12', 650.00, 'Material Limpeza', 1, 2);


--
-- TOC entry 4943 (class 0 OID 16556)
-- Dependencies: 224
-- Data for Name: estoque; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estoque (iditemestoque, nomeitemestoque, custoitemestoque, quantidadeitemestoque, unidademedidaitemestoque, fornecedor_idfornecedor, produto_idproduto) VALUES (1, 'Farinha de Trigo', 26.70, 50, 'Saco 5kg', 2, 1);
INSERT INTO public.estoque (iditemestoque, nomeitemestoque, custoitemestoque, quantidadeitemestoque, unidademedidaitemestoque, fornecedor_idfornecedor, produto_idproduto) VALUES (2, 'Papel Higiênico', 6.50, 100, 'Pacote', 3, NULL);
INSERT INTO public.estoque (iditemestoque, nomeitemestoque, custoitemestoque, quantidadeitemestoque, unidademedidaitemestoque, fornecedor_idfornecedor, produto_idproduto) VALUES (3, 'Presunto', 2.50, 30, 'Kg', 5, 5);


--
-- TOC entry 4939 (class 0 OID 16542)
-- Dependencies: 220
-- Data for Name: fornecedor; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fornecedor (idfornecedor, nomefornecedor, contatofornecedor, enderecofornecedor) VALUES (1, 'Coca Cola', '19.976.337/0001-67', 'Av Marinho Rufino');
INSERT INTO public.fornecedor (idfornecedor, nomefornecedor, contatofornecedor, enderecofornecedor) VALUES (2, 'Boitata Farinhas', '64.604.340/0001-04', 'Rua Jardim Jardinagem');
INSERT INTO public.fornecedor (idfornecedor, nomefornecedor, contatofornecedor, enderecofornecedor) VALUES (3, 'Higeniza Life', '19.739.889/0001-51', 'Rua Claro Clarividente');
INSERT INTO public.fornecedor (idfornecedor, nomefornecedor, contatofornecedor, enderecofornecedor) VALUES (4, 'Tody', '56.068.838/0001-71', 'Av Ultima Travessa Padrinho');
INSERT INTO public.fornecedor (idfornecedor, nomefornecedor, contatofornecedor, enderecofornecedor) VALUES (5, 'Frios Feitos', '64.341.278/0001-05', 'Travessa Travesseiro');
INSERT INTO public.fornecedor (idfornecedor, nomefornecedor, contatofornecedor, enderecofornecedor) VALUES (6, 'Rosquinhas Rosquentas', '61.577.778/0001-52', 'Rua Sadia Sadio');


--
-- TOC entry 4948 (class 0 OID 16601)
-- Dependencies: 229
-- Data for Name: itensvenda; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.itensvenda (venda_idvenda, produto_idproduto) VALUES (1, 2);
INSERT INTO public.itensvenda (venda_idvenda, produto_idproduto) VALUES (2, 4);
INSERT INTO public.itensvenda (venda_idvenda, produto_idproduto) VALUES (3, 7);
INSERT INTO public.itensvenda (venda_idvenda, produto_idproduto) VALUES (4, 5);


--
-- TOC entry 4941 (class 0 OID 16549)
-- Dependencies: 222
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (1, 'Pão de Queijo', '2025-11-21', 'Pão', 'Feito Manualmente');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (2, 'Pão Doce', '2025-11-22', 'Pão', 'Feito Manualmente');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (3, 'Bolo de Rolo', '2025-11-25', 'Bolo', 'Feito Manualmente');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (4, 'Bolo de Chocolate', '2025-11-25', 'Bolo', 'Feito Manualmente');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (5, 'Coxinha', '2025-11-20', 'Salgado', 'Feito Manualmente');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (6, 'Tortinha', '2025-11-23', 'Doce', 'Feito Manualmente');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (7, 'Coca Cola 2L', '2026-05-01', 'Bebida', 'Comprado');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (8, 'Todynho', '2026-02-15', 'Bebida', 'Comprado');
INSERT INTO public.produto (idproduto, nomeproduto, datavencimentoproduto, tipoproduto, origemproduto) VALUES (9, 'Rosquinha', '2025-12-10', 'Doce', 'Comprado');


--
-- TOC entry 4947 (class 0 OID 16590)
-- Dependencies: 228
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.venda (idvenda, valorunivenda, datavenda, formapagamento, quantidadevenda, colaborador_idcolaborador) VALUES (1, 1.50, '2025-11-18', 'Dinheiro', 3, 5);
INSERT INTO public.venda (idvenda, valorunivenda, datavenda, formapagamento, quantidadevenda, colaborador_idcolaborador) VALUES (2, 40.00, '2025-11-19', 'Cartão', 2, 5);
INSERT INTO public.venda (idvenda, valorunivenda, datavenda, formapagamento, quantidadevenda, colaborador_idcolaborador) VALUES (3, 3.00, '2025-11-20', 'Pix', 1, 6);
INSERT INTO public.venda (idvenda, valorunivenda, datavenda, formapagamento, quantidadevenda, colaborador_idcolaborador) VALUES (4, 5.00, '2025-11-20', 'Dinheiro', 2, 6);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 217
-- Name: colaborador_idcolaborador_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.colaborador_idcolaborador_seq', 12, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 225
-- Name: despesa_iddespesa_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.despesa_iddespesa_seq', 2, true);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 223
-- Name: estoque_iditemestoque_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.estoque_iditemestoque_seq', 6, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 219
-- Name: fornecedor_idfornecedor_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fornecedor_idfornecedor_seq', 12, true);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 221
-- Name: produto_idproduto_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.produto_idproduto_seq', 18, true);


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 227
-- Name: venda_idvenda_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.venda_idvenda_seq', 5, true);


--
-- TOC entry 4771 (class 2606 OID 16540)
-- Name: colaborador colaborador_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.colaborador
    ADD CONSTRAINT colaborador_pkey PRIMARY KEY (idcolaborador);


--
-- TOC entry 4779 (class 2606 OID 16578)
-- Name: despesa despesa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despesa
    ADD CONSTRAINT despesa_pkey PRIMARY KEY (iddespesa);


--
-- TOC entry 4777 (class 2606 OID 16561)
-- Name: estoque estoque_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (iditemestoque);


--
-- TOC entry 4773 (class 2606 OID 16547)
-- Name: fornecedor fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (idfornecedor);


--
-- TOC entry 4783 (class 2606 OID 16605)
-- Name: itensvenda itensvenda_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.itensvenda
    ADD CONSTRAINT itensvenda_pkey PRIMARY KEY (venda_idvenda, produto_idproduto);


--
-- TOC entry 4775 (class 2606 OID 16554)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (idproduto);


--
-- TOC entry 4781 (class 2606 OID 16595)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (idvenda);


--
-- TOC entry 4786 (class 2606 OID 16579)
-- Name: despesa fk_despesa_colaborador; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despesa
    ADD CONSTRAINT fk_despesa_colaborador FOREIGN KEY (colaborador_idcolaborador) REFERENCES public.colaborador(idcolaborador);


--
-- TOC entry 4787 (class 2606 OID 16584)
-- Name: despesa fk_despesa_estoque; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despesa
    ADD CONSTRAINT fk_despesa_estoque FOREIGN KEY (estoque_iditemestoque) REFERENCES public.estoque(iditemestoque);


--
-- TOC entry 4784 (class 2606 OID 16562)
-- Name: estoque fk_estoque_fornecedor; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT fk_estoque_fornecedor FOREIGN KEY (fornecedor_idfornecedor) REFERENCES public.fornecedor(idfornecedor);


--
-- TOC entry 4785 (class 2606 OID 16567)
-- Name: estoque fk_estoque_produto; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT fk_estoque_produto FOREIGN KEY (produto_idproduto) REFERENCES public.produto(idproduto);


--
-- TOC entry 4789 (class 2606 OID 16611)
-- Name: itensvenda fk_itens_produto; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.itensvenda
    ADD CONSTRAINT fk_itens_produto FOREIGN KEY (produto_idproduto) REFERENCES public.produto(idproduto);


--
-- TOC entry 4790 (class 2606 OID 16606)
-- Name: itensvenda fk_itens_venda; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.itensvenda
    ADD CONSTRAINT fk_itens_venda FOREIGN KEY (venda_idvenda) REFERENCES public.venda(idvenda);


--
-- TOC entry 4788 (class 2606 OID 16596)
-- Name: venda fk_venda_colaborador; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT fk_venda_colaborador FOREIGN KEY (colaborador_idcolaborador) REFERENCES public.colaborador(idcolaborador);


-- Completed on 2025-11-21 02:56:11

--
-- PostgreSQL database dump complete
--

\unrestrict vzlAkwDYpHcDQHDoGzTLj4lhjvwQzoJjoRnVqLveb12FMe4p5IFQaN9pUXhWEQF

