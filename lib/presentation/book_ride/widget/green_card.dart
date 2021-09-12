import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreenCardAnimation extends StatelessWidget {
  final bool showBottom;
  const GreenCardAnimation({required this.showBottom});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.066,
      right: size.width * 0.10,
      left: size.width * 0.10,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 400,
        ),
        curve: Curves.easeIn,
        height: showBottom ? 0 : 65,
        width: size.width,
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        decoration: BoxDecoration(
          color: ColorConstants.greenColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/whiteEllipse.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 10,
                      width: 1.3,
                      decoration: BoxDecoration(
                        color: ColorConstants.thinLine,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          "From",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: ColorConstants.animatedColor,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Your Location",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
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
            ),
          ],
        ),
      ),
    );
  }
}
