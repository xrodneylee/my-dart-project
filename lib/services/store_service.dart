import 'dart:async';
import 'dart:html';

import 'package:Whats_for_lunch/dto/store.dart';
import 'package:angular2/angular2.dart';
import 'package:dartson/dartson.dart';

@Injectable()
class StoreService {
   Dartson _dson = new Dartson.JSON();

   Future<List<Store>> getStores() async {
     String result = await HttpRequest.getString('stores.json');
     return _dson.decode(result, new Store(), true);
   }

   Future<Store> getStoreDetail(String name) async {
     List<Store> result = await getStores();
     return result.firstWhere((Store store) => store.name == name);
   }
}