import 'package:flutter/material.dart';
import 'package:flutter02/flutter02.dart';

main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ZHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ZHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录测试'),
      ),
      body: ZHomeContent(),
    );
  }
}

class ZHomeContent extends StatefulWidget {
  @override
  ZHomeContentState createState() => ZHomeContentState();
}

class ZHomeContentState extends State<ZHomeContent> {
  String? _code = "暂无";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text('code: $_code'),
          ElevatedButton(
            onPressed: _loginQr,
            child: Text("企业微信登录"),
          ),
        ],
      )),
    );
  }

  _loginQr() async {
    var msg = await Flutter02.initSDK;
    setState(() {
      _code = msg;
    });
  }
}
