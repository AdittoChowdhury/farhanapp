
import 'package:farhan_app/widget/customaction.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({ Key key }) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
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