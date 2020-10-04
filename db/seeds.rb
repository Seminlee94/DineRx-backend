# Seed file


# Hospital.create(name:"LIJ", health_system: "Northwell", city: "Queens")
# Hospital.create(name:"NewYork-Presbyterian / Columbia University Medical Center", health_system: "NewYork-Presbyterian", city: "New York")
# Hospital.create(name:"Peconic Bay", health_system: "Northwell", city: "Riverhead")
# Hospital.create(name:"NewYork-Presbyterian Lawrence Hospital", health_system: "NewYork-Presbyterian", city: "Bronxville")

# Diet.create(name: "Regular", hospital_id: Hospital.all.sample.id)
# Diet.create(name: "Cardiac", hospital_id: Hospital.all.sample.id)
# Diet.create(name: "Puree", hospital_id: Hospital.all.sample.id)
# Diet.create(name: "Low Sodium", hospital_id: Hospital.all.sample.id)
# Diet.create(name: "Regular", hospital_id: Hospital.all.sample.id)
# Diet.create(name: "Cardiac", hospital_id: Hospital.all.sample.id)
# Diet.create(name: "Low Sodium", hospital_id: Hospital.all.sample.id)

# User.create(password: "10001" ,name: "Sam", dob: "111111", allergy: "peanut", department: "18N", room: "30S", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10002" ,name: "Kate", dob: "111111", allergy: "peanut", department: "17N", room: "20D", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10003" ,name: "Martin", dob: "111111", allergy: "peanut", department: "16S", room: "21W", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10004" ,name: "Ben", dob: "111111", allergy: "peanut", department: "15N", room: "18D", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10005" ,name: "Tim", dob: "111111", allergy: "peanut", department: "5W", room: "27W", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10006" ,name: "Tom", dob: "111111", allergy: "peanut", department: "4W", room: "28D", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10007" ,name: "James", dob: "111111", allergy: "peanut", department: "3N", room: "40S", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10008" ,name: "Mary", dob: "111111", allergy: "peanut", department: "3S", room: "33S", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10009" ,name: "Susan", dob: "111111", allergy: "peanut", department: "15N", room: "27S", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)
# User.create(password: "10010" ,name: "Shirley", dob: "111111", allergy: "peanut", department: "14W", room: "15W", hospital_id: Hospital.all.sample.id, diet_id:Diet.all.sample.id)

# Order.create(user_id: User.all.sample.id, submitted: true, delivered: false)
# Order.create(user_id: User.all.sample.id, submitted: true, delivered: true)
# Order.create(user_id: User.all.sample.id, submitted: true, delivered: false)
# Order.create(user_id: User.all.sample.id)
