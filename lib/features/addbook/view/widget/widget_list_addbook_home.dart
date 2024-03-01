import '../../../../all_export.dart';

class WidgetListAddBookHome extends StatelessWidget {
  final AddBookModel addBookModel;
  WidgetListAddBookHome({super.key, required this.addBookModel});
  final FavoriteController controller = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    final title = addBookModel.addbookTitle!;
    final firstFiveWords = title.split(' ').take(5).join(' ');

    return InkWell(
      onTap: () {
        // Navigate to the ProductDetails page with the selected item's model
        Get.toNamed("productdetails", arguments: {
          "addBookModel": addBookModel,
          // "price": addBookModel.addbookPriceDiscount! * quantity,
        });
      },
      child: Card(
        elevation: 5,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "${addBookModel.addbookId}",
                  child: CachedNetworkImage(
                    imageUrl:
                        "${AppLink.imagesAddBook}/${addBookModel.addbookImage}",
                    width: 150.w,
                    height: 132.h,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstFiveWords,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$${addBookModel.addbookPrice}",
                          style: const TextStyle(
                            color: AppColor.primary,
                            fontSize: 16,
                          ),
                        ),
                        GetBuilder<FavoriteController>(
                          builder: (controller) => IconButton(
                            onPressed: () {
                              if (controller
                                      .isFavorite[addBookModel.addbookId] ==
                                  "1") {
                                controller.setFavorite(
                                    addBookModel.addbookId, "0");
                                // controller
                                // .removeFavorite(addBookModel.addbookId!);
                              } else {
                                controller.setFavorite(
                                    addBookModel.addbookId, "1");
                                controller.addFavorite(addBookModel.addbookId!);
                              }
                            },
                            icon: Icon(
                              controller.isFavorite[addBookModel.addbookId] ==
                                      "1"
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: AppColor.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ],
            ),
            if (addBookModel.addbookDiscount != null &&
                int.parse(addBookModel.addbookDiscount!) >= 10)
              Positioned(
                top: 0.01,
                left: 0.01,
                child: Image.asset(
                  AppImageAsset.saleOne,
                  width: 40.w,
                ),
              ),
            if (addBookModel.addbookDiscount != null &&
                int.parse(addBookModel.addbookDiscount!) >= 10)
              Positioned(
                top: 0.01,
                left: 0.01,
                child: Image.asset(
                  AppImageAsset.saleOne,
                  width: 40.w,
                ),
              ),
          ],
        ),
      ),
    );
  }
}