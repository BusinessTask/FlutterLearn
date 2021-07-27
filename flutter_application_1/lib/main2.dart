import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//   app 套 stateLessWidget ,套stateLessFullWidget fullwidget里重写createState ，
    return MaterialApp(
      title: "登录",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyLogin(title: "123"),
    );
  }
}

class MyLogin extends StatefulWidget {
  String title = "";

  MyLogin({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Mylogin();
}

class _Mylogin extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我是恁爹")),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("窝嫩叠"),
          ],
        ),
      ),
    );
  }

  void ookk() {
    //  我是函数 。
  }
}
