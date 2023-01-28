import 'package:cruise_blade/WIDGETS/BigTextWidget.dart';
import 'package:flutter/material.dart';

class IndiVidualMoviePage extends StatefulWidget {
  const IndiVidualMoviePage({super.key});

  @override
  State<IndiVidualMoviePage> createState() => _IndiVidualMoviePageState();
}

class _IndiVidualMoviePageState extends State<IndiVidualMoviePage> {
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
                "https://wallpaperaccess.com/full/96632.jpg"),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
