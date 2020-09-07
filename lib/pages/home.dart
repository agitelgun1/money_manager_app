import 'package:flutter/material.dart';
import 'package:money_manager/components/alertcomponent.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final size = mediaQueryData.size.width;

    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter cash app"),
        backgroundColor: Colors.deepOrange,
        centerTitle: false,
        elevation: 0.5,
        actions: [
          new IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => new AlertDialog(
                          title: new Text("Hello agit"),
                          content: new Container(
                            height: 150.0,
                            child: AlertComponent(),
                          ),
                        ));
              })
        ],
      ),
      body: new Stack(
        children: [
          Center(
            child: new ListTile(
              title: new Icon(
                Icons.account_balance_wallet,
                size: 64.0,
                color: Colors.grey,
              ),
              subtitle: new Padding(
                  padding: EdgeInsets.only(left: size / 4),
                  child: new Text("Bosuna para harcama",
                      style: TextStyle(fontSize: 16.0))),
            ),
          )
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: new Text("Balance :"),
                subtitle: new Text(r"$" "230"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Expense : "),
                subtitle: new Text(
                  r"$" "720",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Expanded(
              child: new IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
