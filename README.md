# Atividade Docker

Este projeto utiliza Docker para criar e gerenciar containers de serviços. Aqui está uma explicação detalhada das opções de design adotadas e instruções sobre como instalar, rodar e atualizar os serviços.

## Opções de Design

### Escolha de Serviços

Foram escolhidos os seguintes serviços para este projeto:

* Nginx como servidor web
* Flask como framework para a aplicação
* PostgreSQL como banco de dados

Esses serviços foram escolhidos devido à sua popularidade e facilidade de uso.

### Volumes

Foram criados volumes para armazenar dados persistentes entre os containers. Isso permite que os dados sejam mantidos mesmo após a reinicialização dos containers.

### Redes

Foi criada uma rede para conectar os containers. Isso permite que os containers se comuniquem entre si.

### Estratégia de Balanceamento de Carga

Foi utilizada a estratégia de balanceamento de carga round-robin para distribuir as requisições entre os containers.

## Instalação, Uso e Atualização

### Instalação

Para instalar os serviços, execute os seguintes comandos:

```bash
docker-compose build
docker-compose up -d
```
## Uso
Para acessar a aplicação, abra o navegador e acesse o endereço http://localhost:8080.

## Atualização
Para atualizar os serviços, execute os seguintes comandos:

```bash
docker-compose pull
docker-compose up -d
```

## Atualização de Componentes
Para atualizar um componente, basta trocar a versão da imagem Docker no arquivo docker-compose.yml. Por exemplo, para atualizar o Nginx para a versão 1.19, basta alterar a linha nginx:latest para nginx:1.19.
