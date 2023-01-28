import 'package:cruise_blade/WIDGETS/BigTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class IndiVidualMoviePage extends StatefulWidget {
  const IndiVidualMoviePage({super.key});

  @override
  State<IndiVidualMoviePage> createState() => _IndiVidualMoviePageState();
}

class _IndiVidualMoviePageState extends State<IndiVidualMoviePage> {
  bool ticked = false;
  int currIndex = 0;
  void indexChanger(int index) {
    setState(() {
      currIndex = index;
      print(currIndex);
    });
  }

  final List movieDates = [
    {
      "Day": "Mon",
      "Date": "1",
      "Time": "1:00",
    },
    {
      "Day": "Tues",
      "Date": "2",
      "Time": "2:00",
    },
    {
      "Day": "Wed",
      "Date": "3",
      "Time": "3:00",
    },
    {
      "Day": "Thu",
      "Date": "4",
      "Time": "4:00",
    },
    {
      "Day": "Fri",
      "Date": "5",
      "Time": "5:00",
    },
    {
      "Day": "Sat",
      "Date": "6",
      "Time": "6:00",
    },
    {
      "Day": "Sun",
      "Date": "7",
      "Time": "7:00",
    },
  ];
  bool expandedMovieDiscription = false;
  void expansionChanger() {
    setState(() {
      expandedMovieDiscription = !expandedMovieDiscription;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const NetworkImage(
              "https://wallpaperaccess.com/full/96632.jpg",
            ),
            fit: MediaQuery.of(context).orientation == Orientation.portrait
                ? BoxFit.fill
                : BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BigTextWidget(
                    fontSize: 34,
                    text: "Avatar",
                    color: Colors.white,
                    textOverflow: TextOverflow.visible,
                    fontWeight: FontWeight.w600,
                  ),
                  Container(
                    color: expandedMovieDiscription
                        ? Colors.black.withOpacity(0.3)
                        : null,
                    margin: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.015,
                          )
                        : EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                          ),
                    height: (MediaQuery.of(context).orientation ==
                                Orientation.portrait &&
                            expandedMovieDiscription)
                        ? MediaQuery.of(context).size.height * 0.04
                        : expandedMovieDiscription
                            ? MediaQuery.of(context).size.height * 0.08
                            : null,
                    padding: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05,
                          )
                        : EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06,
                          ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: expansionChanger,
                            child: Text(
                              "A Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA Big Text WidgetA ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                overflow: expandedMovieDiscription
                                    ? TextOverflow.visible
                                    : TextOverflow.ellipsis,
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
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height * 0.4
                  : MediaQuery.of(context).size.height * 0.70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                          )
                        : EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                          ),
                    child: BigTextWidget(
                      fontSize: 22,
                      text: "Select Date And Time",
                      color: Colors.white,
                      textOverflow: TextOverflow.visible,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                          )
                        : EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03,
                          ),
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.14
                        : MediaQuery.of(context).size.height * 0.26,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movieDates.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            indexChanger(index);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.01,
                                  )
                                : EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.01,
                                  ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueGrey.shade300,
                                  Colors.blue.shade400,
                                ],
                              ),
                            ),
                            width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? MediaQuery.of(context).size.width * 0.2
                                : MediaQuery.of(context).size.width * 0.12,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                BigTextWidget(
                                  fontSize: 18,
                                  text: movieDates[index]['Day'],
                                  color: Colors.white,
                                  textOverflow: TextOverflow.visible,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? MediaQuery.of(context).size.height *
                                          0.01
                                      : MediaQuery.of(context).size.height *
                                          0.02,
                                ),
                                BigTextWidget(
                                  fontSize: 20,
                                  text: movieDates[index]['Date'],
                                  color: Colors.white,
                                  textOverflow: TextOverflow.visible,
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                          )
                        : EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                          ),
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.04
                        : MediaQuery.of(context).size.height * 0.09,
                    decoration: const BoxDecoration(),
                    child: ListView.builder(
                      itemCount: movieDates.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blueGrey.shade300,
                                Colors.blue.shade400,
                              ],
                            ),
                          ),
                          width: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.22
                              : MediaQuery.of(context).size.width * 0.12,
                          margin: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.01,
                                )
                              : EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                          child: BigTextWidget(
                            fontSize: 18,
                            text: movieDates[index]['Time'],
                            color: Colors.white,
                            textOverflow: TextOverflow.visible,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: MediaQuery.of(context).orientation ==
                        Orientation.portrait
                    ? EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.04,
                      )
                    : EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.06,
                        vertical: MediaQuery.of(context).size.height * 0.08,
                      ),
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.06
                        : MediaQuery.of(context).size.height * 0.12,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade300,
                      Colors.deepPurple.shade400,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: BigTextWidget(
                  fontSize: 22,
                  text: "Book Now",
                  color: Colors.white,
                  textOverflow: TextOverflow.visible,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
