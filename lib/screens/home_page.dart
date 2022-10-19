import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscann_flutter/provider/db_provider.dart';
import 'package:qrscann_flutter/provider/ui_state.dart';
import 'package:qrscann_flutter/screens/directions_page.dart';
import 'package:qrscann_flutter/screens/maps_history.dart';
import 'package:qrscann_flutter/widgets/custom_navigatorbar.dart';
import 'package:qrscann_flutter/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Center(
          child: Text(
            'Histoy',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_forever,
            ),
          ),
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    DBProvider.db.database;
    switch (currentIndex) {
      case 0:
        return const MapsHistory();
      case 1:
        return const DirecctionsPage();

      default:
        return const MapsHistory();
    }
  }
}
