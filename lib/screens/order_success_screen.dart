import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/page/page_cubit.dart';
import '../blocs/page/page_state.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<PageBloc, PageBlocState>(
          builder: (context, state) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<PageBloc>()
                        .navigateToPage(state.currentPageIndex - 1);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Color(0xff344054),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Order Placed",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff475467),
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Congratulations!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff1D2939),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "You have success placed order.",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff667085),
          ),
        ),
      ],
    );
  }
}
