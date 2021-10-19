
class CategoryModel{
  final String image;
  final String title;

  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> categoriesList = [
  CategoryModel(
   image: 'assets/images/photo.jpg',
   title:  'شقق للإيجار',
  ),
  CategoryModel(
    image: 'assets/images/photo.jpg',
    title: 'شقق للبيع',
  ),
  CategoryModel(
    image: 'assets/images/photo.jpg',
    title: 'فيلات للإيجار',
  ),
  CategoryModel(
    image: 'assets/images/photo.jpg',
    title: 'فيلات للإيجار',
  ),
];