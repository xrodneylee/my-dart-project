import 'package:angular2/angular2.dart';

@Pipe('nodata')
class NoDataPipe {
  String tranform(String data) {
    if(data == null || data.isEmpty) {
      return '---';
    }else {
      return data;
    }
  }
}