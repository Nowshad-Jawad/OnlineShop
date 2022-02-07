import 'package:flutter/material.dart';
import 'package:shop_application/constants.dart';
import 'package:shop_application/models/Product.dart';
import 'package:shop_application/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation:0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () => Navigator.pop(context),
        ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
          SizedBox(width: KDefaultPadding /2)
        ],
      ),
      body: Body(product: product,),
    );
  }
}
