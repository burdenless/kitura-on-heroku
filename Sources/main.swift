import Kitura
import HeliumLogger
import Environment

HeliumLogger.use()

let router = Router()

router.get("/") {
   request, response, next in
   response.send("Hello, World!")
   next()
}

let port = Int(Env["PORT"]!)

Kitura.addHTTPServer(onPort: port!, with: router)
Kitura.run()
