import '../../../all_export.dart';

class OrdersPending extends StatelessWidget {
  const OrdersPending({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrdersPendingController());

    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        title: Text(
          'orders'.tr,
          style: const TextStyle(color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<OrdersPendingController>(
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) =>
                  CardOrdersList(listdata: controller.data[index]),
            ),
          ),
        ),
      ),
    );
  }
}

class CardOrdersList extends GetView<OrdersPendingController> {
  final OrdersModel listdata;

  const CardOrdersList({super.key, required this.listdata});

  @override
  Widget build(BuildContext context) {
    final String orderNumber = "orderNumber".tr;
    final String orderType = "orderType".tr;
    final String deliveryPrice = "deliveryPrice".tr;
    final String paymentMethod = "paymentMethod".tr;
    final String orderPrice = "orderPrice".tr;
    final String orderStatus = "orderStatus".tr;
    final String totalPrice = "totalPrice".tr;

    return Card(
      child: Container(
        color: AppColors.white,
        padding: EdgeInsets.all(55.spMax),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "$orderNumber :  ${listdata.ordersId}",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryText,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Divider(),
            Text(
              "$orderType : ${controller.printOrderType(listdata.ordersType!)}",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryText,
              ),
            ),
            Text(
              "$orderPrice : ${listdata.ordersPrice} ${"egp".tr}",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryText,
              ),
            ),
            Text(
              "$deliveryPrice : ${listdata.ordersPricedelivery} ${"egp".tr} ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryText,
              ),
            ),
            Text(
              "$paymentMethod : ${controller.printPaymentMethod(listdata.ordersPaymentmethod!)} ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryText,
              ),
            ),
            Text(
              "$orderStatus : ${controller.printOrderStatus(listdata.ordersStatus!)} ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryText,
              ),
            ),
            const Divider(),
            Row(
              children: [
                Text(
                  "$totalPrice : ${listdata.ordersTotalprice} ${"egp".tr} ",
                  style: const TextStyle(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const SizedBox(width: 10),
                if (listdata.ordersStatus! == "0")
                  MaterialButton(
                    onPressed: () {
                      controller.deleteOrder(listdata.ordersId!);
                    },
                    color: AppColors.primary,
                    textColor: AppColors.white,
                    child: Text("delete".tr),
                  ),
                if (listdata.ordersStatus! == "3")
                  MaterialButton(
                    onPressed: () {
                      controller.goToPageTracking(listdata);
                    },
                    // Additional buttons can be added for different states
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
