import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_course/feature/couse_detail/presentation/widget/about_widget.dart';
import 'package:online_course/feature/couse_detail/presentation/widget/header_widget.dart';
import 'package:online_course/feature/couse_detail/presentation/widget/tab_widget.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.help_outline_rounded,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: HeaderWidget(),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: TabWidget(),
          ),
          const SliverToBoxAdapter(
            child: AboutWidget(),
          ),
        ],
      ),
    );
  }
}
