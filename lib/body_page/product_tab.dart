
import 'package:farhan_app/widget/customaction.dart';
import 'package:flutter/material.dart';

class ProductTab extends StatefulWidget {
  const ProductTab({Key key}) : super(key: key);

  @override
  _ProductTabState createState() => _ProductTabState();
}

class _ProductTabState extends State<ProductTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Stack(
        children: [
          Center(
            child: Text('home'),
          ),
          Customaction(
            hasBackkarrow: true,
            hasTittle: true,
            tittle: 'Home',
          )
        ],
      ),

    );
  }
}
