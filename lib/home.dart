import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoda_test/app_colors.dart';
import 'package:zoda_test/product_detail.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> categories = [
    'Shoes',
    'Clothes',
    'Bags',
    'Accessories',
    'Shoes',
    'Clothes',
    'Bags',
    'Accessories',
    'Shoes',
    'Clothes',
    'Bags',
    'Accessories'
  ];

  List<String> bottomNavItems = [
    'assets/home.svg',
    'assets/menu.svg',
    'assets/Bookmark.svg',
    'assets/Shopping_Cart.svg',
    'assets/User.svg'
  ];
  int selctedNavIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
            color: codGray,
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomNavItems.length,
                  (index) {
                final icon = bottomNavItems[index];
                return GestureDetector(
                  onTap: () {

                    setState(() {
                      selctedNavIndex = index;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Opacity(
                          opacity: selctedNavIndex == index ? 1 : 0.5,
                          child: SvgPicture.asset(
                            icon,
                            colorFilter: ColorFilter.mode(selctedNavIndex == index ? Colors.white : silverChalice, BlendMode.srcIn),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4,),
                      AnimatedBar(isActive: selctedNavIndex == index),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Discover',
                      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                     Text(
                      'Find anything that you want',
                      style: GoogleFonts.poppins(color: gray, fontWeight: FontWeight.w500, fontSize: 12),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(17),
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: galleryWhite),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    border: Border.all(color: galleryWhite),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Image.asset('assets/discounts.png'),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 38,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration:
                        BoxDecoration(border: Border.all(color: altoGrey), borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      categories[index],
                      style:  GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 8,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                 Text(
                  'Flash Sale',
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Row(
                  children: [
                     Text(
                      'Closing in:',
                      style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: ebbWhite, borderRadius: BorderRadius.circular(2)),
                          child:  Text(
                            '08',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: ebbWhite, borderRadius: BorderRadius.circular(2)),
                          child:  Text(
                            '25',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: ebbWhite, borderRadius: BorderRadius.circular(2)),
                          child:  Text(
                            '48',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            SizedBox(
              height: 190,
              child: ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(color: ebbWhite, borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/addidas.png',
                            height: 120,
                            width: 120,
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Adidas Sneaker'),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$140.00',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text(
                  'Most Popular',
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'See More',
                  style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetail()));
              },
              child: SizedBox(
                height: 155,
                child: ListView.separated(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      'assets/balmain.png',
                      height: 150,
                      width: 150,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 4 : 0,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
    );
  }
}
