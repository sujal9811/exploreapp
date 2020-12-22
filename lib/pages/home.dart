import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Center(
            child: Text("Explore"),
          ),
          backgroundColor: Colors.blue,
          actions: [Icon(Icons.hail), Icon(Icons.location_on)],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: ListTile(
                          title: Text("Choose date"),
                          subtitle: Text("1 Dec-22 Dec"),
                        ),
                      ),
                    ),
                    Divider(),
                    Expanded(
                      child: Container(
                        child: ListTile(
                          title: Text("Number of rooms"),
                          subtitle: Text("1 room - 2 Adults"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text("530 hotels found"),
                trailing: Icon(Icons.movie_filter),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://data.tibettravel.org/assets/images/tibet-hotels/shangri-la-village-resort%2C-pokhara01.jpg",
                        ),
                      ),
                      Text("GRAND ROYAL HOTEL"),
                      Text("Wembley,London"),
                      Container(
                        width: 200,
                        height: 40,
                        child: Row(
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://cf.bstatic.com/images/hotel/max1024x768/263/263341687.jpg",
                        ),
                      ),
                      Text("QUEEN HOTEL"),
                      Text("Wembley,London "),
                      Icon(Icons.star)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
