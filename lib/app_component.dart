// Copyright (c) 2017, Eric. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:html';

import 'package:Whats_for_lunch/components/stores/stores_component.dart';
import 'package:Whats_for_lunch/components/store_detail/store_detail_component.dart';
import 'package:Whats_for_lunch/dto/store.dart';
import 'package:Whats_for_lunch/services/store_service.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:dartson/dartson.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components
@RouteConfig(const [
  const Route(name: 'Store', path:'/store', 
    component: StoresComponent),
  const Route(name: 'Detail', path:'/detail/:name', 
    component: StoreDetailComponent, useAsDefault: true)
])
@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [StoreService]
)
class AppComponent implements OnInit {
  // Nothing here yet. All logic is in TodoListComponent.
  String userName = 'guanpu';
  @override
  Future ngOnInit() async {
    // TODO: implement ngOnInit
    // Dartson _dson = new Dartson.JSON();
    // List<Store> stores = [];
    // String result = await HttpRequest.getString('stores.json');
    // stores = _dson.decode(result, new Store(), true);
    // stores.forEach((store) {
    //   print(store.name);
    // });
    // print(stores.length);
  }
}
