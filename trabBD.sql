#Link pro git https://github.com/PabloSSena/TrabalhoBD1

CREATE TABLE NETOPREFERIDO(
	nomeNeto VARCHAR(250),
    idade integer,
    sexo char,
    CPF INTEGER,
    PRIMARY KEY(CPF)
);

CREATE TABLE MISSAPREFERIDA(
	endereco VARCHAR(250),
    padre VARCHAR(100),
    hora time,
    dia varchar(50),
    PRIMARY KEY(endereco)
);

CREATE TABLE USUARIOS(
	ID INTEGER,
    nomeCompleto VARCHAR(150),
    DATANASCIMENTO DATE,
    CPFNeto INTEGER,
    enderecoMissa VARCHAR(250),
    PRIMARY KEY(ID),
    FOREIGN KEY(CPFNeto) REFERENCES NETOPREFERIDO(CPF),
    FOREIGN KEY(enderecoMissa) REFERENCES MISSAPREFERIDA(endereco)
    
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
    resultadoJogosAnteriores VARCHAR(1000),
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

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Felipe Augusto','13','M','142');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Andr?? Savaro','14','M','111');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Camila Ballestrin','20','F','112');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Bella Portugal','11','F','114');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Bianca Ferreira','16','F','115');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Pablo Sena','18','M','116');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Ana Silva','10','F','117');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Isabella Bello','12','F','118');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Gustavo Noguti','18','M','119');

INSERT INTO NETOPREFERIDO(nomeNeto,idade,sexo,CPF)
VALUES('Isabela de Lucena','15','F','120');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Guarani n?? 531','Marcelo Rossi','10:00','Segunda-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Guilherme de Paula n?? 20','Pedro Augusto','11:00','Segunda-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Guilherme de Paula n?? 300','Marcelo Rossi','10:00','Ter??a-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Augusta n?? 10','Sergio Cailo','15:00','Quinta-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua fevereiro n?? 202','Amado Pereira','10:00','Quarta-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua boa n?? 2030','Marcelo Feli??','10:00','Segunda-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Franciscana n?? 200','Pedro Andr??','16:00','Quinta-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Fernanda n?? 50','Augusto Luis','10:00','Segunda-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Camila n?? 500','Marcelo Rossi','08:00','Ter??a-feira');

INSERT INTO MISSAPREFERIDA(endereco,padre,hora,dia)
VALUES('Rua Americana n?? 1120','Pedro Henrique','09:00','Segunda-feira');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,CPFNeto,enderecoMissa)
VALUES('1', 'Alceu pereira','1995-02-21','112','Rua Guarani n?? 531');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('2', 'Claudia Moreira','1951-04-12','Rua Guilherme de Paula n?? 20');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('3', 'Pedro Andre','1952-05-09','Rua Guilherme de Paula n?? 300');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('4', 'Felipe Andre','1960-09-09','Rua Augusta n?? 10');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('5', 'Andreia Moreira','1997-07-09','Rua fevereiro n?? 202');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('6', 'Adilson Santos','1997-01-10','Rua boa n?? 2030');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('7', 'Augusto Silva','1998-01-09','Rua Franciscana n?? 200');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('8', 'Bruna Dos Anjos','1997-02-10','Rua Fernanda n?? 50');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('9', 'Lucia Fernanda','1954-12-11','Rua Camila n?? 500');

INSERT INTO USUARIOS(ID,nomeCompleto,DATANASCIMENTO,enderecoMissa)
VALUES('10', 'Maria Dos Santos','1999-05-19','Rua Americana n?? 1120');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('1', 'Eu amo gatos','1998-06-21');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('1000', 'Corinthians meu amor','1990-08-22');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('11700', 'South America Memes','1989-12-09');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('9877', 'SADBOY','2020-09-21');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('89000', 'Odeio Segundas','2020-12-10');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)      
VALUES('50000', 'Musicas brasileiras','2020-11-12');			

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('34000', 'Vines e tiktoks','2020-11-20');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('23341', 'Youtubers da depress??o','2020-11-20');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('3400', 'Dicas Confeitaria','2020-01-20');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('19000', 'Aprenda Ingles','2020-11-20');

INSERT INTO PAGINAS(quantCurtias,nomePagina,dataCriada)
VALUES('10300', 'Memes','2020-12-02');

