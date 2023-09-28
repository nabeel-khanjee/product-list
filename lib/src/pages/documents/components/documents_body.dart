import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/documents/components/documents_view.dart';

class DocumentsBody extends StatelessWidget {
  const DocumentsBody({super.key});


  @override
  Widget build(BuildContext context) {
  List<String> docsName = [
    "Health Records 2019.docx",
    "Medical History.xls",
    "Healthy lifestyle.ppt",
    "Health Records 2019.docx",
    "Medical History.xls",
    "Health Records 2019.docx",
    "Medical History.xls",
    "Healthy lifestyle.ppt",
    "Health Records 2019.docx",
    "Medical History.xls",
  ];

  List<String> iconsUrl = [
    "assets/icon/file_jpg.png",
    "assets/icon/file_png.png",
    "assets/icon/file_ppt.png",
    "assets/icon/file_jpg.png",
    "assets/icon/file_png.png",
    "assets/icon/file_ppt.png",
    "assets/icon/file_jpg.png",
    "assets/icon/file_png.png",
    "assets/icon/file_ppt.png",
    "assets/icon/file_ppt.png",
  ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("All Documents"),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: docsName.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      NavigationUtil.push(
                        context,
                        RouteConstants.requestDocumentRoute,
                      );
                    },
                    child: DocumentsView(
                      title: docsName[index],
                      iconUrl: iconsUrl[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
