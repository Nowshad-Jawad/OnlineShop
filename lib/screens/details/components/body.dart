import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_application/constants.dart';
import 'package:shop_application/models/Product.dart';
import 'package:shop_application/screens/details/components/add_to_cart.dart';
import 'package:shop_application/screens/details/components/cart_counter.dart';
import 'package:shop_application/screens/details/components/color_and_size.dart';
import 'package:shop_application/screens/details/components/counter_with_fav_btn.dart';
import 'package:shop_application/screens/details/components/description.dart';
import 'package:shop_application/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.12,
                  left: KDefaultPadding,
                  right: KDefaultPadding,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: KDefaultPadding / 2,),
                      Description(product: product),
                      SizedBox(height: KDefaultPadding / 2,),
                      CounterWithFavBtn(),
                      SizedBox(height: KDefaultPadding / 2,),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
