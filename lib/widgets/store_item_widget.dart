import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/screens/item_details_screen.dart';
import 'package:tgfx/utils/images.dart';

import '../blocs/item_details_cubit.dart';
import '../blocs/seller_cubit.dart';

class StoreItemWidget extends StatelessWidget {
  const StoreItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<SellerCubit>().checkUserRole();

    return BlocBuilder<SellerCubit, bool>(
      builder: (context, isSeller) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  Images.shirtStoreImage,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "TGFX Shirt",
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
              const SizedBox(height: 12),
              const Text(
                "\$10",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff475467)),
              ),
              // const ItemDetailsScreen(),
              const SizedBox(height: 16),
              if (!isSeller)
                FilledButton(
                  onPressed: () {
                    context.read<ItemDetailsCubit>().showItemDetails();
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xFF269999), // Set the text color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Set the border radius
                    ),
                    minimumSize: const Size(109, 48),
                  ),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              const SizedBox(height: 24),
            ],
          ),
        );
      },
    );
  }
}
