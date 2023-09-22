import 'package:provider_app/src/app/app_export.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      appbarText: StringConstants.documents,
      isBackAppBar: false,
      body: MainScaffold(
        body: Container(),
        isGradient: true,
      ),
    );
  }
}
