import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickUpForm extends StatefulWidget {
  const PickUpForm({Key? key}) : super(key: key);

  @override
  _PickUpFormState createState() => _PickUpFormState();
}

class _PickUpFormState extends State<PickUpForm> {
  var _site = 3;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
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
                ],
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: ColorConstants.radioUnselected,
                ),
                child: Container(
                  height: 21,
                  width: 21,
                  child: Radio(
                    activeColor: ColorConstants.startingColor,
                    value: 0,
                    groupValue: _site,
                    onChanged: (value) {
                      setState(() {
                        _site = 0;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
                    ],
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: ColorConstants.radioUnselected,
                    ),
                    child: Container(
                      height: 21,
                      width: 21,
                      child: Radio(
                        activeColor: ColorConstants.startingColor,
                        value: 1,
                        groupValue: _site,
                        onChanged: (value) {
                          setState(() {
                            _site = 1;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              if (_site == 1) const SizedBox(height: 26),
              if (_site == 1)
                Wrap(
                  runSpacing: 7,
                  spacing: 7,
                  children: [
                    TimeChoice(time: "5 min"),
                    TimeChoice(time: "10 min"),
                    TimeChoice(time: "30 min"),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class TimeChoice extends StatefulWidget {
  final String time;
  const TimeChoice({required this.time});

  @override
  _TimeChoiceState createState() => _TimeChoiceState();
}

class _TimeChoiceState extends State<TimeChoice> {
  var selected = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white),
      child: ChoiceChip(
        pressElevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: selected
                ? ColorConstants.startingColor
                : ColorConstants.chipsBorder,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Text(
            widget.time,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(),
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: selected ? Colors.white : ColorConstants.boldTextColor,
            ),
          ),
        ),
        selected: true,
        onSelected: (cont) {
          setState(() {
            selected = !selected;
          });
        },
        selectedColor: selected ? ColorConstants.startingColor : Colors.white,
      ),
    );
  }
}
