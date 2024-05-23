import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_mock/ui/theme/fonts.dart';

class VideoPlayerButtons extends ConsumerWidget {
  const VideoPlayerButtons({
    super.key,
    required this.commentCount,
    required this.saveCount,
    required this.shareCount,
    required this.heartCount,
  });

  final int heartCount;
  final int commentCount;
  final int saveCount;
  final int shareCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          VideoPlayerIconButton(count: heartCount, iconData: Icons.favorite),
          VideoPlayerIconButton(count: heartCount, iconData: Icons.comment),
          VideoPlayerIconButton(count: heartCount, iconData: Icons.bookmark),
          VideoPlayerIconButton(count: heartCount, iconData: Icons.send),
        ],
      ),
    );
  }
}

class VideoPlayerIconButton extends StatelessWidget {
  const VideoPlayerIconButton({
    Key? key,
    required this.count,
    required this.iconData,
  }) : super(key: key);

  final int count;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          Text('$count', style: AppText.bodySWhite)
        ],
      ),
    );
  }
}
