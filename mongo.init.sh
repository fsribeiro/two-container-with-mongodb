#!/bin/bash
mongo -- "$MONGO_INITDB_DATABASE" <<EOF
  var rootUser = '$MONGO_ONE_INITDB_ROOT_USERNAME';
  var rootPassword = '$MONGO_ONE_INITDB_ROOT_PASSWORD';
  var user = '$MONGO_ONE_INITDB_USERNAME';
  var passwd = '$MONGO_ONE_INITDB_PASSWORD';
  var database = '$MONGO_ONE_INITDB_DB';

  db.auth(rootUser, rootPassword);
  db = db.getSiblingDB(database);

  db.createUser({
    user: user,
    pwd: passwd,
    roles: [
      {
        role: "readWrite",
        db: database
      }
    ]
  });
EOF
