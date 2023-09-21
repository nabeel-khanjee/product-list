import 'package:provider_app/src/app/app_export.dart';

class MeetingDetailsStepper extends StatefulWidget {
  const MeetingDetailsStepper({super.key});

  @override
  State<MeetingDetailsStepper> createState() => _MeetingDetailsStepperState();
}

class _MeetingDetailsStepperState extends State<MeetingDetailsStepper> {
  int _currentStep = 0;

  List<Step> meetingSteps = [
    const Step(
        title: Text("Start"),
        content: Text("Doctor and Patient Meeting starts at 08:45 am")),
    const Step(
        title: Text("Prescription"),
        content: Text("Prescribed Medicines at 08:45 am")),
    const Step(
        title: Text("Recommendation"),
        content: Text("Recommend lab test at 08:50 am")),
    const Step(
        title: Text("Consultation"),
        content: Text("Doctor Consult advice at 08:55 am")),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text(
          "Timestamp",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Stepper(
          currentStep: _currentStep,
          steps: meetingSteps,
          onStepTapped: (int step) {
            setState(() {
              _currentStep = step;
              setState(() {});
            });
          },
          controlsBuilder: (_, ControlsDetails details) {
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
