import 'package:flutter/material.dart';
import 'package:shop_application/constants.dart';
import 'package:shop_application/screens/home/components/body.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: kTextColor,
          onPressed: (){},
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            color: kTextColor,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            color: kTextColor,
            onPressed: (){},
          ),
          SizedBox(width: KDefaultPadding / 2,)
        ],
      ),

      body: Body(),
    );
  }
}
