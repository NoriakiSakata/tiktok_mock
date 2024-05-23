import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_mock/application/state/bottom_navigation_provider/bottom_navigation_provider.dart';
import 'package:tiktok_mock/ui/pages/message_page/message_page.dart';
import 'package:tiktok_mock/ui/pages/profile_page/profile_page.dart';
import 'package:tiktok_mock/ui/pages/recomend_page/recomend_page.dart';
import 'package:tiktok_mock/ui/pages/search_page/search_page.dart';
import 'package:tiktok_mock/ui/pages/video_scrollable_page/video_scrollable_page.dart';

class BottomNavigationPage extends ConsumerWidget {
  BottomNavigationPage({super.key});

  final items = <IconData, String>{
    Icons.home: 'レコメンド',
    Icons.search: '探す',
    Icons.message: 'メッセージ',
    Icons.person: 'プロフィール',
  };

  final pages = [
    const RecomendPage(),
    const SearchPage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  final pageIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(bottomNavigationNotifierProvider);
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: pageIndex,
        items: items.entries
            .map((e) => BottomNavigationBarItem(
                  icon: Icon(e.key),
                  label: e.value,
                  backgroundColor: Colors.black,
                ))
            .toList(),
        onTap: ref.read(bottomNavigationNotifierProvider.notifier).changeIndex,
      ),
    );
  }
}
