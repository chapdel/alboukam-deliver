import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      minRadius: 35,
                      child: Text("U"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text("Chapdel KAMGA"),
                            subtitle: Text("me@chapdel.xyz"),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Account credits"),
                              Text("50 XAF", style: TextStyle(
                                color: Theme.of(context).primaryColor
                              ),)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("Payment Cards"),
            leading: Icon(CupertinoIcons.money_yen_circle),
          ),
          ListTile(
            title: Text("Personal information's"),
            leading: Icon(CupertinoIcons.info),
          )
        ],
      ),
    );
  }
}
