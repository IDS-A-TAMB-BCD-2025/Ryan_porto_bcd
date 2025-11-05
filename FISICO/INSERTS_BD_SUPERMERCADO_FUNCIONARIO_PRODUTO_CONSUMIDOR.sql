USE BD_SUPERMERCADO_FUNCIONARIO_PRODUTO_CONSUMIDOR;

INSERT INTO SUPERMERCADO (	SUP_CNPJ, 
							SUP_RAZAO_SOCIAL, 
                            SUP_TELEFONE,
                            SUP_EMAIL,
                            SUP_ENDERECO_LOGRADOURO,
                            SUP_ENDERECO_NUMERO,
                            SUP_ENDERECO_CIDADE,
                            SUP_ENDERECO_ESTADO)
VALUES 					(	"12345678000101",
							"Supermercado Grick",
                            "199999999",
                            "gricktambau@email.com",
                            "Grick Street",
                            "10000",
                            "TambaCity",
                            "SP");

INSERT INTO SUPERMERCADO (SUP_CNPJ, SUP_RAZAO_SOCIAL, SUP_TELEFONE, SUP_EMAIL, SUP_ENDERECO_LOGRADOURO, SUP_ENDERECO_NUMERO, SUP_ENDERECO_CIDADE, SUP_ENDERECO_ESTADO)
VALUES
("22345678000102", "Supermercado BomPreço", "11988887777", "contato@bompreco.com", "Rua das Laranjeiras", "450", "Campinas", "SP"),
("32345678000103", "Supermercado PagueMenos", "11999995555", "sac@paguemenos.com", "Avenida Brasil", "980", "Piracicaba", "SP"),
("42345678000104", "Supermercado Central", "19987654321", "central@supercentral.com", "Rua XV de Novembro", "120", "Limeira", "SP"),
("52345678000105", "Supermercado Econômico", "19999887766", "atendimento@economico.com", "Av. da Saudade", "75", "Mogi Guaçu", "SP");

INSERT INTO PRODUTO ( 	PRO_CODIGO_BARRAS,
						PRO_NOME,
                        PRO_PESO,
                        PRO_QUANTIDADE,
                        PRO_PRECO,
                        PRO_DATA_VALIDADE)
VALUES				(	"7891234567890",
						"Arroz 5kg",
						5.0,
                        500,
                        26.90,
                        "2025-12-25");

INSERT INTO PRODUTO (PRO_CODIGO_BARRAS, PRO_NOME, PRO_PESO, PRO_QUANTIDADE, PRO_PRECO, PRO_DATA_VALIDADE)
VALUES
("7894561237891", "Feijão Carioca 1kg", 1.0, 300, 7.49, "2026-02-15"),
("7896543219872", "Açúcar Refinado 2kg", 2.0, 250, 8.29, "2026-04-30"),
("7893216549873", "Óleo de Soja 900ml", 0.9, 400, 6.79, "2026-01-10"),
("7899876543214", "Café Torrado e Moído 500g", 0.5, 150, 12.50, "2026-06-20");

INSERT INTO CONSUMIDOR	(	CON_CPF,
							CON_NOME,
                            CON_TELEFONE,
                            CON_EMAIL)
VALUES					( 	"47486114800",
							"Gabriel Evaristo",
                            "19994154097",
                            "gabriel.santana@sp.senai.br");

INSERT INTO CONSUMIDOR (CON_CPF, CON_NOME, CON_TELEFONE, CON_EMAIL)
VALUES
("12345678901", "Mariana Oliveira", "11988887766", "mariana.oliveira@email.com"),
("98765432100", "Lucas Andrade", "19997776655", "lucas.andrade@email.com"),
("45678912322", "Fernanda Lima", "11999112233", "fernanda.lima@email.com"),
("85236974155", "João Pedro Ramos", "19988223344", "joao.ramos@email.com");

INSERT INTO FUNCIONARIO (	FUN_CPF,
							FUN_NOME,
                            FUN_DATA_NASCIMENTO,
                            FUN_TELEFONE,
                            FUN_EMAIL,
                            FUN_CARTEIRA_TRABALHO,
                            FUN_BANCO_AGENCIA,
                            FUN_BANCO_CONTA,
                            FUN_DATA_ADMISSAO,
                            FUN_JORNADA_TRABALHO,
                            FK_SUP_CNPJ)
VALUES 					( 	"98765432100",
							"José Vanderlei",
                            "1985-03-12",
                            "11987654321",
                            "ze_vanderlei@email.com",
                            "carteira_ze_vanderlei.pdf",
                            "1234",
                            "56789",
                            "2020-01-15",
                            "44 horas",
                            "12345678000101");
                            
INSERT INTO FUNCIONARIO (FUN_CPF, FUN_NOME, FUN_DATA_NASCIMENTO, FUN_TELEFONE, FUN_EMAIL, FUN_CARTEIRA_TRABALHO, FUN_BANCO_AGENCIA, FUN_BANCO_CONTA, FUN_DATA_ADMISSAO, FUN_JORNADA_TRABALHO, FK_SUP_CNPJ)
VALUES
("74125896300", "Ana Paula Souza", "1990-07-22", "11991234567", "ana.paula@email.com", "carteira_ana_paula.pdf", "2356", "99874", "2021-03-10", "40 horas", "22345678000102"),

("85214796311", "Marcos Vinícius Pereira", "1988-11-05", "19993456789", "marcos.vinicius@email.com", "carteira_marcos_vinicius.pdf", "1478", "33221", "2019-08-01", "44 horas", "32345678000103"),

("96325874122", "Carla Mendes", "1995-02-28", "11998887766", "carla.mendes@email.com", "carteira_carla_mendes.pdf", "3254", "11223", "2022-06-20", "36 horas", "42345678000104"),

("35715948633", "Rogério Nascimento", "1982-09-14", "19995554433", "rogerio.nascimento@email.com", "carteira_rogerio_nascimento.pdf", "4567", "88776", "2018-12-05", "44 horas", "52345678000105");

INSERT INTO SUPERMERCADO_PRODUTO (FK_SUP_CNPJ, FK_PRO_ID)
VALUES
("12345678000101", 1),  -- Supermercado Grick -> Arroz 5kg
("22345678000102", 2),  -- BomPreço -> Feijão Carioca
("32345678000103", 3),  -- PagueMenos -> Açúcar Refinado
("42345678000104", 4),  -- Central -> Óleo de Soja
("52345678000105", 5);  -- Econômico -> Café Torrado e Moído

INSERT INTO PRODUTO_CONSUMIDOR (FK_CON_CPF, FK_PRO_ID)
VALUES
("47486114800", 1),  -- Gabriel Evaristo comprou Arroz
("12345678901", 2),  -- Mariana Oliveira comprou Feijão
("98765432100", 3),  -- Lucas Andrade comprou Açúcar
("45678912322", 4),  -- Fernanda Lima comprou Óleo de Soja
("85236974155", 5);  -- João Pedro Ramos comprou Café



