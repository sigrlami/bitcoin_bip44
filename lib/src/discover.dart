import 'dart:async';

import 'discover/blockchair.dart';
import 'discover/blockstream.dart';
import 'discover/idena.dart';

List<Scanner> scanners = [
  Blockchair.withDefaultUrl(),
  Blockstream.withDefaultUrl(),
  Idena.withDefaultUrl(),
];

abstract class Scanner {
  Future<bool> present(String address);
}
