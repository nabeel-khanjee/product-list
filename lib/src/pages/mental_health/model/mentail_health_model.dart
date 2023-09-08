import 'package:provider_app/src/app/app_export.dart';

class MentalHealthListData {
  final String title;
  final String date;
  final int? score;
  final bool? isIdentified;
  final Color? color;

  MentalHealthListData({
    required this.title,
    required this.date,
    this.score,
    this.isIdentified,
    this.color,
  });
}