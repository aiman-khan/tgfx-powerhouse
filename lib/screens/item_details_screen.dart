import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/blocs/item_details/item_details_cubit.dart';

import '../models/item_model.dart';
import '../widgets/order_form_widget.dart';
import '../widgets/tgfx_outlined_button.dart';
import '../widgets/store_item_widget.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemDetailsCubit, bool>(
      builder: (context, showItemDetails) {
        return Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, top: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StoreItemWidget(showBuyButton: false),
                const SizedBox(height: 8),

                /// [Sizes] Heading
                const Text(
                  "Sizes",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff101828),
                  ),
                ),

                const SizedBox(height: 8),

                /// [Sizes]
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

                /// [Description]
                const Text(
                  "How do you create compelling presentations that wow your colleagues and impress your managers?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff475467),
                  ),
                ),

                const SizedBox(height: 8),

                /// [Form]
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xffD0D5DD),
                    ),
                  ),
                  child: OrderFormWidget(),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
