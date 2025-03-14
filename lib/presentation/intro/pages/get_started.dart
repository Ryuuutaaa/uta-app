import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uta_app/common/widget/button/basic_app_button.dart';
import 'package:uta_app/core/configs/assets/app_images.dart';
import 'package:uta_app/core/configs/assets/app_vectors.dart';
import 'package:uta_app/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Enjoy listening to music",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  "Listen to your favorite music on the go with our app and enjoy a seamless music experience. With our app, you can easily discover new music, create playlists, and download your favorite tracks to listen offline. Get started now and experience the best music streaming service! ",
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ChooseMode(),
                      ),
                    );
                  },
                  title: "GET STARTED",
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
