# Payroll API - Phoenix Project
## Introduction
Welcome to the Payroll API, a backend application built using Elixir and the Phoenix Framework. This project serves as a foundation for managing employee records, providing a RESTful API to interact with employee data efficiently. Whether you're looking to create, retrieve, or delete employee records, this API has you covered.

## Project Overview
Managing employee data is a fundamental aspect of any organization. The Payroll API simplifies this process by offering a straightforward and efficient way to handle employee records. It's ideal for businesses, HR departments, or any application that requires employee data management.

## Key Features
- Database Integration: The Payroll API integrates seamlessly with PostgreSQL, a powerful open-source relational database. This ensures data reliability and scalability.
- RESTful API: The API adheres to RESTful principles, providing a clean and intuitive interface for interacting with employee data.
- JSON Data: The API uses JSON for data representation, making it easy to integrate with various client applications.
- Create, Retrieve, and Delete: With this API, you can create new employee records, retrieve a list of employees, and delete all employee records with ease.

## API Usage
You can interact with the API using tools like curl. Here are some example commands:
- To add an employee:
```
curl -X POST -H "Content-Type: application/json" -d @employee.json http://localhost:4000/payroll_api/employees
```
- To list all employees:
```
curl -X GET http://localhost:4000/payroll_api/employees
```
- To delete all employees:
```
curl -X DELETE http://localhost:4000/payroll_api/employees
```
Replace employee.json with your own employee data in JSON format.

Getting Started
To get started with the Payroll API, follow the instructions outlined in the README file. You'll set up the project, create the necessary database schema, and run the server locally.

## Prerequisites
Before running the project, make sure you have the following installed:
- Docker (for running PostgreSQL in a container)
- Elixir
- Phoenix Framework
- Mix (Elixir's build tool)

## Setting Up PostgreSQL
To set up the PostgreSQL database for the project, you can use a Docker container. Run the following commands to pull and start a PostgreSQL container:
```
docker run --name bs_db -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -d postgres
```

To check if the container is running and obtain more information about it, use:
```
docker ps
docker inspect bs_db
```

## Installation
To install required Elixir dependencies and Phoenix tools, run the following commands:
```
mix local.hex
mix archive.install hex phx_new
```

## Creating the Project
Use the following commands to create the Phoenix project:
```
mix phx.new payroll_api --no-install --app payroll_api --database postgres --no-live --no-assets --no-html --no-dashboard --no-mailer --binary-id
cd payroll_api
mix deps.get
mix ecto.create
```

## Creating the Employee Schema
To create the employee schema, use the following command:
```
mix phx.gen.json Employees Employee employees first_name:string last_name:string department:string role:string salary:decimal
```

## Running the Server
Start the Phoenix server with the following command:
```
mix phx.server
```
