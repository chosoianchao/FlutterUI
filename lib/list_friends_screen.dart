import 'package:demo_ui/friends.dart';
import 'package:flutter/material.dart';

class ListFriendsScreen extends StatefulWidget {
  const ListFriendsScreen({Key? key}) : super(key: key);

  @override
  State<ListFriendsScreen> createState() => _ListFriendsScreenState();
}

class _ListFriendsScreenState extends State<ListFriendsScreen> {
  final _friend = <Friend>[];

  @override
  void initState() {
    _friend.add(
      Friend(
          time: "12:00 AM",
          name: "Thắng",
          image: ('images/flutter.png'),
          message: "hi",
          check: true),
    );
    _friend.add(
      Friend(
          name: "Sệ",
          image: ('images/flutter.png'),
          check: false,
          message: "Chào bạn",
          time: "23:00 PM"),
    );
    _friend.add(
      Friend(
          name: "Tân",
          image: ('images/flutter.png'),
          check: true,
          message: "Rất vui được làm quen",
          time: "20:00 PM"),
    );
    _friend.add(
      Friend(
          name: "Nam",
          image: ('images/flutter.png'),
          check: false,
          message: "Không có gì",
          time: "22:00 PM"),
    );
    _friend.add(
      Friend(
          name: "Giang",
          image: ('images/flutter.png'),
          check: true,
          message: "Chào buổi sáng",
          time: "7:00 AM"),
    );
    _friend.add(
      Friend(
          name: "Đoàn",
          image: ('images/flutter.png'),
          check: false,
          message: "Tối nay bạn rảnh không?",
          time: "9:00 AM"),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'WhatsApp Clone',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height - 150,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(45),
                          topLeft: Radius.circular(45))),
                  child: ListView.builder(
                    itemCount: _friend.length,
                    itemBuilder: (context, index) {
                      var friend = _friend[index];
                      return Expanded(
                        child: (Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    friend.image,
                                  ),
                                  radius: 48,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        friend.name,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        friend.message,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  Text(
                                    friend.time,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: friend.check
                                        ? const Icon(Icons.check_circle)
                                        : const Icon(
                                            Icons.check_circle_outline),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                      );
                    },
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _friend.length,
                      itemBuilder: (context, index) {
                        final friend = _friend[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    friend.image,
                                  ),
                                  radius: 48,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                overflow: TextOverflow.ellipsis,
                                friend.name,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
