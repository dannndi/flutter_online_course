import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_course/core/theme/app_color.dart';
import 'package:online_course/feature/home/model/instructor_model.dart';

class TopInstructorWidget extends StatelessWidget {
  const TopInstructorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Instructor",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("See all"),
              )
            ],
          ),
        ),
        Row(
          children: instructors.map((instructor) {
            return Expanded(
              child: Column(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColor.blackGrey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(instructor.image),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    instructor.name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    instructor.role,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
