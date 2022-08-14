import 'package:flutter/material.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:islami/taps/SebhaScreen/SabahTsapeh.dart';
import 'package:provider/provider.dart';

import 'SebhaMsa.dart';
import 'Tsabeh.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var provider = Provider.of<AppProvider>(context);
    return Container(
      padding: EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, SabahTsapeh.roudeName);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: provider.themeMode == ThemeMode.light
                        ? Color(0xffB7935F)
                        : Color(0xff141A2E),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.sunny_snowing,
                        size: 100,
                        color: Colors.deepOrange,
                      ),
                      Text('اذكار الصباح ',
                          style: Theme.of(context).textTheme.headline4!)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, SebhaMsa.roudeName);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: provider.themeMode == ThemeMode.light
                        ? Color(0xffB7935F)
                        : Color(0xff141A2E),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.nights_stay,
                        size: 100,
                        color: Colors.grey,
                      ),
                      Text('اذكار المساء ',
                          style: Theme.of(context).textTheme.headline4)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, SabahTsapeh.roudeName);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: provider.themeMode == ThemeMode.light
                        ? Color(0xffB7935F)
                        : Color(0xff141A2E),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.mosque_sharp,
                        size: 100,
                        color: Colors.green,
                      ),
                      Text('اذكار مابعد الصلاة ',
                          style: Theme.of(context).textTheme.headline4!)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, SebhaZaker.roudeName);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: provider.themeMode == ThemeMode.light
                        ? Color(0xffB7935F)
                        : Color(0xff141A2E),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.nights_stay,
                        size: 100,
                        color: Colors.grey,
                      ),
                      Text('تسابيح',
                          style: Theme.of(context).textTheme.headline4)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
