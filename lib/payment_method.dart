import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoda_test/app_colors.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String paymentType = 'Mastercard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                InkWell(
                onTap: (){
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
                        'Payment Method',
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
            Expanded(
                child: ListView(
                  physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
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
                            title:  Text(
                              'Mastercard',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                            ),
                            subtitle:  Text(
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
                        'assets/Paypal.png',
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: RadioListTile(
                            title:  Text(
                              'Paypal',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                            ),
                            subtitle:  Text(
                              '**** **** 2345 9203',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: gray, fontSize: 12),
                            ),
                            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
                            contentPadding: EdgeInsets.zero,
                            controlAffinity: ListTileControlAffinity.trailing,
                            activeColor: persimmonOrange,
                            value: 'Paypal',
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
                const SizedBox(height: 24,),
                 Text('Add Another Method',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                const SizedBox(height: 16,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: altoGrey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/credit_card.svg',
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                       Expanded(
                        child: ListTile(
                            title: Text(
                              'Credit/Debit Card',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              'Pay with you Visa or Master Card',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: gray, fontSize: 12),
                            ),
                            visualDensity: VisualDensity(vertical: -4, horizontal: -4),
                            contentPadding: EdgeInsets.zero,
                          trailing: Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Colors.black,),
                           ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
                  decoration: BoxDecoration(
                    border: Border.all(color: altoGrey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Paypal.png',
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                       Text(
                        'Paypal',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Colors.black,)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
                  decoration: BoxDecoration(
                    border: Border.all(color: altoGrey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/apple_pay.png',
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                       Text(
                        'Apple Pay',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Colors.black,)
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
                 Text('Pay Later',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
                  decoration: BoxDecoration(
                    border: Border.all(color: altoGrey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/krevdivo.png',
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                       Text(
                        'Kredivo',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Colors.black,)
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
