import Vapor
import MongoKitten


let drop = Droplet()

drop.get { req in
    let lang = req.headers["Accept-Language"]?.string ?? "en"
    return try drop.view.make("welcome", [
        "message": Node.string(drop.localization[lang, "welcome", "title"])
        ])
}

drop.resource("posts", PostController())
let server: Server!

do {
    server = try Server("mongodb://127.0.0.1", automatically: true)

    let database = server["gncestaciones"]
    let userCollection = database["gncestacion"]

//    var userDocument: Document = [
//        "username": "Joannis",
//        "password": "myPassword",
//        "age": 19,
//        "male": true
//    ]

    let resultUsers = try userCollection.find()

    for userDocument in resultUsers {

        print(userDocument)
    }
    
} catch {
    print("Cannot connect to MongoDB")
}


drop.run()
