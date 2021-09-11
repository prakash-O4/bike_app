import 'package:bike_app/presentation/book_ride/widget/booking_card.dart';
import 'package:flutter/material.dart';

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
              top: !showDown ? size.height * 0.29 : size.height,
              duration: const Duration(milliseconds: 900),
              child: BookingBottomCard(),
              curve: Curves.easeInOutBack,
            ),
            // Positioned(
            //   top: size.height * 0.066,
            //   left: size.width * 0.30,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         showDown = !showDown;
            //       });
            //     },
            //     child: Text("Open Animation"),
            //   ),
            // ),
            // AnimatedPositioned(
            //   duration: const Duration(milliseconds: 200),
            //   top: size.width * 0.50,
            //   left: size.width * 0.10,
            //   right: size.width * 0.10,
            //   bottom: showDown ? 0.86 : 0.9,
            //   child: Container(
            //     height: size.height * 0.14,
            //     width: size.width,
            //     color: Colors.blue,
            //   ),
            // ),
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
                  color: Colors.green,
                  height: size.height * 0.14,
                  width: size.width,
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
