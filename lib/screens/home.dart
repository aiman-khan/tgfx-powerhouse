import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/screens/item_details_screen.dart';
import 'package:tgfx/screens/marketplace_screen.dart';
import 'package:tgfx/screens/order_success_screen.dart';

import '../blocs/page/page_cubit.dart';
import '../blocs/page/page_state.dart';
import '../models/item_model.dart';
import '../widgets/tgfx_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> pages = [
    const MarketplaceScreen(),
    ItemDetailsScreen(item: Item(title: "", description: "", price: 1)),
    const OrderSuccessScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const TGFXAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 24),
        child: Column(
          children: [
            /// [Header]
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

            /// [Pages]
            BlocBuilder<PageBloc, PageBlocState>(
              builder: (context, state) {
                final pageBloc = context.read<PageBloc>();

                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    controller: pageBloc.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pages.length,
                    itemBuilder: (context, index) {
                      return pages[index];
                    },
                    onPageChanged: (index) {
                      context.read<PageBloc>().navigateToPage(index);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
