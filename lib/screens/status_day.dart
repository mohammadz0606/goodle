import 'package:flutter/material.dart';

import '../helper/colors.dart';
import '../widgets/status_day/status_day_body.dart';

class StatusDayScreen extends StatelessWidget {
  static const String route = "/status_day_screen";

  const StatusDayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> statusData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: statusData["colorBackground"],
      appBar: _buildAppBar(context, color: statusData["colorBackground"]),
      body: StatusDayBody(
        color: statusData["colorBackground"],
        title: statusData["title"],
        image: statusData["image"],
      ),
    );
  }

  AppBar _buildAppBar(
    BuildContext context, {
    required Color color,
  }) {
    return AppBar(
      backgroundColor: color,
      leading: IconButton(
        color: AppColors.black,
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
