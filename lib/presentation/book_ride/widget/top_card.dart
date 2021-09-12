import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCard extends StatelessWidget {
  final bool showDown;
  const TopCard({required this.showDown});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    image: showDown
                        ? AssetImage("images/greenEllipse.png")
                        : AssetImage("images/whiteEllipse.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                height: 10,
                width: 1.3,
                decoration: BoxDecoration(
                  color: showDown ? Colors.green : ColorConstants.thinLine,
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
                  color: showDown ? Colors.green : ColorConstants.thinLine,
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
    );
  }
}

class TopLocation extends StatelessWidget {
  final bool show;
  final VoidCallback onTap;
  final bool? afterFall;
  final VoidCallback onTapIcon;
  final bool destination;
  const TopLocation({
    required this.onTap,
    required this.show,
    required this.afterFall,
    required this.onTapIcon,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
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
                  if (!afterFall!)
                    Text(
                      "Your Location",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color:
                            show ? ColorConstants.boldTextColor : Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                ],
              ),
              if (!afterFall!)
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
        Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Container(
            height: (!show || !destination) ? 0 : 1,
            width: size.width * 0.53,
            color: ColorConstants.dividerColor,
          ),
        ),
        if (!afterFall! || destination)
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
              GestureDetector(
                onTap: onTapIcon,
                child: Container(
                  height: 24,
                  width: 24,
                  child: Icon(
                    Icons.add_circle_outline,
                    color: ColorConstants.lightIconColor,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
