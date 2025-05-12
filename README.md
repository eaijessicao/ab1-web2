# 🏠 Sistema de Cadastro de Moradores

Este projeto foi desenvolvido para auxiliar a gestão do programa **Moradia Legal**, permitindo o cadastro, consulta e gerenciamento de moradores de forma simples e eficiente.

---

## ✅ Funcionalidades

- 📋 **Cadastrar** moradores com informações como nome, endereço, telefone, etc.
- 🔍 **Consultar** moradores cadastrados em uma tabela.
- ✏️ **Editar** dados de moradores existentes.
- ❌ **Excluir** moradores do sistema.
- 💾 Armazena todas as informações no banco de dados MySQL.

---

## 🛠️ Tecnologias Utilizadas

- **HTML5** e **CSS3** – Estrutura e estilo das páginas.
- **JSP (JavaServer Pages)** – Lógica de exibição.
- **Java** – Back-end da aplicação.
- **MySQL** – Banco de dados relacional.
- **Apache Tomcat** – Servidor de aplicação.

---

## 📚 Como Utilizar

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/eaijessicao/ab1-web2.git
2. **Configure o ambiente:**
   - importe para o eclipse ou ide da sua preferência
   - clique em run server com o **Apache Tomcat**
   - ele vai abrir automaticamente o navegador com a pagina carregada
3. **Mysql**: **
   -Digite os seguintes codigos na query:
   -CREATE DATABASE IF NOT EXISTS cadastro_moradores;
   -USE cadastro_moradores;
   -CREATE TABLE IF NOT EXISTS moradores (
       id INT AUTO_INCREMENT PRIMARY KEY,
       nome VARCHAR(100) NOT NULL,
       endereco VARCHAR(150),
       bairro VARCHAR(100),
       numero VARCHAR(10),
       telefone VARCHAR(20),
       situacao VARCHAR(50),
       motivo VARCHAR(255)
   );
