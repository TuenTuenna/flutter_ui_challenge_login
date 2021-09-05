import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/components/LoginBtn.dart';
import 'package:login_ui/components/LoginTitleSection.dart';
import 'package:login_ui/components/UserInput.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: makeBody()
        ),
      )
    );
  }
}

// 바디 만들기
Widget makeBody() {

  // svg 배경이미지 준비
  final String assetName = 'images/login_bg.svg';
  final Widget loginBgImage = SvgPicture.asset(
      assetName,
      width: double.infinity, // 가로 최대
      height: 300,
  );

  return ListView(
    children: [
      Column(
        children: [
          loginBgImage,
          Padding(
              padding: const EdgeInsets.only(bottom: 0, left: 30, right: 30, top: 38),
              child: LoginTitleSection(),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 68, left: 30, right: 30, top: 40),
              child: Column(
                children: [
                  // 이메일 입력
                  UserInput(hint: "이메일"),
                  SizedBox(height: 38),
                  UserInput(hint: "비밀번호", isSecure: true),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        '비밀번호를 잊으셨나요?',
                        style: GoogleFonts.lato(
                          color: Color.fromRGBO(108, 127, 144, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400, // regular
                        ),
                      ),
                    ],
                  )
                ],
              )
          ),
          Text(
            '회원 가입하러 가기',
            style: GoogleFonts.lato(
              color: Color.fromRGBO(108, 127, 144, 1),
              fontSize: 14,
              fontWeight: FontWeight.w400, // regular
            )
          ),
          SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 30, right: 30),
              child: LoginBtn(),
          ),
        ],
      ),
    ],
  );
}
