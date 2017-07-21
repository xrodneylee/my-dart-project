import 'package:Whats_for_lunch/dto/address.dart';
import 'package:dartson/dartson.dart';

@Entity()
class Store {
  String name;
  String desc;
  Address address;
}