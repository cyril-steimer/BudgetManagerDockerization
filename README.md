# BudgetManagerDockerization
Dockerization of the BudgetManager (backend and frontend)

## How to use
- Get a terminal and `cd` to the project directory
- Execute `docker build -t budgetmanager .` to build the docker image
- Execute `docker run -p 8100:8100 budgetmanager` to run the docker image
- Go to `localhost:8100/api/v1/expenses` and verify that everything works!
