import 'package:flutter/material.dart';

import 'package:money_manager/pages/category.dart';
import 'package:money_manager/pages/income.dart';
import 'package:money_manager/pages/expense.dart';

class AlertComponent extends StatelessWidget {
  const AlertComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Row(
          children: [
            new Padding(
              padding: EdgeInsets.all(1.0),
              child: Icon(Icons.attach_money),
            ),
            new Padding(
              padding: EdgeInsets.all(1.0),
              child: new MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Income()));
                  },
                  child: new Text("Income")),
            )
          ],
        ),
        new Row(
          children: [
            new Padding(
              padding: EdgeInsets.all(1.0),
              child: Icon(Icons.money_off),
            ),
            new Padding(
              padding: EdgeInsets.all(1.0),
              child: new MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Expense()));
                  },
                  child: new Text("Expenses")),
            )
          ],
        ),
        new Row(
          children: [
            new Padding(
              padding: EdgeInsets.all(1.0),
              child: Icon(Icons.dashboard),
            ),
            new Padding(
              padding: EdgeInsets.all(1.0),
              child: new MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Category()));
                  },
                  child: new Text("Category")),
            )
          ],
        ),
      ],
    );
  }
}
