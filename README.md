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
* Para que seja possivel criar conta, no momento que subir o banco é preciso usando o usuario root rodar o seguinte comando para que funcione a criação de contas.

```bash
docker exec -it otdb mysql -u root -p -e 'SET GLOBAL sql_mode = '';' otserver
```


## CREDITOS
@DouglasSMartins<br>
@marcomoa <br>
@gesior <br>
@talistf <br>
@riicksouzaa <br>
@Felipe Monteiro <br>

And more developers
