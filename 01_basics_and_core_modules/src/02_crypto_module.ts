import crypto from "node:crypto";

// built in node js module

// security related tasks
// creating random UUID, IDs
// creating secure token
// hashing data
// to varify if the data was not changed
// encrypt/decrypt

// crypto.randomUUID

// unique ID
// user id, order id, session id

// const requestId = crypto.randomUUID();

// console.log(requestId);

// cypto.randomBytes

// password reset token
// email verification
// session secret, api keys

// 32 char string
// const resetToken = crypto.randomBytes(16).toString('hex');
// console.log(resetToken);

// crypto.createHash

// hello -> hash

// hash -> hello - not possible

// const text = "hello";
// const hash = crypto.createHash("sha256").update(text).digest("hex");
// const input = process.argv[2];
// const inputHash = crypto.createHash("sha256").update(input ?? '').digest("hex");

// if(hash == inputHash) {
//     console.log("Text matched");
// } else {
//     console.log("Text didn't match");
// }
// console.log(hash);

// crypto.createHmac

// normal hash: data -> hash

// HMAC: data + secret -> signed hash

// webhook
// signed tokens

const secret = "my-super-secet-key";
const message = "user_id=1";

const signature = crypto.createHmac("sha256", secret).update(message).digest("hex");

console.log(signature);

const signatureVerify = crypto.createHmac("sha256", secret).update(message).digest("hex");

console.log("signature is valid and matching", signature === signatureVerify);