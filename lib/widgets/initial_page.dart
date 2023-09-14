import 'package:flutter/material.dart';
import 'package:todomate/widgets/initial_page_button.dart';
import 'package:todomate/widgets/initial_button_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: mainImage(),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              mainButton(),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(AppTitle: '가입하기'),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    '가입하기',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const SignPage(),
              //       ),
              //     );
              //   },
              //   child: const Text(
              //     '가입하기',
              //     style: TextStyle(
              //       fontSize: 15,
              //       color: Colors.white,
              //       decoration: TextDecoration.underline,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );

  Row mainButton() => const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InitialButton(
            buttonTitle: '게스트로 시작',
          ),
          SizedBox(width: 12),
          InitialButton(
            buttonTitle: '로그인',
          ),
        ],
      );

  Column mainImage() => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/images/initialPageImage.png'),
            ),
          ),
        ],
      );
}
