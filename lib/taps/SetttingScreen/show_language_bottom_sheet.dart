import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowLanguageBottomSheet extends StatefulWidget {

  @override
  State<ShowLanguageBottomSheet> createState() => _ShowLanguageBottomSheetState();
}

class _ShowLanguageBottomSheetState extends State<ShowLanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
         SelectedLanguage('English',true),
          SelectedLanguage('العربيه',false),

          
        ],
      ),
    );
  }

  Widget SelectedLanguage(String Language,bool select)
  {
    if (select){
      return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Language,style:Theme.of(context).textTheme.headline2!.copyWith(
              color: Theme.of(context).primaryColor)),
          Icon(Icons.check,color: Theme.of(context).primaryColor,size: 25),
        ],
      );
    }else{
      return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Language,style:Theme.of(context).textTheme.headline2),
          Icon(Icons.check,size: 25),
        ],
      );
    }
  }
}
