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
    int leftDominance = 0;
    int rightDominance = 0;
    for (var question in questionWithResult) {
      if (question.selectedOption!.dominationKey == 'A') {
        leftDominance++;
      } else {
        rightDominance++;
      }
    }
    if (leftDominance > rightDominance) {
      return 'leftDominance';
    } else if (leftDominance < rightDominance) {
      return 'rightDominance';
    } else {
      return 'equal';
    }
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
                              : const Text('Result')
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
