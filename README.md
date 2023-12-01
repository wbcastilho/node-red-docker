## Node-RED (Docker)
![GitHub last commit](https://img.shields.io/github/last-commit/AzeemIdrisi/PhoneSploit-Pro?logo=github)

### Objetivo
Os passos abaixo são utilizados para a criação dos containers que irão rodar a aplicação Sistema de Monitoração de Temperatura. 

Depois de executar o passo a passo a baixo serão criados os seguintes containers:
* NodeRed
* MongoDB

### Configurando o ambiente linux e a versão docker
1. Na sua VPS instalar a última o Ubuntu Server versão 22.04.3 LTS e já marcar as opções para instalar com SO o Docker, Docker-Compose, Git e SSH.

2. Alterar a versão do docker para versão stable
> A versão do Ubuntu que estou utilizando já veio com a versão beta(2904) do Docker instalado e tive alguns problemas com esta versão, sendo assim optei por mudar para a versão estável(2893) executando um dos seguintes comandos.
```
sudo snap refresh --stable docker
```

Caso o comando acima não funcione na sua versão do Linux utilize o comando abaixo:
```
sudo snap refresh --revision=2893 docker
```

Impedir que o snpa não atualize a versão do docker
```
sudo snap refresh --hold=forever docker
```

Comando que exibe mais informações sobre a versão instalada onde deverá estar mostrando a versão 2893
```
sudo snap info docker
``` 

### Configurando SSH no Github
> O SSH é um protocolo de rede que permite que a conexão com determinados servidores por meio de uma comunicação criptografada, trazendo mais segurança para as transações de dados. 
>O Github permite que você crie chaves SSH para que você gerencie tudo de maneira remota, com segurança e sem precisar fornecer seu nome de usuário e token de acesso pessoal toda vez que quiser acessar.

1. Gerar uma chave nova

Para criar chave ed25519 executar:
```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Para criar chave rsa, executar:
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

2. Adicionar chave privada no ssh-agent
> O ssh-agent é um gerenciador de chaves ssh. Para que a conexão funcione, devemos adicionar a chave privada nesse gerenciador.

Rodar o ssh-agent
```
eval $(ssh-agent -s)
```

Incluir chave privada
```
ssh-add ~/.ssh/id_ed25519
```

3. Copiar chave pública
```
cat ~/.ssh/id_ed25519.pub
```

4. Adicionar chave no Github
* Abra o Github e vá no ícone de perfil > Settings, no canto superior direito.
* Na barra lateral de configurações do usuário, clique em "SSH and GPG keys".
* Clique no botão "New SSH key".
* No campo "Título", adicione um rótulo descritivo para a nova chave. Por exemplo, se estiver usando seu computador pessoal, você pode chamar essa chave de "Computador pessoal".
* Cole a chave pública que está na área de transferência no campo "Chave".
* Clique em "Add SSH key" e pronto!

5. Testando a conexão SSH
```
ssh -T git@github.com
```
Verifique se a mensagem resultante contém seu nome de usuário e o sucesso da sua autenticação.


### Passo a passo para a criação dos containers docker
1. Entrar na pasta home do usuário
```
cd ~
```

2. Criar a pasta dockers
```
mkdir dockers
```

3. Fazer o git clone deste repositório
```
cd ~/dockers
```

```
git clone git@github.com:welbercastilho/node-red-docker.git
```

4. Criar e executar os containers criados
> Todos comandos relacionados ao docker-compose deverão ser executados com sudo e deverão ser executados no diretório raiz do projeto onde se encontra o arquivo docker-compose.yml 
```
sudo docker-compose up -d
``` 