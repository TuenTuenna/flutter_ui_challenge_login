import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTitleSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '로그인',
                  style: GoogleFonts.lato(
                    color: Color.fromRGBO(48, 58, 82, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w700, // bold
                  ),
                ),
                // 10 간격
                SizedBox(height: 10),
                Text(
                  '계정 정보를 입력해주세요',
                  style: GoogleFonts.lato(
                    color: Color.fromRGBO(108, 127, 144, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400, // regular
                  ),
                ),
              ],
            )
        )
      ],
    );
  }
}
