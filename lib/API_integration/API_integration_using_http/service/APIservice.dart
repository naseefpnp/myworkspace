import 'package:myworkspace/API_integration/API_integration_using_http/model/ProductModel.dart';
import 'package:http/http.dart' as http;

class httpService {
  static Future<List<ProductModel>> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body;
      return productModelFromJson(data);
    } else {
      throw Exception();
    }
  }
}
