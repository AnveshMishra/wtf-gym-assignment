import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:wtf_gym_assignment/core/extenstion/widget_extensions/padding_ext.dart';

import '../../../../core/router/app_route_constants.dart';
import '../view_models/gym_listing_view_model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: InkWell(
          // onTap: () => context.pushNamed(filterScreenRoute),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 2,
                          )),
                      height: 24,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 16,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  const Icon(Icons.location_pin),
                  Text(context
                          .read<GymListingViewModel>()
                          .selectedLocation
                          ?.placemark
                          ?.locality ??
                      ''),
                  const Icon(Icons.arrow_drop_down),
                  const Spacer(
                    flex: 4,
                  ),
                ],
              ),
              Text(context
                      .read<GymListingViewModel>()
                      .selectedLocation
                      ?.placemark
                      ?.subLocality ??
                  ''),
              const SizedBox(
                height: 8,
              ),
              TextField(
                onTapOutside: (_) {
                  primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                    hintText: 'Search gym by name',
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36),
                        borderSide: BorderSide.none),
                    suffixIconColor: Colors.white,
                    suffixIcon: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24)),
                      child: const Icon(
                        Icons.search,
                        size: 28,
                      ),
                    )),
              ).paddingSymmetric(horizontal: 16, vertical: 8),
              const SizedBox(
                height: 8,
              ),
              Flexible(
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.only(left: index == 0 ? 16 : 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(width: 1)),
                      child: const Text(
                        'WTF Exclusive',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
