## Node-RED (Docker)
![GitHub last commit](https://img.shields.io/github/last-commit/AzeemIdrisi/PhoneSploit-Pro?logo=github)

### Objetivo
Os passos abaixo são utilizados para a criação de um container com uma aplicação Node-RED. 

### Observações
Antes de realizar o passo a passo em seu servidor Linux antes é preciso ter instalado o Docker, Docker-Compose, Git e também ter configurado o acesso ao Github via SSH. 

Neste passo a passo foi utilizado como editor de texto o editor Vim, mas poderá ser utilizado qualquer editor de sua preferência.

### Passo a passo para a criação dos containers docker
1. Alterar a versão do docker para versão stable
> A versão do Ubuntu que estou utilizando já veio com a versão beta(2904) do Docker instalado e tive alguns problemas com esta versão, sendo assim optei por mudar para a versão estável(2893) executando um dos seguintes comandos.
```
snap refresh --stable docker
```

Caso o comando acima não funcione na sua versão do Linux utilize o comando abaixo:
```
snap refresh --revision=2893 docker
```

Comando que exibe maiss informações sobre a versão instalada
```
snap info docker
```

2. No linux entrar na pasta home do usuário.
```
cd ~
```

3. Criar a pasta dockers
```
mkdir dockers
```

4. Entrar na pasta dockers
```
cd dockers
```

5. Clonar o projeto
```
git clone git@github.com:wbcastilho/node-red-docker.git
```

6. Entrar na pasta node-red-docker
```
cd node-red-docker
```

7. Subir o container
```
sudo docker-compose up -d
```

8. Acessar aplicação
Com o ip do seu servidor :1880 é possível acessar a aplicação do node-red no seu navegador.