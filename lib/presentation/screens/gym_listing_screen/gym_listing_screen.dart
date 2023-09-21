import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wtf_gym_assignment/core/network/api_response.dart';
import 'package:wtf_gym_assignment/presentation/screens/gym_listing_screen/widgets/gym_card.dart';
import 'view_models/gym_listing_view_model.dart';

import 'widgets/app_bar.dart';

class GymListingScreen extends StatelessWidget {
  const GymListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight + 120),
        child: Consumer<GymListingViewModel>(builder: (context, model, __) {
          if (model.gymListResponse.status == ApiResponseStatus.loading) {
            return Center(
              child: Shimmer.fromColors(
                  baseColor: Colors.red,
                  highlightColor: Colors.yellow,
                  child: const SizedBox(
                    height: 40,
                    width: 200,
                  )),
            );
          }
          return const CustomAppBar();
        }),
      ),
      body: Consumer<GymListingViewModel>(builder: (context, model, __) {
        if (model.gymListResponse.status == ApiResponseStatus.loading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else {
          return ListView.builder(
            itemBuilder: (context, index) {
              final data = model.gymListResponse.data?.data?[index];
              return GymCard(
                data: data,
              );
            },
            itemCount: model.gymListResponse.data?.data?.length ?? 0,
          );
        }
      }),
    );
  }
}
