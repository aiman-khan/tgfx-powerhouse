import 'package:flutter/material.dart';

import '../widgets/store_item_widget.dart';

class MarketplaceScreen extends StatefulWidget {
  const MarketplaceScreen({super.key});

  @override
  State<MarketplaceScreen> createState() => _MarketplaceScreenState();
}

class _MarketplaceScreenState extends State<MarketplaceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 24),
      child: SizedBox(
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const StoreItemWidget();
          },
        ),
      ),
    );
  }
}
