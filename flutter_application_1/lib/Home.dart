import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "首页",
      home: Pagee(),
    );
  }
}

class Pagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: "2", home: Page());
  }
}

class Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _page();
}

class _page extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("我1是a1恁1爹")),
        body: Row(
      children: [RaisedButton(child: Text("请求"), onPressed: myHttpRequest)],
    ));
  }

  String str = "";
/**
 *  httpclient请求 
 */
  void myHttpRequest() async {
    Uri uri = Uri(
      scheme: "http",
      host: "10per3.com",
      path: "/api/shop/index/index",
    );
    HttpClient httpClient = new HttpClient();
    HttpClientRequest request = await httpClient.postUrl(uri);

    request.headers.add("user-agent",
        "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
    HttpClientResponse response = await request.close();
    str = await response.transform(utf8.decoder).join();
    print(str);
    print(uri);
    httpClient.close();
  }
}
