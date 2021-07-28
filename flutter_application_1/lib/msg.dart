import 'package:flutter/cupertino.dart';

void main() {
  runApp(msg());
}

class msg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "我是第二页",
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