INSERT INTO CURTE(ID,nomePagina)
VALUES('1', 'Memes');

INSERT INTO CURTE(ID,nomePagina)
VALUES('2', 'Eu amo gatos');

INSERT INTO CURTE(ID,nomePagina)
VALUES('3', 'Corinthians meu amor');

INSERT INTO CURTE(ID,nomePagina)
VALUES('4', 'South America Memes');

INSERT INTO CURTE(ID,nomePagina)
VALUES('5', 'SADBOY');

INSERT INTO CURTE(ID,nomePagina)
VALUES('6', 'Odeio Segundas');

INSERT INTO CURTE(ID,nomePagina)
VALUES('7', 'Musicas brasileiras');

INSERT INTO CURTE(ID,nomePagina)
VALUES('8', 'Vines e tiktoks');

INSERT INTO CURTE(ID,nomePagina)
VALUES('9', 'Youtubers da depress??o');

INSERT INTO CURTE(ID,nomePagina)
VALUES('9', 'Dicas confeitaria');

INSERT INTO CURTE(ID,nomePagina)
VALUES('10', 'Aprenda Ingles');

INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Idosas artistas', 'Arte','19822');

INSERT INTO GRUPOS(nome,tema,quantMembros)                  
VALUES('Receitas de cozinha', 'Culin??ria','29422');			
                                                             
INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Clube do croche', 'Croche','9876');

INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Floristas amadoras', 'Flores','1385');

INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Tempos Antigos', 'Nostalgia','3000');

INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Clube de tenis de mesa', 'Esporte','6000');

INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Vendas de usados', 'Vendas','194822');

INSERT INTO GRUPOS(nome,tema,quantMembros)                                 
VALUES('Maratonas Terceira Idade', 'Esporte','87542');                     
                                                                           
INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Maquiagem', 'Beleza','13445');

INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Estrangeiros no Brasil', 'estilo de vida','192');

INSERT INTO GRUPOS(nome,tema,quantMembros)
VALUES('Clube do livro', 'Leitura','1932');

INSERT INTO PARTICIPA(ID,nome)
VALUES('1', 'Idosas artistas');

INSERT INTO PARTICIPA(ID,nome)
VALUES('2', 'Clube do croche');

INSERT INTO PARTICIPA(ID,nome)
VALUES('3', 'Floristas amadoras');

INSERT INTO PARTICIPA(ID,nome)
VALUES('4', 'Clube de tenis de mesa');

INSERT INTO PARTICIPA(ID,nome)
VALUES('5', 'Vendas de usados');

INSERT INTO PARTICIPA(ID,nome)
VALUES('6', 'Maratonas Terceira Idade');

INSERT INTO PARTICIPA(ID,nome)
VALUES('7', 'Maquiagem');

INSERT INTO PARTICIPA(ID,nome)
VALUES('8', 'Estrangeiros no Brasil');

INSERT INTO PARTICIPA(ID,nome)
VALUES('9', 'Tempos Antigos');

INSERT INTO PARTICIPA(ID,nome)
VALUES('10', 'Clube do livro');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Cayenna', '2021-10-05','19:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Bella Pizza', '2021-10-06','20:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Pappaludi', '2021-10-08','19:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Bosque', '2021-11-05','9:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Pastel do Rafa', '2021-12-05','13:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Cambucca', '2021-10-02','12:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Mercado Carreira', '2021-10-02','14:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Cinemaxs', '2021-01-05','20:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Bar do italiano', '2021-11-05','22:00');

INSERT INTO CHECKIN(localizacao,dataCI,horas)
VALUES('Yazigi', '2021-09-05','11:00');

INSERT INTO EFETUA(ID,localizacao)
VALUES('1','Cayenna');

INSERT INTO EFETUA(ID,localizacao)
VALUES('2','Bella Pizza');

INSERT INTO EFETUA(ID,localizacao)
VALUES('3','Pappaludi');

INSERT INTO EFETUA(ID,localizacao)
VALUES('4','Bosque');

INSERT INTO EFETUA(ID,localizacao)
VALUES('5','Pastel do Rafa');

INSERT INTO EFETUA(ID,localizacao)
VALUES('6','Cambucca');

INSERT INTO EFETUA(ID,localizacao)
VALUES('7','Mercado Carreira');

