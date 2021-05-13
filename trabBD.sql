CREATE TABLE USUARIOS(
	ID INTEGER,
    nomeCompleto VARCHAR(150),
    DATANASCIMENTO DATE,
    PRIMARY KEY(ID)
);

CREATE TABLE PAGINAS(
	quantCurtias INTEGER,
    nomePagina VARCHAR(150),
    dataCriada DATE,
    PRIMARY KEY(nomePagina)
);

CREATE TABLE CURTE(
	ID INTEGER,
    nomePagina VARCHAR(150),
    PRIMARY KEY(nomePagina,ID),
    FOREIGN KEY(ID) REFERENCES USUARIOS(ID),
    FOREIGN KEY(nomePagina) REFERENCES PAGINAS(nomePagina)
);

CREATE TABLE GRUPOS(
	nome VARCHAR(150),
    tema VARCHAR(150),
    quantMembros integer,
    PRIMARY KEY(nome)
);

CREATE TABLE PARTICIPA(
	nome VARCHAR(150),
    ID INTEGER,
    PRIMARY KEY(nome,ID),
    FOREIGN KEY(ID) REFERENCES USUARIOS(ID),
    FOREIGN KEY(nome) REFERENCES GRUPOS(nome)
);

CREATE TABLE CHECKIN(
	localizacao VARCHAR(150),
    dataCI DATE,
    horas time,
    PRIMARY KEY(localizacao)
);

CREATE TABLE EFETUA(
	localizacao VARCHAR(150),
    ID INTEGER,
    PRIMARY KEY(localizacao,ID),
    FOREIGN KEY(ID) REFERENCES USUARIOS(ID),
    FOREIGN KEY(localizacao) REFERENCES CHECKIN(localizacao)
);

CREATE TABLE PUBLICACAO(
	linkPublicacao VARCHAR(250),
    dataPubli DATE,
    conteudo varchar(1000),
    ID INTEGER,
    PRIMARY KEY(linkPublicacao),
    fOREIGN KEY(id) REFERENCES USUARIOS(ID)
);

CREATE TABLE NETOPREFERIDO(
	nomeNeto VARCHAR(250),
    idade integer,
    sexo char,
    CPF INTEGER,
    ID INTEGER,
    PRIMARY KEY(CPF),
    fOREIGN KEY(id) REFERENCES USUARIOS(ID)
);

CREATE TABLE MISSAPREFERIDA(
	endereco VARCHAR(250),
    padre VARCHAR(100),
    hora time,
    dia varchar(50),
    ID INTEGER,
    PRIMARY KEY(endereco),
    fOREIGN KEY(id) REFERENCES USUARIOS(ID)
);

CREATE TABLE INFORMACOESMEDICAS(
	cartaoSus INTEGER,
    tipoSanguineo VARCHAR(5),
    remediosQueToma varchar(500),
    doencas varchar(500),
    ID INTEGER,
    PRIMARY KEY(cartaoSus),
    fOREIGN KEY(id) REFERENCES USUARIOS(ID)
);

CREATE TABLE DADOS(
	email VARCHAR(100),
    nome VARCHAR(100),
    celular INTEGER,
    nascimento DATE,
    ID INTEGER,
    PRIMARY KEY(EMAIL),
    fOREIGN KEY(id) REFERENCES USUARIOS(ID)
);

CREATE TABLE JOGOS(
	idJogo INTEGER,
    nomeNosJogos VARCHAR(50),
    resultadosJogosAnteriores VARCHAR(1000),
    PRIMARY KEY(idJogo)
);

CREATE TABLE JOGODOBICHO(
	bichos VARCHAR(1000),
    bichosSorteados VARCHAR(500),
    apostaFeita VARCHAR(100),
    idJogo INTEGER,
    PRIMARY KEY(idJogo),
    FOREIGN KEY(idJogo) REFERENCES JOGOS(idJogo) ON DELETE CASCADE
);

CREATE TABLE BINGO(
	cartela VARCHAR(1000),
    numeroSorteado INTEGER,
    idJogo INTEGER,
    PRIMARY KEY(idJogo),
    FOREIGN KEY(idJogo) REFERENCES JOGOS(idJogo) ON DELETE CASCADE
);

