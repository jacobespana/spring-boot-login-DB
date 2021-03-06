# ABC Banking 

MVP (Minimally Viable Product) for "Online Account Opening" critical project for ABC Banking. This app is intended to demonstrate the most basic functional/non-functional requirements for an online account opening application. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Stack

- Spring Security

- Spring Boot

- Spring Data JPA

- Maven

- JSP

- HSQL

### Prerequisites

JDK 1.7+

Maven 3+

Bootstrap 4.1.3


### Installing

Install Maven 

https://maven.apache.org/install.html

Install JDK 

https://www.oracle.com/technetwork/java/javase/downloads/index.html

Make sure that the files are structured correctly, as demonstrated below - 

```
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── capgemini
│       │           └── auth
│       │               ├── model
│       │               │   ├── Account.java
│       │               │   └── User.java
│       │               ├── repository
│       │               │   ├── AccountRepository.java
│       │               │   └── UserRepository.java
│       │               ├── service
│       │               │   ├── SecurityServiceImpl.java
│       │               │   ├── SecurityService.java
│       │               │   ├── UserDetailsServiceImpl.java
│       │               │   ├── UserServiceImpl.java
│       │               │   └── UserService.java
│       │               ├── validator
│       │               │   └── UserValidator.java
│       │               ├── web
│       │               │   └── UserController.java
│       │               ├── WebApplication.java
│       │               └── WebSecurityConfig.java
│       ├── resources
│       │   ├── application.properties
│       │   └── validation.properties
│       └── webapp
│           ├── resources
│           │   ├── css
│           │   │   ├── bootstrap.min.css
│           │   │   └── common.css
│           │   └── js
|           |       ├── popper.min.js
│           │       └── bootstrap.min.js
|           |
|           ├── denyAppRequest.jsp
│           ├── login.jsp
│           ├── registration.jsp
│           └── welcome.jsp
└── pom.xml
```
cd to the directory holding the project and run the following command - 

```
mvn spring-boot:run 
```

Open web browser and go to -

```
localhost:8080
```

or

```
localhost:8080/login
```

## Built With

* [SpringBoot](http://spring.io/projects/spring-boot) - The application framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [HSQLDB](http://hsqldb.org/) - Database 
* [Spring Security](https://spring.io/projects/spring-security) - Authentication/ Access Control Framework
* [Spring Data JPA](http://hsqldb.org/) - Spring Data module for JPA database repo implementation

## Authors

* **Jacob Espana** [GitHub](https://github.com/jacobespana)
