import 'package:provider_app/src/app/app_export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => drawerStateChnageUpdateIndex(
                isOpen: false,
                context: context,
                advancedDrawerController:
                    BlocProvider.of<AnimatedDrawerCubit>(context)
                        .advancedDrawerController),
            icon: Icon(Icons.more_vert)),
        title: Text(StringConstants.profile),
      ),
      body: Container(),
    );
  }
}
