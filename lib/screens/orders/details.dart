import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order details"),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Positioned(
            left: 12,
            top: 0,
            right: 12,
            bottom: 12,
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 24,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal"),
                          Text("25 USD"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery"),
                          Text("5 USD"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "30 USD",
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 280,
                      child: ListView.builder(itemBuilder: (context, index){
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(.03),
                            borderRadius: BorderRadius.circular(4)
                          ),
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.only(bottom: 4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Product name", style: TextStyle(
                                fontWeight: FontWeight.bold,

                              ),),
                              SizedBox(height: 6,),
                              Text("description", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        );
                      }, itemCount: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: FlatButton(child: Text("Delivered"), onPressed: () {}, color: Theme.of(context).primaryColor, minWidth: 200,textColor: Colors.white,),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
