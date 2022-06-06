import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "OG Kush", country: "Sativa", price: 400),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 40.0),
            child: Text(
                "OG Kush is sometimes known as “Premium OG Kush” or even just “Kush,” first cultivated in Florida almost 30 years ago now. The original genetic lineage is not 100% known, but researchers believe that Chemdawg, Hindu Kush, and Lemon Thai  were mixed with an unknown Northern Californian strain to make OG Kush. The secrecy is probably due to the strain’s incredible fame – OG Kush is the single most recognizable and widely-used strain when it comes to medical marijuana. With a nearly balanced composition (55% Sativa, 45% Indica) and mid-high THC levels, it’s no wonder the strain is enjoyed around the world."),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Add to Cart"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
