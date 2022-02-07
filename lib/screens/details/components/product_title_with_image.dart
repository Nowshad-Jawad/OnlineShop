import 'package:flutter/material.dart';
import 'package:shop_application/constants.dart';
import 'package:shop_application/models/Product.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristrocratic Hand Bag",
            style: TextStyle(color:Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: KDefaultPadding,),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: "Price\n"),
                        TextSpan(
                          text: "\$${product.price}",
                          style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ]
                  )
              ),
              SizedBox(width: KDefaultPadding,),
              Expanded(child: Hero(
                tag: "${product.id}",
                child: Image(
                  image: AssetImage(product.image),
                  fit: BoxFit.fill,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
