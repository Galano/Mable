declare @temp table (id int, nome varchar(255), tel varchar(255), responsavel varchar(255),  parent varchar(255))
insert into @temp values(1,'Abner Martins Evangelista Ribeiro','"2952-5012 /95397-1088 / 98020-3033 M�e /98078-5491 / 94940-8485 Pai/ 98078-5492 amanda irm�"','Izabel Tereza Martins   ','M�e');
insert into @temp values(2,'Adalberto Carlos Angelino','2983-6219 res/ 95330-6296 cel Cremilda','Jo�o Carlos Angelino ou  Cremilda                     ','Pai e Madrasta ');
insert into @temp values(3,'Adriano Ferreira  Macedo','99908-2437 (cel m�e)/ 96417-6522 (cel pai)','Maria Ferreira Macedo ','M�e');
insert into @temp values(4,'Adriano Prado Carvalho','2201-0831res/  97798-5858  cel m�e/ 98338-4262 cel Rinaldo  ','Vera Lucia Prado Carvalho','M�e');
insert into @temp values(5,'Afonso Cordeiro dos Santos Junior','95892-3765 cel m�e/96357-1753 cel Ver�nica irm�/952486135 cel Denis irm�o  ','Maria Jos� Cordeiro dos Santos','M�e');
insert into @temp values(6,'Agnes Gabriela Gon�alves do Nascimento','2951-0609 (Seu Francisco) /98058-4589 M�e','Maria Aparecida Gon�alves do Nascimento       ','M�e');
insert into @temp values(7,'Alan Ferreira dos Santos','96870-0819 cel Aparecida/ 2242-9694  Prazeres av�','','');
insert into @temp values(8,'Alexander Nogueira Chimati','2242-8651 res/95554-3953 m�e                     ','Marieta Nogueira Chimati','M�e');
insert into @temp values(9,'Alexandre Aparecido Pereira','9 6841-0167 Irm� Alessandra/ 9 5260-1699 Irm� Alessandra  ','Iraci Pedro de Sousa','M�e');
insert into @temp values(10,'Alexandre Moises Bas�lio','2983-0331 (res)','Eunice ou Jos� Basilio','M�e/ Pai');
insert into @temp values(11,'Alexandre Tatangelo da Silva','2981-4989 res/99707-5841 pai','Flavio Ferreira da Silva  ','Pai  ');
insert into @temp values(12,'Alexsandra Camargo de Oliveira',' 2247-2328 res /2241-7464 tia Vera/2358-5402','Isabel Camargo de Oliveira                        ','M�e');
insert into @temp values(13,'Alice Shu Hui Wong','5571-2016 (casa) /9 6511-8518 (Cel M�e) /9 6975-2016 (Cel Pai)','Maria da Concei��o ou Wong Kar Chu                                                                                    ','M�e e Pai ');
insert into @temp values(14,'Alison Felipe dos Santos','2951-0830 (Casa)/ 9 9866-1523 (Cel Rosana) ','Rosana Vianna de Lima','Tia');
insert into @temp values(15,'Amanda Felippe Brito','2992-7533 (Casa) /9 6701-1806 (Cel M�e)/2248-3889 (Av�) ','Rosana Felippe                                          ','M�e');
insert into @temp values(16,'Anderson Alves da Silva','2241-5972 res./98539-7845 cel pai/98146-5857 cel m�e/2992-2647 Tio Raimundo                      ','Marlene Alves da Silva','M�e');
insert into @temp values(17,'Andr� Correia da Silva','98305-2534 m�e /95168-7967 Cintia irm� / 93013-6002 Cintia irm�/ 99228-6294 VALDEMAR     ','Ieremitamara Ven�ncio da Silva ','M�e');
insert into @temp values(18,'Andr� Couto da Silva','96601-0019 m�e/ 2979-9533 Coml','Neide M�rcia Couto da Silva','M�e');
insert into @temp values(19,'Andr� Vaz dos Santos','2934-1373 res/ 98060-7528pai/96706-4574 m�e','Maria Helena Santos Vaz','M�e');
insert into @temp values(20,'Andr�ia ','2248-9900/2248-9901/2248-9905','','');
insert into @temp values(21,'Ang�lica Alves Vieira','2453-6604','','');
insert into @temp values(22,'Antonio Francisco de Andrade','2242-4848/995186358/975893827','','');
insert into @temp values(23,'Arnaldo Escanuela Jr','2241-8291/ 2241-2622(irm� Jose) / 9-7292-9583','Arnaldo ','');
insert into @temp values(24,'Bruna Ribeira Trindade','2972-1779 res av� / 95657-6724 cel m�e','Cristiane Vitoria Ribeira ','M�e');
insert into @temp values(25,'Bruno Agunzo','2989-5799  / 97352-5688cel m�e/98884-3307cel pai ','Maria Aparecida e Jose Carlos Agunzo        ','M�e e Pai ');
insert into @temp values(26,'Carla Aparecida Sousa Silva','"4419-6032 res./ 96372-2867 cel m�e /97147-0152 pai /2261-2365 com. ( cras Trememb�)"','Iara Cristina ','M�e');
insert into @temp values(27,'Carla Elena Da Silva','2453-6604','','');
insert into @temp values(28,'Carlos Eduardo da Silveira Lima','2201-7315/ 973143077 Carlos','Maria de Lourdes da Silveira ','M�e');
insert into @temp values(29,'Carlos Eduardo Maia','2994-4046/ 96732-1642 (Cel irm�o)/96202-6117 m�e','Dorival Maia  e Alice Camilo','Irm�o e M�e ');
insert into @temp values(30,'Carlos Roberto Santos da Silva','2967-1061/95379-3205','Edite Santos da Silva','M�e');
insert into @temp values(31,'Carolina VE Ga','2207-4534/ 95197-5063','','');
insert into @temp values(32,'Caroline Maria de Morais Silva','96488-1896 (mae) / 2995-2050 / 2242-7983 av� Terezinha /     2241-1669 tia Cristina                        ','C�lia Maria de Morais ','M�e');
insert into @temp values(33,'Cesar Mendes de Castro','2901-6700  res./ 94204-4873 pai/ 99145-7159 irm� Adriana     ','Jo�o Batista de Castro                    ','Pai');
insert into @temp values(34,'Cibeli Di Bartolomeu','2243-0871 /9 9292-5722 (Cel Irm� Simone)','Cec�lia Di Bartolomeo                         ','M�e');
insert into @temp values(35,'Constancia Ferreira de Sousa','2249-2538 res/ 96539-7150 Loide','Loide nogueira de Sousa Almeida    ','Irm� ');
insert into @temp values(36,'Cristiana Oliver da Silva','"2243-3878/ 98820-2846 (cel m�e)  / 99302-7079 (cel irm�o)"','Antonia Maria Oliver da Silva','M�e');
insert into @temp values(37,'Cristiane da Silva Teodoro','99002-4133 cel pai /95269-2639 cel j�lia/95832-9062/2954-2451','Carlos Jos� Teodoro                            ','Pai');
insert into @temp values(38,'Cristiane do Nascimento Vale','2539-3182 res/96195-2100 pai/98242-7142 mae','Roseli e Elias do Vale ','M�e e Pai ');
insert into @temp values(39,'Daniel Farias','97540-6525 (cel irm�o) ','Samuel Farias ','Irm�o  ');
insert into @temp values(40,'Daniel Ferreira da Silva','"2267-5422 res/ 99331-5454 cel m�e/99905-5876  Rose /96616-2368 Adelia "','Ad�lia Ferreira Segurado                  ','M�e');
insert into @temp values(41,'Daniela Batista Barbosa','2212-2772 res/98422-5509 cel prima   ','','');
insert into @temp values(42,'Daniela Elisa Estevam','2636-1675 res/ 98414-6315 m�e/ 98557-0928 pai','Silma e Paulo Estevam ','M�e e Pai ');
insert into @temp values(43,'Danilo Salvalagio Martins de Oliveira','2241-5396 res/ 98886-6667 mae/ 9 7664-5084 pai','Silvana Salvalagio e Rinaldo Martins','M�e e Pai ');
insert into @temp values(44,'Denis Washington Pinto','3984-5056 res/ 96174-8645 Em�lia/ 9 8995-7258 K�tia tia / Denis 99359-6933  / 3989-4493','Maria Emilia Boranga','M�e/Av�');
insert into @temp values(45,'Diego Almeida da Silva','2242-7363 res/96823-2423 Tia Nice','Valdete Almeida                             ','M�e');
insert into @temp values(46,'Edin�ia Aparecida Pessoa','2991-5675/ 95295-1418 (cel m�e)','Hilde Pessoa','M�e');
insert into @temp values(47,'Edson Silva de Oliveira','','','');
insert into @temp values(48,'Eduardo Alves de Castro','99711-7620 cel irm�/ 97403-5333 Simone irm�','Maria de Lourdes Castro Cerboncine     ','Irm�');
insert into @temp values(49,'Eduardo Camargo Bezerra','99824 5855/ 4304-2862 / 98289 9067 (cel m�e Eliete)','Jose Eustaquio Bezerra','Pai');
insert into @temp values(50,'Elenice Pinto do Nascimento','2203-9321 trabalho Ivanides  / 2241-5112 irm� Maria  /96097-1636  cel. Irm� Maria / 94671-5645 cel. Irm� Devanilda','','');
insert into @temp values(51,'Emerson dos Santos Costa','2240-1624/ 97465-2744 (Cel m�e)','Adelita Miranda dos Santos','M�e');
insert into @temp values(52,'Erika Peinado David','2951-9728 res/ 99999-0169 pai /99918-9101 m�e','Celia Peinado ','M�e  ');
insert into @temp values(53,'Fabio Batista Leite','4502-7463 res/ 96397-3226 m�e/2055-4546 (luis)','Sara da Fonseca','M�e  ');
insert into @temp values(54,'Fabio Ferreira dos Santos','2453-6604','','');
insert into @temp values(55,'Fabio Tadeu Pinto de Campos','2769-3276 (Casa)/9 8712-6621 (Irm� Mariceli)/9 8346-6052 (Cel M�e) ','Cleusa Ang�lica Pinto de Campos','M�e');
insert into @temp values(56,'Felipe Albuquerque','2453-6604','','');
insert into @temp values(57,'Felipe Menezes da Silva','2955-5036/ 99116-4006 Lilia/ 99223-8540 Lilia','Lilia Menezes de Oliveira','m�e');
insert into @temp values(58,'Fellipe Rodrigues Mesquita','2241-4560 (Casa) /9 7149-0095 (Cel M�e)','Telma Aparecida Rodrigues ','M�e');
insert into @temp values(59,'Fernando','2453-6604','','');
insert into @temp values(60,'Fernando Silva Gomes','96962-6040 pai / 94640-7584 m�e','Erlande Maria e Jucelino Silva ','M�e e Pai ');
insert into @temp values(61,'Fl�vio Augusto Garcia de Oliveira','2452-4919 res/    999540-1402 cel m�e/94752-5151 cel pai ','Elisabete Aparecida ','M�e');
insert into @temp values(62,'Gabriela Moraes Capoceccera','2528-9965 res/ 9891-75489 cel. M�e/ 2952-2094 rec. Av� Teresa/ 98046-7072 Tatiana','Sandra Aparecida ','M�e');
insert into @temp values(63,'Giovanni Souza Salimbeni','2981-9220 res/ 94935-2713 cel pai','Marcos Salimbeni','Pai');
insert into @temp values(64,'Gisele Nogueira Florindo','96780-9862 M�e ','Teresa Nogueira ','M�e');
insert into @temp values(65,'Gustavo Misuta Colauto ','2981-5293/9865-94383 m�e /98199-2096 Pai','','');
insert into @temp values(66,'Henrique Campos Gesini','2981-7956 (pai)/ 97022-0141 (cel Raquel)','Rafael Rabello ','Pai');
insert into @temp values(67,'Ingo Herter','2212-9083 res  /98414-4133  cel m�e/95656-1256 whatts   ','Lea Maria Herter','M�e');
insert into @temp values(68,'Isabelle da Silva Ribeiro','96360-0319 m�e','','');
insert into @temp values(69,'Jefferson Lopes Apolin�rio','"2258-9780 res / 96663-6720 tia Maria / 96801-1262 Ap.m�e  / Jefferson 99141-2933 "','Maria Jose Apolin�rio','M�e');
insert into @temp values(70,'Jhenifer Sales Batista','96756-9816','','');
insert into @temp values(71,'Jo�o Roberto Rego e Lyra','  2691-8992/ 994768176 (irm� Rosana)','Arlinda do Rego ','M�e');
insert into @temp values(72,'Jonata dos Santos','93145-6815 m�e                    ','','');
insert into @temp values(73,'Jos� Antonio Gomes Afonso','95848-1051 cel m�e/2992-6627 tia Maria','Maria Verania ','M�e');
insert into @temp values(74,'Jos� Herculano Farias','2241-6771/ 2281-5322 (Irm� F�tima)','Maria Aparecida da Silva ','Irm�');
insert into @temp values(75,'Jos� Mauricio dos Santos','2241-2216 res/  2953-9931 irm� Ivonete ','Maria Arinete Farias','');
insert into @temp values(76,'Juari Morais de Macedo','2503-0928 res/ 99207-8815 Marici irm�/ 96873-1510 Marta irm� ','Martha Cosmos ','Irm� ');
insert into @temp values(77,'Juliana Ortega de Pontes','2995-7548 res / 96251-9514','Maria Aparecida ','M�e');
insert into @temp values(78,'Kleber Davis','2939-9352 comercial m�e  / 96404-0462 cel m�e ','Marli Serrano Ortega ','M�e');
insert into @temp values(79,'Kleber Ferreira da Silva','2240-6529 / 9 8471-1483 Cel Irm� Ana','Ana Maria Daves  ','Irm�');
insert into @temp values(80,'Leandro Souza do Nascimento','2992-6046 res/ 2995-6665 rec. Viz. Natalia ','Terezinha de Jesus ','M�e');
insert into @temp values(81,'Leonardo Fidalgo Vieira','99228-8794 / 94186-7680','Jose Gomes ','Pai');
insert into @temp values(82,'Lucas Ferreira dos Santos','96598-1845 cel m�e  / 94541-7703 irm� Cintia               ','','');
insert into @temp values(83,'Luciana Alves de Oliveira','2242-2875/ 99431-3085 (cel m�e)','Claudia Regina ','M�e');
insert into @temp values(84,'Luiz Fernando Santos','96870-0819 cel Aparecida /967251952 Amado/ 2242-9694  Prazeres av� ','Aparecida Ferreira ','M�e');
insert into @temp values(85,'Luiz Henrique Macedo Ferreira Alves','2951-2801 res/ 98394-6696 cel m�e','Elena Aparecida ','M�e');
insert into @temp values(86,'Luzimar Barbosa de Almeida','2676-7729 res','Ivanir Santiago','M�e');
insert into @temp values(87,'Manuela Germano da Silva Reis','2981-5218/96353-2059','','');
insert into @temp values(88,'Manuelito Fernandes de Oliveira','2453-6604','','');
insert into @temp values(89,'Marcelo Liberal Trindade','2240-1318 (casa) / 9 7643-1160 (Cel M�e)/9 9197-1979 (Irm�o Marcos)','Clarinda Maria da Silva','M�e');
insert into @temp values(90,'Marco Antonio de Lima Ferreira','3984-0043 res/ 96635-1440 (Gabriela irm�)/95754-5290 (Joaquim padrasto)','Maria Fernandes ','M�e');
insert into @temp values(91,'Marcos Jos� da Silva Santos','2212-6545 res  / 98189-0071 cel irm�o Alexandre/99239-6583 irm� Renata','Djanira Liberal ','M�e');
insert into @temp values(92,'Margareth de Freitas Nobrega  ','2242-6119 res  / 98608-2090 cel','Maria Helena Ferreira ','');
insert into @temp values(93,'Marilda Aparecido dos Santos','99470-8684 irm� Andr�ia/ 97626-9298 m�e','Maria Mirtes','M�e');
insert into @temp values(94,'Mariluce Clarinda Martinelli','4327-3135 res/98013-1920 F�tima/99932-2200 Jo�o/99779-5850 Beth','Maria de F�tima ','Irm�');
insert into @temp values(95,'Mario Varela Nunez','2589-0838/ 99115-8866','Marco Antonio ','Irm�o');
insert into @temp values(96,'Marluce Fialho dos Passos  ','2594-0285  res/95355-5306 irm� ','Marilu Clarinda Martinelli','Irm�');
insert into @temp values(97,'Matheus Pinto Santos Duarte','2983-1115  res / Ot�vio cel 98861-1941 ','Otavio Varela ','Irm�o');
insert into @temp values(98,'Matilde da Concei��o Carvalho','"2241-4146 (Casa)/2201-2494 (com M�e)/ 9 7037-1780 (Cel M�e) "','Elisete Fialho ','M�e');
insert into @temp values(99,'Michel Wagner Amaral Bicudo','2240-4308 res./6950-5955 Tia Maria/98322-9453 pai','Maria Espedita e Adeilton Pinto ','M�e e Pai ');
insert into @temp values(100,'Neilton Moreira dos Santos','2614-7845res./ cel Eul�lia/ 2951-2012 Valdete vizinha/96130-1515/941497611 irm�','Eul�lia Jesus ','Irm� ');
insert into @temp values(101,'Oswaldo Ferreira de Sousa','              2977-7538   ','Dirce Amaral','M�e');
insert into @temp values(102,'Oziel Santino de Lima','22016687 (res) /98083321 (cel irm�)','Cilidalva Moreira ','Irm�');
insert into @temp values(103,'Paola Alessandra Alves Figueiredo','2249-2538 res/ 96539-7150 Loide','Loide nogueira de Sousa Almeida    ','Irm� ');
insert into @temp values(104,'Paulo Roberto Murinelli Casado Junior','2453-6604','','');
insert into @temp values(105,'Priscila Bek Magalh�es','"2267-5800 res./ 99310-3716 (cel m�e)/ 98841-7086 pai "','Silvana Aparecida ','M�e ');
insert into @temp values(106,'Priscila Franco de Oliveira','"2243-7139 /9 9145-5309 (Cel M�e)/9 7856-5330 (Cel Pai)/9 5274-5751 (Irm� Fabiana)"','Angela Fernandes ','M�e');
insert into @temp values(107,'Rafael Mendon�a de Oliveira','"2262-2787 res/ 98634-9859 m�e"','Luci Bek ','M�e');
insert into @temp values(108,'Rafael Sousa e Silva','2952-6358/  2952-6359 Tio Mois�s ou tia Isabel','Julia Aparecida e Manoel Messias ','M�e e Pai ');
insert into @temp values(109,'Rafael Vicente Rocha','98658-1324 m�e/  98794-6086 pai','Maria de F�tima e Reginaldo de Oliveira','M�e e Pai ');
insert into @temp values(110,'Ramon da Mata Pires','2240-5394 res/ 95408-3257 cel kleber irm�o','Lusinete de Castro Sousa ','M�e');
insert into @temp values(111,'Rebecca Rodrigues Araujo','"2361-7231 res/ 99807-2015 m�e /  99763-2889 pai/ 5625-9454 res. Fabiana irm� /99721-6026 Fabiana irm�"','F�tima Sueli Bento','M�e');
insert into @temp values(112,'Regina aparecida de Andrade','"3368-4653 res. /99506-7775 Ronaldo irm�o/2981-4621 Ronaldo/97392-4122 m�e"','Gilvane Pereira ','M�e');
insert into @temp values(113,'Reginaldo Domingues de S�','2931-5816 /98102-3629 (cel m�e)/ 98690-8167 (cel pai)','Carmem Lucia ','M�e');
insert into @temp values(114,'Reinaldo dos Santos','','','');
insert into @temp values(115,'Renan Silva da Cruz','','','');
insert into @temp values(116,'Renata Bianca Bambini Silva','2453-6604','','');
insert into @temp values(117,'Renato Augusto Rego e Lyra','2233-3999 (res)/ 99889-8383 (cel)','Silvia Chaves ','M�e');
insert into @temp values(118,'Renato Rodrigo Borges de Oliveira','2241-9432/99852-4958 (cel m�e)/ 97325-1710 (cel pai)','Lucia Elena ','M�e');
insert into @temp values(119,'Roberta Schwarzwalder','  2691-8992/ 994768176 (irm� Rosana)','Arlinda do Rego ','M�e');
insert into @temp values(120,'Roberto Carlos Teixeira ','"2631-1010 res/ 94430-4380 m�e/ 12-9.6932-2611 pai "','Lidiane Borges e Rodrigo Marques ','M�e e Pai ');
insert into @temp values(121,'Rodolpho Luiz Nascimento Jo�o','2231-5734 res/  99154-7761 (cel m�e)','Vera Lucia ','M�e');
insert into @temp values(122,'Rodrigo Lima Rasera','','','');
insert into @temp values(123,'Rog�rio Carlos Greg�rio','"3805-4320/ 95228-8522 m�e/ 2201-4443 (trab. Mae )"','Patr�cia Nascimento','M�e');
insert into @temp values(124,'Rosineide Batista Marques','"2996-3295 (Casa)/)9 41464323 (Cel M�e)/ 2949-0042 (Tia Odete) "','Ana Rosa ','M�e');
insert into @temp values(125,'Rute da Concei��o','2261-3800 ','Mafalda Canniello ','M�e');
insert into @temp values(126,'Samantha Sales e Silva','2242-3974/95630-6322','Marinalva  ','');
insert into @temp values(127,'Sandra Fernandes Garces','2243-0566/2240-9257 / Fernando 95886-7808 ','Fernando Amado','');
insert into @temp values(128,'Selma Regina Maciel','2455-6923 / 94441-6644 (cel. M�e)/ 98407-7495 (irm�o Saulo)','Marli Sales de Oliveira','M�e');
insert into @temp values(129,'Sergio Ferreira Neves','2203-9023/ 981846050(Sobrinha Solange)','Maria Eugenia ','M�e');
insert into @temp values(130,'Sheila Cristina da Silva','"9 7569-7693 C�lia/2797-4528 com.C�lia/ 9 9533-3367 (Marcelo-cunhado)  "','C�lia Adriana ','Irm�');
insert into @temp values(131,'Sheila Maria dos Santos','"2243-3466 res./ 99702-9807 pai / 98891-0875 Marcia � irm� "','Francisco Ferreira ','Pai');
insert into @temp values(132,'Solange Cristina Barbosa','949434341 (m�e)/2951-5929 res','Zuleide Aparecida ','M�e');
insert into @temp values(133,'Tamilis Frederico Pereira','"2241-1069/ 95152-1267 irm�/ 96511-7850 irm�"','In�s Aparecida ','Irm�');
insert into @temp values(134,'Tassia Tayane Louren�o da Silva','"2478-4964 res./95738-7025 cel Emerson/96510-5503 cel m�e"','Emerson','Irm�o ');
insert into @temp values(135,'Tatiana Aparecida Madruga Ramos','2249-2832 (CASA) / 9  8629-7485  (Cel M�e)','Fernanda Patr�cia Coelho','M�e');
insert into @temp values(136,'Thamires Cavalcante Freitas','"2203-3028 (res) /961197203 (cel m�e)/ 2203-1163 (coml m�e"','Vania Graciela ','M�e');
insert into @temp values(137,'Thiago Menezes de Sousa','4117-5387 (Av� Cleide) / 2857-8585 (Tia Marcia)','Cleide Dick Madruga','Av�');
insert into @temp values(138,'Tiago David','2987-6466 res./ 97255-6228 cel.pai/9170-6181 cel m�e ','Clarice Dantas  ','M�e');
insert into @temp values(139,'Ulisses de Morais Neves','2267-2364/984700744 m�e/ 2955-5036 Tia Lilia','Lidia Menezes','M�e');
insert into @temp values(140,'Vanessa do Nascimento','2453-6604','','');
insert into @temp values(141,'Vanessa Ferreira da Costa','"2953-7822 Casa/9 9999-4134 (M�e)/ 9 9577-4088 (pai)/ 9 9807-1667 (Irm� Nadine)"','Maria Pereira ','M�e');
insert into @temp values(142,'Victor Oliver Doro','98469-3682 Cel M�e','Cleide Francisca ','M�e');
insert into @temp values(143,'Vilma','2951-0609 (Casa)/9 7341-9677 (Seu Francisco)/ 99514-6041 (Patricia)/ 95292-7675 (Seu Francisco)','Francisco Jo�o Ferreira','');
insert into @temp values(144,'Vinicius Caldas Ferreira','2201-4380res/  99387-1286  cel m�e /99114-9735cel pai/98522-2284 N�dia irm�','Maria Adelaide ','M�e');
insert into @temp values(145,'Vinicius Santos de Almeida','','','');
insert into @temp values(146,'Vitor Hugo Santos Sousa','2995-3303 res/96469-1567 cel m�e/97328-6166 cel pai   ','Vilma de Oliveira ','M�e');
insert into @temp values(147,'Viviane de Oliveira Melo','3113-7679 (servi�o Dona Francisca)/96702-2636 Irm�/ 94672-7817 m�e','','');
insert into @temp values(148,'Wanderley Bacarini Castro','96265-6580 cel m�e/997010010 cel Grasiele irm�/98064-4765 Carla irm�  ','Marinalva dos Santos ','M�e');
insert into @temp values(149,'Wendel Matheus ','2986-8526 /94965-6739 Fabiana - irm�','Bras�lia Maria ','M�e');
insert into @temp values(150,'William Dam','2209-2455  res/99976-6204 pai/2201-6403 av� Aparecida ','Olga Bacarini Castro','M�e');
insert into @temp values(151,'Willian Carlos Dias da Silva','98240-1899 m�e/2996-8058 tia Luciana /99242-4199 pai / 97991-11160 mae','','');
insert into @temp values(152,'Wilson Gon�alves da Silva','3569-6934/98147-6165 (cel m�e) /95877-5006 (cel pai)/ 97413-3122 (pai)','Zilda pereira / Reginaldo Antonio ','M�e e Pai ');
insert into @temp values(153,'Leonardo Barbosa da Motta','2201-7611 res/3362-0152 pai /2201-2685','Itamara Marcolino ','M�e');
insert into @temp values(154,'Vin�cius Rodrigues da Silva','','','');
insert into @temp values(155,'Jhonatan Gon�alo da Silva','96598-1845 cel m�e / 94541-7703 irm� Cintia','','');
insert into @temp values(156,'Leonardo Barbosa da Motta','2247-2425/ 98179-1449 M�e /96830-7981 pai','','');



