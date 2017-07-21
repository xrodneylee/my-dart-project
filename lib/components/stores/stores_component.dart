import 'dart:async';
import 'package:Whats_for_lunch/dto/store.dart';
import 'package:Whats_for_lunch/services/store_service.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

@Component(
  selector: 'stores-component',
  templateUrl: 'stores_component.html',
  styleUrls: const ['stores_component.css']
)
class StoresComponent implements OnInit {

  final Router _router;
  final StoreService _storeService;

  List<Store> stores = [];

  StoresComponent(this._router, this._storeService);

  @override
  Future ngOnInit() async {
    // TODO: implement ngOnInit
    stores = await _storeService.getStores();
  }

  void shuffle() {
    stores.shuffle();
  }

  void goToDetail(Store store) {
    _router.navigate(['Detail', {'name': store.name}]);
  }
}