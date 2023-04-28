import 'package:book_app/view/my_homePage.dart';
import 'package:book_app/widget/bottomNavigation.dart';
import 'package:flutter/material.dart';

class MyBook extends StatefulWidget {
  const MyBook({
    Key? key,
  }) : super(key: key);

  @override
  State<MyBook> createState() => _MyBookPageState();
}

class _MyBookPageState extends State<MyBook> {
  int counter = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 27),
          child: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyBottomNavigationBar()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 190),
              child: Container(
                width: 93,
                height: 29,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 22, 92, 115),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text('+Add to wishlist',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Container(
                    width: 348,
                    height: 212,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/Rectangle 18.png"),
                            fit: BoxFit.scaleDown)),
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, top: 30),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage:
                            AssetImage('assets/images/Ellipse 2.png'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: const [
                          Text(
                            'Dust Jacket',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 22, 92, 115)),
                          ),
                          Text(
                            "By Pisco Pirinto",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 121, top: 17),
                      child: Text(
                        "\$10.00",
                        style: TextStyle(
                            color: Color.fromARGB(255, 228, 149, 39),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Image.asset('assets/images/Group 2903.png',
                          width: 90, height: 50),
                    ),
                    Image.asset("assets/images/_ 1,500 Reads.png")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80, top: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "About",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Reviews",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Author",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: 333,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(76, 158, 158, 158),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 29),
                      child: SizedBox(
                        height: 198,
                        width: 319,
                        child: Text(
                          """Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.""",
                          style: TextStyle(
                            color: Color.fromARGB(255, 155, 151, 151),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
