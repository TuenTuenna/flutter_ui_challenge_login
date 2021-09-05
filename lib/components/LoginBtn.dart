import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 사용자 입력 부분
class LoginBtn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 50.0,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(48, 58, 82, 1),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      '로그인',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600, // bold
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox.expand(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(onTap: (){
                  print('로그인 버튼 클릭');
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
