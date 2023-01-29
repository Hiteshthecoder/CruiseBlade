import 'package:cruise_blade/WIDGETS/UNIVERSAL_WIDGETS/BigTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class BookingPageMainScreen extends StatefulWidget {
  const BookingPageMainScreen({super.key});

  @override
  State<BookingPageMainScreen> createState() => _BookingPageMainScreenState();
}

class _BookingPageMainScreenState extends State<BookingPageMainScreen> {
  Color selectedSeatColor = Colors.cyan;
  Color bookedSeatColor = Colors.grey;
  Color availableSeatColor = Colors.white;
  bool selected = false;
  int seatsBooked = 0;
  void seatSelector() {
    setState(() {
      selected = !selected;
    });
  }

  void seatCount() {
    if (selected) {
      setState(() {
        seatsBooked++;
      });
    } else {
      seatsBooked = 0;
    }
    print(seatsBooked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#13005A").withOpacity(0.7),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: BigTextWidget(
          fontSize: 22,
          text: "Select Seats",
          color: Colors.white,
          textOverflow: TextOverflow.visible,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                margin:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.03,
                            right: MediaQuery.of(context).size.width * 0.03,
                          )
                        : EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.02,
                            right: MediaQuery.of(context).size.width * 0.02,
                          ),
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.60
                        : MediaQuery.of(context).size.height * 1, //0.40
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image.network(
                    //   color: Colors.red,
                    //   "https://static.vecteezy.com/system/resources/thumbnails/001/192/335/small/half-circle-line-sharp.png",
                    // ),
                    SleekCircularSlider(
                      min: 0,
                      max: 100,
                      initialValue: seatsBooked.toDouble(),
                      appearance: CircularSliderAppearance(
                        customWidths: CustomSliderWidths(
                          handlerSize: 0,
                        ),
                        infoProperties: InfoProperties(
                          bottomLabelText: "Booking Status",
                          bottomLabelStyle: GoogleFonts.aboreto(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                        animationEnabled: true,
                        size: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.width * 0.6
                            : MediaQuery.of(context).size.width * 0.24,
                        customColors: CustomSliderColors(
                          hideShadow: true,
                          dotColor: Colors.yellow.shade900,
                          progressBarColors: [
                            Colors.deepPurple,
                            Colors.cyan.shade300,
                          ],
                          trackColors: [
                            Colors.blue.shade100,
                            Colors.pink.shade200
                          ],
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.circle_rounded,
                              color: Colors.white,
                            ),
                            BigTextWidget(
                              fontSize: 15,
                              text: "Available",
                              color: Colors.white,
                              textOverflow: TextOverflow.visible,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle_rounded,
                              color: Colors.grey,
                            ),
                            BigTextWidget(
                              fontSize: 11,
                              text: "Booked",
                              color: Colors.grey,
                              textOverflow: TextOverflow.visible,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.circle_rounded,
                              color: Colors.cyan,
                            ),
                            BigTextWidget(
                              fontSize: 15,
                              text: "Selected",
                              color: Colors.white.withOpacity(0.6),
                              textOverflow: TextOverflow.visible,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigTextWidget(
                          fontSize: 12,
                          text: "A",
                          color: Colors.white.withOpacity(0.7),
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        BigTextWidget(
                          fontSize: 12,
                          text: "A",
                          color: Colors.white.withOpacity(0.9),
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigTextWidget(
                          fontSize: 12,
                          text: "B",
                          color: Colors.white.withOpacity(0.7),
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                size: 30,
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                size: 30,
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        BigTextWidget(
                          fontSize: 12,
                          text: "B",
                          color: Colors.white.withOpacity(0.9),
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
