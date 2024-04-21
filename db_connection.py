from pymongo import MongoClient

client = MongoClient("mongodb+srv://<username>:<password>@<cluster-address>/<database>?retryWrites=true&w=majority")
db = client["database_name"]

collection = db["collection_name"]

document = {"var1": "", "var2": 0}
collection.insert_one(document)