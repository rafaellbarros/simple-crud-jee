# * Pt-Br
## simple-crud-jee
Criando um CRUD simples utilizando JavaEE.

Tecnologias usadas:
* **Apache Maven**
* **Jetty**
* **Servlet 3**
* **JSP**
* **JDBC**
* **PostgreSQL**
* **Bootstrap**
* **BootstrapValidator v0.5.1**
* **Footable**

## Requisitos
```
Java 1.7 ou > .
Apache Maven 3.0 ou > .
PostgresSQL 9.0 ou > .
```
## Configuração do Banco de Dados
```
Edite o arquivo properties/config.xml
````
## Executando localmente
```sh
$ git clone git@github.com:rafaellbarros/simple-crud-jee.git
$ cd simple-crud-jee
$ mvn install
$ mvn jetty:run
```
Sua aplicação está rodando :on: [localhost:8080](http://localhost:8080/).

## Abrir o projeto no Eclipse
```sh
$ mvn eclipse:eclipse
```
Abrir o eclipse, File/Import/Existing Projects into Workspace, selecione o diretório onde o projeto se encontra,
marque a opção Copy projects into workspace, e clique em finish.
Clique com o botão direito do mouse no seu projeto, Configure/Convert to Maven Project.
Compatível com Tomcat 8.

# * Demo
[![Demo](https://upload.wikimedia.org/wikipedia/en/a/a9/Heroku_logo.png)](https://simple-crud-jee.herokuapp.com/)

# * En-Us
## simple-crud-jee
Creating a simple CRUD using Java EE.

Technologies used:
* **Apache Maven**
* **Jetty**
* **Servlet 3**
* **JSP**
* **JDBC**
* **PostgreSQL**
* **Bootstrap**
* **BootstrapValidator v0.5.1**
* **Footable**

## Requirements
```
Java 1.7 or > .
Apache Maven 3.0 or > .
PostgresSQL 9.0 or > .
```
## Database configuration
```
Edit the file properties/config.xml
````
## Running locally
```sh
$ git clone git@github.com:rafaellbarros/simple-crud-jee.git
$ cd simple-crud-jee
$ mvn install
$ mvn jetty:run
```
Your application is running :on: [localhost:8080](http://localhost:8080/).

## Open the project in Eclipse
```sh
$ mvn eclipse:eclipse
```
Open eclipse, File/Import/Existing Projects into Workspace, select the directory where the project is located, select the Copy projects into workspace option, and click finish. Click the right mouse button on your project, Configure/Convert to Maven Project. Compatible with Tomcat 8.
