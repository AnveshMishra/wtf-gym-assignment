import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wtf_gym_assignment/presentation/screens/gym_listing_screen/view_models/gym_listing_view_model.dart';

import 'core/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => GymListingViewModel(),
        )
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey.shade200,
        ),
        routerConfig: AppRoute().router,
      ),
    );
  }
}
