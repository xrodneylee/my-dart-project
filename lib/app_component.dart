// Copyright (c) 2017, Eric. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:Whats_for_lunch/components/postit/postit_component.dart';
import 'package:Whats_for_lunch/services/postit_service.dart';
import 'package:angular2/angular2.dart';
import 'services/postit_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components
@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [PostitComponent],
  providers: const [PostitService]
)
class AppComponent implements OnInit {
  // Nothing here yet. All logic is in TodoListComponent.
  String userName = 'guanpu';
  @override
  Future ngOnInit() async {

  }

  void createPostit() {
    
  }
}
