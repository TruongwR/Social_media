import 'package:demo_app_master/social_media_1/home_screen/home_screen.dart';
import 'package:demo_app_master/social_media_1/welcome_screen/components/random_user_card.dart';
import 'package:flutter/material.dart';

class App1MainScreen extends StatelessWidget {
  static const String routeName = '/App1MainScreen';

  const App1MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 29, 1),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Column(
                    children: const [
                      SizedBox(height: 25),
                      RandomUserCard(
                        imageUrl:
                            'https://duhocminhkhang.com/wp-content/uploads/2020/01/T%E1%BB%95ng-h%E1%BB%A3p-h%C3%ACnh-%E1%BA%A3nh-g%C3%A1i-xinh-%C4%91eo-m%E1%BA%AFt-k%C3%ADnh-c%E1%BB%B1c-cute-10-1.jpg',
                        userName: 'Tân ĐB',
                        opacity: .3,
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://luv.vn/wp-content/uploads/2021/08/hinh-anh-gai-xinh-71.jpg',
                        userName: 'Thuận',
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://haycafe.vn/wp-content/uploads/2022/02/Tai-anh-gai-xinh-Viet-Nam-de-thuong-600x600.jpg',
                        userName: 'Thuần',
                        opacity: .4,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 80),
                      RandomUserCard(
                        imageUrl:
                            'https://kenh14cdn.com/thumb_w/660/2020/5/28/0-1590653959375414280410.jpg',
                        userName: 'Amily',
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://image-us.24h.com.vn/upload/3-2022/images/2022-07-11/21-1657535366-24-width650height650.jpg',
                        userName: 'Quynh',
                        opacity: .4,
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://haycafe.vn/wp-content/uploads/2022/02/Anh-gai-xinh-Viet-Nam.jpg',
                        userName: 'Nhu',
                        opacity: .3,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      RandomUserCard(
                        imageUrl:
                            'https://hinhgaixinh.com/wp-content/uploads/2022/03/anh-gai-xinh-hoc-sinh-tuyet-dep.jpg',
                        userName: 'Thuy',
                        opacity: .2,
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://bloggioitre.net/wp-content/uploads/2022/01/gai-dep-gai-xinh-viet-nam-9.jpg',
                        userName: 'Uyen',
                      ),
                      RandomUserCard(
                        imageUrl:
                            'https://how-yolo.net/wp-content/uploads/2021/12/15-13.png',
                        userName: 'Trang',
                        opacity: .2,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(27, 27, 29, 1),
                    const Color.fromRGBO(27, 27, 29, 1),
                    const Color.fromARGB(255, 21, 21, 1).withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Find New Friends\nWith Sosmad!',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      color: Colors.white,
                      height: 1.1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'With sosmad then you will find new\nfriends from various countires and\nregions throughout the region',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 19, 94, 156),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
