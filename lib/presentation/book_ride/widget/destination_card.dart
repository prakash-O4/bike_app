import 'package:bike_app/presentation/book_ride/widget/card_scroll.dart';
import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationCard extends StatelessWidget {
  final VoidCallback callback;
  final bool hide;
  const DestinationCard({required this.callback, required this.hide});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: hide ? 0 : size.height * 0.65,
      width: size.width,
      decoration: BoxDecoration(
        color: ColorConstants.bottomColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 32),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: callback,
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: ColorConstants.backIconColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Container(
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
                          Expanded(
                            child: Text(
                              "Search your destination",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: ColorConstants.searchColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // * Stack Container
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 17, right: 0),
              child: CardScroll(
                isChanged: true,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
