CREATE TABLE funcionario (
    codigo INTEGER PRIMARY KEY,
    nome TEXT,
    sexo CHAR(1),
    dt_nasc DATE,
    salario DECIMAL(10, 2),
    cod_depto INTEGER
);

CREATE TABLE departamento (
    codigo INTEGER PRIMARY KEY,
    descricao TEXT,
    cod_gerente INTEGER
);

CREATE TABLE projeto (
    codigo INTEGER PRIMARY KEY,
    nome TEXT,
    descricao TEXT,
    cod_depto INTEGER,
    cod_responsavel INTEGER,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE atividade (
    codigo INTEGER PRIMARY KEY,
    nome TEXT,
    descricao TEXT,
    cod_responsavel INTEGER,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE atividade_projeto (
    cod_projeto INTEGER,
    cod_atividade INTEGER,
    PRIMARY KEY (cod_projeto, cod_atividade),
    FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
    FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo)
);