DYNAMODB_DIR=/tmp

java -Djava.library.path=$DYNAMODB_DIR/DynamoDBLocal_lib/ -jar $DYNAMODB_DIR/DynamoDBLocal.jar > $DYNAMODB_DIR/dynamodb.log 2>&1 &
