import 'package:test/test.dart';

import 'package:bitcoin_bip44_ng/bitcoin_bip44_ng.dart';

void main() {
  late Bip44 bip44;

  setUp(() {
    bip44 = Bip44(toHexString('some seed'));
  });

  test('initialize', () {
    expect(bip44, isNotNull);
  });

  group('coins', () {
    test('list all coins', () {
      expect(bip44.coins, hasLength(3));
    });

    test('for bitcoin', () {
      expect(bip44.coins[0].path, "m/44'/0'");
    });

    test('for testnets', () {
      expect(bip44.coins[1].path, "m/44'/1'");
    });

    test('for litecoin', () {
      expect(bip44.coins[2].path, "m/44'/2'");
    });
  });
}

String toHexString(String original) {
  return original.codeUnits.map((c) => c.toRadixString(16).padLeft(2, '0')).toList().join('');
}
