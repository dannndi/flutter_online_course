import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_course/core/theme/app_color.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final learns = [
    'Core concepts of Jetpack Compose such as Composable functions, state, and modifiers',
    'Creating and customizing UI components with Compose',
    'Working with layouts and arranging UI elements using Compose\'s layout system',
    'Handling user input and events in Compose',
    'Managing state and reactive programming in Compose',
    'Testing and debugging Compose code',
    'Creating complex UIs with Compose such as lists, grids, and animations',
    'Building and styling themes in Compose',
    'Integrating Compose with existing Android apps and UI frameworks',
    'Best practices for building efficient and maintainable UI code with Compose',
    'Managing state and reactive programming in Compose',
    'Testing and debugging Compose code',
    'Creating complex UIs with Compose such as lists, grids, and animations',
    'Core concepts of Jetpack Compose such as Composable functions, state, and modifiers',
    'Creating and customizing UI components with Compose',
    'Working with layouts and arranging UI elements using Compose\'s layout system',
    'Handling user input and events in Compose',
    'Managing state and reactive programming in Compose',
    'Testing and debugging Compose code',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor.withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.bar_chart,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text("Beginer Level"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor.withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.language,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text("2k Student"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor.withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.calendar_month,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text("Flexible"),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "What you will learn",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 24),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: learns.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_rounded,
                    color: AppColor.primaryColor,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      learns[index],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
