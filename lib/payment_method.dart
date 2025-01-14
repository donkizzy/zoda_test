import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                Container(
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    border: Border.all(color: galleryWhite),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                    child: Center(
                        child: Text(
                  'Payment Method',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ))),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
                child: ListView(
                  physics: const ClampingScrollPhysics(),
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
                            title: const Text(
                              'Mastercard',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text(
                              '**** **** 7896 4576',
                              style: TextStyle(fontWeight: FontWeight.w500, color: gray, fontSize: 12),
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
                            title: const Text(
                              'Paypal',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text(
                              '**** **** 2345 9203',
                              style: TextStyle(fontWeight: FontWeight.w500, color: gray, fontSize: 12),
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
                const Text('Add Another Method',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
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
                      const Expanded(
                        child: ListTile(
                            title: Text(
                              'Credit/Debit Card',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              'Pay with you Visa or Master Card',
                              style: TextStyle(fontWeight: FontWeight.w500, color: gray, fontSize: 12),
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
                      const Text(
                        'Paypal',
                        style: TextStyle(fontWeight: FontWeight.w500),
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
                      const Text(
                        'Apple Pay',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Colors.black,)
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
                const Text('Pay Later',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
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
                      const Text(
                        'Kredivo',
                        style: TextStyle(fontWeight: FontWeight.w500),
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
