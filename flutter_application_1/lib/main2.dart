import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/msg.dart';

void main() {
  runApp(Login());
}

final pages = [Home(), msg(), Home(), msg()];
int currentIndex = 0; // 当前页面下标

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//   app 套 stateLessWidget ,套stateLessFullWidget fullwidget里重写createState ，
    return MaterialApp(
      title: "Flutter入门示例程序",
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
      appBar: AppBar(title: Text("我1是a1恁1爹")),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: bottomNavItems,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          _changePage(index);
        },
      ),
    );
  }

  void _changePage(int index) {
    //  我是函数 。
    print(index.toString() + "，hello");
    if (currentIndex != index) {
      // 将当前页面索引切换到点击位置的索引
      setState(() {
        currentIndex = index;
      });
    }
  }

  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      title: Text("首页"),
      icon: Icon(
        Icons.home,
      ),
      backgroundColor: Colors.green,
    ),
    BottomNavigationBarItem(
      title: Text("消息"),
      icon: Icon(Icons.home),
      backgroundColor: Colors.green,
    ),
    BottomNavigationBarItem(
      title: Text("发现"),
      icon: Icon(Icons.home),
      backgroundColor: Colors.green,
    ),
    BottomNavigationBarItem(
      title: Text("我的"),
      icon: Icon(Icons.home),
      backgroundColor: Colors.green,
    ),
  ];
}
