import 'package:flutter/material.dart';
import '../Utilities/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key, required this.buttonText, required this.onTap
  });
  final String buttonText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 400.00,
        height: 60.00,
        color: Colors.pink,
        padding: kContainerEdgeInsets,
        margin: kContainerEdgeInsets,
        child:  Text(
          buttonText,
          textAlign: TextAlign.center,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
