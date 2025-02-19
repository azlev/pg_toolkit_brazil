CREATE EXTENSION pg_toolkit_brazil;

CREATE TABLE pessoa(
    cpf cpf NOT NULL,
    PRIMARY KEY (cpf)
);
\d pessoa
-- Valid and generated CPFs using: https://theonegenerator.com/pt/geradores/documentos/gerador-de-cpf/
INSERT INTO pessoa VALUES (cpf '40100276300'), (16426332836);
SELECT * FROM pessoa ORDER BY cpf;

-- invalid CPFs
SELECT cpf '12345';
SELECT cpf '99';
SELECT cpf '123456789012';
SELECT cpf '11111111111';
SELECT cpf '22222222222';
SELECT cpf '33333333333';
SELECT cpf '44444444444';
SELECT cpf '55555555555';
SELECT cpf '66666666666';
SELECT cpf '77777777777';
SELECT cpf '88888888888';
SELECT cpf '99999999999';
SELECT cpf '00000000000';

-- operators
SELECT cpf '40100276300' =  cpf '40100276300';
SELECT cpf '40100276300' <> cpf '16426332836';
SELECT cpf '40100276300' <  cpf '16426332836';
SELECT cpf '40100276300' <= cpf '16426332836';
SELECT cpf '40100276300' >= cpf '16426332836';
SELECT cpf '40100276300' >  cpf '16426332836';