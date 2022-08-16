import 'package:demo_ui/calculate_screen.dart';
import 'package:demo_ui/fresher_screen.dart';
import 'package:demo_ui/list_friends_screen.dart';
import 'package:demo_ui/signup_sceen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 50,
              child: TextButton(
                onPressed: () {
                  _goToScreenSignUp(context);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.orange),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
                ),
                child: const Text('SignUp'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: TextButton(
                onPressed: () {
                  _goToScreenCalculate();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.orange),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ))),
                child: const Text('Calculate'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: TextButton(
                onPressed: () {
                  _goToScreenListFriends();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.orange),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ))),
                child: const Text('List Friends'),
              ),
            ),const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: TextButton(
                onPressed: () {
                  _goToScreenFresher();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.orange),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ))),
                child: const Text('Fresher'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _goToScreenCalculate() {
    Future.delayed(Duration.zero, () async {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CalculateScreen()));
    });
  }

  _goToScreenSignUp(BuildContext context) {
    Future.delayed(Duration.zero, () async {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
    });
  }

  void _goToScreenListFriends() {
    Future.delayed(Duration.zero, () async {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ListFriendsScreen()));
    });
  }

  void _goToScreenFresher() {
    Future.delayed(Duration.zero, () async {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ScreenFresher()));
    });
  }
}
