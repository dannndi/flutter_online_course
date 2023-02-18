import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_course/core/theme/app_color.dart';

class PreviosLearningWidget extends StatelessWidget {
  const PreviosLearningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Text(
            "Continue Learning",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200]!,
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/jetpack_compose.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Android Jetpack Compose Crash Course",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_fill_rounded,
                          color: AppColor.primaryColor,
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            "Season 1/ 20",
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.donut_large,
                          color: AppColor.primaryColor,
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            "1%",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                        child: const Text("Continue"),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
