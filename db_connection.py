from pymongo import MongoClient

client = MongoClient('')  
db = client['mongodb+srv://ayw:<password>@safesignal.l4orc1n.mongodb.net/']  
collection = db['user_info']  

def insert_user_info(user_id, owner_info, vessel_info, emergency_contact_info):
    user_data = {
        'user_id': user_id,
        'owner_info': owner_info,
        'vessel_info': vessel_info,
        'emergency_contact_info': emergency_contact_info
    }
    collection.insert_one(user_data)
    print("User information inserted successfully.")

# example usage
user_id = 'user123'
owner_info = {
    'name': 'John Doe',
    'email': 'john@example.com',
    'phone': '123-456-7890'
}
vessel_info = {
    'vessel_name': 'My Boat',
    'registration_number': '123ABC'
}
emergency_contact_info = {
    'name': 'Jane Doe',
    'relationship': 'Spouse',
    'phone': '987-654-3210'
}

insert_user_info(user_id, owner_info, vessel_info, emergency_contact_info)

client.close()