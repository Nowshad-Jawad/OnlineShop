import 'package:flutter/material.dart';
import 'package:shop_application/constants.dart';
import 'package:shop_application/models/Product.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                  tag: "${product.id}",
                  child: Image(image: AssetImage(product.image),)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: KDefaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextColor),
            ),
          ),

          Text(
            "\$ "+product.price.toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
