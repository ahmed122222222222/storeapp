import 'package:flutter/material.dart';
class up extends StatelessWidget {

  const up({Key? key}) : super(key: key);
  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          title: const Text("update page", style: TextStyle(
            color: Colors.black,
          ),
          ),
         centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
