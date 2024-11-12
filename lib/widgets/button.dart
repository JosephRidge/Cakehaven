import 'package:flutter/material.dart';
import '../utils/constants.dart' as globalConstants;
import '../widgets/text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key, this.onPressed, this.buttonType, this.buttonText});
  final VoidCallback? onPressed;
  final String? buttonType; // dark, orange
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    const buttonPadding = EdgeInsets.symmetric(horizontal: 16);
    const borderRadius = BorderRadius.all(Radius.circular(2));
    const buttonMinSize = Size(100,40);

    // style variant of first button
    final ButtonStyle darkButton = ElevatedButton.styleFrom( 
      backgroundColor: globalConstants.secondaryColor,
      alignment: Alignment.center,
      minimumSize: buttonMinSize,
      padding: buttonPadding,
      shape: const RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    );

    // style of orange variant
    final ButtonStyle orangeButton = ElevatedButton.styleFrom(
      foregroundColor: globalConstants.primaryColor,
      minimumSize: buttonMinSize,
      padding: buttonPadding,
      shape: const RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    );

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
      foregroundColor: globalConstants.primaryColor,
      minimumSize: buttonMinSize,
      padding: buttonPadding,
      shape: const RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    ),
      onPressed: onPressed,
      child: TextWidget(displayText: '$buttonText', styleVariant: 'button'),
    );
  }
}
