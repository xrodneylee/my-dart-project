// Copyright (c) 2017, Eric. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:Whats_for_lunch/components/stores/stores_component.dart';
import 'package:Whats_for_lunch/components/store_detail/store_detail_component.dart';
import 'package:Whats_for_lunch/services/store_service.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components
@RouteConfig(const [
  const Route(name: 'Stores', path:'/stores', 
    component: StoresComponent, useAsDefault: true),
  const Route(name: 'Detail', path:'/detail/:name', 
    component: StoreDetailComponent)
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

  }
}
