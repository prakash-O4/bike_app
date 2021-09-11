import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingBottomCard extends StatelessWidget {
  const BookingBottomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7589,
      width: size.width,
      decoration: BoxDecoration(
        color: ColorConstants.bottomColor,
      ),
      padding: const EdgeInsets.only(left: 17, right: 17, top: 30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: ColorConstants.backIconColor,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: 36,
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
              const SizedBox(height: 20),
              // Stack(
              //   children: [],
              // ),
            ],
          )
        ],
      ),
    );
  }
}