-- begin transaction 

UPDATE  @temp SET tel = UPPER( REPLACE(TEL ,'�','A'))
UPDATE  @temp SET tel = UPPER( REPLACE(TEL ,'�','A'))
UPDATE  @temp SET tel = UPPER( REPLACE(TEL ,'�','O'))


insert into pessoa(rg) 
select  id from @temp

INSERT INTO CANDIDATO(PESSOA,DATA_CADASTRO,NOME,RESPONSAVEL,PARENTESCO)
SELECT PESSOA.PESSOA,'2018-12-01',TEMP.nome,TEMP.responsavel,TEMP.parent FROM PESSOA
inner join @temp temp on temp.id = pessoa.rg



DECLARE @TELS TABLE (ID INT ,TELS VARCHAR(255), MAE VARCHAR(255),PAI VARCHAR(255),OUTROS VARCHAR(255),OUTROS2 VARCHAR(255))
INSERT INTO @TELS(ID,TELS)  SELECT ID,TEL FROM @temp

UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'"',''));

 DECLARE @TELEFONES_FORMATDOS TABLE(ID INT, TEL VARCHAR(255), TIPO VARCHAR(255))

 INSERT INTO @TELEFONES_FORMATDOS(ID,TEL)
	 SELECT ID , DBO.FN_SPLITPOS2('/',TEL,1) AS TEL FROM @temp
 INSERT INTO @TELEFONES_FORMATDOS(ID,TEL)
	SELECT ID , DBO.FN_SPLITPOS2('/',TEL,2) AS TEL  FROM @temp
 INSERT INTO @TELEFONES_FORMATDOS(ID,TEL)
	SELECT ID , DBO.FN_SPLITPOS2('/',TEL,3) AS TEL  FROM @temp
 INSERT INTO @TELEFONES_FORMATDOS(ID,TEL)
	SELECT ID , DBO.FN_SPLITPOS2('/',TEL,4) AS TEL  FROM @temp
 INSERT INTO @TELEFONES_FORMATDOS(ID,TEL)
	SELECT ID , DBO.FN_SPLITPOS2('/',TEL,5) AS TEL  FROM @temp
 INSERT INTO @TELEFONES_FORMATDOS(ID,TEL)
	SELECT ID , DBO.FN_SPLITPOS2('/',TEL,6) AS TEL  FROM @temp
 INSERT INTO @TELEFONES_FORMATDOS(ID,TEL)
	SELECT ID , DBO.FN_SPLITPOS2('/',TEL,7) AS TEL  FROM @temp


