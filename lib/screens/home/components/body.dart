import 'package:flutter/material.dart';
import 'package:shop_application/constants.dart';
import 'package:shop_application/models/Product.dart';
import 'package:shop_application/screens/details/details_screen.dart';
import 'package:shop_application/screens/home/components/categories.dart';
import 'package:shop_application/screens/home/components/item_card.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
          child: Text("Women",
          style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: KDefaultPadding,
              crossAxisSpacing: KDefaultPadding
          ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsScreen(
                  product: products[index],
                )
                )
              ),
            ),
          ),
        ),)


      ],
    );
  }
}



