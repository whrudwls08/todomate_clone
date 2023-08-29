import 'package:flutter/material.dart';

class InitialButton extends StatelessWidget {
  final String buttonTitle;

  const InitialButton({
    super.key,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) => Container(
        width: 170,
        height: 40,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 26, 26, 26),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
}