DELETE FROM @TELEFONES_FORMATDOS WHERE LTRIM(TEL)=''

UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'MAE' WHERE TEL LIKE '%MAE%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'PAI' WHERE TEL LIKE '%PAI%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'AVO' WHERE TEL LIKE '%AVO%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'RES' WHERE TEL LIKE '%CASA%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'RES' WHERE TEL LIKE '%RES%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'IRMA' WHERE TEL LIKE '%IRMA%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'TIA' WHERE TEL LIKE '%TIA%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'TIO' WHERE TEL LIKE '%TIO%'
UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'PADRASTO' WHERE TEL LIKE '%padrast%'

UPDATE @TELEFONES_FORMATDOS  SET TIPO = 'OUTRO' WHERE TIPO IS NULL



--UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'1',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'2',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'3',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'4',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'5',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'6',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'7',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'8',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'9',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'0',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'(',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,')',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'-',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'/',''));UPDATE  @temp SET TEL = UPPER( REPLACE(TEL ,'�',''));
-- SELECT  TEL FROM @temp WHERE LTRIM(TEL)<>''


UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'C',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'E',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'L',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'M',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'E',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'P',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'A',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'I',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'N',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'D',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'R',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'S',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'V',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'O',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'Z',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'J',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'T',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'U',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'F',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'K',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'B',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'H',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'Q',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'W',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'G',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'X',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'.',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'�',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'()',''));UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'( )',''));;UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,'(  )',''));
UPDATE  @TELEFONES_FORMATDOS SET TEL = UPPER( REPLACE(TEL ,' ',''));
 

INSERT INTO CONTATO(PESSOA,TIPO,VALOR,DESC_TIPO)
SELECT PESSOA.PESSOA,1,TEL,TIPO FROM @TELEFONES_FORMATDOS 
INNER JOIN PESSOA ON RG=ID



-- rollback


-- ALTER TABLE CONTATO  ADD DESC_TIPO VARCHAR(50)

