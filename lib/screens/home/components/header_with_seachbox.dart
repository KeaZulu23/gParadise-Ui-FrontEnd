import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Hi Bulumka!',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(width: 20),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Image.network(
                    "https://www.logolynx.com/images/logolynx/91/91725dbd13a49e3485f494b679120ae5.png",
                    height: 40,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 35.0),
                child: Text(
                  '\nWelcome back to Garden Paradise!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
