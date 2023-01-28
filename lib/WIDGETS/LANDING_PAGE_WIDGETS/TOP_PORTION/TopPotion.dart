import 'package:cruise_blade/WIDGETS/BigTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopPortion extends StatelessWidget {
  const TopPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BigTextWidget(
          fontSize: 22,
          text: "Movies",
          color: Colors.white,
          textOverflow: TextOverflow.visible,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.02
              : MediaQuery.of(context).size.height * 0.06,
        ),
        Padding(
          padding: MediaQuery.of(context).orientation == Orientation.portrait
              ? EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03)
              : EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06,
                ),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.microphone,
                  color: Colors.white,
                ),
              ),
              isDense: true,
              filled: true,
              fillColor: Colors.black.withOpacity(0.2),
              hintText: "Search Favourite Movie",
              hintStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
