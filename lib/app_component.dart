// Copyright (c) 2017, Eric. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:html';

import 'package:Whats_for_lunch/dto/store.dart';
import 'package:angular2/angular2.dart';
import 'package:dartson/dartson.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html'
)
class AppComponent implements OnInit {
  // Nothing here yet. All logic is in TodoListComponent.
  @override
  Future ngOnInit() async {
    // TODO: implement ngOnInit
    Dartson _dson = new Dartson.JSON();
    List<Store> stores = [];
    String result = await HttpRequest.getString('stores.json');
    stores = _dson.decode(result, new Store(), true);
    stores.forEach((store) {
      print(store.name);
    });
    print(stores.length);
  }
}
