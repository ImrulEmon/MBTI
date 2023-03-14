import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbti_test/constants/mbti_constants.dart';
import 'package:mbti_test/models/question_option_model.dart';
import 'package:mbti_test/providers/mbti_counter_provider.dart';
import 'package:mbti_test/views/mbti_game_view.dart';
import 'package:mbti_test/widgets/info_card_widget.dart';

class MbtiResultView extends StatefulWidget {
  final List<Question> questionWithResult;
  const MbtiResultView({super.key, required this.questionWithResult});

  @override
  State<MbtiResultView> createState() => _BrainDominanceResultViewState();
}

class _BrainDominanceResultViewState extends State<MbtiResultView> {
  bool isLoading = true;
  var calculationTime = Random();
  List<Question> questionWithResult = [];
  List<String> personalityType = ['', '', '', ''];
  late String personalityResult;
  @override
  void initState() {
    super.initState();
    questionWithResult = widget.questionWithResult;
    Future.delayed(Duration(seconds: calculationTime.nextInt(5) + 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  String result() {
    int E = 0, I = 0, S = 0, N = 0, T = 0, F = 0, J = 0, P = 0;
    personalityType;
    for (var question in questionWithResult) {
      if (question.selectedOption!.dominationKey == 'E') {
        E++;
      } else if (question.selectedOption!.dominationKey == 'I') {
        I++;
      } else if (question.selectedOption!.dominationKey == 'S') {
        S++;
      } else if (question.selectedOption!.dominationKey == 'N') {
        N++;
      } else if (question.selectedOption!.dominationKey == 'T') {
        T++;
      } else if (question.selectedOption!.dominationKey == 'F') {
        F++;
      } else if (question.selectedOption!.dominationKey == 'J') {
        J++;
      } else {
        P++;
      }
    }
    if (I >= E) {
      personalityType[0] = 'I';
    } else if (E > I) {
      personalityType[0] = 'E';
    }
    if (N >= S) {
      personalityType[1] = 'N';
    } else if (S > N) {
      personalityType[1] = 'S';
    }
    if (T >= F) {
      personalityType[2] = 'T';
    } else if (F > T) {
      personalityType[2] = 'F';
    }
    if (P >= J) {
      personalityType[3] = 'P';
    } else if (J > P) {
      personalityType[3] = 'J';
    }
    personalityResult = personalityType.join();
    print(personalityResult);
    return personalityResult;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: mbtiBgc,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: Image.asset(
                        mbtiLogo,
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          isLoading
                              ? Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: height * .25),
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: mbtiSecondary,
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: const CircularProgressIndicator
                                          .adaptive(
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * .04,
                                    ),
                                    const Text(
                                      'Calculating...',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )
                              : Text(
                                  '${result()}',
                                  style: TextStyle(color: Colors.white),
                                )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .1,
                    )
                  ],
                ),
              ),
            ),
            if (!isLoading)
              Positioned(
                bottom: height * .01,
                left: width * .1,
                right: width * .1,
                child: Consumer(
                  builder: (context, ref, child) => ElevatedButton(
                    onPressed: () {
                      if (!isLoading) {
                        ref.invalidate(counterProvider);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MbtiPersonalityGameView()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 48,
                      ),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      'New Test',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
