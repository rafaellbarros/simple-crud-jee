--------------------------------------------------------
--  DDL for Table tb_cliente
--------------------------------------------------------
DROP TABLE IF EXISTS tb_cliente;

CREATE TABLE tb_cliente
(
    id SERIAL NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

COMMENT ON TABLE public.tb_cliente IS 'Registros de clientes';
COMMENT ON COLUMN public.tb_cliente.id IS 'Id de identificacão do cliente';
COMMENT ON COLUMN public.tb_cliente.nome IS 'Nome do cliente';
COMMENT ON COLUMN public.tb_cliente.sobrenome IS 'Sobrenome do cliente';
COMMENT ON COLUMN public.tb_cliente.email IS 'Email do cliente';
