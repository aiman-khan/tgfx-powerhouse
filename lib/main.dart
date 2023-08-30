import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/blocs/item_details_cubit.dart';
import 'package:tgfx/blocs/marketplace_cubit.dart';
import 'package:tgfx/screens/item_details_screen.dart';
import 'package:tgfx/screens/marketplace_screen.dart';

import 'blocs/seller_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RGFX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const MarketplaceScreen(),
        '/item_details': (context) => ItemDetailsScreen(),
      },
      builder: (_, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<MarketplaceCubit>(
              create: (BuildContext context) => MarketplaceCubit([]),
            ),
            BlocProvider<SellerCubit>(
              create: (BuildContext context) => SellerCubit(),
            ),
            BlocProvider<ItemDetailsCubit>(
              create: (BuildContext context) => ItemDetailsCubit(),
            ),
          ],
          child: const MarketplaceScreen(),
        );
      },
    );
  }
}