INSERT INTO EFETUA(ID,localizacao)
VALUES('8','Cinemaxs');

INSERT INTO EFETUA(ID,localizacao)
VALUES('9','Bar do Italiano');

INSERT INTO EFETUA(ID,localizacao)
VALUES('10','Yazigi');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/?fbid=327509915406399&set=a.283906939766697','2021-04-23','Lamento pela sua perda','1');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/fbid=327509915406399&set=a.283906939766697','2021-04-22','Saudades minha terra','2');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/?fbid=3275099154399&set=a.2839939766697','2021-04-21','Oii filho como mando mesagem privado??','1');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/bid=3275099&set=a.2839766697','2021-04-12','Linda minha flor','2');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/fbid=32066697','2021-04-29','To triste','5');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/fbid=9&set=a.283906939766697','2021-04-20','Quero tomar ch??','1');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/915406399&set=a.283906939766697','2021-05-23','Pipoquinha e filminho huuuumm','6');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/fbid=32750991540&set=a.283906697','2021-05-23','Gente alguem quer adotar uma gata? to disponivel','8');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/406399&set=a.2839766697','2021-04-21','Numero de pizza pesquisar','5');

INSERT INTO PUBLICACAO(linkPublicacao,dataPubli,conteudo,ID)
VALUES('https://www.IdososAqui.com/fbid=32750991540','2021-02-23','Ai que sol horrivel','10');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('12232','O-','Nenhum','Nenhuma','1');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('13432','B-','Slergin','Rinite','2');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('12273','O+','Nenhum','Gripe','3');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('15673','B+','Antibi??ticos','Enxaqueca cronica','4');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('16273','O+','Doril','Gripe','3');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('17873','A+','Nenhum','Nenhuma','4');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('13456','O+','Nenhum','Rinite','5');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('12160','B-','Nenhum','Nenhuma','6');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('88886','A+','Biguanidas','Diabetes','7');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('82386','B-','Nenhum','Nenhuma','8');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('12381','A+','Nenhum','Nenhuma','9');

INSERT INTO INFORMACOESMEDICAS(cartaoSus,tipoSanguineo,remediosQueToma,doencas,ID)
VALUES('86386','AB','Nenhum','Nenhuma','10');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Alceu@gmail.com','Alceu Pereira','998769299','1995-02-21','1');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Claudia@gmail.com','Claudia Moreira','998769291','1951-04-12','2');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Pedro@gmail.com','Pedro Andre','998769281','1952-05-09','3');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Felipe@gmail.com','Felipe Andre','995769281','1960-09-09','4');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Andreia@gmail.com','Andreia Moreira','885769281','1997-12-09','5');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Adilson@gmail.com','Adilson Santos','885769889','1997-12-10','6');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Augusto@gmail.com','Augusto Silva','825969889','1998-12-09','7');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Bruna@gmail.com','Bruna dos Anjos','822363889','1997-11-10','8');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Lucia@gmail.com','Lucia Fernanda','825969800','1954-03-11','9');

INSERT INTO DADOS(email,nome,celular,nascimento,ID)
VALUES('Maria@gmail.com','Maria dos Santos','825969811','1999-05-19','10');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('1','jogaYjoga','Ganhou');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('2','GamerVelho','Ganhou');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('3','Apostadora','Perdeu');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('4','20matar','Perdeu');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('5','Vit??ria','Ganhou');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('6','Kian','Ganhou');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('7','Gal','Perdeu');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('8','Erin','Ganhou');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('9','Cellbit','Perdeu');

INSERT INTO JOGOS(idJogo,nomeNosJogos,resultadoJogosAnteriores)
VALUES('10','Gamerzinho','Ganhou');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('1','porco','Cachorro');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('2','Gato','Cachorro');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('3','porco','Porco');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('4','Cachorro','Cachorro');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('5','porco','Gato');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('6','Gato','Gato');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('7','porco','Porco');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('8','Cachorro','Gaivota');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('9','Gaivota','Porco');

INSERT INTO JOGODOBICHO(idJogo,bichosSorteados,apostaFeita)
VALUES('10','porco','Ouri??o');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('22,12,34','12','1');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('11,12,34','11','2');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('10,12,55','11','3');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('22,12,55','12','4');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('11,13,54','13','5');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('10,12,55','18','6');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('19,12,55','10','7');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('13,12,55','16','8');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('18,12,51','17','9');

