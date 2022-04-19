**Project of two docker containers creating their seeds

## **Getting Started**
In order to run this container you'll need docker installed and docker-compose.

## **Create file .env**
```bash
MONGO_ONE_INITDB_USERNAME=fisrt
MONGO_ONE_INITDB_PASSWORD=fisrt
MONGO_ONE_INITDB_DB=firts
MONGO_ONE_DOCKER_SERVICE=mongo-one
MONGO_ONE_DOCKER_PORT=27017 MONGO_ONE_URI=mongodb://${MONGO_ONE_INITDB_USERNAME}:${MONGO_ONE_INITDB_PASSWORD}@${MONGO_ONE_DOCKER_SERVICE}:${MONGO_ONE_DOCKER_PORT}/${MONGO_ONE_INITDB_DB}?authSource=${MONGO_ONE_INITDB_DB}&ssl=false
```
## **Crete file .two.env**
```bash
MONGO_TWO_INITDB_USERNAME=last
MONGO_TWO_INITDB_PASSWORD=last
MONGO_TWO_INITDB_DB=last
MONGO_TWO_DOCKER_SERVICE=mongo-two
MONGO_TWO_DOCKER_PORT=27018
MONGO_TWO_URI=mongodb://${MONGO_TWO_INITDB_USERNAME}:${MONGO_TWO_INITDB_PASSWORD}@${MONGO_TWO_DOCKER_SERVICE}:${MONGO_TWO_DOCKER_PORT}/${MONGO_TWO_INITDB_DB}?authSource=${MONGO_TWO_INITDB_DB}&ssl=false
```
## **Getting Started**
Run comand docker-compose up
 
```
