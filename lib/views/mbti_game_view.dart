import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbti_test/constants/mbti_constants.dart';

import 'package:mbti_test/models/question_option_model.dart';
import 'package:mbti_test/providers/mbti_counter_provider.dart';
import 'package:mbti_test/views/mbti_info_view.dart';
import 'package:mbti_test/views/mbti_result_view.dart';

class MbtiPersonalityGameView extends ConsumerStatefulWidget {
  const MbtiPersonalityGameView({super.key});

  @override
  ConsumerState<MbtiPersonalityGameView> createState() =>
      _BrainDominanceGameViewState();
}

class _BrainDominanceGameViewState
    extends ConsumerState<MbtiPersonalityGameView> {
  PageController pageController = PageController();
  // bool isAnwered = false;
  List<Question> randomQuestions = [];
  List<Question> questions = [];

  List<Question> allQuestions = [
    Question(
      id: 1,
      text: 'At a party do you:',
      options: [
        Option(
          dominationKey: 'E',
          text: 'Interact with many, including strangers',
        ),
        Option(
          dominationKey: 'I',
          text: ' Interact with a few, known to you',
        ),
      ],
    ),
    Question(
      id: 2,
      text: 'Are you more:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'Realistic than speculative',
        ),
        Option(
          dominationKey: 'N',
          text: 'Speculative than realistic',
        ),
      ],
    ),
    Question(
      id: 3,
      text: 'Is it worse to:',
      options: [
        Option(
          dominationKey: 'S',
          text: ' Have your "head in the clouds"',
        ),
        Option(
          dominationKey: 'N',
          text: 'Be"inarut"',
        ),
      ],
    ),
    Question(
      id: 4,
      text: 'Are you more impressed by:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'Principles',
        ),
        Option(
          dominationKey: 'F',
          text: 'Emotions',
        ),
      ],
    ),
    Question(
      id: 5,
      text: 'Are more drawn toward the:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'Convincing',
        ),
        Option(
          dominationKey: 'F',
          text: 'Touching',
        ),
      ],
    ),
    Question(
      id: 6,
      text: 'Do you prefer to work:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'To deadlines',
        ),
        Option(
          dominationKey: 'P',
          text: 'Just "whenever"',
        ),
      ],
    ),
    Question(
      id: 7,
      text: 'Do you tend to choose:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'Rather carefully',
        ),
        Option(
          dominationKey: 'P',
          text: 'Somewhat impulsively',
        ),
      ],
    ),
    Question(
      id: 8,
      text: 'At parties do you:',
      options: [
        Option(
          dominationKey: 'E',
          text: 'Stay late, with increasing energy',
        ),
        Option(
          dominationKey: 'I',
          text: 'Leave early with decreased energy',
        ),
      ],
    ),
    Question(
      id: 9,
      text: 'Are you more attracted to:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'Sensible people',
        ),
        Option(
          dominationKey: 'N',
          text: 'Imaginative people',
        ),
      ],
    ),
    Question(
      id: 10,
      text: 'Are you more interested in:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'What is actual',
        ),
        Option(
          dominationKey: 'N',
          text: 'What is possible',
        ),
      ],
    ),
    Question(
      id: 11,
      text: 'In judging others are you more swayed by:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'Laws than circumstances',
        ),
        Option(
          dominationKey: 'F',
          text: 'Circumstances than laws',
        ),
      ],
    ),
    Question(
      id: 12,
      text: 'In approaching others is your inclination to be somewhat:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'Objective',
        ),
        Option(
          dominationKey: 'F',
          text: 'Personal',
        ),
      ],
    ),
    Question(
      id: 13,
      text: 'Are you more:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'Punctual',
        ),
        Option(
          dominationKey: 'P',
          text: 'Leisurely',
        ),
      ],
    ),
    Question(
      id: 14,
      text: 'Does it bother you more having things:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'Incomplete',
        ),
        Option(
          dominationKey: 'P',
          text: 'Completed',
        ),
      ],
    ),
    Question(
      id: 15,
      text: 'In your social groups do you:',
      options: [
        Option(
          dominationKey: 'E',
          text: 'Keep abreast of other\'s happenings',
        ),
        Option(
          dominationKey: 'I',
          text: 'Get behind on the news',
        ),
      ],
    ),
    Question(
      id: 16,
      text: 'In doing ordinary things are you more likely to:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'Do it the usual way',
        ),
        Option(
          dominationKey: 'N',
          text: 'Do it your own way',
        ),
      ],
    ),
    Question(
      id: 17,
      text: 'Writers should:',
      options: [
        Option(
          dominationKey: 'S',
          text: '"Say what they mean and mean what they say"',
        ),
        Option(
          dominationKey: 'N',
          text: 'Express things more by use of analogy',
        ),
      ],
    ),
    Question(
      id: 18,
      text: 'Which appeals to you more:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'Consistency of thought',
        ),
        Option(
          dominationKey: 'F',
          text: 'Harmonious human relationships',
        ),
      ],
    ),
    Question(
      id: 19,
      text: 'Are you more comfortable in making:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'Logical judgments',
        ),
        Option(
          dominationKey: 'F',
          text: 'Value judgments',
        ),
      ],
    ),
    Question(
      id: 20,
      text: 'Do you want things:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'Settled and decided',
        ),
        Option(
          dominationKey: 'P',
          text: 'Unsettled and undecided',
        ),
      ],
    ),
    Question(
      id: 21,
      text: 'Would you say you are more:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'Serious and determined',
        ),
        Option(
          dominationKey: 'P',
          text: 'Easy-going',
        ),
      ],
    ),
    Question(
      id: 22,
      text: 'In phoning do you:',
      options: [
        Option(
          dominationKey: 'E',
          text: 'Rarely question that it will all be said',
        ),
        Option(
          dominationKey: 'I',
          text: 'Rehearse what you\'ll say',
        ),
      ],
    ),
    Question(
      id: 23,
      text: 'Facts:',
      options: [
        Option(
          dominationKey: 'S',
          text: '"Speak for themselves"',
        ),
        Option(
          dominationKey: 'N',
          text: 'Illustrate principles',
        ),
      ],
    ),
    Question(
      id: 24,
      text: 'Are visionaries:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'somewhat annoying',
        ),
        Option(
          dominationKey: 'N',
          text: 'rather fascinating',
        ),
      ],
    ),
    Question(
      id: 25,
      text: 'Are you more often:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'a cool-headed person',
        ),
        Option(
          dominationKey: 'F',
          text: 'a warm-hearted person',
        ),
      ],
    ),
    Question(
      id: 26,
      text: 'Is it worse to be:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'unjust',
        ),
        Option(
          dominationKey: 'F',
          text: 'merciless',
        ),
      ],
    ),
    Question(
      id: 27,
      text: 'Should one usually let events occur:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'by careful selection and choice',
        ),
        Option(
          dominationKey: 'P',
          text: 'randomly and by chance',
        ),
      ],
    ),
    Question(
      id: 28,
      text: 'Do you feel better about:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'having purchased',
        ),
        Option(
          dominationKey: 'P',
          text: 'having the option to buy',
        ),
      ],
    ),
    Question(
      id: 29,
      text: 'In company do you:',
      options: [
        Option(
          dominationKey: 'E',
          text: 'initiate conversation',
        ),
        Option(
          dominationKey: 'I',
          text: 'wait to be approached',
        ),
      ],
    ),
    Question(
      id: 30,
      text: 'Common sense is:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'rarely questionable',
        ),
        Option(
          dominationKey: 'N',
          text: 'frequently questionable',
        ),
      ],
    ),
    Question(
      id: 31,
      text: 'Children often do not:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'make themselves useful enough',
        ),
        Option(
          dominationKey: 'N',
          text: 'exercise their fantasy enough',
        ),
      ],
    ),
    Question(
      id: 32,
      text: 'In making decisions do you feel more comfortable with:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'standards',
        ),
        Option(
          dominationKey: 'F',
          text: 'feelings',
        ),
      ],
    ),
    Question(
      id: 33,
      text: 'Are you more:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'firm than gentle',
        ),
        Option(
          dominationKey: 'F',
          text: 'gentle than firm',
        ),
      ],
    ),
    Question(
      id: 34,
      text: 'Which is more admirable:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'the ability to organize and be methodical',
        ),
        Option(
          dominationKey: 'P',
          text: 'the ability to adapt and make do',
        ),
      ],
    ),
    Question(
      id: 35,
      text: 'Do you put more value on:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'infinite',
        ),
        Option(
          dominationKey: 'P',
          text: 'open-minded',
        ),
      ],
    ),
    Question(
      id: 36,
      text: 'Does new and non-routine interaction with others:',
      options: [
        Option(
          dominationKey: 'E',
          text: 'stimulate and energize you',
        ),
        Option(
          dominationKey: 'I',
          text: 'tax your reserves',
        ),
      ],
    ),
    Question(
      id: 37,
      text: 'Are you more frequently:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'a practical sort of person',
        ),
        Option(
          dominationKey: 'N',
          text: 'a fanciful sort of person',
        ),
      ],
    ),
    Question(
      id: 38,
      text: 'Are you more likely to:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'see how others are useful',
        ),
        Option(
          dominationKey: 'N',
          text: 'see how others see',
        ),
      ],
    ),
    Question(
      id: 39,
      text: 'Which is more satisfying:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'to discuss an issue thoroughly',
        ),
        Option(
          dominationKey: 'F',
          text: 'to arrive at agreement on an issue',
        ),
      ],
    ),
    Question(
      id: 40,
      text: 'Which rules you more:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'your head',
        ),
        Option(
          dominationKey: 'F',
          text: 'your heart',
        ),
      ],
    ),
    Question(
      id: 41,
      text: 'Are you more comfortable with work that is : ',
      options: [
        Option(
          dominationKey: 'J',
          text: 'contracted',
        ),
        Option(
          dominationKey: 'P',
          text: 'done on a casual basis',
        ),
      ],
    ),
    Question(
      id: 42,
      text: 'Do you tend to look for : ',
      options: [
        Option(
          dominationKey: 'J',
          text: 'the orderly',
        ),
        Option(
          dominationKey: 'P',
          text: 'whatever turns up',
        ),
      ],
    ),
    Question(
      id: 43,
      text: 'Do you prefer : ',
      options: [
        Option(
          dominationKey: 'E',
          text: 'many friends with brief contact',
        ),
        Option(
          dominationKey: 'I',
          text: 'a few friends with more lengthy contact',
        ),
      ],
    ),
    Question(
      id: 44,
      text: 'Do you go more by:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'facts',
        ),
        Option(
          dominationKey: 'N',
          text: 'principles',
        ),
      ],
    ),
    Question(
      id: 45,
      text: 'Are you more interested in:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'production and distribution',
        ),
        Option(
          dominationKey: 'N',
          text: 'design and research',
        ),
      ],
    ),
    Question(
      id: 46,
      text: 'Which is more of a compliment:',
      options: [
        Option(
          dominationKey: 'T',
          text: '"There is a very logical person."',
        ),
        Option(
          dominationKey: 'F',
          text: '"There is a very sentimental person."',
        ),
      ],
    ),
    Question(
      id: 47,
      text: 'Do you value in yourself more that you are : ',
      options: [
        Option(
          dominationKey: 'T',
          text: 'unwavering',
        ),
        Option(
          dominationKey: 'FS',
          text: 'devoted',
        ),
      ],
    ),
    Question(
      id: 48,
      text: 'Do you more often prefer the',
      options: [
        Option(
          dominationKey: 'J',
          text: 'final and unalterable statement',
        ),
        Option(
          dominationKey: 'P',
          text: 'tentative and preliminary statement',
        ),
      ],
    ),
    Question(
      id: 49,
      text: 'Are you more comfortable:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'after a decision',
        ),
        Option(
          dominationKey: 'P',
          text: 'before a decision',
        ),
      ],
    ),
    Question(
      id: 50,
      text: 'Do you : ',
      options: [
        Option(
          dominationKey: 'E',
          text: 'speak easily and at length with strangers',
        ),
        Option(
          dominationKey: 'I',
          text: 'find little to say to strangers',
        ),
      ],
    ),
    Question(
      id: 51,
      text: 'Are you more likely to trust your:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'experience',
        ),
        Option(
          dominationKey: 'N',
          text: 'hunch',
        ),
      ],
    ),
    Question(
      id: 52,
      text: 'Do you feel:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'more practical than ingenious',
        ),
        Option(
          dominationKey: 'N',
          text: 'more ingenious than practical',
        ),
      ],
    ),
    Question(
      id: 53,
      text: 'Which person is more to be complimented - one of:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'clear reason',
        ),
        Option(
          dominationKey: 'F',
          text: 'strong feeling',
        ),
      ],
    ),
    Question(
      id: 54,
      text: 'Are you inclined more to be:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'fair-minded',
        ),
        Option(
          dominationKey: 'F',
          text: 'sympathetic',
        ),
      ],
    ),
    Question(
      id: 55,
      text: 'Is it preferable mostly to:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'make sure things are arranged',
        ),
        Option(
          dominationKey: 'P',
          text: 'just let things happen',
        ),
      ],
    ),
    Question(
      id: 56,
      text: 'In relationships should most things be:',
      options: [
        Option(
          dominationKey: 'J',
          text: 're-negotiable',
        ),
        Option(
          dominationKey: 'P',
          text: 'random and circumstantial',
        ),
      ],
    ),
    Question(
      id: 57,
      text: 'When the phone rings do you:',
      options: [
        Option(
          dominationKey: 'E',
          text: 'hasten to get to it first',
        ),
        Option(
          dominationKey: 'I',
          text: 'hope someone else will answer',
        ),
      ],
    ),
    Question(
      id: 58,
      text: 'Do you prize more in yourself:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'a strong sense of reality',
        ),
        Option(
          dominationKey: 'N',
          text: 'a vivid imagination',
        ),
      ],
    ),
    Question(
      id: 59,
      text: 'Are you drawn more to:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'fundamentals',
        ),
        Option(
          dominationKey: 'N',
          text: 'overtones',
        ),
      ],
    ),
    Question(
      id: 60,
      text: 'Which seems the greater error:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'to be too passionate',
        ),
        Option(
          dominationKey: 'F',
          text: 'to be too objective',
        ),
      ],
    ),
    Question(
      id: 61,
      text: 'Do you see yourself as basically:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'hard-headed',
        ),
        Option(
          dominationKey: 'F',
          text: 'soft-hearted',
        ),
      ],
    ),
    Question(
      id: 62,
      text: 'Which situation appeals to you more:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'the structured and scheduled',
        ),
        Option(
          dominationKey: 'P',
          text: ' the unstructured and unscheduled',
        ),
      ],
    ),
    Question(
      id: 63,
      text: 'Are you a person that is more:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'routinized than whimsical',
        ),
        Option(
          dominationKey: 'P',
          text: 'whimsical than routinized',
        ),
      ],
    ),
    Question(
      id: 64,
      text: 'Are you more inclined to be : ',
      options: [
        Option(
          dominationKey: 'E',
          text: 'easy to approach',
        ),
        Option(
          dominationKey: 'I',
          text: 'somewhat reserved',
        ),
      ],
    ),
    Question(
      id: 65,
      text: 'In writings do you prefer:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'the more literal',
        ),
        Option(
          dominationKey: 'N',
          text: 'the more figurative',
        ),
      ],
    ),
    Question(
      id: 66,
      text: 'Is it harder for you to:',
      options: [
        Option(
          dominationKey: 'S',
          text: 'identify with others',
        ),
        Option(
          dominationKey: 'N',
          text: 'utilize others',
        ),
      ],
    ),
    Question(
      id: 67,
      text: 'Which do you wish more for yourself:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'clarity of reason',
        ),
        Option(
          dominationKey: 'F',
          text: 'strength of compassion',
        ),
      ],
    ),
    Question(
      id: 68,
      text: 'Which is the greater fault:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'being indiscriminate',
        ),
        Option(
          dominationKey: 'F',
          text: 'being critical',
        ),
      ],
    ),
    Question(
      id: 69,
      text: 'Do you prefer the:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'planned event',
        ),
        Option(
          dominationKey: 'P',
          text: 'unplanned event',
        ),
      ],
    ),
    Question(
      id: 70,
      text: 'Do you tend to be more:',
      options: [
        Option(
          dominationKey: 'J',
          text: 'deliberate than spontaneous',
        ),
        Option(
          dominationKey: 'P',
          text: 'spontaneous than deliberate',
        ),
      ],
    ),
    Question(
      id: 71,
      text: 'Are you:',
      options: [
        Option(
          dominationKey: 'T',
          text: 'Male',
        ),
        Option(
          dominationKey: 'F',
          text: 'Female',
        ),
      ],
    ),
  ];

  @override
  void initState() {
    randomQuestions = allQuestions.toList();

    randomQuestions.shuffle();
    questions = randomQuestions.take(4).toList();

    pageController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: mbtiBgc,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ref.invalidate(counterProvider);

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MbtiInfoView(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: mbtiSecondary,
                        foregroundColor: Colors.green,
                      ),
                      child: const Icon(Icons.home),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .6,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Center(child: Consumer(
                        builder: (context, ref, child) {
                          return Text(
                            '${ref.watch(counterProvider)} / ${questions.length} Questions',
                            textAlign: TextAlign.center,
                          );
                        },
                      )),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: PageView.builder(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    var question = questions[index];

                    return Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Question
                          Text(
                            question.text,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 40),
                          // Option A
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                question.selectedOption = question.options[0];
                              });

                              if (ref.watch(counterProvider) >
                                  questions.length - 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MbtiResultView(
                                      questionWithResult: questions,
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                  color: question.selectedOption == null
                                      ? Colors.white
                                      : question.selectedOption!
                                                  .dominationKey ==
                                              question.options[0].dominationKey
                                          ? Colors.green
                                          : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Text(
                                question.options[0].text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: question.selectedOption == null
                                      ? Colors.black
                                      : question.selectedOption!
                                                  .dominationKey ==
                                              question.options[0].dominationKey
                                          ? Colors.white
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Optiion B
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                question.selectedOption = question.options[1];
                              });

                              if (ref.watch(counterProvider) >
                                  questions.length - 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MbtiResultView(
                                      questionWithResult: questions,
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                  color: question.selectedOption == null
                                      ? Colors.white
                                      : question.selectedOption!
                                                  .dominationKey ==
                                              question.options[1].dominationKey
                                          ? Colors.green
                                          : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Text(
                                question.options[1].text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: question.selectedOption == null
                                      ? Colors.black
                                      : question.selectedOption!
                                                  .dominationKey ==
                                              question.options[1].dominationKey
                                          ? Colors.white
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (ref.watch(counterProvider) > 1) {
                          pageController.previousPage(
                              duration: const Duration(microseconds: 150),
                              curve: Curves.easeInOut);
                          ref.read(counterProvider.notifier).state--;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: mbtiSecondary, // <-- Button color
                        foregroundColor: Colors.green, // <-- Splash color
                      ),
                      child: const Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (questions[ref.watch(counterProvider) - 1]
                                    .selectedOption !=
                                null &&
                            ref.watch(counterProvider) <=
                                questions.length - 1) {
                          pageController.nextPage(
                              duration: const Duration(microseconds: 150),
                              curve: Curves.easeInOut);
                          ref.read(counterProvider.notifier).state++;
                        } else if (questions[ref.watch(counterProvider) - 1]
                                    .selectedOption !=
                                null &&
                            ref.watch(counterProvider) > questions.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MbtiResultView(
                                questionWithResult: questions,
                              ),
                            ),
                          );
                          ref.read(counterProvider.notifier).state = 1;
                        } else {
                          null;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            questions[ref.watch(counterProvider) - 1]
                                        .selectedOption !=
                                    null
                                ? Colors.green
                                : mbtiSecondary,
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 60,
                        ),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
