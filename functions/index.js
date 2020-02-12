const functions = require('firebase-functions');
const request = require('request');
const https = require('https');
const admin = require('firebase-admin');
const FieldValue = admin.firestore.FieldValue;
admin.initializeApp();

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//  response.send("Hello from Firebase!");
// });
exports.truecaller = functions.https.onRequest((req, res) => {
    console.log("Truecaller returned");
    console.log(req.body.endpoint);

    let data = {
        "endpoint": req.body.endpoint,
        "accessToken": req.body.accessToken
    };


    admin.firestore()
        .collection('truecaller')
        .doc(req.body.requestId)
        .set(data);




    // const options = {
    //     method: "GET",
    //     host: "profile4-noneu.truecaller.com",
    //     path: "/v1/default",
    //     headers: { Authorization: `Bearer ${req.body.accessToken}` },
    // };


    // const requ = https.request(options, res => {
    //     console.log(`statusCode: ${res.statusCode}`)

    //     res.on('data', d => {
    //         console.log(d)
    //     })
    // })
    // request(options, function (error, response, body) {

    //     console.log(body.name);
    // });
});