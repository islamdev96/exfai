// import '../../../all_export.dart';

// class CardOrdersListArchive extends GetView<OrdersArchiveController> {
//   final OrdersModel listdata;

//   const CardOrdersListArchive({super.key, required this.listdata});

//   @override
//   Widget build(BuildContext context) {
//     final orderNumber = "orderNumber".tr;
//     final String orderType = "orderType".tr;
//     final String deliveryPrice = "deliveryPrice".tr;
//     final String paymentMethod = "paymentMethod".tr;
//     final String orderPrice = "orderPrice".tr;
//     final String orderStatus = "orderStatus".tr;
//     final String totalPrice = "totalPrice".tr;

//     return Card(
//       child: Container(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Text("$orderNumber : #${listdata.ordersId}",
//                       style: const TextStyle(
//                           color: AppColor.primary,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold)),
//                   const Spacer(),
//                   // Text(listdata.ordersDatetime!)
//                   //                 Text(
//                   // formattedDate,
//                   // style: const TextStyle(
//                   //   color: AppColor.primaryColor,
//                   //   fontWeight: FontWeight.bold,
//                   // ),
//                   Text(
//                     Jiffy.parseFromDateTime(
//                       listdata.ordersDatetime! as DateTime,
//                     ).fromNow(),
//                     style: const TextStyle(
//                       color: AppColor.primary,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//               const Divider(),
//               Text(
//                   "$orderType : ${controller.printOrderType(listdata.ordersType!)}"),
//               Text("$orderPrice : ${listdata.ordersPrice} ${"egp".tr}"),
//               Text("$deliveryPrice : ${listdata.ordersPricedelivery} ${"egp".tr} "),
//               Text(
//                   "$paymentMethod : ${controller.printPaymentMethod(listdata.ordersPaymentmethod!)} "),
//               Text(
//                   "$orderStatus : ${controller.printOrderStatus(listdata.ordersStatus!)} "),
//               const Divider(),
//               Row(
//                 children: [
//                   Text("$totalPrice : ${listdata.ordersId} ${"egp".tr} ",
//                       style: const TextStyle(
//                           color: AppColor.primary,
//                           fontWeight: FontWeight.bold)),
//                   const Spacer(),
//                   MaterialButton(
//                     onPressed: () {
//                       Get.toNamed(AppRoute.ordersdetails,
//                           arguments: {"ordersmodel": listdata});
//                     },
//                     color: AppColor.secondaryBackground,
//                     textColor: AppColor.primary,
//                     child: Text("details".tr),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   if (listdata.ordersRating == "0")
//                     MaterialButton(
//                       onPressed: () {
//                         // showDialogRating(context, listdata.ordersId!);
//                       },
//                       color: AppColor.secondaryBackground,
//                       textColor: AppColor.primary,
//                       child: Text("rating".tr),
//                     ),
//                 ],
//               ),
//             ],
//           )),
//     );
//   }
// }
