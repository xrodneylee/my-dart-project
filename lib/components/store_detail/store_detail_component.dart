import 'dart:async';
import 'package:Whats_for_lunch/dto/store.dart';
import 'package:Whats_for_lunch/services/store_service.dart';
import 'package:Whats_for_lunch/pipe/no_data_pipe.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

@Component(
  selector: 'store-detail',
  templateUrl: 'store_detail_component.html',
  styleUrls: const ['store_detail_component.css'],
  pipes: const [NoDataPipe]
)
class StoreDetailComponent implements OnInit {

  final StoreService _storeService;
  final RouteParams _routeParams;
  Store store;

  StoreDetailComponent(this._storeService, this._routeParams);

  @override
  Future ngOnInit() async {
    // TODO: implement ngOnInit
    String name = _routeParams.get('name');
    store = await _storeService.getStoreDetail(name);
  }
}