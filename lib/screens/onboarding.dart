import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:veete/widgets/colors.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: COLORS.kOriginal),
        title: const Text("Veete"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: COLORS.kVeryLight,
      ),
    );
  }
}
