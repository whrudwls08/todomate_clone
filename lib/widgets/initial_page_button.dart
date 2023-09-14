import 'package:flutter/material.dart';
import 'package:todomate/widgets/initial_button_page.dart';

class InitialButton extends StatelessWidget {
  final String buttonTitle;

  const InitialButton({
    super.key,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(AppTitle: buttonTitle),
                        // 현재는 게스트로 시작, loginPage로 시작 둘 다 로그인 페이지로 이동함
                        // https://seosh817.tistory.com/211 해당 블로그에서 별도로 이동할 수 있도록 구현 예정
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    buttonTitle,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            // Text(
            //   buttonTitle,
            //   style: const TextStyle(
            //     fontSize: 15,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      );
}
