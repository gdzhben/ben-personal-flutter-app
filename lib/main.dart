import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Ben Ning"),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/light.jpg'),
                      ),
                      Text("Zhesi Ben Ning",
                          style: TextStyle(
                            fontFamily: 'GloriaHallelujah',
                            fontSize: 35.0,
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 50.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        margin:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                        child: InkWell(
                          onTap: () {
                            UrlLauncher.launch("tel://+353873598608");
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.phone, color: Colors.teal),
                                SizedBox(width: 9.0),
                                Text(' +353 87 359 8608',
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 20.0,
                                      fontFamily: 'SourceSansPro',
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        margin:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              UrlLauncher.launch("mailto:zhesi.ning@ucdconnect.ie");
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.email, color: Colors.teal),
                                SizedBox(width: 10.0),
                                Text(' zhesi.ning@ucdconnect.ie',
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 20.0,
                                      fontFamily: 'SourceSansPro',
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
