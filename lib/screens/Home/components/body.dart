import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants/constants.dart';
import 'package:plants/screens/Home/components/Header_with_SearchBox.dart';
import 'package:plants/screens/Home/components/Recommended_Plants.dart';
import 'package:plants/screens/Home/components/featured_Plants.dart';
import 'package:plants/screens/Home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size, context),
          TitleWithMoreButton(
            press: () {},
            title: "More",
          ),
          RecommendedPlants(),
          TitleWithMoreButton(
            press: () {},
            title: "Featured Plants",
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
