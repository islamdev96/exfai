import 'dart:io';

import '../../../all_export.dart';

class CategoriesEditController extends GetxController {
  CategoriesData categoriesData = CategoriesData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController description;
  CategoriesModel? categoriesModel;
  StatusRequest? statusRequest = StatusRequest.none;

  File? file;
  chooseImage() async {
    file = await fileUploadGallery();
    update();
  }

  editData() async {
    if (formState.currentState!.validate()) {
      //  if(file == null) Get.snackbar("Warning","Please Choose Image SVG");

      statusRequest = StatusRequest.loading;
      update();
      Map data = {
        "name": name.text,
        "description": description.text,
        "imageold": categoriesModel!.categoriesImage!,
        "id": categoriesModel!.categoriesId.toString()
      };

      var response = await categoriesData.edit(data, file);

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        // Start backend
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.categoriesView);
          CategoriesViewController c = Get.find();
          c.getData();
        } else {
          statusRequest = StatusRequest.failure;
        }
        // End
      }
      update();
    }
  }

  @override
  void onInit() {
    categoriesModel = Get.arguments['CategoriesModel'];
    name = TextEditingController();
    description = TextEditingController();
    name.text = categoriesModel!.categoriesName!;
    description.text = categoriesModel!.categoriesDescription!;

    super.onInit();
  }
}
