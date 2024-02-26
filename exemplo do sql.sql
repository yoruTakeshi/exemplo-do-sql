# ISSO É UM EXEMPLO PARA ESTUDOS, E NÃO É RECOMENDADO USAR ISSO COMO BASE. ESTÃO FALTANDO COISAS QUE NÃO FORAM ENSINADAS E/OU AS COISAS QUE O MAYCK NÃO SE APROFUNDOU TOTALMENTE.
# Você tem total direito de mudar os valores (exceto o null do id_curso, pois ele é um campo onde o BANCO DE DADOS deve mexer, não o usuário)
# AVISO: USEI O ROOT PARAA FAZER ISSO, ENTÃO QUALQUER ERRO QUE VOCÊ TIVER PROVAVELMENTE PODE TER A VER COM ESSE FATO.

create database mini_mundo_22b; -- cria um banco de dados novo
use mini_mundo_22b; -- utiliza o banco de dados criado

create table curso(
nome varchar(30) not null unique, -- cria uma coluna chamada nome que NÃO PODE SER NULO (not null), e tem que ser um valor único (unique) para não dar conflito de nome
carga tinyint unsigned not null, -- cria uma coluna chamada carga que é um número inteiro pequeno que ocupa pouco espaço na RAM (tinyint), e NÃO PODE SER NULO (not null)
valor decimal (7, 2) not null, -- cria uma coluna chamada valor que é um decimal com 7 algarismos, e 2 deles são após a virgula (decimal(7,2)), e NÃO PODE SER NULO (not null)
id_curso int unsigned primary key auto_increment -- cria uma coluna chamada id_curso na nossa tabela, onde o valor tem que ser INTEIRO (int), sem símbolos (unsigned), ser uma chave primaria (valor único que não pode se repetir) e tem que auto-incrementar para não dar conflito (auto_increment)
);


drop table curso; -- excluir a tabela "curso"

select * from curso;  -- mostrar a maldita tabelinha :)

insert into curso	values ('High School', 2, 1900, null);  -- insere na tabela "curso" um novo registro com os valores 'High School' no nome, 2 na carga, 1900 em valor, e nulo (null) no id_curso (porque o próprio banco vai incrementar 1 por 1 automaticamente a cada novo registro
delete from curso where id_curso = 2; -- Deleta a linha da tabela onde o id_curso for 2 (ou o número que você quiser, só mudar esse exemplo