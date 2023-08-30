import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/widgets/tgfx_dropdown.dart';
import 'package:tgfx/widgets/tgfx_filled_button.dart';
import 'package:tgfx/widgets/tgfx_text_field.dart';

import '../blocs/dropdown/dropdown_cubit.dart';
import '../blocs/page/page_cubit.dart';
import '../blocs/page/page_state.dart';

class OrderFormWidget extends StatelessWidget {
  OrderFormWidget({super.key});

  final dropdownCubit = DropdownCubit();
  final countryItems = ['USA', 'Canada', 'UK', 'Australia'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// [Name]
        const Text(
          "Name",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff344054),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const TGFXTextField(),
        const SizedBox(
          height: 8,
        ),

        /// [Country]
        const Text(
          "Country",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff344054),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        BlocProvider<DropdownCubit>(
          create: (context) => dropdownCubit,
          child: TGFXDropdown(
            items: countryItems,
            cubit: dropdownCubit,
          ),
        ),
        const SizedBox(
          height: 8,
        ),

        /// [Address]
        const Text(
          "Address",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff344054),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const TGFXTextField(maxLines: 5),
        const SizedBox(
          height: 8,
        ),

        /// [Name on Card]
        const Text(
          "Name on Card",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff344054),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const TGFXTextField(
          hintText: "Name on Card",
        ),
        const SizedBox(
          height: 8,
        ),

        /// [Card Number]
        const Text(
          "Card Number",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff344054),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const TGFXTextField(
          hintText: "0000 0000 0000 0000",
        ),
        const SizedBox(
          height: 8,
        ),

        /// [Card Validity]
        const Text(
          "Valid Through",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff344054),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const TGFXTextField(),
        const SizedBox(
          height: 8,
        ),

        /// [CVV]
        const Text(
          "CVV",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff344054),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const TGFXTextField(),

        const SizedBox(height: 12),

        /// [Price]
        const Text(
          "\$10.00",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff475467),
          ),
        ),

        const SizedBox(height: 8),

        /// [End Description]
        const Text(
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff475467),
          ),
        ),

        const SizedBox(height: 16),

        /// [Pay Now] Button
        BlocBuilder<PageBloc, PageBlocState>(
          builder: (context, state) {
            return TGFXFilledButton(
              title: "Pay Now",
              onTap: () {
                context
                    .read<PageBloc>()
                    .navigateToPage(state.currentPageIndex + 1);
              },
            );
          },
        ),
      ],
    );
  }
}
