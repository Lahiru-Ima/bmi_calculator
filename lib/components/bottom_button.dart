import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    this.press,
    required this.buttonTitle,
  });

  final VoidCallback? press;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}