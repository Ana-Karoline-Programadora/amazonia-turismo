-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE usuarios_admin (
id_usuario INTEGER PRIMARY KEY,
nome_usuario VARCHAR(255),
email_usuario VARCHAR(255),
senha_usuario VARCHAR(255),
data_cadastro_usuario DATETIME
)

CREATE TABLE cursos (
id_curso INTEGER PRIMARY KEY,
titulo_curso VARCHAR(255),
descricao_curso VARCHAR(255),
link_curso VARCHAR(255),
tipo_curso VARCHAR(255),
atividade_curso CHAR(1),
id_acao INTEGER
)

CREATE TABLE historico_acoes (
id_acao INTEGER PRIMARY KEY,
id_usuario INTEGER,
id_curso INTEGER,
descricao_acao VARCHAR(255),
data_acao DATETIME,
id_usuario_fk INTEGER,
id_curso_fk INTEGER,
FOREIGN KEY(id_usuario_fk) REFERENCES cursos (id_curso),
FOREIGN KEY(id_curso_fk) REFERENCES usuarios_admin (id_usuario)
)

ALTER TABLE cursos ADD FOREIGN KEY(id_acao) REFERENCES historico_acoes (id_acao)
