create database academyfuturo
use academyfuturo

CREATE TABLE cadastro (
    codpessoa  int PRIMARY KEY,
    Datanascimento varchar(10),
    Cidade varchar(30),
    CPF varchar(15),
    Nome varcahr(45),
    Endereço varchar(45),
    Bairro varchar(45),
    Estado varchar(45),
    Cep varchar(9),
    Celular varchar(20),
    Email varchar(45),
    senha varchar(20),
    esco_voluntario varchar(45),
    esco_participante varchar(45)
);

CREATE TABLE participantes (
    codmatricula int PRIMARY KEY,
    escoprojeto varchar(5),
    quant varchar(10)
);

CREATE TABLE Voluntarios (
    Datinicio varchar(20),
    esco_ensino varchar(15),
    codvoluntario int PRIMARY KEY,
    coddocente varchar(15)
);

CREATE TABLE Oficinas (
    codoficinas int PRIMARY KEY,
    musica varchar(15),
    capoeira varchar(15),
    Art_cenicas varchar(15),
    Artesanato varchar(15),
    mec_eletrica varchar(15),
    adolesc_aprendiz varchar(15),
    ofi_aprendizagem varchar(15),
    biblioteca varchar(15),
    inclu_digital varchar(15),
    fk_participantes_codmatricula int,
    fk_Voluntarios_codvoluntario int
);

