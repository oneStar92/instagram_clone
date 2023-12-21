import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final numberFormat = NumberFormat('###,###,###,###');
final profileNameList = <String>[
  '오준석',
  '고윤정',
  '기안84',
  '제니',
  '이영지',
  '임시완',
  '미미',
  '안유진',
];
final profileLocationList = <String>[
  '수원',
  '서울',
  '서울',
  '서울',
  '인천',
  '서울',
  '서울',
  '서울',
];
final profileStoryImageUrlList = <String>[
  'https://image.yes24.com/goods/101819249/XL',
  'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/12/01/3139d2b5-31b8-4730-813a-073b2bd59334.jpg',
  'https://img.tvreportcdn.de/cms-content/uploads/2023/10/27/838e1652-1e7b-4a2d-bfe9-5ca08152b862.jpg',
  'https://img.hankyung.com/photo/202309/01.34418300.1.jpg',
  'https://file2.nocutnews.co.kr/newsroom/image/2023/01/15/202301152200530022_0.jpg',
  'https://img.hankyung.com/photo/202311/AKR20231120088300005_02_i_P4.jpg',
  'https://blog.kakaocdn.net/dn/yln5r/btszlGGHzZ4/ZJykGkeBEFZiBWCvITkGiK/F9mEzBYbcAADNPh.jpg?attach=1&knm=img.jpg',
  'https://thumbnews.nateimg.co.kr/view610///news.nateimg.co.kr/orgImg/mt/2023/10/22/2023102207293656368_1.jpg',
];
final storyBodyList = <String>[
  '생존코딩',
  'ELLE',
  '마라톤',
  '찡긋',
  'Show me The Money',
  '그러지 마유~',
  'V~!',
  '단발',
];
final storyLikeCount = <int>[
  2345,
  12456,
  234561,
  132465,
  27665,
  846265,
  3564736,
  75465,
];
final storyCommentsCount = <int>[
  1,
  23451,
  1345,
  6345,
  345623,
  2346151,
  3546724,
  2345236,
];
final profileImageUrlList = <String>[
  'https://yt3.googleusercontent.com/ytc/APkrFKaawIh1ObP-_o0eaRbq-IzxF3WBT5l5GCklLYa1=s176-c-k-c0x00ffffff-no-rj',
  'https://i.namu.wiki/i/pHv3y6FEJZUrYtkjhFDCPHl4rVhRFKNgZUCPL-LtjuLAtF4BZA2KMnVm1mJnNPhC7CKXZQLaFVhvpM8_QMAIdb-KPBvc8Ux1fRWwrgn_d4rrkQT4gBetDBelHejziYCEbRudBKbZPiHvaxTPIMfFOA.webp',
  'https://i.namu.wiki/i/B7jSpErtFd2gMq3dPrCBkd_zgxDH2v6jk_MOnyARvxXZFx9M8a0-F2FINl2FcGX9GfhFfDu5nOApE8toVnRvTQ.webp',
  'https://mblogthumb-phinf.pstatic.net/MjAyMDA3MjJfMjA4/MDAxNTk1MzgxMzMyNDM3.0EazNlKOY2V_xOcrl2JocK2Wm0yzSooASVOfhY3Haxog.JD_JL2GIM14UiN5NHBw7vh99uJgBVkXphcGsnr9B_Jcg.PNG.jh520130/20200722102836.png?type=w800',
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
        scrolledUnderElevation: 0,
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
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(
                height: MediaQuery.of(context).size.width * 0.3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(profileImageUrlList[index-1]),
                            ),
                          ),
                          margin: EdgeInsets.only(right: 8),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                profileNameList[index-1],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                profileLocationList[index-1],
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Image.asset(
                            'assets/images/more.png',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Image.network(
                      profileStoryImageUrlList[index-1],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: null,
                              icon: Image.asset(
                                'assets/images/like.png',
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Image.asset(
                                'assets/images/comment.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Image.asset(
                                'assets/images/share.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: null,
                              icon: Image.asset(
                                'assets/images/bookmark.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '좋아요 ${numberFormat.format(storyLikeCount[index-1])}개',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: '${profileNameList[index-1]} ',
                                        style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${storyBodyList[index-1]}'),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: null,
                                child: Text('댓글 ${numberFormat.format(storyCommentsCount[index-1])}개 모두 보기'),
                                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                              ),
                              Text(
                                '12월 10일',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
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
