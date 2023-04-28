import 'package:book_app/colors.dart';
import 'package:book_app/view/myBook.dart';
import 'package:book_app/widget/bottomNavigation.dart';
import 'package:flutter/material.dart';
import '../colors.dart';
// ignore: depend_on_referenced_packages
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  TextEditingController controller = TextEditingController();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  @override
  Widget build(BuildContext context) {

    List<String> items = [
      "Arts",
      "Biography",
      "Romance",
      "Thriller",
      "Fiction",
      "Crime",
      "Movies",
      "Religious",
      "Philosophy"
    ];
    // final authService = Provider.of<AuthService>(context);

    final pages = List.generate(
        4,
        (index) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: double.infinity,
                    height: 140,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/Rectangle 13.png"),
                            fit: BoxFit.scaleDown)),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          """Find out the best books to read 
when you don’t even know what
 to read!!!""",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 80, right: 60)),
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 50, top: 79),
                    child: GestureDetector(
                      child: Container(
                        width: 62,
                        height: 26,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text(
                            'Explore',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: yellow),
                          ),
                        ),
                      ),
                    )),
              ],
            ));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 8),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyBottomNavigationBar()));
            },
            icon: Image.asset(
              'assets/icons/heroicons-solid_menu-alt-2.png',
              scale: 1,
            ),
          ),
          title: Row(
            children: [
              Container(
                height: 36,
                width: 199,
                decoration: BoxDecoration(
                    color: whiteGray, borderRadius: BorderRadius.circular(15)),
                child: const TextField(
                  cursorColor: yellow,
                  decoration: InputDecoration(
                    suffixIcon: Image(
                        image: AssetImage("assets/icons/ri_search-line.png")),
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/fluent_scan-dash-28-filled.png',
                    scale: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/mdi_bell-notification.png',
                    scale: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 170,
                    width: 400,
                    child: PageView.builder(
                      controller: controller,
                      itemCount: pages.length,
                      itemBuilder: (_, index) {
                        const Duration(milliseconds: 1);
                        return pages[index % pages.length];
                      },
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: pages.length,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: yellow,
                        dotHeight: 7,
                        dotWidth: 7,
                        spacing: 4,
                        expansionFactor: 7),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 25, bottom: 2),
                    child: Row(
                      children: const [
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(250, 22, 92, 115)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 390,
                          height: 33,
                          child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: items.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text.rich(
                                        TextSpan(
                                            text: items[index],
                                            style:
                                                const TextStyle(color: gray)),
                                      ),
                                    ),
                                  );
                                },
                              ))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 210,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 133,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/1.png"))),
                            child: InkWell(onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const MyBook();
                                },
                              ));
                            }),
                          ),
                          Container(
                            width: 133,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/2.png"))),
                          ),
                          Container(
                            width: 133,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/8.png"))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 210,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 133,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/5.png"))),
                        ),
                        Container(
                          width: 133,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/6.png"))),
                        ),
                        Container(
                          width: 133,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/7.png"))),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
