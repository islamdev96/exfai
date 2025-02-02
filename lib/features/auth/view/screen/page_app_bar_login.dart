import '../../../../all_export.dart';

class PageAppBarLogin extends GetView<HomeControllerImp> {
  // final String title;
  // final String body;
  const PageAppBarLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.to(() => const CustomDrawerLogin());
            },
            icon: const FaIcon(
              FontAwesomeIcons.barsStaggered,
              color: AppColors.red,
            ),
          ),
          // SizedBox(height: 10.h),
          Image.asset(
            AppImageAsset.appLogo,
            width: 20.w,
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
