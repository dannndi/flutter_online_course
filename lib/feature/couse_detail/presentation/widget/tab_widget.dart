import 'package:flutter/material.dart';
import 'package:online_course/core/theme/app_color.dart';

class TabWidget extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 48;

  @override
  double get maxExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: DefaultTabController(
        length: 4,
        child: TabBar(
          labelColor: Colors.black,
          isScrollable: true,
          onTap: (value) {},
          indicator: UnderlineTabIndicator(
            insets: const EdgeInsets.symmetric(horizontal: 24),
            borderSide: BorderSide(
              width: 4,
              color: AppColor.primaryColor,
            ),
          ),
          labelStyle: Theme.of(context).textTheme.titleSmall,
          unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          tabs: const [
            Text("About"),
            Text("How it work"),
            Text("Reviews"),
            Text("FAQ"),
          ],
        ),
      ),
    );
  }
}
