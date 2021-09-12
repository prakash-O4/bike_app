import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScroll extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isChanged;
  const CardScroll({required this.onPressed, required this.isChanged});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedContainer(
      height: !isChanged ? 109 : 45,
      width: size.width,
      padding: const EdgeInsets.only(right: 10),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
      child: Stack(
        children: [
          if (!isChanged)
            Positioned(
              top: 20,
              child: InkWell(
                onTap: onPressed,
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
