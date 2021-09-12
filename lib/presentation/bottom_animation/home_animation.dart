import 'package:bike_app/presentation/book_ride/widget/booking_card.dart';
import 'package:bike_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeOnee extends StatefulWidget {
  const HomeOnee({Key? key}) : super(key: key);

  @override
  _HomeOneeState createState() => _HomeOneeState();
}

class _HomeOneeState extends State<HomeOnee> {
  bool showDown = true;
  bool fallDown = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            AnimatedPositioned(
              bottom: 0,
              right: 0,
              top: size.height,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOutBack,
              child: BookingBottomCard(
                continueDestination: () {},
              ),
            ),
            Positioned(
              top: size.height * 0.5,
              left: size.width * 0.30,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // showDown = false;
                    showDown = !showDown;
                  });
                },
                child: Text("Open Animation"),
              ),
            ),
            Positioned(
              top: size.width * 0.10,
              left: size.width * 0.10,
              right: size.width * 0.10,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showDown = !showDown;
                    fallDown = !fallDown;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  height: 100,
                  width: size.width,
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.10,
              left: size.width * 0.10,
              right: size.width * 0.10,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease,
                height: showDown ? 0 : 50,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Center Data",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.boldTextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showBottomScreen(Size size) {
    return Positioned(
      bottom: 0,
      right: 0,
      top: 0,
      child: Container(
        height: size.height * 0.75,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}

class CardAnimations extends StatefulWidget {
  const CardAnimations({Key? key}) : super(key: key);

  @override
  CardAnimationsState createState() => CardAnimationsState();
}

class CardAnimationsState extends State<CardAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late var _animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = Tween(begin: Offset(0, 0), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var value = 1 - _animationController.value;
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, value),
            child: Container(
              color: Colors.red,
            ),
          );
        });
  }
}
