import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgfx/blocs/item_details/item_details_cubit.dart';
import 'package:tgfx/blocs/marketplace/marketplace_cubit.dart';
import 'package:tgfx/screens/home.dart';
import 'package:tgfx/screens/marketplace_screen.dart';

import 'blocs/page/page_cubit.dart';
import 'blocs/seller/seller_cubit.dart';

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
        textTheme: GoogleFonts.interTextTheme(),
      ),
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
            BlocProvider(
              create: (BuildContext context) => PageBloc(),
              child: HomeScreen(),
            ),
          ],
          child: HomeScreen(),
        );
      },
    );
  }
}
