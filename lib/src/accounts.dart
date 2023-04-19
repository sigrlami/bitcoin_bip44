import 'dart:async';
import 'package:bitcoin_bip32_ng/bitcoin_bip32_ng.dart';

import 'addresses.dart';
import 'bip44.dart';
import 'coins.dart';
import 'discover.dart';

class Account {
  Account(this.coin, this.index, this.change);

  final Coin coin;
  final int index;
  final int change;


  String get path => '${coin.path}/$index/$change';
  Chain get chain => coin.chain;
  Future<bool> get isUsed async {
    return (await nextUnusedAddress(coin.numScanner)).index != 0;
  }

  Future<Address> nextUnusedAddress(int numScanner) async {
    var used = await usedAddresses(numScanner);

    if (used.isEmpty) {
      return Address(this, 0);
    }

    return Address(this, used.last.index + 1);
  }

  Future<List<Address>> usedAddresses(int numScanner) async {
    var usedAddresses = <Address>[];

    var addressIndex = 0;
    var nextAddress = Address(this, addressIndex);

    while (await scanners[numScanner].present(nextAddress.P2PKH)) {
      usedAddresses.add(nextAddress);
      addressIndex++;
      nextAddress = Address(this, addressIndex);
    }

    return usedAddresses;
  }

  Account next() {
    return Account(coin, index + 1, changeExternal);
  }
}
