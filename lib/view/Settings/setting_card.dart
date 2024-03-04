// ignore_for_file: deprecated_member_use, unused_element

import 'package:url_launcher/url_launcher.dart';

import '../../all_export.dart';

SettingsController controller = Get.put(SettingsController());

class SettingCard extends StatelessWidget {
  const SettingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          _buildSettingsTile(
            Icons.card_travel,
            "الطلبات",
            () {
              Get.toNamed(AppRoute.orderspending);
            },
          ),
          // const Divider(),
          // _buildSettingsTile(
          //   Icons.audiotrack,
          //   "3D Page",
          //   () {
          //     Get.to(const Show3DPageWidget());
          //   },
          // ),
          // const Divider(),
          // _buildSettingsTile(
          //   Icons.location_on_outlined,
          //   "address".tr,
          //   () {
          //     Get.toNamed(AppRoute.addressview);
          //   },
          // ),
          const Divider(),
          _buildSettingsTile(
            Icons.phone_callback_outlined,
            "تواصل معنا",
            () {
              launch('tel://01065807020');
            },
          ),
          const Divider(),
          _buildSettingsTile(
            Icons.card_travel,
            "اضافه كتاب",
            () {
              Get.toNamed(AppRoute.addbookView);
            },
          ),

          // ListTile(
          //   leading: const Icon(
          //     Icons.safety_check,
          //     color: AppColor.primary,
          //   ),
          //   title: Text(
          //     "changeLanguage".tr,
          //     style: const TextStyle(
          //       color: AppColor.secondaryText,
          //     ),
          //   ),
          //   trailing: const Icon(Icons.keyboard_arrow_right),
          //   onTap: () {},
          // ),
          const Divider(),
          ListTile(
            title: const Text(
              "تسجيل الخروج",
              style: TextStyle(color: AppColor.secondaryText),
            ),
            trailing: const Icon(Icons.exit_to_app, color: AppColor.primary),
            onTap: () {
              controller.logout();
            },
          ),
          // const Divider(),
        ],
      ),
    );
  }
}

void _showLanguageSelectionDialog(
  BuildContext context,
) {
  // showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //    },
  // );
}

Container _buildDivider() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 8.0,
    ),
    width: double.infinity,
    height: 1.0,
    color: AppColor.secondaryText,
  );
}

Widget _buildSettingsTile(IconData icon, String title, VoidCallback onTap) {
  return ListTile(
    onTap: onTap,
    leading: Icon(
      icon,
      color: AppColor.primary,
      size: 24,
    ),
    title: Text(
      title,
      style: const TextStyle(
        color: AppColor.secondaryText,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    trailing: const Icon(Icons.keyboard_arrow_right),
  );
}
