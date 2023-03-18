import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mbti_test/constants/mbti_constants.dart';
import 'package:mbti_test/models/personalillty_model.dart';
import 'package:mbti_test/models/question_option_model.dart';
import 'package:mbti_test/providers/mbti_counter_provider.dart';
import 'package:mbti_test/views/mbti_game_view.dart';
import 'package:mbti_test/views/mbti_info_view.dart';

import 'package:mbti_test/widgets/mbti_swipeable_card_widget.dart';

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
  var resultPersonality;

  // List<Personality> allPersonalities = [
  //   Personality(
  //     id: 1,
  //     title: 'ISTJ',
  //     subtitle: '',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 2,
  //     title: 'ISTP',
  //     subtitle: '',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 3,
  //     title: 'ESTP',
  //     subtitle: 'Logical Responders',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 4,
  //     title: 'ESTJ',
  //     subtitle: 'Practical Expeditors',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 5,
  //     title: 'ISFJ',
  //     subtitle: '',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 6,
  //     title: 'ISFP',
  //     subtitle: '',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 7,
  //     title: 'ESFP',
  //     subtitle: 'Compassionate Responders',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 8,
  //     title: 'ESFJ',
  //     subtitle: 'Practical Contributors',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 9,
  //     title: 'INFJ',
  //     subtitle: 'Compassionate Visionaries',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 10,
  //     title: 'INFP',
  //     subtitle: 'Insightful Enhanchcers',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 11,
  //     title: 'ENFP',
  //     subtitle: 'Compassioate Explorers',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 12,
  //     title: 'ENFJ',
  //     subtitle: 'Insightful Contributors',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 13,
  //     title: 'INTJ',
  //     subtitle: '',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 14,
  //     title: 'INTP',
  //     subtitle: '',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 15,
  //     title: 'ENTP',
  //     subtitle: 'Logical Explorers',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  //   Personality(
  //     id: 16,
  //     title: 'ENTJ',
  //     subtitle: 'Insightful Expeditors',
  //     logo: '',
  //     focus: '',
  //     discription: '',
  //     fameType: '',
  //     careers: [],
  //     celbrities: [],
  //   ),
  // ];

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

  Personality result(allPersonalities) {
    int E = 0, I = 0, S = 0, N = 0, T = 0, F = 0, J = 0, P = 0;
    personalityType;
    resultPersonality;
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

    personalityType[0] = E > I ? 'E' : 'I';
    personalityType[1] = S > N ? 'S' : 'N';
    personalityType[2] = F > T ? 'F' : 'T';
    personalityType[3] = J > P ? 'J' : 'P';

    personalityResult = personalityType.join();

    for (Personality personlity in allPersonalities) {
      if (personalityResult == personlity.title) {
        // print(personlity.id);
        // print(personlity.subtitle);
        resultPersonality = personlity;
      }
    }

    return resultPersonality;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var finalResult = result(allPersonalities);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mbtiBgc,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const Text('Personality Test'),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  if (!isLoading) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MbtiInfoView(),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.exit_to_app_sharp))
          ],
        ),
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
                          isLoading ? mbtiLogo : finalResult.logo,
                          height: 150,
                          width: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 12),
                      if (!isLoading)
                        Text(
                          finalResult.title,
                          style: const TextStyle(
                              fontSize: 24, color: Colors.white),
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
                                          borderRadius:
                                              BorderRadius.circular(24),
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
                                        'Calculating',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    height: 300,
                                    // width: width * .8,
                                    child: Swiper(
                                      itemWidth: 300,
                                      itemCount: 5,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return SwipeableCardWidget(
                                          index: index,
                                          content: finalResult,
                                        );
                                      },
                                      viewportFraction: 0.5,
                                      scale: 0.9,
                                      layout: SwiperLayout.STACK,
                                    ),
                                  ),
                            // : Padding(
                            //     padding: EdgeInsets.all(width * .05),
                            //     child:

                            //     Column(
                            //       children: [
                            //         Text(
                            //           '''${finalResult.title}-${finalResult.subtitle}-${finalResult.focus}-${finalResult.fameType}
                            //           ''',
                            //           style: const TextStyle(
                            //               color: Colors.white),
                            //         ),
                            //         Container(
                            //           height: height * .08,
                            //           child: ListView.builder(
                            //             scrollDirection: Axis.horizontal,
                            //             shrinkWrap: true,
                            //             itemCount:
                            //                 finalResult.celebrities.length,
                            //             itemBuilder: (context, index) {
                            //               return Center(
                            //                 child: Card(
                            //                   color: mbtiSecondary,
                            //                   child: Padding(
                            //                     padding:
                            //                         const EdgeInsets.all(8.0),
                            //                     child: Text(
                            //                       finalResult
                            //                           .celebrities[index],
                            //                       style: const TextStyle(
                            //                           color: Colors.white),
                            //                       textAlign: TextAlign.center,
                            //                     ),
                            //                   ),
                            //                 ),
                            //               );
                            //             },
                            //           ),
                            //         )
                            //       ],
                            //     ),
                            //   )
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
      ),
    );
  }
}
