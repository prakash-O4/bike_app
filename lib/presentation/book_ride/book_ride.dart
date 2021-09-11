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
              color: Colors.black,
            ),
            Positioned(
              top: size.height * 0.066,
              right: size.width * 0.10,
              left: size.width * 0.10,
              child: Container(
                height: size.height * 0.165,
                width: size.width,
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ? icon column
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: ColorConstants.greenColor,
                          ),
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
                          const SizedBox(height: 4),
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
                          Icon(
                            Icons.location_on_outlined,
                            color: ColorConstants.greenColor,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    // * Location Column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(
                              width: 100,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              child: Icon(
                                Icons.edit,
                                color: ColorConstants.lightIconColor,
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
                            const SizedBox(
                              width: 70,
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
                  ],
                ),
              ),
            ),
            // * Bottom Sheet Card
            BottomCard(),
          ],
        ),
      ),
    );
  }
}
