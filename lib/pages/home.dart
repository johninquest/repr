import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/left_menu.dart';
import '../../utils/date_time_helper.dart';
import '../style/colors.dart';
import 'dart:developer';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dtHelper = DateTimeHelper();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: textWhiteColor),
        backgroundColor: primaryColor,
        title: const Text(
          'repr',
          style: TextStyle(color: textWhiteColor, letterSpacing: 1.0),
        ),
        centerTitle: true,
        actions: [
          /* IconButton(
            onPressed: () => showDialog(
                context: context,
                builder: (_) => const LogoutDialog(),
                barrierDismissible: true),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          ) */
          IconButton(
            onPressed: () => context.push('/auth'),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          )
        ],
      ),
      /* drawer: const LeftMenu(), */
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        /* const Text('🚀 A new app is being born here 🚀'),
        const SizedBox(
          height: 13.0,
        ), */
        // Text(dtHelper.toDeDateTimeStr(DateTime.now())[0]),
        Column(
          children: [
            Text(
              dtHelper.toDeDateTimeStr(DateTime.now())['date'],
              style: const TextStyle(
                  fontWeight: FontWeight.bold, letterSpacing: 1.0),
            ),
            Text(dtHelper.toDeDateTimeStr(DateTime.now())['time'],
                style: const TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          height: 13.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () {},
          child: const Text('TAP ME'),
        ),
        /* const SizedBox(
          height: 13.0,
        ),
        const VersionInfo(), */
      ])),
      /* bottomNavigationBar: const BottomNavBar(), */
      drawer: const LeftMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => log('Tapped add button'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
