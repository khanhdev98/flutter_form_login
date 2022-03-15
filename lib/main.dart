import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_login_hahalolo/values/asset_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Login Hahalolo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Form Login Hahalolo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: const Color(0xffFFFFFF),
      body: Stack(
        children: [
          Container(
            height: size.height * 2 / 3,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: SvgPicture.asset(AppAssets.logo, width: 125)),
              ],
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(260, 70),
                  bottomRight: Radius.elliptical(260, 70)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xffC2F9FF),
                    Color(0xff24A8D8),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 170),
            child: Container(
              width: double.infinity,
              height: 424,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35, bottom: 40),
                    child: Text('Đăng nhập',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78),
                    child: TextField(
                        decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Số di động hoặc Email",
                      hintStyle: const TextStyle(fontSize: 15),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 6, 10, 12),
                        child: SvgPicture.asset(AppAssets.user),
                      ),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 34),
                    width: 200,
                    height: 2,
                    color: Colors.black38,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78),
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mật khẩu',
                          hintStyle: const TextStyle(fontSize: 15),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 6, 10, 12),
                            child: SvgPicture.asset(AppAssets.password),
                          ),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 34),
                    width: 200,
                    height: 2,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 270,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Đăng nhập'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff24A8D8)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
