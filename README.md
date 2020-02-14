## Gesior-AAC

#### PT
* Gesior com layout do tibia global atual(2020).
* Site configurado para rodar com o servidor desenvolvido pela OTServerBR.
* Antes de qualquer coisa siga o tutorial.
 
 
## Instalando com docker

### Como instalar

* Faça download do projeto e descompacte na pasta web do projeto.
* De permissão a pasta.

```
sudo chmod -R 777 /cache
```
* Utilizar o schema.sql disponibilizado neste repositório, ele já está pronto para rodar no servidor da OTServerBR.
* Editar o install.txt e colocar o seu ip para que você consiga instalar o site.
* Edite o docker-compose.yml e adicione o seguinte parametro = command: mysqld --sql_mode="" ficando assim.

Antes:
```bash
otdb:
    container_name: otdb
    image: mariadb:10
    environment:
```
Depois:
```bash
otdb:
    container_name: otdb
    image: mariadb:10
    command: mysqld --sql_mode=""
    environment:
```
* Adicionar o seguinte parametro no config.lua:
```bash
passwordType = "sha1"
```

## CREDITOS
@DouglasSMartins<br>
@marcomoa <br>
@gesior <br>
@talistf <br>
@riicksouzaa <br>
@Felipe Monteiro <br>

And more developers
