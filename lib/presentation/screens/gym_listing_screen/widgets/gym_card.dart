import 'package:flutter/material.dart';
import 'package:wtf_gym_assignment/core/extenstion/widget_extensions/padding_ext.dart';
import 'package:wtf_gym_assignment/model/gym_list_model.dart';

class GymCard extends StatelessWidget {
  final GymData? data;
  const GymCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.orange.shade600,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data?.categoryName?.name ?? 'Category Name Not found',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ).paddingOnOnlySides(top: 4, left: 16, bottom: 4),
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: data?.coverImage != null
                ? Image.network(
                    data?.coverImage ?? '',
                    fit: BoxFit.cover,
                  )
                : const Center(
                    child: Text(
                      'No Image Found',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),
          Center(
            child: Text(
              data?.gymName ?? 'gym Name Not found',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Center(
            child: Text(
              "${data?.distanceText ?? "0 KM"} | ${data?.address1} ${data?.address2}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.only(top: 36, bottom: 16),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                )),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Colors.red.shade900),
                    onPressed: () {},
                    child: const Text(
                      'Free First Day',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ).paddingSymmetric(horizontal: 8, vertical: 12),
                  ).paddingSymmetric(horizontal: 8),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Colors.grey.shade600),
                    onPressed: () {},
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ).paddingSymmetric(horizontal: 8, vertical: 12),
                  ).paddingSymmetric(horizontal: 8),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
