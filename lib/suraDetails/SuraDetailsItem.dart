import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String qran;

  int index = 0;

  SuraDetailsItem(this.qran, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60, left: 15, right: 15),
      child: Container(
        child: Text(
          '(${Numaha(index)})$qran',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }

  Numaha(index) {
    if (index == 0) {
      return index + 1;
    }
    if (index > 0) {
      return index;
    }
  }
}
