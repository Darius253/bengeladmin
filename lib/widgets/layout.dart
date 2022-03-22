import 'package:bengeladmin/helpers/responsiveness.dart';
import 'package:bengeladmin/widgets/appbar.dart';
import 'package:bengeladmin/widgets/large_screen.dart';
import 'package:bengeladmin/widgets/medium_screen.dart';
import 'package:bengeladmin/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
   DashBoard({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context, scaffoldKey),
        drawer: const Drawer(),
        body: const ReponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
