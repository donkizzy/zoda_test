import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoda_test/app_colors.dart';
import 'package:zoda_test/payment_method.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String paymentType = 'Mastercard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 120,
        decoration:  BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: mineShaftGray.withOpacity(0.08),
                spreadRadius: 0,
                blurRadius: 32,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethod()));
          },
          child: Container(
            decoration: BoxDecoration(color: mineShaftGray, borderRadius: BorderRadius.circular(14)),
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(vertical: 17),
            child: Center(
                child: Text(
              'Pay \$145.000',
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
            )),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(17),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(color: galleryWhite),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Order',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(17),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Address',
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SvgPicture.asset(
                  'assets/Note_Edit.svg',
                  height: 20,
                  width: 20,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Abdullahi Habiba',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'No. 56, Adekunle Adebayo Street, Isehin, Oyo State',
              style: GoogleFonts.poppins(color: gray),
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 1,
              color: altoGrey,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Items',
              style: GoogleFonts.poppins(color: mineShaftGray, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/balmain.png',
                  height: 77,
                  width: 66,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$140.00',
                            style: GoogleFonts.poppins(color: gray, fontWeight: FontWeight.w500),
                          ),
                          const Text('x1')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 1,
              color: altoGrey,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Shipping',
              style: GoogleFonts.poppins(color: mineShaftGray, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: altoGrey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/HSBC.png',
                          width: 50,
                          height: 30,
                        ),
                        Text(
                          'HSBC Express',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 16,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: altoGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16, top: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Regular (\$5)',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Estimate time - 24 January',
                              style: GoogleFonts.poppins(color: gray, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Payment Method',
              style: GoogleFonts.poppins(color: mineShaftGray, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: altoGrey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/mastercard.png',
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: RadioListTile(
                        title: Text(
                          'Mastercard',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          '**** **** 7896 4576',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: gray, fontSize: 12),
                        ),
                        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: persimmonOrange,
                        value: 'Mastercard',
                        groupValue: paymentType,
                        onChanged: (value) {
                          setState(() {
                            paymentType = value ?? '';
                          });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
