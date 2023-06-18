import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../helper/colors.dart';
import '../../screens/how_its_work.dart';
import '../../screens/privacy.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Text(
              "Menu",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 22.sp,
                    color: AppColors.red,
                  ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                _buildListTile(
                  context,
                  text: "Home",
                  icon: FontAwesomeIcons.houseChimney,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                _buildListTile(
                  context,
                  text: "How it’s work",
                  icon: FontAwesomeIcons.bookOpenReader,
                  onTap: () {
                    Navigator.of(context).pushNamed(HowItsWorkScreen.route);
                  },
                ),
                _buildListTile(
                  context,
                  text: "Privacy",
                  icon: FontAwesomeIcons.fileCircleCheck,
                  onTap: () {
                    Navigator.of(context).pushNamed(PrivacyScreen.route);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ListTile _buildListTile(
    BuildContext context, {
    required String text,
    required IconData icon,
    required Function() onTap,
  }) {
    return ListTile(
      horizontalTitleGap: 6,
      leading: Icon(
        icon,
        color: AppColors.greenLight.withOpacity(0.8),
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColors.greenLight,
              fontSize: 20.sp,
            ),
      ),
      onTap: onTap,
    );
  }
}
