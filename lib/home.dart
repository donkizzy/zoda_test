import 'package:flutter/material.dart';
import 'package:zoda_test/app_colors.dart';
import 'package:zoda_test/my_cart.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Discover',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Find anything that you want',
                      style: TextStyle(color: gray, fontWeight: FontWeight.w500, fontSize: 12),
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
              height: 40,
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
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
                const Text(
                  'Flash Sale',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      'Closing in:',
                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: ebbWhite, borderRadius: BorderRadius.circular(2)),
                          child: const Text(
                            '08',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: ebbWhite, borderRadius: BorderRadius.circular(2)),
                          child: const Text(
                            '25',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: ebbWhite, borderRadius: BorderRadius.circular(2)),
                          child: const Text(
                            '48',
                            style: TextStyle(fontWeight: FontWeight.w600),
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
                      const Text(
                        '\$140.00',
                        style: TextStyle(fontWeight: FontWeight.w600),
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
            const Row(
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCart()));
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
