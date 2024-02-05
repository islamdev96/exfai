import '../../../all_export.dart';

class CustomButtonCoupon extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonCoupon(
      {super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.secondaryBackground,
        textColor: AppColor.secondaryText,
        onPressed: onPressed,
        child: Text(textbutton,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.black)),
      ),
    );
  }
}
