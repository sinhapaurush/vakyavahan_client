import 'package:flutter/material.dart';
import 'package:vakyavahan/widgets/heading_one.dart';
import 'package:vakyavahan/widgets/layout.dart';
import 'package:vakyavahan/widgets/message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Heading1(text: "Sent Messages"),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const MessageBox(
                  phone: "phone", message: "message", timestamp: "timestamp");
            },
          ),
        ],
      ),
    );
  }
}
