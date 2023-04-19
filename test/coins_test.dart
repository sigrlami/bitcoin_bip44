import 'package:test/test.dart';

import 'package:bitcoin_bip32_ng/bitcoin_bip32_ng.dart';

import 'package:bitcoin_bip44_ng/bitcoin_bip44_ng.dart';

void main() {
  test('list accounts', () async {
    var coin = Coin(Chain.seed('00'), bitcoin, 0);
    scanners = [MockScanner()];

    expect(await coin.accounts(), hasLength(10));
  });
}

class MockScanner implements Scanner {
  int counter = 0;

  @override
  Future<bool> present(String address) {
    if (counter > 19) {
      return Future.value(false);
    }

    counter++;
    if (counter % 2 == 1) {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
