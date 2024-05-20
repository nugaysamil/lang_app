import 'package:course_app/lang_dropdown.dart';
import 'package:flutter/material.dart';

class LangAppView extends StatefulWidget {
  const LangAppView({super.key});

  @override
  State<LangAppView> createState() => _LangAppViewState();
}

class _LangAppViewState extends State<LangAppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        leading: const Icon(Icons.menu),
        actions: [
          LangDropDown(),
        ],
      ),
    );
  }
}
