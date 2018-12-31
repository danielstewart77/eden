// #!/usr/bin/nodejs/node

var express = require('express');
var io = require('./comm/io.js');
var app = express();

app.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    next();
 });

app.use(express.static(__dirname));


var rpio = require('rpio');

app.get('/', function (req, res) {
    res.sendFile('/home/daniel/pages/index.html');
});

app.get('/video', function(req, res) {
    res.sendFile('/home/daniel/video/cam.mpeg')
});

app.get('/channels', function (req, res) {
    var channel_values = read_channels();
    res.send(JSON.stringify(channel_values));
 });

app.get('/channel', function (req, res){
    var channel = req.query.channel;
    var value = io.getChannel(rpio, channel);

    res.status(200).json({value: value});
 });

app.get('/temp', function (req, res){
    var tempF = io.getTemp();
    console.log(tempF);
    res.status(200).json({value: tempF});
});

 const port = 80;

 var server = app.listen(port, function () {
    var host = server.address().address
    var port = server.address().port
    
    console.log("Eden API listening at http://192.168.0.20:%s", port)
 });

 rpio.spiBegin();

process.on('SIGINT', function () {
    rpio.spiEnd();
    console.log('\nShutting down, performing GPIO cleanup');
    process.exit();
});