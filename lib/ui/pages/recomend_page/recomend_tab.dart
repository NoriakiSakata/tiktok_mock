import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_mock/ui/theme/fonts.dart';

class RecomendTab extends ConsumerWidget {
  const RecomendTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 30,
      width: 250,
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: DefaultTabController(
              length: 2,
              child: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Text('フォロー中',
                      style:
                          AppText.bodyM.copyWith(fontWeight: FontWeight.bold)),
                  Text('おすすめ',
                      style:
                          AppText.bodyM.copyWith(fontWeight: FontWeight.bold)),
                ],
              )),
        ),
      ]),
    );
  }
}
