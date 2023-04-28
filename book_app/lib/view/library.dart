import 'package:book_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi Emily,',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF165C73),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'My Library',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xFF165C73),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            SizedBox(
              height: 202,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/10.png',
                        width: 117,
                        height: 156,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name of Book',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 86,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFFDADADA),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFF165C73),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '60%',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/9.png',
                        width: 117,
                        height: 156,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name of Book',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 86,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFFDADADA),
                                    ),
                                  ),
                                  Container(
                                    width: 56,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFF165C73),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '60%',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      UnconstrainedBox(
                        child: DottedBorder(
                          radius: const Radius.circular(5),
                          color: const Color(0xFF979797),
                          child: SizedBox(
                            width: 117,
                            height: 156,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Color(0xFF656B8C),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Discover More',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Wishlist',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFE49527)),
                  ),
                  Container(
                    width: 55,
                    height: 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xFFDADADA),
                        )),
                    child: const Center(
                      child: Text(
                        'See More',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFE49527)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2,
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                  children: const [
                    WishListItem(
                      itemImage: 'assets/images/Rectangle 1-1.png',
                      title: 'Good Company',
                      subtitle: 'Cynthia D.S',
                    ),
                    WishListItem(
                      itemImage: 'assets/images/Rectangle 1.png',
                      title: 'Book Lovers',
                      subtitle: 'Emily Henry',
                    ),
                    WishListItem(
                      itemImage: 'assets/images/Rectangle 1-2.png',
                      title: 'Leaving Time',
                      subtitle: 'Jodi Picoult',
                    ),
                    WishListItem(
                      itemImage: 'assets/images/Rectangle 1-3.png',
                      title: 'Silent Scream ',
                      subtitle: 'Angela Marsons',
                    ),
                    WishListItem(
                      itemImage: 'assets/images/Rectangle 1-4.png',
                      title: 'The Kite Runner',
                      subtitle: 'Khaled Hosseini',
                    ),
                    WishListItem(
                      itemImage: 'assets/images/Rectangle 1-5.png',
                      title: 'Father of the Rain',
                      subtitle: 'Lily King',
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class WishListItem extends StatelessWidget {
  const WishListItem({
    Key? key,
    required this.itemImage,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String itemImage;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          itemImage,
          width: 60,
          height: 85,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF165C73)),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF979797)),
                ),
              ],
            ),
            const SizedBox(
              height: 29,
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              itemSize: 8,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
          ],
        )
      ],
    );
  }
}


