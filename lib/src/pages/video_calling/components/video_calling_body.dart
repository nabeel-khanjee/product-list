import 'package:provider_app/src/app/app_export.dart';

class VideoCallingBody extends StatelessWidget {
  const VideoCallingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/icon/female_01.png"),
        const Positioned(
          top: 50,
          right: 20,
          child: VideoCallingTopIcons(),
        ),
        Positioned(
          bottom: 100,
          right: 20,
          child: Image.asset(
            "assets/icon/female_02.png",
            height: 135,
            width: 100,
          ),
        ),
        const Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: VideoCallingBottomIcons(),
        ),
      ],
    );
  }
}
