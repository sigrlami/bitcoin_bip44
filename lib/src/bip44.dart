import 'package:bitcoin_bip32_ng/bitcoin_bip32_ng.dart';

import 'coins.dart';

/// Start indeces
const int purpose = firstHardenedChild + 44;
const int coinType = firstHardenedChild;
const int account = firstHardenedChild;
const int changeExternal = 0;
const int changeInternal = 1;
const int addressIndex = 0;

String forHumans(int index) {
  if (index < firstHardenedChild) {
    return index.toString();
  }

  return "${index - firstHardenedChild}'";
}

class Bip44 {
  Bip44(seed) : coins = Coins.coins(Chain.seed(seed));

  final List<Coin> coins;
}
