import 'package:get/get.dart';
import 'package:water/app/models/produit.dart';
import 'package:water/app/services/dio_service.dart';

// the class that handle the business logic of the model produit
class ProduitController extends GetxController {
  RxList produits = RxList();

  //variable that shows if the widget is loading or not
  RxBool isLoading = true.obs;
  var url = "https://127.0.0.1/api/v1/produit/all";
  getProduits() async {
    var response = await DioService().getMethod(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        produits.add(Produit.fromJson(element));
      });
      isLoading = false.obs; //changing the state of isLoading
    }
    update(); // update the widget

    print(isLoading.value.toString());
  }
}
