import 'package:bike_app/presentation/book_ride/widget/booking_card.dart';
import 'package:bike_app/presentation/book_ride/widget/bottom_card.dart';
import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookRide extends StatelessWidget {
  const BookRide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              color: Colors.grey,
            ),
            Positioned(
              top: size.height * 0.066,
              right: size.width * 0.10,
              left: size.width * 0.10,
              child: Container(
                width: size.width,
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      blurRadius: 18,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("images/greenEllipse.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                height: 10,
                                width: 1.3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                height: 10,
                                width: 1.3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/greenL.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "From",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: ColorConstants.lightTextColor,
                                      ),
                                    ),
                                    Text(
                                      "Your Location",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: ColorConstants.boldTextColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/edit.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: Container(
                                height: 1,
                                width: size.width * 0.53,
                                color: ColorConstants.dividerColor,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "To",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: ColorConstants.lightTextColor,
                                      ),
                                    ),
                                    Text(
                                      "Add a destination",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: ColorConstants.destinationColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    color: ColorConstants.lightIconColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.24 + 14,
              right: 25,
              child: Container(
                height: 55,
                width: 55,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/target.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            // * Bottom Sheet Card
            BottomCard(),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: BookingBottomCard(),
            // )
          ],
        ),
      ),
    );
  }
}

class CardScroll extends StatelessWidget {
  const CardScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 109,
      width: size.width,
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: Container(
              height: 84,
              width: size.width * 0.91,
              padding: const EdgeInsets.only(
                left: 24,
                top: 37,
                bottom: 17,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/relocate.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Your Location",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.boldTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.060,
                right: size.width * 0.060,
              ),
              child: Container(
                height: 45,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(13),
                  ),
                ),
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/pin.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        child: Text(
                          "Pin location on map ",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.boldTextColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