INSERT INTO BINGO(cartela,numeroSorteado,idJogo)
VALUES('11,05,52','11','10');

#Encontre o nome do usuario que curte a pagina eu amo gatos
SELECT U.nomeCompleto
FROM USUARIOS U
WHERE U.ID IN (SELECT C.ID
				FROM CURTE C
                WHERE C.nomePagina = 'Eu amo gatos');

#Encontre o numero de usu??rios que n??o possuem doen??a
SELECT COUNT(U.nomeCompleto)
FROM USUARIOS U
WHERE U.ID IN (SELECT IM.ID
				FROM INFORMACOESMEDICAS IM
                WHERE IM.doencas = 'Nenhuma');
                
#Selecione todos os usuarios que ja foram no bosque ou no yazigi
SELECT U.nomeCompleto, E.localizacao
FROM USUARIOS U, EFETUA E
WHERE E.localizacao = 'yazigi'
AND U.ID = E.ID
UNION
SELECT U.nomeCompleto, E.localizacao
FROM USUARIOS U, EFETUA E
WHERE E.localizacao = 'bosque'
AND U.ID = E.ID;

#Encontre o nome dos usuarios que possuam gripe ou rinite
SELECT  U.nomeCompleto,IM.doencas
FROM USUARIOS U,INFORMACOESMEDICAS IM
WHERE U.ID = IM.ID
AND IM.doencas = 'Gripe'
UNION
SELECT DISTINCT U.nomeCompleto,IM.doencas
FROM USUARIOS U,INFORMACOESMEDICAS IM
WHERE U.ID = IM.ID
AND IM.doencas = 'Rinite';

#Encontre o nome e lugar que todos os usu??rio com ID maior que 5 realizaram CheckIn
SELECT DISTINCT U.nomeCompleto, E.localizacao
FROM USUARIOS U, EFETUA E
WHERE U.ID NOT IN (SELECT U.ID
				   FROM USUARIOS U
				   WHERE U.ID < 6)
AND U.ID = E.ID;

#Encontre todos os usu??rio com o tipo de sangue B-,B+ e seu cart??o do sus
SELECT DISTINCT U.nomeCompleto,IM.tipoSanguineo,IM.cartaoSus
FROM USUARIOS U,INFORMACOESMEDICAS IM
WHERE U.ID = IM.ID
AND IM.tipoSanguineo = 'B-'
UNION
SELECT DISTINCT U.nomeCompleto,IM.tipoSanguineo,IM.cartaoSus
FROM USUARIOS U,INFORMACOESMEDICAS IM
WHERE U.ID = IM.ID
AND IM.tipoSanguineo = 'B+';

#Encontre o Grupo com a maior quantidade de membros, o nome dele e o IP do usuario que participa
SELECT P.ID,G.nome, G.quantMembros
FROM GRUPOS G,PARTICIPA P 
WHERE G.nome = P.nome
AND G.quantMembros =  (SELECT MAX(G.quantMembros)
						 FROM GRUPOS G);

#Encontre os usu??rio que faze parte do grupo idosas artistas ou curte a pagina memes
SELECT U.nomeCompleto
FROM USUARIOS U, PARTICIPA P
WHERE P.nome = 'Idosas artistas'
AND U.ID = P.ID
UNION
SELECT U.nomeCompleto
FROM USUARIOS U, CURTE C
WHERE C.nomePagina = 'Memes'
AND U.ID = C.ID;

#Encontre o nome dos usu??rio que possuem neta preferida(MEMBRO DA TABELA NETOPREFERIDO COM SEXO=F)
SELECT U.nomeCompleto
FROM USUARIOS U
WHERE EXISTS(SELECT NP.nomeNeto
			 FROM NETOPREFERIDO NP
			 WHERE NP.sexo = 'F' AND NP.CPF = U.CPFNeto);

#Selecione usu??rios que suas missas preferidas n??o s??o na quinta feira
SELECT U.nomeCompleto
FROM USUARIOS U
WHERE U.enderecoMissa NOT IN (SELECT MS.endereco
							  FROM MISSAPREFERIDA MS
                              WHERE MS.dia = 'Quinta-feira');






						



                





