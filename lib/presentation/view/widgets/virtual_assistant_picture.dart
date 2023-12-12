import 'package:flutter/material.dart';

import '../../../core/color/pallet.dart';

class VirtualAssistantPicture extends StatelessWidget {
  const VirtualAssistantPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 120,
            width: 120,
            margin: const EdgeInsets.only(top: 4),
            decoration: const BoxDecoration(
                color: Pallete.assistantCircleColor, shape: BoxShape.circle),
          ),
        ),
        Container(
          height: 123,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/virtualAssistant.png'),
            ),
          ),
        ),
      ],
    );
  }
}
