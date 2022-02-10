import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('FARHAN'),
            accountEmail: Text('adittochowdhury29@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('../assets/nasim.jpg'),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('User'),
            leading: Icon(
              Icons.verified_user,
              color: Colors.green,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Product'),
            leading: Icon(
              Icons.production_quantity_limits,
              color: Colors.indigo,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Facebook'),
            leading: Icon(
              Icons.facebook,
              color: Colors.blue,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Gift Card'),
            leading: Icon(
              Icons.card_giftcard,
              color: Colors.pink,
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child: Row(
              children: [Text('Bottom text')],
            ),
          ))
        ],
      ),
    );
  }
}
