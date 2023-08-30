import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/dropdown/dropdown_cubit.dart';

class TGFXDropdown extends StatelessWidget {
  final List<String> items;
  final DropdownCubit cubit;

  const TGFXDropdown({
    super.key,
    required this.items,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownCubit, String?>(
      bloc: cubit,
      builder: (context, selectedItem) {
        return Container(
          width: double.infinity,
          height: 55,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(
              color: const Color(0xffD0D5DD),
            ),
          ),
          child: DropdownButton<String>(
            value: items.first,
            onChanged: (newValue) {
              cubit.selectItem(newValue!);
            },
            underline: const SizedBox(),
            items: items.map<DropdownMenuItem<String>>((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            isExpanded: true,
            icon: const Icon(Icons.arrow_drop_down),
          ),
        );
      },
    );
  }
}
