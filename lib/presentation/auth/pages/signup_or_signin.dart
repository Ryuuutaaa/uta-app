import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uta_app/core/configs/assets/app_vectors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern ),
          )
        ],
      ),
    );
  }
}
