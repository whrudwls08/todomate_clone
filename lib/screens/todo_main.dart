import 'package:flutter/material.dart';

class TodoMain extends StatelessWidget {
  const TodoMain({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: Appbar(),
        body: Column(
          children: [
            // Padding(
            //   // padding: EdgeInsets.symmetric(horizontal: 10),
            // ),
            topButton(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                Container(
                  child: Text(
                    'me',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // padding: ,
                    // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    // padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 22, 21, 21),
                    ),
                    child: SizedBox(
                      height: 45,
                      width: 45,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.white,
                        ),
                        onPressed: null,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.adb_rounded,
                        color: Colors.white,
                      ),
                      onPressed: null,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2023년 9월 4주차',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        iconSize: 16,
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        iconSize: 16,
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // shape: BoxShape.circle,
                          color: Color.fromARGB(255, 22, 21, 21),
                        ),
                        child: Text(
                          '주',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );

  AppBar Appbar() {
    return AppBar(
      titleSpacing: 10,
      backgroundColor: Colors.black,
      title: Text(
        'todo mate',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 22, 21, 21),
          ),
          child: SizedBox(
            height: 30,
            width: 30,
            child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.white,
                ),
                onPressed: null),
          ),
        ),
        // IconButton(icon: Icon(Icons.navigate_next), onPressed: null),
      ],
    );
  }
}

class topButton extends StatelessWidget {
  const topButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
        Column(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 22, 21, 21),
              ),
              child: SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 22, 21, 21),
              ),
              child: SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 16,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
