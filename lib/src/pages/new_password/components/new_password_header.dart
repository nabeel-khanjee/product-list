import 'package:provider_app/src/app/app_export.dart';

class NewPasswordHeader extends StatelessWidget {
  const NewPasswordHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_back,
              color: ColorConstants.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Create New Password',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Please create new password',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
          ),
          SvgPicture.asset("assets/icon/new_password_lock.svg"),
        ],
      ),
    );
  }
}
