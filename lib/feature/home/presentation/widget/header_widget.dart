import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_course/core/theme/app_color.dart';
import 'package:online_course/feature/home/model/category_model.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Dandi!",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Let's learn something today.",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.notifications_outlined),
              )
            ],
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColor.primaryColor.withOpacity(0.1),
            ),
            child: Row(
              children: const [
                Icon(Icons.search),
                SizedBox(width: 8),
                Expanded(
                  child: Text("Search"),
                ),
                SizedBox(width: 8),
                Icon(Icons.mic_none_rounded),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: categories.map((category) {
              return Container(
                width: (MediaQuery.of(context).size.width - 60) / 2,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColor.white.withOpacity(0.5),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image(
                      height: 24,
                      image: AssetImage(category.image),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        category.name,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
