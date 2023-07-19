import 'package:help_book/data/app_images.dart';

class DashboardItemsModel {
  final String title;
  final String image;
  DashboardItemsModel({required this.title, required this.image});
}

List<DashboardItemsModel> dashboardItems = [
  DashboardItemsModel(title: 'Home', image: AppImages.homeIcon),
  DashboardItemsModel(title: 'Friend', image: AppImages.profileIcon),
  DashboardItemsModel(title: 'Video', image: AppImages.videoIcon),
  DashboardItemsModel(title: 'Institute', image: AppImages.universityIcon),
  DashboardItemsModel(title: 'Quiz', image: AppImages.quizIcon),
  DashboardItemsModel(title: 'Menu', image: AppImages.menuIcon),
];
