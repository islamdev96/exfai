import '../../../all_export.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData icondata;
  final bool? active;
  const CustomButtonAppBar(
      {super.key,
      required this.textbutton,
      required this.icondata,
      required this.onPressed,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(icondata,
            color: active == true
                ? AppColors.scaffoldBackgroundColor
                : AppColors.primary),
        // Text(textbutton,
        //     style: TextStyle(
        //         color: active == true ? AppColor.primaryColor : AppColor.fontsColors2))
      ]),
    );
  }
}
