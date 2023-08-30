import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/dropdown_cubit.dart';

class TGFXDropdown extends StatelessWidget {
  final List<String> items;
  final DropdownCubit cubit;

  TGFXDropdown({required this.items, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownCubit, String?>(
      bloc: cubit,
      builder: (context, selectedItem) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xffD0D5DD),
            ),
          ),
          child: DropdownButton<String>(
            value: selectedItem,
            onChanged: (newValue) {
              cubit.selectItem(newValue!);
            },
            items: items.map<DropdownMenuItem<String>>((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            isExpanded: true,
            underline: Container(
              height: 2,
              color: Colors.grey,
            ),
            icon: Icon(Icons.arrow_drop_down),
          ),
        );
      },
    );
  }
}
