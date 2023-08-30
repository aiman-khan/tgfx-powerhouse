import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/marketplace_cubit.dart';
import '../blocs/navigation_cubit.dart';
import '../models/item_model.dart';
import '../widgets/store_item_widget.dart';
import '../widgets/tgfx_appbar.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketplaceCubit, List<Item>>(
      builder: (_, items) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const TGFXAppBar(),
            ),
            body: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 24),
              child: Column(
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

                  /// [List of Items]
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/item_details");
                            },
                            child: const StoreItemWidget());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
