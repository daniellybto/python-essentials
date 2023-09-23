# Como utilizar o Docker para estudos:
1 - Acesse até a pasta do projeto e onde se encontra o arquivo Dockerfile. Após isso vamos buildar a imagem:

~~~shell
docker image build -t python3 .
~~~~

2 - Após a imagem pronta, vamos executá-la de forma interativa e detachada (onde o terminal não ficará preso:) além de mapear o código que estará sendo criado dentro da pasta /app:

~~~shell
docker container run -it -d -v ./app:/app python3
~~~~

Para verificar se está tudo certinho e o container está executando você pode dar o comando: 

~~~shell
docker container ls
~~~~

---

## Usando o docker para executar os comandos
Existem algumas opções para utilizar/rodar os códigos no python do container:

### 1. através do Terminal Interativo do Python, dentro do container
~~~shell
docker exec -it ID_DO_CONTAINER python3
~~~~

> para sair do docker sem matar o container basta dar o comando `Ctrl + P + Q` ou `Ctrl + D`

<br> 

### 2. acessando o bash da imagem docker e então rodando o python por dentro do terminal dentro do docker:
~~~shell
docker exec -it ID_DO_CONTAINER /bin/bash
~~~~

> para sair do docker sem matar o container basta dar o comando `Ctrl + P + Q` ou `Ctrl + D`

<br> 

### 3. através de comandos diversos dentro do docker em si sem precisar estar dentro do docker:

~~~shell
docker exec -it ID_DO_CONTAINER python ARQUIVO.PY
~~~~
> para sair do docker sem matar o container basta dar o comando `Ctrl + P + Q` ou `Ctrl + D`
