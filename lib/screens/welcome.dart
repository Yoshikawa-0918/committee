import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ようこそ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width / 7,
              ),
            ),
            SizedBox(
              height: size.height / 3,
            ),
            SizedBox(
              height: size.height / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //以下３つのボタンは吉川が編集します。
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      elevation: MaterialStateProperty.all<double>(2.0),
                    ),
                    child: Text(
                      "一般の方はこちら",
                      style: TextStyle(
                        fontSize: size.width / 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      elevation: MaterialStateProperty.all<double>(2.0),
                    ),
                    child: Text(
                      "企業の方はこちら",
                      style: TextStyle(
                        fontSize: size.width / 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "すでにアカウントを持ってる方はこちら",
                      style: TextStyle(
                          fontSize: size.width / 22, color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),

            /*
            --------------------以下を編集してください--------------------
            下のボタンはデバッグ用。onPressedプロパティにホーム画面のWidgetを渡してください。
            */
            ElevatedButton(onPressed: null, child: const Text("ホーム画面へ"))
          ],
        ),
      ),
    );
  }
}