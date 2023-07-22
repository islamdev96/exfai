// ignore_for_file: avoid_print

import 'package:exfai/all_export.dart';
import 'package:rating_dialog/rating_dialog.dart';

// show the dialog
void showDialogRating(BuildContext context, String ordersid) {
  showDialog(
    context: context,
    barrierDismissible: true, // set to false if you want to force a rating
    builder: (context) => RatingDialog(
      initialRating: 1.0,
      // your app's name?
      title: const Text(
        'Rating Dialog',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // encourage your user to leave a high rating?
      message: const Text(
        'Tap a star to set your rating. Add more description here if you want.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
      // your app's logo?
      image: Image.asset(
        AppImageAsset.logo,
        width: 200,
        height: 200,
      ),
      submitButtonText: 'Submit',
      submitButtonTextStyle: const TextStyle(
          color: AppColor.primaryColor, fontWeight: FontWeight.bold),
      commentHint: 'Set your custom comment hint',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        OrdersArchiveController controller = Get.find();
        // print('rating: ${response.rating}, comment: ${response.comment}');
        controller.submitRating(ordersid, response.rating, response.comment);
      },
    ),
  );
}
