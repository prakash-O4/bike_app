import 'package:bike_app/presentation/book_ride/book_ride.dart';
import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingBottomCard extends StatefulWidget {
  const BookingBottomCard({Key? key}) : super(key: key);

  @override
  _BookingBottomCardState createState() => _BookingBottomCardState();
}

class _BookingBottomCardState extends State<BookingBottomCard> {
  // bool _site = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // * big container
    return Container(
      height: size.height * 0.65,
      width: size.width,
      decoration: BoxDecoration(
        color: ColorConstants.bottomColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * First Widget
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 32),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: ColorConstants.backIconColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    height: 46,
                    width: size.width * 0.74,
                    padding: const EdgeInsets.fromLTRB(20, 11.6, 20, 11.4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 24,
                          color: ColorConstants.lightIconColor,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "Search your destination",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: ColorConstants.searchColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // * Stack Container
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 0),
              child: CardScroll(),
            ),
            // * Another Widget
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.10,
              ),
              child: Text(
                "Form",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.boldTextColor,
                ),
              ),
            ),
            const SizedBox(height: 13),
            Padding(
              padding: EdgeInsets.only(
                right: size.width * 0.10,
                left: size.width * 0.10,
              ),
              child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.27),
                        blurRadius: 11,
                        offset: Offset(0, 6),
                      ),
                    ],
                    gradient: LinearGradient(colors: [
                      ColorConstants.startingColor,
                      ColorConstants.endingColor,
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 17.0, bottom: 17),
                            child: Text(
                              "Sanobharyang, Swoyambhu Kathmandu",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.10,
              ),
              child: Text(
                "Pick Up",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.boldTextColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.10,
                right: size.width * 0.10,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 21,
                  bottom: 21,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/user.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Pick Me Now",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.boldTextColor,
                      ),
                    ),
                    // Radio(
                    //     value: 'one',
                    //     groupValue: _site,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         _site = ;
                    //       });
                    //     })
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.10,
                right: size.width * 0.10,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 21,
                  bottom: 21,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/clock.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Pick Me Later",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.boldTextColor,
                      ),
                    ),
                    // Radio(
                    //     value: 'one',
                    //     groupValue: _site,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         _site = ;
                    //       });
                    //     })
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.10,
                right: size.width * 0.10,
              ),
              child: Container(
                width: size.width,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorConstants.boldTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


/**
 Positioned(
            left: size.width * 0.10,
            right: size.width * 0.10,
            top: 96,
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
            ),
          ),
 */