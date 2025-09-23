# RottenPotatoes

RottenPotatoes é uma aplicação web simples em **Rails 8** para gerenciar filmes com funcionalidades de **CRUD** (Criar, Ler, Atualizar e Excluir), usando **SQLite** como banco de dados e **Turbo + Importmap** para interatividade.

---

## Funcionalidades

- Listar filmes, com ordenação por **Título** ou **Data de Lançamento**.  
- Visualizar detalhes de um filme.  
- Criar, editar e excluir filmes com confirmação de segurança.  
- Compatível com Rails 8 + Turbo, sem depender de Rails UJS.

---

## Pré-requisitos

- Ruby 3.4+ e Rails 8.0+  
- SQLite3  
- Node.js e Yarn (opcional, para assets adicionais)

---

## Como usar

- **Clonar o repositório:** `git clone https://github.com/luuhcy/rottenpotatoes.git` e entrar na pasta do projeto.  
- **Instalar dependências:** `bundle install`  
- **Criar banco e rodar migrations:** `rails db:create` e `rails db:migrate`  
- **Iniciar servidor Rails:** `rails server`  
- **Acessar aplicação:** abra `http://localhost:3000` no navegador  
- **Rotas principais:**  
  - `/movies` → Lista de filmes  
  - `/movies/new` → Criar novo filme  
  - `/movies/:id` → Detalhes de um filme  
  - `/movies/:id/edit` → Editar filme  
  - `/movies/:id` → Excluir filme (com confirmação)

---

## Licença

MIT License
