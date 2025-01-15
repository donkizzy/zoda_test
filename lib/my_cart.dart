import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoda_test/app_colors.dart';
import 'package:zoda_test/order_page.dart';
import 'package:zoda_test/widgets/cart_item.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

  bool isChecked = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 240,
        padding: const EdgeInsets.only(top: 24),
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
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 24.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text('Select All',style:  GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,),),
                  Checkbox(
                      value: isChecked,
                      activeColor: persimmonOrange,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                ],
                           ),
             ),
            const SizedBox(height: 16,),
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 24.0),
               child: Divider(height: 1,color: altoGrey,),
             ),
            const SizedBox(height: 16,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 24.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Payment',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18),),
                  Text('\$140.00',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18),),
                ],
                           ),
             ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderPage()));
              },
              child: Container(
                decoration: BoxDecoration(color: mineShaftGray, borderRadius: BorderRadius.circular(14)),
                margin: const EdgeInsets.all(24),
                padding: const EdgeInsets.symmetric(vertical: 17),
                child:  Center(
                  child: Text(
                    'Checkout',
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
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
                        'My Cart',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(17),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(color: galleryWhite),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: mineShaftGray,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const CartItem(),
            const SizedBox(
              height: 20,
            ),
            const CartItem(),
            const SizedBox(
              height: 20,
            ),
            const CartItem(),
            const SizedBox(
              height: 20,
            ),
            const CartItem(),
          ],
        ),
      ),
    );
  }
}
