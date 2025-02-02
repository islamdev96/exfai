// import '../../../../all_export.dart';

// class AddressView extends StatelessWidget {
//   const AddressView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     AddressViewController controller = Get.put(AddressViewController());
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('address'.tr),
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               Get.toNamed(AppRoute.addressadddetails);
//             },
//             child: const Icon(Icons.add)),
//         body: GetBuilder<AddressViewController>(
//           builder: (controller) => HandlingDataView(
//             statusRequest: controller.statusRequest,
//             widget: ListView.builder(
//               itemCount: controller.data.length,
//               itemBuilder: (context, i) {
//                 return CardAddress(
//                   addressModel: controller.data[i],
//                   onDelete: () {
//                     controller.deleteAddress(controller.data[i].addressId!);
//                   },
//                 );
//               },
//             ),
//           ),
//         ));
//   }
// }

// class CardAddress extends StatelessWidget {
//   final AddressModel addressModel;
//   final void Function()? onDelete;
//   const CardAddress({Key? key, required this.addressModel, this.onDelete})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//           padding: const EdgeInsets.all(10),
//           child: ListTile(
//             title: Text(addressModel.addressName!),
//             subtitle: Text(
//                 "${addressModel.addressCity!} ${addressModel.addressStreet}"),
//             trailing: IconButton(
//                 onPressed: onDelete, icon: const Icon(Icons.delete_outline)),
//           )),
//     );
//   }
// }
