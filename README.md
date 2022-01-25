<img src="https://raw.githubusercontent.com/chetachiezikeuzor/CapstoneProjectSpring2022/main/assets/tobi-header.png">

<h1 align="center">Tobi</h1>

<p align="center"> A full-stack e-commerce web application
<br> 
</p>

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Running Tests](#tests)
- [Built Using](#built_using)
- [Author](#author)

## About <a name = "about"></a>

Tobi is an full-stack e-commerce web application built in Angular and Java Spring Boot. The application was created and designed to beanonline marketplace for plant products. Features include: routing, Stripe credit card payments, application security and more.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [testing](#tests) for notes on how to test the project after installation.

### Prerequisites

These are the tools and technologies that you'll need to get this project running:

| Tool | Purpose                                                                        |
| ---- | ------------------------------------------------------------------------------ |
| node | For running JavaScript code from command-line                                  |
| nvm  | Node Version Manager                                                           |
| npm  | Node Package Manager: Download new node package and features. Similar to Maven |
| tsc  | TypeScript Compiler                                                            |
| Java | Server-side                                                                    |

### Installing

Installing the project is quite simple. In your terminal, navigate to the location by which you would like to house the repository. You can use the following command:

```
cd <directory>
```

Copy the repository URL by clicking "Code" and choosing the "HTTPS" method (you can configure this step as you wish). Use the following command in yout terminal to clone the repository.

```
git clone <repo-url>
```

You now have a local clone of this project. What you will need to dofirst is configure your `application.properties` within the `backend` directory of the project. Here is a template to get you started.

```
server.port=8008
spring.jpa.hibernate.ddl-auto=create
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/tobi-ecommerce
spring.datasource.username=username
spring.datasource.password=password
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5InnoDBDialect
spring.jpa.show-sql=true
spring.jpa.format-sql=true
spring.data.rest.base-path=/api
```

You'll need to provide your own username and password for your local instance. This will allow for Spring Boot to have access to your database. You may also redefine the server port as you wish.

## Running the Tests <a name = "tests"></a>

Once you have this finished, you can test your api end points in an application like Postman. Use the dummy SQL data provided within the project. Run this within MySQL Workbench and you should have newly created items within your database. Now run this endpoint in Postman to ensure that your data is accessible forthe frontend.

```
GET http://localhost:8008/api

GET http://localhost:8008/api/products

GET http://localhost:8008/api/product-categories
```

## Usage <a name="usage"></a>

You're now ready to run the frontend side of the project. Navigate to the frontend folder and start the Angular server using this command

```
ng serve --open
```

or

```
ng serve --o
```

This will build the frontend files and automatically open your browser to `http://localhost:4200/`.

## Built Using <a id = "built_using"></a>

- [Java](https://www.java.com/en/) - Server-side
- [Spring Boot](https://spring.io) - Web Server
- [MySQL](https://www.mysql.com) - Database
- [Angular](https://angular.io) - User Interface

## Authors <a id = "authors"></a>

- [@Chetachi](https://github.com/chetachiezikeuzor)
