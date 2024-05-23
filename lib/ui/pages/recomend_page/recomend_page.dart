import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_mock/ui/pages/recomend_page/recomend_tab.dart';
import 'package:tiktok_mock/ui/pages/video_scrollable_page/video_scrollable_page.dart';
import 'package:tiktok_mock/ui/theme/colors.dart';

class RecomendPage extends ConsumerWidget {
  const RecomendPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Stack(
      children: [
        const VideoScrollablePage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Stack(
              children: const [
                Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: BrandColor.white,
                    )),
                Align(alignment: Alignment.topCenter, child: RecomendTab()),
                Positioned(
                    top: 0,
                    left: 0,
                    child: Icon(
                      Icons.live_tv_rounded,
                      size: 30,
                      color: BrandColor.white,
                    )),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
