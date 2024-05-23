import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tiktok_mock/domain/model/video.dart';

part 'video_scrollable_provider.g.dart';

@riverpod
class VideoScrollableNotifier extends _$VideoScrollableNotifier {
  @override
  FutureOr<List<Video>> build() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    return [video, video2, video3];
  }

  final video = const Video(
      id: '',
      url:
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      description: '',
      tags: [],
      comentCount: 0,
      likeCount: 10,
      saveCount: 3,
      shareCount: 7,
      userName: '炭治郎',
      userIconUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fkimetsu.com%2Fanime%2Frisshihen%2Fassets%2Fimg%2Fstory%2F25%2F02.jpg&tbnid=PIB42i4AUfI6qM&vet=12ahUKEwjZ4tm6wLmCAxV5mlYBHYBJCcoQMygCegQIARB0..i&imgrefurl=https%3A%2F%2Fkimetsu.com%2Fanime%2Frisshihen%2Fstory%2F%3Fstory%3D25&docid=8geNRo2OAcTyCM&w=940&h=529&q=%E7%82%AD%E6%B2%BB%E9%83%8E&ved=2ahUKEwjZ4tm6wLmCAxV5mlYBHYBJCcoQMygCegQIARB0',
      musicIconUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F51%2BL3R%2BRDgS._UXNaN_FMjpg_QL85_.jpg&tbnid=5QQ6-IqHWl4OJM&vet=12ahUKEwiy68fFwLmCAxWLgFYBHRN5AC8QMygAegQIARBd..i&imgrefurl=https%3A%2F%2Fwww.amazon.co.jp%2F%25E7%25AB%2588%25E9%2596%2580%25E7%2582%25AD%25E6%25B2%25BB%25E9%2583%258E%25E3%2581%25AE%25E3%2581%2586%25E3%2581%259F-%25E6%25A4%258E%25E5%2590%258D-%25E8%25B1%25AA-featuring-%25E4%25B8%25AD%25E5%25B7%259D%25E5%25A5%2588%25E7%25BE%258E%2Fdp%2FB07WSBPQQG&docid=LpCLKRKfSvz82M&w=500&h=500&q=%E7%82%AD%E6%B2%BB%E9%83%8E%E3%81%AE%E6%AD%8C&ved=2ahUKEwiy68fFwLmCAxWLgFYBHRN5AC8QMygAegQIARBd');

  final video3 = const Video(
      id: '',
      url:
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
      description: '',
      tags: [],
      comentCount: 0,
      likeCount: 5,
      saveCount: 1,
      shareCount: 0,
      userName: '炭治郎',
      userIconUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fkimetsu.com%2Fanime%2Frisshihen%2Fassets%2Fimg%2Fstory%2F25%2F02.jpg&tbnid=PIB42i4AUfI6qM&vet=12ahUKEwjZ4tm6wLmCAxV5mlYBHYBJCcoQMygCegQIARB0..i&imgrefurl=https%3A%2F%2Fkimetsu.com%2Fanime%2Frisshihen%2Fstory%2F%3Fstory%3D25&docid=8geNRo2OAcTyCM&w=940&h=529&q=%E7%82%AD%E6%B2%BB%E9%83%8E&ved=2ahUKEwjZ4tm6wLmCAxV5mlYBHYBJCcoQMygCegQIARB0',
      musicIconUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F51%2BL3R%2BRDgS._UXNaN_FMjpg_QL85_.jpg&tbnid=5QQ6-IqHWl4OJM&vet=12ahUKEwiy68fFwLmCAxWLgFYBHRN5AC8QMygAegQIARBd..i&imgrefurl=https%3A%2F%2Fwww.amazon.co.jp%2F%25E7%25AB%2588%25E9%2596%2580%25E7%2582%25AD%25E6%25B2%25BB%25E9%2583%258E%25E3%2581%25AE%25E3%2581%2586%25E3%2581%259F-%25E6%25A4%258E%25E5%2590%258D-%25E8%25B1%25AA-featuring-%25E4%25B8%25AD%25E5%25B7%259D%25E5%25A5%2588%25E7%25BE%258E%2Fdp%2FB07WSBPQQG&docid=LpCLKRKfSvz82M&w=500&h=500&q=%E7%82%AD%E6%B2%BB%E9%83%8E%E3%81%AE%E6%AD%8C&ved=2ahUKEwiy68fFwLmCAxWLgFYBHRN5AC8QMygAegQIARBd');

  final video2 = const Video(
      id: '',
      url:
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
      description: '',
      tags: [],
      comentCount: 2,
      likeCount: 15,
      saveCount: 0,
      shareCount: 0,
      userName: '炭治郎',
      userIconUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fkimetsu.com%2Fanime%2Frisshihen%2Fassets%2Fimg%2Fstory%2F25%2F02.jpg&tbnid=PIB42i4AUfI6qM&vet=12ahUKEwjZ4tm6wLmCAxV5mlYBHYBJCcoQMygCegQIARB0..i&imgrefurl=https%3A%2F%2Fkimetsu.com%2Fanime%2Frisshihen%2Fstory%2F%3Fstory%3D25&docid=8geNRo2OAcTyCM&w=940&h=529&q=%E7%82%AD%E6%B2%BB%E9%83%8E&ved=2ahUKEwjZ4tm6wLmCAxV5mlYBHYBJCcoQMygCegQIARB0',
      musicIconUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F51%2BL3R%2BRDgS._UXNaN_FMjpg_QL85_.jpg&tbnid=5QQ6-IqHWl4OJM&vet=12ahUKEwiy68fFwLmCAxWLgFYBHRN5AC8QMygAegQIARBd..i&imgrefurl=https%3A%2F%2Fwww.amazon.co.jp%2F%25E7%25AB%2588%25E9%2596%2580%25E7%2582%25AD%25E6%25B2%25BB%25E9%2583%258E%25E3%2581%25AE%25E3%2581%2586%25E3%2581%259F-%25E6%25A4%258E%25E5%2590%258D-%25E8%25B1%25AA-featuring-%25E4%25B8%25AD%25E5%25B7%259D%25E5%25A5%2588%25E7%25BE%258E%2Fdp%2FB07WSBPQQG&docid=LpCLKRKfSvz82M&w=500&h=500&q=%E7%82%AD%E6%B2%BB%E9%83%8E%E3%81%AE%E6%AD%8C&ved=2ahUKEwiy68fFwLmCAxWLgFYBHRN5AC8QMygAegQIARBd');
}
