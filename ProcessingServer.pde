import processing.net.*;

Server _server;

void setup() {
  size(200, 200);
  background(50);
  _server = new Server(this, 8001); // run Processing server on localhost:8001
}

void draw() {
  Client client = _server.available();
  if (client != null) {
    String data = client.readString();
    println(data);
  }
  
  //push();
}

void push() {
  // push data out to PixelPushers
}