Sistema de Gerenciamento de Locadora de Filmes


Este repositório contém o modelo lógico de um banco de dados para um sistema de gerenciamento de locadora de filmes. O sistema foi desenvolvido para armazenar informações sobre clientes, filmes, atores, categorias e empréstimos.


Modelo Entidade-Relacionamento
O modelo MER define as entidades, atributos e relacionamentos necessários para a operação de uma locadora de filmes.


Entidades Principais:

CLIENTE
Id (PK),
Telefone,
Nome,
Endereco;

FILME
Id (PK),
Titulo,
idCATEGORIA (FK),
idATOR (FK);

ATOR
Id (PK),
dtNascimento,
nomePopular,
nomeArtistico;

CATEGORIA
Id (PK),
Nome;

EMPRESTIMO
Id (PK),
idFILME (FK),
idCLIENTE (FK),
DataEmprestimo,
DataDevolucao;


Relacionamentos

Um cliente pode realizar vários empréstimos. Cada empréstimo pertence a um cliente.
Um filme pode estar em vários empréstimos, mas cada empréstimo se refere a um único filme.
Um filme pertence a uma categoria, e uma categoria pode conter vários filmes.
Um filme tem um ator principal, e um ator pode estar presente em vários filmes.

Dependências Recomendadas
O modelo foi projetado para ser utilizado em bancos de dados relacionais como:
MySql


Consulta exemplo de clientes que estão com o filme 'Barbie' .
![Query](https://github.com/user-attachments/assets/d9dc7d86-473c-43ce-a6c8-1ffbb0a70ca8)

Consulta exemplo de filmes cadastrados por categoria.
![Query1](https://github.com/user-attachments/assets/c6e7e50c-044c-4736-aaf0-048e1de3d3c2)


Dificuldades
Durante o desenvolvimento do projeto, enfrentei alguns desafios:

Diferenças entre modelo lógico e físico: Tive dúvidas sobre como transformar corretamente o modelo lógico em um modelo físico, especialmente na definição dos tipos de dados, índices e integridade referencial.

Relacionamentos e cardinalidade: No início, tive dificuldade em compreender e representar corretamente os relacionamentos entre entidades, como "um para muitos" e "muitos para um".

Criação de queries SQL: A criação das primeiras consultas SQL foi um desafio. Precisei de ajuda do meu cunhado para entender melhor a estrutura das instruções, especialmente nas junções entre tabelas e uso de cláusulas JOIN.

Essas dificuldades, no entanto, contribuíram muito para meu aprendizado prático sobre bancos de dados relacionais.
