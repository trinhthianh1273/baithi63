const MongoDB = require("mongodb").MongoClient,
dbURL = "mongodb://localhost:27017",
dbName = "tranh";

MongoDB.connect(dbURL, (error, client) => {
    if(error) throw error;

    let db = client.db(dbName);
    db.collection("")
})