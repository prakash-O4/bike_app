import 'package:bike_app/presentation/book_ride/widget/booking_card.dart';
import 'package:bike_app/presentation/book_ride/widget/bottom_card.dart';
import 'package:bike_app/presentation/book_ride/widget/destination_card.dart';
import 'package:bike_app/presentation/book_ride/widget/green_card.dart';
import 'package:bike_app/presentation/book_ride/widget/top_card.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BookRide extends StatefulWidget {
  const BookRide({Key? key}) : super(key: key);

  @override
  _BookRideState createState() => _BookRideState();
}

class _BookRideState extends State<BookRide> {
  bool showBottom = true;
  bool showDestination = false;
  bool anotherDest = true;
  var continueDestination = false;
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              color: Colors.grey,
              child: MapApp(),
            ),
            Positioned(
              top: size.height * 0.066,
              right: size.width * 0.10,
              left: size.width * 0.10,
              child: Container(
                height: 137,
                width: size.width,
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      blurRadius: 18,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TopCard(showDown: showBottom),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        child: TopLocation(
                          destination: anotherDest,
                          onTapIcon: () {
                            setState(() {
                              showDestination = true;
                              anotherDest = false;
                              print(showDestination);
                            });
                          },
                          afterFall: false,
                          onTap: () {
                            setState(() {
                              showBottom = false;
                            });
                          },
                          show: showBottom,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.24 + 14,
              right: 25,
              child: Container(
                height: 55,
                width: 55,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/target.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            // * Bottom Sheet Card
            BottomCard(),
            AnimatedPositioned(
              bottom: 0,
              right: 0,
              top: showBottom ? size.height : size.height * 0.29,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOutBack,
              child: BookingBottomCard(
                continueDestination: () {
                  setState(() {
                    continueDestination = true;
                  });
                },
              ),
            ),

            AnimatedPositioned(
              bottom: 0,
              right: 0,
              top:
                  (!showDestination || hide) ? size.height : size.height * 0.29,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOutBack,
              child: DestinationCard(
                hide: hide,
                callback: () {
                  setState(() {
                    hide = true;
                  });
                },
              ),
            ),
            // * Continue Destination
            AnimatedPositioned(
              bottom: 0,
              right: 0,
              top: (!continueDestination || hide)
                  ? size.height
                  : size.height * 0.29,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOutBack,
              child: DestinationCard(
                hide: hide,
                callback: () {
                  setState(() {
                    hide = true;
                  });
                },
              ),
            ),
            GreenCardAnimation(showBottom: showBottom),
            GreenCardAnimation(showBottom: !showDestination),
          ],
        ),
      ),
    );
  }
}

//api key AIzaSyC5iu4_1S14V2beqz4G3NKe2kQsEs3zR5M

class MapApp extends StatefulWidget {
  const MapApp({Key? key}) : super(key: key);

  @override
  _MapAppState createState() => _MapAppState();
}

class _MapAppState extends State<MapApp> {
  //27.7172° N, 85.3240° E
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(27.700769, 85.300140),
    zoom: 11.5,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      myLocationButtonEnabled: false,
      zoomControlsEnabled: true,
      initialCameraPosition: _initialCameraPosition,
    );
  }
}
