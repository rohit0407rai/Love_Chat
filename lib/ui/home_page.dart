import 'package:flutter/material.dart';
import 'package:love_chat/widgets/list_container.dart';
import '../utils/constant.dart';
import '../widgets/scrollable_cards.dart';
import '../widgets/second_scrollable_cards.dart';
import '../widgets/search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.primaryColor,
        body: SafeArea(
          bottom: false,
          child: Container(
              child: Stack(clipBehavior: Clip.none, children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 14),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/myself.png"),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text('Find Flames',
                          style: TextStyle(
                              color: Constants.logoColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(
                        width: 80,
                      ),
                      Image.asset(
                        'assets/icons/filter.png',
                        width: 30,
                        height: 30,
                        color: const Color(0xff505050),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    height: 120,
                    margin: const EdgeInsets.only(left: 15),
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ScrollableCards(
                              imageAsset: 'assets/images/rectangle1.png'),
                          SizedBox(
                            width: 15,
                          ),
                          SecondScrollableCards(
                              imageAsset: 'assets/images/rectangle2.png',
                              name: 'Tony'),
                          SizedBox(
                            width: 15,
                          ),
                          SecondScrollableCards(
                              imageAsset: 'assets/images/rectangle3.png',
                              name: 'James'),
                          SizedBox(
                            width: 15,
                          ),
                        ])),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 380,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 40,
                      ),
                      ListContainer(
                        imageAsset: 'assets/images/jordan.png',
                        name: 'Jordan',
                        status: 'Hii!',
                        time: '13:10',
                        remaining: '1',
                        color: Color(0xffFF5F8F),
                        width: 140,
                      ),
                      ListContainer(
                        imageAsset: 'assets/images/Tom.png',
                        name: 'Tom',
                        status: 'Hii!',
                        time: '13:10',
                        remaining: '1',
                        color: Color(0xffFFFFFF),
                        width: 160,
                      ),
                      ListContainer(
                          imageAsset: 'assets/images/James.png',
                          name: 'James',
                          status: 'Typing...',
                          time: '13:10',
                          remaining: '9+',
                          color: Color(0xffFF5F8F),
                          width: 155),
                    ],
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 250),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchBar(),
              ),
            ),
          ])),
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/home.png',
                    width: 30,
                    height: 30,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/globalsearch.png',
                    width: 30,
                    height: 30,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/calender.png',
                    width: 30,
                    height: 30,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/groupchat.png',
                  )),
            ],
          ),
        ));
  }
}
