import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbti_test/constants/mbti_constants.dart';
import 'package:mbti_test/models/personalillty_model.dart';

class SwipeableCardWidget extends StatelessWidget {
  final int index;
  final Personality content;
  const SwipeableCardWidget(
      {super.key, required this.index, required this.content});

  personalityIndexing(index, content) {
    if (index == 0) {
      return Container(
        decoration: const BoxDecoration(
          color: mbtiSecondary,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Image(
          image: AssetImage(content.logo),
        ),
      );
    } else if (index == 1) {
      return Container(
        decoration: const BoxDecoration(
          color: mbtiSecondary,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title=swipeableResult[0],swipeableResult[1]
              Text(
                content.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                content.subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                content.focus,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      );
    } else if (index == 2) {
      return Container(
        decoration: const BoxDecoration(
          color: mbtiSecondary,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Text(
            content.discription,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    } else if (index == 3) {
      return Container(
        decoration: const BoxDecoration(
          color: mbtiSecondary,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                content.fameType,
                style: const TextStyle(color: Colors.white),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: content.careers.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Card(
                        color: mbtiSecondary,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            content.careers[index],
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      );

      // [content.fameType, content.celebrities];
    } else {
      return Container(
        decoration: const BoxDecoration(
          color: mbtiSecondary,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Femous ${content.title} personality',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: content.celebrities.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Card(
                        color: mbtiSecondary,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            content.celebrities[index],
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var swipeableResult = personalityIndexing(index, content);
    return swipeableResult;
  }
}
