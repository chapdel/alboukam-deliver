import 'package:flutter/material.dart';

import 'orders/details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alboukam Deliver"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderDetails())),
              child: Container(
                margin: EdgeInsets.all(4),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50.withOpacity(.5),
                    borderRadius: BorderRadius.circular(7)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text("Order OID" + index.toString()),
                      trailing: FlatButton(
                        child: Text("Take"),
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Deliver to mendong"),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 12),
    );
  }
}
