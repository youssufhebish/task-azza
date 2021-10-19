class PostsModel{
  final String image;
  final String title;

  PostsModel({
    required this.image,
    required this.title,
  });
}

List<PostsModel> postsList = [
  PostsModel(
    image: 'assets/images/photo.jpg',
    title: 'لجنة معالجة أخطاء تسجيل الملكية العقارية "ملكية" تستقبل 4056 اعتراضًا خلال 2020',
  ),
  PostsModel(
    image: 'assets/images/photo.jpg',
    title: 'لجنة معالجة أخطاء تسجيل الملكية العقارية "ملكية" تستقبل 4056 اعتراضًا خلال 2020',
  ),
];