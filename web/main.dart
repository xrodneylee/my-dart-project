// Copyright (c) 2017, Eric. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/router.dart';

import 'package:Whats_for_lunch/app_component.dart';
import 'package:angular2/src/platform/location.dart';

void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    provide(LocationStrategy, useClass: HashLocationStrategy)
  ]);
}
