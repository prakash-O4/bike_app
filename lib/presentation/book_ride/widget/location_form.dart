import 'package:bike_app/presentation/book_ride/widget/pick_up.dart';
import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationForm extends StatefulWidget {
  final VoidCallback chnageScreen;
  const LocationForm({required this.chnageScreen});

  @override
  _LocationFormState createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.10,
        right: size.width * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Form",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorConstants.boldTextColor,
            ),
          ),
          const SizedBox(height: 13),
          Container(
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
                        padding: const EdgeInsets.only(
                          top: 18.0,
                          bottom: 18,
                        ),
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
          const SizedBox(height: 20),
          Text(
            "Pick Up",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorConstants.boldTextColor,
            ),
          ),
          const SizedBox(height: 10),
          PickUpForm(),
          const SizedBox(height: 20),
          Container(
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
              onPressed: widget.chnageScreen,
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
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
