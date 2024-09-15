import 'package:flutter/material.dart';

class ScrollRow extends StatelessWidget {
  const ScrollRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RowItem(
              imagePath: 'lib/assets/images/profile.png',
              imageDetail: "lady Gaga",
            ),
            RowItem(
              imagePath: 'lib/assets/images/profile.png',
              imageDetail: "lady Gaga",
            ),
            RowItem(
              imagePath: 'lib/assets/images/profile.png',
              imageDetail: "lady Gaga",
            ),
            RowItem(
              imagePath: 'lib/assets/images/profile.png',
              imageDetail: "lady Gaga",
            ),
            RowItem(
              imagePath: 'lib/assets/images/profile.png',
              imageDetail: "lady Gaga",
            ),
            RowItem(
              imagePath: 'lib/assets/images/profile.png',
              imageDetail: "lady Gaga",
            ),
            RowItem(
              imagePath: 'lib/assets/images/profile.png',
              imageDetail: "lady Gaga",
            ),
          ],
        ),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String imagePath;
  final String imageDetail;
  const RowItem({
    super.key,
    required this.imagePath,
    required this.imageDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(32),
            ),
            child: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(imagePath), // Profile Image
            ),
          ),
          const SizedBox(height: 5),
          Text(
            imageDetail,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
