import 'package:flutter/cupertino.dart';
import 'package:peoduct_api/screen/add_data/model/product_model.dart';
import 'package:peoduct_api/utils/api_helper.dart';

class ProductProvider extends ChangeNotifier
{
  List<EcommerceModal> jsonData=[];
  Future<void> getApi() async{
    ApiHelper api = ApiHelper();
    jsonData = await api.getApi();
    notifyListeners();
  }
}