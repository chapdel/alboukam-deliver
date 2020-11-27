import 'package:alboukam_deliver/screens/orders/details.dart';
import "package:flutter/material.dart";
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: SafeArea(
          child: ListView.builder(
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
                          trailing: Text("500 USD"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, right: 14),
                          child: Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Deliver to mendong"),
                              Container(
                                child: Text("Pending validation"),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen.withOpacity(.8),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          )),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 12)),
    );
  }
}
