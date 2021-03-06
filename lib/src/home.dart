import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/dependencys/dependencys_manage_page.dart';
import 'package:flutter_getx/pages/reactive_state_manage_page.dart';
import 'package:flutter_getx/pages/simple_state_manage_page.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => FirstPage(),
                //   ),
                // );
                Get.to(FirstPage());
              },
            ),
            RaisedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
            ),
            RaisedButton(
              child: Text("Arguments 전달"),
              onPressed: () {
                Get.toNamed("/next",
                    arguments: User(
                      name: "개발하는남자",
                      age: 30,
                    ));
              },
            ),
            RaisedButton(
              child: Text("동적 url"),
              onPressed: () {
                Get.toNamed("/user/1004?name=개남&age=30");
              },
            ),
            RaisedButton(
              child: Text("단순상태관리"),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),
            RaisedButton(
              child: Text("반응형상태관리"),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            ),
            RaisedButton(
              child: Text("의존성관리"),
              onPressed: () {
                Get.to(DependencyManagePage());
              },
            ),
            RaisedButton(
              child: Text("바인딩관리"),
              onPressed: () {
                Get.toNamed("/binding");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({this.name, this.age});
}
