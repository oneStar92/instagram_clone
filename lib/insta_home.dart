import 'package:flutter/material.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40.0,
          child: Image.asset(
            'assets/images/instagram-logo.png',
            fit: BoxFit.cover,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: ImageIcon(AssetImage('assets/images/like.png')),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: ImageIcon(AssetImage('assets/images/share.png')),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.only(top: 9, bottom: 9, right: 16, left: 16),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset('assets/images/home.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/search.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/add.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/reels.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/user.png'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
