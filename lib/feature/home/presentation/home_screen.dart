import 'package:flutter/material.dart';
import 'package:online_course/core/theme/app_color.dart';
import 'package:online_course/feature/home/presentation/widget/header_widget.dart';
import 'package:online_course/feature/home/presentation/widget/popular_course_widget.dart';
import 'package:online_course/feature/home/presentation/widget/previos_learning_widget.dart';
import 'package:online_course/feature/home/presentation/widget/top_instuctor_widget.dart';

class HomeScrenn extends StatelessWidget {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundBlue,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          children: [
            const HeaderWidget(),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  PreviosLearningWidget(),
                  TopInstructorWidget(),
                  PopularCourseWidget(),
                  SizedBox(height: 400),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
