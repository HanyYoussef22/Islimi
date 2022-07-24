import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;


class SuraDetails extends StatefulWidget {
  static const roudeName ='SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
var SuraDetailsArg;

List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg=ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    loadFile(SuraDetailsArg.index);
    return Stack(
        children: [
          Image.asset('asstes/images/main_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('${SuraDetailsArg.SuraName}',style: Theme.of(context).textTheme.headline1,),centerTitle: true,

            ),
            body: ListView.builder(itemBuilder: (context,index){
              return Text(verses[index].toString());
            }
              ,itemCount: verses.length,
            ),
          )
        ]);
  }

  void loadFile(int index) async {
    String content =
    await rootBundle.loadString('file/${index + 1}.txt');
    print(content);
    List<String> ayat = [];
    ayat.add(content);
    verses = ayat;
     setState(() {

     });
  }
}
class SuraDetailsArgs {
  String SuraName;
  int index;

  SuraDetailsArgs(this.SuraName, this.index);
}
