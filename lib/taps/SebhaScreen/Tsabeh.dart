import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';

class SebhaZaker extends StatefulWidget {
  static const String roudeName = 'SebhaMsa';

  @override
  State<SebhaZaker> createState() => _SebhaZakerState();
}

class _SebhaZakerState extends State<SebhaZaker> {
  double angle = 0;
  int Number = 0;
  int index = 0;

  List<String> tsapeh = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var provider = Provider.of<AppProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.changeMainBackground(),
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('تسبيح', style: Theme.of(context).textTheme.headline1),
            centerTitle: true,
          ),
          body: Container(
            width: double.infinity,
            child: InkWell(
              onTap: () {
                angle--;
                index++;
                Zakr();
                setState(() {});
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * .4,
                    child: Stack(
                      children: [
                        Positioned(
                          left: size.width * .48,
                          top: 23,
                          child: provider.themeMode == ThemeMode.light
                              ? Image.asset('asstes/images/head_sebha.png')
                              : Image.asset('asstes/images/head_sebha_d.png'),
                        ),
                        Positioned(
                          left: size.width * .23,
                          top: 100,
                          child: InkWell(
                            onTap: () {
                              angle--;
                              index++;
                              Zakr();
                              setState(() {});
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Transform.rotate(
                              angle: angle,
                              child: provider.themeMode == ThemeMode.light
                                  ? Image.asset('asstes/images/body_sebha.png')
                                  : Image.asset(
                                      'asstes/images/body_sebha_d.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: provider.themeMode == ThemeMode.light
                            ? Color(0xffB7935F)
                            : Color.fromRGBO(20, 26, 46, 1),
                        // color: const Color(0xffB7935F),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        tsapeh[Number],
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            if (Number < tsapeh.length - 1) {
                              Number++;
                              if (index > 0) {
                                index = 0;
                              }
                            }
                            setState(() {});
                          },
                          icon: Icon(Icons.chevron_left, size: 40)),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: provider.themeMode == ThemeMode.light
                              ? Color(0xffB7935F)
                              : Color.fromRGBO(20, 26, 46, 1),
                          // color: const Color(0xffB7935F),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '$index',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            if (Number > 0) {
                              Number--;
                              if (index > 0) {
                                index = 0;
                              }
                            }
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.chevron_right,
                            size: 40,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  void Zakr() {
    if (index == 34) {
      Number++;
      index = 0;
    }
    if (Number > tsapeh.length - 1) {
      Number = 0;
    }
  }
}
