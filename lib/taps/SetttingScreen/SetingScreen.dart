import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/taps/SetttingScreen/show_language_bottom_sheet.dart';

class SettingScreen extends StatefulWidget {

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',style: Theme.of(context).textTheme.headline2,),
          InkWell(
            onTap: (){
              ShowModalBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22)
                  ,color: Colors.white
                  ,border: Border.all(color: Theme.of(context).primaryColor),

              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('English',style: Theme.of(context).textTheme.headline2,),
              ),
            ),
          ),
        ],
      ),
    );}

    void ShowModalBottomSheet(){
     showModalBottomSheet(backgroundColor: Colors.white,
         context: context, builder: (context){
       return ShowLanguageBottomSheet();
     });

    }
}


