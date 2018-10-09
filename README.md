# BudgetManagerDockerization
Dockerization of the BudgetManager (backend and frontend)

## How to use
- Get a terminal and `cd` to the project directory
- Execute `docker build -t budgetmanager .` to build the docker image
- Execute `docker run -v mongodb:/data/db -p 8100:8100 budgetmanager` to run the docker image
  - Omit `-v mongodb:/data/db` if you don't want the data during the run to be stored persistently. See the [Docker documentation](https://docs.docker.com/storage/volumes/) for more information.
- Go to `localhost:8100/api/v1/expenses` and verify that everything works!
- The container's data is persistently stored in a docker volume. Run `docker inspect mongodb` to get information about the volume.
