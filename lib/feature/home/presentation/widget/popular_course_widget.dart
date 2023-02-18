import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_course/core/route/app_route_name.dart';
import 'package:online_course/feature/home/model/course_model.dart';

class PopularCourseWidget extends StatelessWidget {
  const PopularCourseWidget({super.key});

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
                "Popular Course",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("See all"),
              )
            ],
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemCount: courses.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 32,
            );
          },
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRouteName.courseDetail);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image(
                      height: 80,
                      image: AssetImage(courses[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          courses[index].name,
                          style: Theme.of(context).textTheme.titleSmall,
                          maxLines: 2,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          courses[index].instructorName,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              courses[index].rating,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.access_time_outlined),
                            const SizedBox(width: 4),
                            Text(
                              courses[index].duration,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    courses[index].price,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
