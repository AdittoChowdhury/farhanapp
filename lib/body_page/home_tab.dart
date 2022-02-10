import 'package:farhan_app/screens/drawer.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Widget grosseryProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 150,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2022/01/25/16/01/sky-6966721_640.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text('data')],
      ),
    );
  }

  Widget newProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 150,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_640.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text('data')],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'FARHAN_SHOP',
            style: TextStyle(
              fontSize: 20,color: Colors.white
            ),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: drawer(),
      backgroundColor: Colors.brown,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_640.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('New Products'),
                    Text('View All'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    newProduct(),
                    newProduct(),
                    newProduct(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(' Grossery Products'),
                    Text('View All'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    grosseryProduct(),
                    grosseryProduct(),
                    grosseryProduct(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
