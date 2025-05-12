# Sistema de Cadastro de Moradores

Este projeto foi criado para facilitar a gestão do programa **Moradia Legal**, auxiliando no cadastro e acompanhamento dos moradores de forma prática e eficiente.

## O que o sistema faz
- Permite o **cadastro** de moradores com informações como nome, endereço, telefone, entre outros.
- Facilita a **consulta** de moradores cadastrados por meio de uma tabela organizada.
- Armazena, exclui e atualiza as informações colocadas

## Tecnologias usadas
- **HTML5** e **CSS3** para estrutura e estilo.
- **JSP (Java Server Pages)** para a lógica de processamento.
- **Java** no back-end, gerenciando os dados.
- **Mysql** para armazenar as informações

## Como usar
1. **Clone o repositório**:
   ```bash
   git clone https://github.com/eaijessicao/ab1-web2.git
2. **Configure o ambiente:**
   - importe para o eclipse ou ide da sua preferência
   - clique em run server com o **Apache Tomcat**
   - ele vai abrir automaticamente o navegador com a pagina carregada
3.**MYSQL**
   - Escreva no mysql o seguinte:
   - 
CREATE DATABASE IF NOT EXISTS cadastro_moradores;
USE cadastro_moradores;
CREATE TABLE IF NOT EXISTS moradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    bairro VARCHAR(100),
    numero VARCHAR(10),
    telefone VARCHAR(20),
    situacao VARCHAR(50),
    motivo VARCHAR(255)
);


  

   
