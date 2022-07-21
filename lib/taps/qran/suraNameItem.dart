import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraNameItem extends StatelessWidget {
String SuraName;
SuraNameItem(this.SuraName);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      InkWell(
        onTap:(){

        },
        child: Text('$SuraName',textAlign: TextAlign.center
          ,style: Theme.of(context).textTheme.headline2,),
      ),
    );;
  }
}
