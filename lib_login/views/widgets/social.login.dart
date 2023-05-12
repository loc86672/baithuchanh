import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello/utils/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '-Forgot your password-',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
            ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/images/fb.png',height: 30),
            ),
          ],
        ),
      ],

    );
  }
}