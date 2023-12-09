import 'package:flutter/material.dart';

class UnidueButton extends StatelessWidget {
  const UnidueButton(
      {super.key,
      required this.onPressed,
      required this.buttonColor,
      required this.buttonText});

  final void Function() onPressed;
  final Color buttonColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return  Material(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          splashFactory: InkRipple.splashFactory,
          splashColor: buttonColor.withOpacity(0.3),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              buttonText,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
              ),
            ),
          ),
        ),
      );
  }
}
