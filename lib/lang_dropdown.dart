// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LangDropDown extends StatelessWidget {
  LangDropDown({super.key});

  final ValueNotifier<LangAppItem?> _itemNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _itemNotifier,
      builder: (context, value, child) {
        return DropdownButton<LangAppItem>(
            value: _itemNotifier.value,
            items: LangAppItem.samples.map((e) {
              return DropdownMenuItem(
                value: e,
                child: _DropDownCardItem(
                  item: e,
                ),
              );
            }).toList(),
            onChanged: (value) {
              _itemNotifier.value = value;
            });
      },
    );
  }
}

class _DropDownCardItem extends StatelessWidget {
  const _DropDownCardItem({
    super.key,
    required this.item,
  });

  final LangAppItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Icon(
            item.icon,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(item.title)
        ],
      ),
    );
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
