import 'package:flutter/material.dart';

class ScreenFresher extends StatelessWidget {
  const ScreenFresher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flex Demo -Code Fresher'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset("images/flutter.png"),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 400,
                    height: 100,
                    child: Text(
                      "Lập trình flutter\nThực hiện dự án app\n mobile 2022",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 7,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 400,
                    height: 100,
                    child: Text(
                      "Lập trình\n Android\nJava + Kotlin",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset("images/android.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 7,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset("images/java.png"),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 400,
                    height: 100,
                    child: Text(
                      "Lập trình Java cơ bản\n cho người mới\nbắt đầu",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
