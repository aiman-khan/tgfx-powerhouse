import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/utils/images.dart';
import 'package:tgfx/widgets/tgfx_filled_button.dart';

import '../blocs/page/page_cubit.dart';
import '../blocs/page/page_state.dart';
import '../blocs/seller/seller_cubit.dart';

class StoreItemWidget extends StatelessWidget {
  const StoreItemWidget({
    super.key,
    this.showBuyButton = true,
  });

  final bool showBuyButton;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SellerCubit, bool>(
      builder: (context, isSeller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                Images.shirtStoreImage,
              ),
            ),

            const SizedBox(height: 16),

            /// [Title]
            const Text(
              "TGFX Shirt",
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

            const SizedBox(height: 12),

            /// [Price]
            const Text(
              "\$10",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff475467)),
            ),

            const SizedBox(height: 16),

            /// Show [Buy Now] Button if user is [Seller]
            if (!isSeller && showBuyButton)
              BlocBuilder<PageBloc, PageBlocState>(
                builder: (context, state) {
                  return TGFXFilledButton(
                    title: "Buy Now",
                    onTap: () {
                      context
                          .read<PageBloc>()
                          .navigateToPage(state.currentPageIndex + 1);
                    },
                  );
                },
              ),
            const SizedBox(height: 24),
          ],
        );
      },
    );
  }
}
