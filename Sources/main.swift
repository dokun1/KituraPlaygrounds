import Kitura

let router = Router()

router.get("/testing") { request, response, next in
    response.send(json: ["message" : "hello world!"])
    next()
}

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
