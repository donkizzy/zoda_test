import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoda_test/app_colors.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
                value: isChecked,
                activeColor: persimmonOrange,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
            const SizedBox(
              width: 16,
            ),
            Image.asset(
              'assets/balmain.png',
              height: MediaQuery.of(context).size.width / 4,
              width: MediaQuery.of(context).size.width / 4,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adidas Sneaker “Psychic Energy',
                    style: GoogleFonts.poppins(color: mineShaftGray, fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\$140.00',
                    style: GoogleFonts.poppins(color: gray, fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(border: Border.all(color: altoGrey), shape: BoxShape.circle),
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                              child: const Center(
                                  child: Icon(
                                Icons.remove,
                                size: 12,
                              )),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 18.5),
                                child: Text(
                                  '1',
                                  style: GoogleFonts.poppins(
                                      color: mineShaftGray, fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                            Container(
                              decoration: BoxDecoration(border: Border.all(color: altoGrey), shape: BoxShape.circle),
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                              child: const Center(
                                  child: Icon(
                                Icons.add,
                                size: 12,
                              )),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      if (MediaQuery.of(context).size.width > 350)
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(color: ebbWhite, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.delete_outline_rounded,
                            size: 16,
                          ),
                        )
                    ],
                  ),
                  if (!(MediaQuery.of(context).size.width > 350))
                    const SizedBox(
                      height: 14,
                    ),
                  if (!(MediaQuery.of(context).size.width > 350))
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(color: ebbWhite, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.delete_outline_rounded,
                        size: 16,
                      ),
                    )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Divider(
          height: 1,
          color: altoGrey,
        ),
      ],
    );
  }
}
