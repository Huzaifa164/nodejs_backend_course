import http, {IncomingMessage, ServerResponse} from "node:http";

const PORT = 5000;

// http.createServer create low level http server
// callback is going to run for every incoming http request

// req -> request object

// method - get, post, put, obtions, delete
// headers - actual metadata sent by the client
// req body -> data post/put

// res -> response object
// status code, response header, response body

const server = http.createServer((req: IncomingMessage, res: ServerResponse) => {
    const method = req.method;

    // get -> read data
    // post -> create data
    // put -> replace data
    // patch -> update partial data
    // delete -> delete data

    const url = req.url;
    // in which path the client is actually requesting

    const userAgent = req.headers["user-agent"];

    res.statusCode = 200;
    // set http status code
    // 200 -> req is successfull

    res.setHeader('Content-Type', 'text/plain');

    res.end(`Basic http node server: ${method}: ${url}: ${userAgent}`);
    
});

server.listen(PORT, () => {
    console.log(`Server is now running on port ${PORT}`);
});