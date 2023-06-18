import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../helper/colors.dart';
import '../widgets/app_title.dart';
import '../widgets/home/custom_drawer.dart';
import '../widgets/home/home_body.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 33.h),
        child: const HomeBody(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const AppTitle(fontSize: 30),
      leading: IconButton(
        icon: const Icon(
          FontAwesomeIcons.barsStaggered,
          color: AppColors.red,
        ),
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
    );
  }
}
