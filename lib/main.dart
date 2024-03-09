import 'package:admin_dashboard/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => const ResponsiveDashboard()));
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashboardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
