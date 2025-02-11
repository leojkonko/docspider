# DocSpider

DocSpider é um projeto que combina uma API e uma interface frontend para gerenciar documentos de forma eficiente.

## Tecnologias Utilizadas

- **Backend:** Node.js, Express, TypeScript
- **Frontend:** React, TypeScript, TailwindCSS
- **Banco de Dados:** PostgreSQL (ou outro banco suportado pela API)
- **Outros:** Docker, Prisma

## Como Rodar o Projeto Localmente

### Pré-requisitos

Certifique-se de ter os seguintes softwares instalados:

- Node.js (versão 16+)
- Docker e Docker Compose (opcional, mas recomendado)
- PostgreSQL (caso não utilize Docker)

### Clonando o Repositório

```sh
git clone https://github.com/leojkonko/docspider.git
cd docspider
```

### Configurando o Backend (API)

1. Acesse a pasta da API:

```sh
cd api
```

2. Instale as dependências:

```sh
npm install
```

3. Copie o arquivo de variáveis de ambiente:

```sh
cp .env.example .env
```

4. Ajuste as configurações do banco de dados no `.env`.

5. Execute as migrações do banco de dados:

```sh
npx prisma migrate dev
```

6. Inicie o servidor:

```sh
npm run dev
```

A API estará rodando em `http://localhost:3333`

### Configurando o Frontend

1. Acesse a pasta do frontend:

```sh
cd ../front
```

2. Instale as dependências:

```sh
npm install
```

3. Copie o arquivo de variáveis de ambiente:

```sh
cp .env.example .env
```

4. Ajuste as configurações da API no `.env`.

5. Inicie o servidor:

```sh
npm run dev
```

O frontend estará rodando em `http://localhost:5173`

### Rodando com Docker (Opcional)

Se preferir rodar o projeto via Docker, utilize os comandos:

```sh
docker-compose up --build
```

Isso iniciará tanto o backend quanto o frontend junto com o banco de dados.

## Contribuição

Sinta-se à vontade para abrir issues e enviar pull requests para melhorar o projeto!

## Licença

Este projeto está licenciado sob a MIT License.
