curl -X POST http://localhost:8083/connectors \
-H "Content-Type: application/json" \
-d '
{
  "name":"mysql-dental",

  "config":{
    "connector.class":"io.debezium.connector.mysql.MySqlConnector",

    "database.hostname":"mysql",
    "database.port":"3306",

    "database.user":"debezium",
    "database.password":"dbz",

    "database.server.id":"184054",

    "topic.prefix":"dental",

    "database.include.list":"dentaldb",

    "schema.history.internal.kafka.bootstrap.servers":"kafka:9092",

    "schema.history.internal.kafka.topic":"schema-changes.dental",

    "decimal.handling.mode":"double",
    "key.converter":"org.apache.kafka.connect.json.JsonConverter",
    "value.converter":"org.apache.kafka.connect.json.JsonConverter",
    "key.converter.schemas.enable":"false",
    "value.converter.schemas.enable":"false"
  }
}'