import 'package:bike_app/presentation/book_ride/widget/card_scroll.dart';
import 'package:bike_app/presentation/book_ride/widget/location_form.dart';
import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingBottomCard extends StatefulWidget {
  final VoidCallback continueDestination;
  const BookingBottomCard({required this.continueDestination});

  @override
  _BookingBottomCardState createState() => _BookingBottomCardState();
}

class _BookingBottomCardState extends State<BookingBottomCard> {
  bool _later = false;
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
              child: CardScroll(
                isChanged: _later,
                onPressed: () {
                  setState(() {
                    _later = !_later;
                  });
                },
              ),
            ),
            // * Another Widget
            const SizedBox(
              height: 20,
            ),
            AnimatedSwitcher(
              duration: const Duration(
                milliseconds: 1000,
              ),
              child: _later
                  ? AnimatedOpacity(
                      duration: const Duration(
                        milliseconds: 1000,
                      ),
                      opacity: _later ? 1 : 0,
                      child: LocationForm(
                        chnageScreen: widget.continueDestination,
                      ),
                    )
                  : Container(),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeInOut,
            ),
          ],
        ),
      ),
    );
  }
}
