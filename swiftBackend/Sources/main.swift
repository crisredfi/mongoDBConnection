import MongoKitten
import Vapor

let app = Droplet()

do {
    let mongoServer = try Server("mongodb://localhost")
    try mongoServer.connect()
    let users = mongoServer["tutorial"]["users"]
    // Add your application here

    app.run()
} catch {
    print("Cannot connect to MongoDB")
}
