import 'package:flutter/material.dart';
import 'package:todomate/widgets/initial_page_button.dart';
import 'package:todomate/widgets/sign_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 140,
                ),
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/initialPageImage.png'),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InitialButton(
                      buttonTitle: '게스트로 시작',
                    ),
                    InitialButton(
                      buttonTitle: '로그인',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignPage(),
                      ),
                    );
                  },
                  child: const Text(
                    '가입하기',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
