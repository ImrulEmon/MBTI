import 'package:flutter/material.dart';
import 'package:mbti_test/constants/mbti_constants.dart';

class InfoCardWidget extends StatelessWidget {
  final String title;
  final String description;
  const InfoCardWidget(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * .05, vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: width * .05, vertical: 12),
      decoration: const BoxDecoration(
        color: mbtiSecondary,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              height: 2,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
