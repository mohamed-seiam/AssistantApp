import 'package:assistant_app/core/color/pallet.dart';
import 'package:assistant_app/presentation/view/widgets/feature_box.dart';
import 'package:assistant_app/presentation/view/widgets/virtual_assistant_picture.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VirtualAssistantPicture(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(
            horizontal: 40,
          ).copyWith(
            top: 30,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Pallete.borderColor,
            ),
            borderRadius:
                BorderRadius.circular(20).copyWith(topLeft: Radius.zero),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Good Morning, what task can i do for you?',
              style: TextStyle(
                color: Pallete.mainFontColor,
                fontSize: 25,
                fontFamily: 'Cera Pro',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 10, left: 22),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Here are a few features",
            style: TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.mainFontColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Column(
          children: [
            FeaturedBox(
              color: Pallete.firstSuggestionBoxColor,
              headerText: 'Chat GPT',
              descriptionText:
                  'A smarter way to stay organized and informed with ChatGPT ',
            ),
            FeaturedBox(
              color: Pallete.secondSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText:
                  'Get inspired and stay creative with your personal assistant powered by Dall-E',
            ),
            FeaturedBox(
              color: Pallete.thirdSuggestionBoxColor,
              headerText: 'Smart Voice Assistant',
              descriptionText:
                  'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
            ),
          ],
        ),
      ],
    );
  }
}
