import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uta_app/core/configs/assets/app_images.dart';
import 'package:uta_app/core/configs/assets/app_vectors.dart';
import 'package:uta_app/core/configs/theme/app_colors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppVectors.logo,
                ),
                const SizedBox(
                  height: 55,
                ),
                Text(
                  "Enjoy Lisneting To Music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  "Spotify is a property swedish autdio straming and meta services provider",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: AppColors.grey,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
