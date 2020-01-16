# Postgres Cube 128
The project can be used to install postgres that can support 128 elements cube.

### Installation
##### Building the image
- Run the following command to build the Dockerfile in `database/docker/Dockerfile`
```angular2
docker build -t nikhilbaby/postgres-v10-cube-128 .
```
- Run the following command to run the docker image
```angular2
docker run -e POSTGRES_PASSWORD=password -e POSTGRES_USER=user -p 5432:5432 -d nikhilbaby/postgres-v10-cube-128 
```
 ##### Image from Docker Hub
Run the following command to create the database:
```angular2
docker run -e POSTGRES_PASSWORD=password -e POSTGRES_USER=user -p 5432:5432 -d nikhilbaby/postgres-v10-cube-128 
```

### Verification
Run the following query to verify the working:
```angular2
CREATE EXTENSION cube;
SELECT cube_dim(cube(array(select generate_series(1, 128)))) as dim;
```