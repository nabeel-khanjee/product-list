import 'package:patient_app/src/app/app_export.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
          DotsIndicator(
            dotsCount: pages.length,
            position: _currentPage.toInt(),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle button press to navigate to the next screen
              // or complete the onboarding process.
            },
            child: Text('Get Started'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

