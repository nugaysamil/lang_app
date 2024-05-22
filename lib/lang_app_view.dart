// ignore_for_file: unused_field

import 'dart:ui';

import 'package:course_app/custom_decoration.dart';
import 'package:course_app/lang_dropdown.dart';
import 'package:course_app/widget/custom_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part './widget/today_challenge_card.dart';


class LangAppView extends StatefulWidget {
  const LangAppView({super.key});

  @override
  State<LangAppView> createState() => _LangAppViewState();
}

class _LangAppViewState extends State<LangAppView> {
  static const _imageUrl = 'https://randomuser.me/api/portraits/lego/7.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _Header(),
          _WelcomeBackCard(),
          _TodaysChallenge(),
          _YourCourseCard(),
          CourseGrid(),
        ],
      ),
    );
  }
}

class _YourCourseCard extends StatelessWidget {
  const _YourCourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PagePadding.verticalNormal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Your Courses',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'View All',
              style: TextStyle(color: _AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomeBackCard extends StatelessWidget {
  const _WelcomeBackCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PagePadding.horizontalNormal,
      child: Text(
        'Welcome Back!',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize,
            ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(_LangAppViewState._imageUrl),
      ),
      title: Text(
        'Alias Jordan',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 8),
        child: Row(
          children: [
            Icon(
              Icons.pin_drop_outlined,
              color: Colors.red,
            ),
            SizedBox(
              width: 5,
            ),
            Text('- United Kingdom'),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      leading: const Icon(Icons.menu),
      actions: [
        LangDropDown(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

@immutable
class _PagePadding {
  const _PagePadding._();

  static const onlyLeft = EdgeInsets.only(left: 16);

  static const EdgeInsets allNormal = EdgeInsets.all(16);
  static const EdgeInsets horizontalNormal =
      EdgeInsets.symmetric(horizontal: 16);

  static const EdgeInsets verticalLow = EdgeInsets.symmetric(vertical: 8);
  static const EdgeInsets verticalNormal = EdgeInsets.symmetric(vertical: 16);
}

@immutable
class _AppColors {
  const _AppColors._();

  static const Color primary = Colors.green;
}
