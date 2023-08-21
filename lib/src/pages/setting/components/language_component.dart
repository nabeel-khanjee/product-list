import 'package:provider_app/src/app/app_export.dart';

class LanguageConponent extends StatelessWidget {
  const LanguageConponent({super.key, required this.onTap, required this.text});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(text),
    );
  }
}
