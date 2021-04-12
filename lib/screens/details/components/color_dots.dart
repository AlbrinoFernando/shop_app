import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDots createState() => _ColorDots();
}

class _ColorDots extends State<ColorDots> {
  int numOfProduct = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          Text("\$${widget.product.price.toString()}", textScaleFactor: 1.5),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {
              if(numOfProduct > 0) {
                setState(() {
                  numOfProduct -= 1;
                });
              }
            },
          ),
          Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RaisedButton(
            color: kPrimaryColor,
            textColor: Theme.of(context).primaryColorLight,
            child: Text(numOfProduct.toString(), textScaleFactor: 1.5),
            onPressed: () {

            })),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {
              if(numOfProduct < 10) {
                setState(() {
                  numOfProduct += 1;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
