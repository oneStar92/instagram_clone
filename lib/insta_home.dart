import 'package:flutter/material.dart';

final profileImageUrlList = <String>[
  'https://yt3.googleusercontent.com/ytc/APkrFKaawIh1ObP-_o0eaRbq-IzxF3WBT5l5GCklLYa1=s176-c-k-c0x00ffffff-no-rj',
  'https://i.namu.wiki/i/pHv3y6FEJZUrYtkjhFDCPHl4rVhRFKNgZUCPL-LtjuLAtF4BZA2KMnVm1mJnNPhC7CKXZQLaFVhvpM8_QMAIdb-KPBvc8Ux1fRWwrgn_d4rrkQT4gBetDBelHejziYCEbRudBKbZPiHvaxTPIMfFOA.webp',
  'https://i.namu.wiki/i/B7jSpErtFd2gMq3dPrCBkd_zgxDH2v6jk_MOnyARvxXZFx9M8a0-F2FINl2FcGX9GfhFfDu5nOApE8toVnRvTQ.webp',
  'https://mblogthumb-phinf.pstatic.net/MjAyMDAyMTNfODUg/MDAxNTgxNTYxNDQ1OTkz.OSa2LB437sDEL_JLnQN2sgDuVqZuQf9mni5S9NUvSZsg.QY7LqIEnYzOyi3hV2Wq6MUj5Ma6gaEdxC3eQEx6jHocg.PNG.lccthebox4/image.png?type=w800',
  'https://i.namu.wiki/i/bMJppiXHzPRDmIcSAvJ2-QWPNmi2eJZUK6VniofpEbDTU1d6TKO59qfnwU9fGpmTCHmnhK0-WFVj1KIBzN0GJQ.webp',
  'https://entertainimg.kbsmedia.co.kr/cms/uploads/PERSON_20230925093819_a32bb381362f95c682107821e93d877b.jpg',
  'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/04/27/86ae2445-a8a4-43de-8185-234c1427b977.jpg',
  'https://blog.kakaocdn.net/dn/nQt62/btrFjyXnXXA/hdApmaYuGDcofkwGdhkKY0/img.png',
];

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: profileImageUrlList.length,
              itemBuilder: (context, index) => Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xfff9ce34),
                          Color(0xffee2a7b),
                          Color(0xff6228d7),
                        ],
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(profileImageUrlList[index]),
                          ),
                          border: Border.all(color: Colors.white, width: index == 0 ? 0 : 2),
                        ),
                        margin: EdgeInsets.all(index == 0 ? 0 : 3),
                      ),
                    ),
                  ),
                  index == 0
                      ? const Positioned(
                          bottom: 8.0,
                          right: 8.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 12.0,
                              child: Icon(
                                Icons.add,
                                size: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : Container(),

                ],
              ),
            ),
          ),
          const Expanded(flex: 9, child: Text('악')),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.only(top: 9, bottom: 9, right: 16, left: 16),
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
