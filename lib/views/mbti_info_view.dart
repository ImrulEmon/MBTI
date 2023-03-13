import 'package:flutter/material.dart';
import 'package:mbti_test/constants/mbti_constants.dart';
import 'package:mbti_test/views/mbti_game_view.dart';

import '../widgets/info_card_widget.dart';

class MbtiInfoView extends StatelessWidget {
  const MbtiInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: mbtiBgc,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: height * .1, bottom: height * .05),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: mbtiSecondary,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Image.asset(
                      mbtiLogo,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'MBTI Personality Test',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const InfoCardWidget(
                    title: mbtiIntructionTitle,
                    description: mbtiIntructionInfo,
                  ),
                  const InfoCardWidget(
                    title: bdAbout,
                    description: bdAboutInfo,
                  ),
                  const InfoCardWidget(
                    title: discover,
                    description: discoverInfo,
                  ),
                  const InfoCardWidget(
                    title: disclaimer,
                    description: disclaimerInfo,
                  ),
                  const SizedBox(height: 100)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: height * .05,
            left: width * .1,
            right: width * .1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MbtiPersonalityGameView(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 12,
                ),
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'Take test',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
