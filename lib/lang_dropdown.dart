import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LangDropDown extends StatelessWidget {
  LangDropDown({super.key});

  final ValueNotifier<LangAppItem?> _item = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<LangAppItem>(
        value: _item.value,
        items: LangAppItem.samples.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Card(
              child: Row(
                children: [
                  Icon(
                    e.icon,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          _item.value = value;
        });
  }
}

final class LangAppItem extends Equatable {
  final IconData icon;
  final String title;

  const LangAppItem({required this.icon, required this.title});

  static final List<LangAppItem> samples = [
    const LangAppItem(icon: Icons.flag_outlined, title: 'French'),
    const LangAppItem(icon: Icons.face, title: 'Turkish'),
  ];

  @override
  List<Object?> get props => [icon, title];
}
