import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/blocs/seller_cubit.dart';
import 'package:tgfx/widgets/tgfx_dropdown.dart';
import 'package:tgfx/widgets/tgfx_text_field.dart';

import '../blocs/dropdown_cubit.dart';
import '../widgets/tgfx_outlined_button.dart';
import '../widgets/store_item_widget.dart';
import '../widgets/tgfx_appbar.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dropdownCubit = DropdownCubit();
    final countryItems = ['USA', 'Canada', 'UK', 'Australia'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Text(
              "Dashboard",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff101828)),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xff475467),
              size: 16,
            ),
            Text(
              "Store",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff475467)),
            ),
          ],
        ),
        const SizedBox(height: 28),
        const StoreItemWidget(),
        const SizedBox(height: 8),
        const Text(
          "Sizes",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff101828),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            TGFXOutlinedButton(
              title: "S",
              onTap: () {},
            ),
            const SizedBox(width: 16),
            TGFXOutlinedButton(
              title: "M",
              onTap: () {},
            ),
            const SizedBox(width: 16),
            TGFXOutlinedButton(
              title: "L",
              onTap: () {},
            ),
            const SizedBox(width: 16),
            TGFXOutlinedButton(
              title: "XL",
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Description",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff101828),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "How do you create compelling presentations that wow your colleagues and impress your managers?",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff475467),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xffD0D5DD),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              BlocProvider<DropdownCubit>(
                create: (context) => dropdownCubit,
                child: SizedBox(
                  height: 50,
                  width: 100,
                  child: TGFXDropdown(
                    items: countryItems,
                    cubit: dropdownCubit,
                  ),
                ),
              ),
              TGFXTextField(),
              SizedBox(
                height: 8,
              ),
              Text(
                "Address",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TGFXTextField(maxLines: 5),
              SizedBox(
                height: 8,
              ),
              Text(
                "Name on Card",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TGFXTextField(),
              SizedBox(
                height: 8,
              ),
              Text(
                "Card Number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TGFXTextField(),
              SizedBox(
                height: 8,
              ),
              Text(
                "Valid Through",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TGFXTextField(),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "CVV",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TGFXTextField(),
            ],
          ),
        )
      ],
    );
  }
}
