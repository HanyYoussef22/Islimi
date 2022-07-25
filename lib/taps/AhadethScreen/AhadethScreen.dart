import 'package:flutter/material.dart';

class AhadethScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Padding(
          padding: const EdgeInsets.only(top: 19),
          child: Image.asset('asstes/images/ahdeth.png',),
        ))
       ,Divider(color: Theme.of(context).primaryColor,thickness: 2,),
        Center(child: Text('Ahdeth',style: Theme.of(context).textTheme.headline2,)),
        Divider(color: Theme.of(context).primaryColor,thickness: 2,),

    ],
    );
  }
}
