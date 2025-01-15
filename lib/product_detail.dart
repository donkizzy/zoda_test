import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoda_test/app_colors.dart';
import 'package:zoda_test/payment_method.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ebbWhite,
      bottomNavigationBar: Container(
        height: 120,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethod()));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(17),
                    margin: const EdgeInsets.only(left: 24),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                     border: Border.all(color: gray),
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: mineShaftGray,
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: mineShaftGray, borderRadius: BorderRadius.circular(14)),
                  margin: const EdgeInsets.all(24),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                      child: Text(
                        'Buy Now',
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: ebbWhite,
        leadingWidth: 81,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(17),
            margin: const EdgeInsets.only(left: 24),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
             color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(17),
            margin: const EdgeInsets.only(right: 24),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.more_horiz,
              color: mineShaftGray,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
          ),
          Expanded(
            child: DraggableScrollableSheet(
                shouldCloseOnMinExtent: false,
                initialChildSize: 0.6,
                maxChildSize: 0.9,
                expand: true,
                builder: (BuildContext context, scrollController) {
                  return Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0, top:  24.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24))),
                    child:  ListView(
                      physics: const ClampingScrollPhysics(),
                      children: [
                        Text('Adidas Sneaker “Psychic Energy',style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),),
                        const SizedBox(height: 16,),
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.star,color: lightningYellow,size: 18,),
                                const SizedBox(width: 4,),
                                RichText(text: TextSpan(
                                  text: '4.8',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  ),
                                  children: [TextSpan(
                                      text: ' (230 reviews)',
                                      style: GoogleFonts.poppins(
                                        color: gray,
                                        fontWeight: FontWeight.w500
                                      )
                                  )]
                                ))
                              ],
                            ),
                            const Spacer(),
                            Text(
                              '\$140.00',
                              style: GoogleFonts.poppins(color: codGray, fontWeight: FontWeight.w600,fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        const Divider(
                          height: 1,
                          color: altoGrey,
                        ),
                        const SizedBox(height: 16,),
                        Text('Available Size',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: gray)),
                        const SizedBox(height: 8,),
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: gray),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('30',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: gray),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('32',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: gray),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('34',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: gray),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('36',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: gray),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('38',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Text('Color',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: gray)),
                        const SizedBox(height: 8,),
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.red),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('30',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('30',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('30',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text('30',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: gray),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ) ;
                }
            ),
          )
        ],
      ),
    );
  }
}
