import 'package:flutter/material.dart';
import 'package:plants/constants.dart';
import 'package:plants/screens/details/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            country: "Russia",
            image: "assets/images/image_1.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => DetailsScreen(),
                ),
              );
            },
            price: 440,
            title: "samantha",
          ),
          RecommendPlantCard(
            country: "Russia",
            image: "assets/images/image_2.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => DetailsScreen(),
                ),
              );
            },
            price: 440,
            title: "Angelica",
          ),
          RecommendPlantCard(
            country: "Russia",
            image: "assets/images/image_3.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => DetailsScreen(),
                ),
              );
            },
            price: 440,
            title: "samantha",
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * .4,
      child: Column(
        children: [
          Image.asset(
            image,
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(.5),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style:
                                TextStyle(color: kPrimaryColor.withOpacity(.5)))
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor.withOpacity(.7)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
