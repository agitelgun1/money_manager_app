import 'package:flutter/material.dart';
import 'package:money_manager/components/alertcomponent.dart';
import 'package:money_manager/pages/home.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Category"),
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
                            child: new AlertComponent(),
                          ),
                        ));
              }),
          new IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Home()));
              })
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
