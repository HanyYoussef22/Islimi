import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:provider/provider.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double angle = 0;
  int Number = 0;
  int index = 0;
  List<String> tsapeh = ['سبجان الله', 'الحمد لله', 'الله اكبر'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var provider = Provider.of<AppProvider>(context);
    return Container(
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
                    top: 28,
                    child: provider.themeMode == ThemeMode.light
                        ? Image.asset('asstes/images/head_sebha.png')
                        : Image.asset('asstes/images/head_sebha_d.png'),
                  ),
                  Positioned(
                    left: size.width * .23,
                    top: 105,
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
                            : Image.asset('asstes/images/body_sebha_d.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)!.numberoftsapeh,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              alignment: Alignment.center,
              width: 70,
              height: 80,
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
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: 137,
              height: 51,
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
                    .headline1!
                    .copyWith(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
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
