import 'dart:async';
import 'package:bitcoin_bip32/bitcoin_bip32.dart';

import 'accounts.dart';
import 'bip44.dart';

/// Here are defined the different crypto currencies as per https://github.com/satoshilabs/slips/blob/master/slip-0044.md
/// This list is incomplete.
const int bitcoin = coinType + 0;
const int testnets = coinType + 1;
const int litecoin = coinType + 2;
const int dogecoin = coinType + 3;
const int reddcoin = coinType + 4;
const int dash = coinType + 5;
const int peercoin = coinType + 6;
const int namecoin = coinType + 7;
const int feathercoin = coinType + 8;
const int counterparty = coinType + 9;
const int blackcoin = coinType + 10;
const int nushares = coinType + 11;
const int nubits = coinType + 12;
const int mazacoin = coinType + 13;
const int viacoin = coinType + 14;
const int clearinghouse = coinType + 15;
const int rubycoin = coinType + 16;
const int groestlcoin = coinType + 17;
const int digitalcoin = coinType + 18;
const int cannacoin = coinType + 19;
const int digibyte = coinType + 20;
const int openAssets = coinType + 21;
const int monacoin = coinType + 22;
const int clams = coinType + 23;
const int primecoin = coinType + 24;
const int neoscoin = coinType + 25;
const int jumbucks = coinType + 26;
const int ziftrcoin = coinType + 27;
const int vertcoin = coinType + 28;
const int nxt = coinType + 29;
const int burst = coinType + 30;
const int monetaryunit = coinType + 31;
const int zoom = coinType + 32;
const int virtual_cash_also_known_as_vpncoin = coinType + 33;
const int canada_ecoin = coinType + 34;
const int shadowcash = coinType + 35;
const int parkbyte = coinType + 36;
const int pandacoin = coinType + 37;
const int startcoin = coinType + 38;
const int moin = coinType + 39;
const int expanse = coinType + 40;
const int einsteinium = coinType + 41;
const int decred = coinType + 42;
const int nem = coinType + 43;
const int particl = coinType + 44;
const int argentum = coinType + 45;
const int libertas = coinType + 46;
const int posw_coin = coinType + 47;
const int shreeji = coinType + 48;
const int global_currency_reserve_gcrcoin = coinType + 49;
const int novacoin = coinType + 50;
const int asiacoin = coinType + 51;
const int bitcoindark = coinType + 52;
const int dopecoin = coinType + 53;
const int templecoin = coinType + 54;
const int aib = coinType + 55;
const int edrcoin = coinType + 56;
const int syscoin = coinType + 57;
const int solarcoin = coinType + 58;
const int smileycoin = coinType + 59;
const int ether = coinType + 60;
const int ether_classic = coinType + 61;
const int pesobit = coinType + 62;
const int landcoin = coinType + 63;
const int open_chain = coinType + 64;
const int bitcoinplus = coinType + 65;
const int internet_of_people = coinType + 66;
const int nexus = coinType + 67;
const int insanecoin = coinType + 68;
const int okcash = coinType + 69;
const int britcoin = coinType + 70;
const int compcoin = coinType + 71;
const int crown = coinType + 72;
const int belacoin = coinType + 73;
const int icon = coinType + 74;
const int fujicoin = coinType + 75;
const int mix = coinType + 76;
const int verge = coinType + 77;
const int electronic_gulden = coinType + 78;
const int clubcoin = coinType + 79;
const int richcoin = coinType + 80;
const int potcoin = coinType + 81;
const int quarkcoin = coinType + 82;
const int terracoin = coinType + 83;
const int gridcoin = coinType + 84;
const int auroracoin = coinType + 85;
const int ixcoin = coinType + 86;
const int gulden = coinType + 87;
const int bitbean = coinType + 88;
const int bata = coinType + 89;
const int myriadcoin = coinType + 90;
const int bitsend = coinType + 91;
const int unobtanium = coinType + 92;
const int mastertrader = coinType + 93;
const int goldblocks = coinType + 94;
const int saham = coinType + 95;
const int chronos = coinType + 96;
const int ubiquoin = coinType + 97;
const int evotion = coinType + 98;
const int savetheocean = coinType + 99;
const int bigup = coinType + 100;
const int gamecredits = coinType + 101;
const int dollarcoins = coinType + 102;
const int zayedcoin = coinType + 103;
const int dubaicoin = coinType + 104;
const int stratis = coinType + 105;
const int shilling = coinType + 106;
const int marscoin = coinType + 107;
const int ubiq = coinType + 108;
const int pesetacoin = coinType + 109;
const int neurocoin = coinType + 110;
const int ark = coinType + 111;
const int ultimatesecurecashmain = coinType + 112;
const int hempcoin = coinType + 113;
const int linx = coinType + 114;
const int ecoin = coinType + 115;
const int denarius = coinType + 116;
const int pinkcoin = coinType + 117;
const int atom = coinType + 118;
const int pivx = coinType + 119;
const int flashcoin = coinType + 120;
const int zencash = coinType + 121;
const int putincoin = coinType + 122;
const int bitzeny = coinType + 123;
const int unify = coinType + 124;
const int stealthcoin = coinType + 125;
const int breakout_coin = coinType + 126;
const int vcash = coinType + 127;
const int monero = coinType + 128;
const int voxels = coinType + 129;
const int navcoin = coinType + 130;
const int factom_factoids = coinType + 131;
const int factom_entry_credits = coinType + 132;
const int zcash = coinType + 133;
const int lisk = coinType + 134;
const int steem = coinType + 135;
const int zcoin = coinType + 136;
const int rsk = coinType + 137;
const int giftblock = coinType + 138;
const int realpointcoin = coinType + 139;
const int lbry_credits = coinType + 140;
const int komodo = coinType + 141;
const int bisq_token = coinType + 142;
const int riecoin = coinType + 143;
const int ripple = coinType + 144;
const int bitcoin_cash = coinType + 145;
const int neblio = coinType + 146;
const int zclassic = coinType + 147;
const int stellar_lumens = coinType + 148;
const int nolimitcoin2 = coinType + 149;
const int whalecoin = coinType + 150;
const int europecoin = coinType + 151;
const int diamond = coinType + 152;
const int bytom = coinType + 153;
const int biocoin = coinType + 154;
const int whitecoin_classic = coinType + 155;
const int bitcoin_gold = coinType + 156;
const int bitcoin_2x = coinType + 157;
const int superskynet = coinType + 158;
const int toacoin = coinType + 159;
const int bitcore = coinType + 160;
const int adcoin = coinType + 161;
const int bridgecoin = coinType + 162;
const int ellaism = coinType + 163;
const int pirl = coinType + 164;
const int nano = coinType + 165;
const int vivo = coinType + 166;
const int firstcoin = coinType + 167;
const int helleniccoin = coinType + 168;
const int buzz = coinType + 169;
const int ember = coinType + 170;
const int hcash = coinType + 171;
const int htmlcoin = coinType + 172;
const int obsidian = coinType + 173;
const int onixcoin = coinType + 174;
const int ravencoin = coinType + 175;
const int gobyte = coinType + 176;
const int bitcoinz = coinType + 177;
const int poa = coinType + 178;
const int newyorkcoin = coinType + 179;
const int martexcoin = coinType + 180;
const int wincoin = coinType + 181;
const int minexcoin = coinType + 182;
const int bitcoin_private = coinType + 183;
const int musicoin = coinType + 184;
const int bitcoin_atom = coinType + 185;
const int crave = coinType + 186;
const int straks = coinType + 187;
const int world_bitcoin = coinType + 188;
const int litecash = coinType + 189;
const int exclusivecoin = coinType + 190;
const int lynx = coinType + 191;
const int litecoincash = coinType + 192;
const int feirm = coinType + 193;
const int eos = coinType + 194;
const int tron = coinType + 195;
const int kobocoin = coinType + 196;
const int hush = coinType + 197;
const int bananos = coinType + 198;
const int etf = coinType + 199;
const int omni = coinType + 200;
const int bitcoinfile = coinType + 201;
const int uniform_fiscal_object = coinType + 202;
const int cryptonodes = coinType + 203;
const int bytecoin = coinType + 204;
const int ringo = coinType + 205;
const int platon = coinType + 206;
const int everitoken = coinType + 207;
const int atn = coinType + 208;
const int bismuth = coinType + 209;
const int neetcoin = coinType + 210;
const int bopochain = coinType + 211;
const int utrum = coinType + 212;
const int spectrecoin = coinType + 213;
const int monkey_project = coinType + 214;
const int boxycoin = coinType + 215;
const int flo = coinType + 216;
const int megacoin = coinType + 217;
const int bitcloud = coinType + 218;
const int artax = coinType + 219;
const int anon = coinType + 220;
const int litecoinz = coinType + 221;
const int bitcoin_green = coinType + 222;
const int askcoin = coinType + 223;
const int smartcash = coinType + 224;
const int xuez = coinType + 225;
const int helium = coinType + 226;
const int webchain = coinType + 227;
const int actinium = coinType + 228;
const int nos_stable_coins = coinType + 229;
const int bitcash = coinType + 230;
const int help_the_homeless_coin = coinType + 231;
const int trezarcoin = coinType + 232;
const int varda = coinType + 233;
const int iov = coinType + 234;
const int fio = coinType + 235;
const int bitcoinsv = coinType + 236;
const int dexon = coinType + 237;
const int quantum_resistant_ledger = coinType + 238;
const int chainx = coinType + 239;
const int loki = coinType + 240;
const int imagewallet = coinType + 241;
const int nimiq = coinType + 242;
const int sovereign_coin = coinType + 243;
const int jibital_coin = coinType + 244;
const int simple_ledger_protocol = coinType + 245;
const int energy_web = coinType + 246;
const int ulord = coinType + 247;
const int exos = coinType + 248;
const int electra = coinType + 249;
const int soom = coinType + 250;
const int redstone = coinType + 251;
const int freecoin = coinType + 252;
const int newpowercoin = coinType + 253;
const int blockstamp = coinType + 254;
const int smartholdem = coinType + 255;
const int bitcoin_nano = coinType + 256;
const int bitcoin_core = coinType + 257;
const int zen_protocol = coinType + 258;
const int zest = coinType + 259;
const int arcblock = coinType + 260;
const int pion = coinType + 261;
const int dreamteam3 = coinType + 262;
const int zbux = coinType + 263;
const int kepler = coinType + 264;
const int tokenpay = coinType + 265;
const int chainzilla = coinType + 266;
const int anker = coinType + 267;
const int bcchain = coinType + 268;
const int hpb = coinType + 269;
const int one = coinType + 270;
const int sbc = coinType + 271;
const int ipchain = coinType + 272;
const int dominantchain = coinType + 273;
const int onegram = coinType + 274;
const int shitcoin = coinType + 275;
const int andescoin = coinType + 276;
const int arepacoin = coinType + 277;
const int bolivarcoin = coinType + 278;
const int rilcoin = coinType + 279;
const int hathor_network = coinType + 280;
const int factom_id = coinType + 281;
const int bravo = coinType + 282;
const int algorand = coinType + 283;
const int bitcoinzero = coinType + 284;
const int gravitycoin = coinType + 285;
const int heat = coinType + 286;
const int digitalnote = coinType + 287;
const int fusion = coinType + 288;
const int capricoin = coinType + 289;
const int bold = coinType + 290;
const int iost = coinType + 291;
const int tkeycoin = coinType + 292;
const int usechain = coinType + 293;
const int bitcoincz = coinType + 294;
const int iocoin = coinType + 295;
const int asofe = coinType + 296;
const int mass = coinType + 297;
const int faircoin = coinType + 298;
const int nekonium = coinType + 299;
const int genaro_network = coinType + 300;
const int divi_project = coinType + 301;
const int community = coinType + 302;
const int euno = coinType + 303;
const int iotex = coinType + 304;
const int deeponion = coinType + 305;
const int eightbit = coinType + 306;
const int atoken_coin = coinType + 307;
const int bitshares = coinType + 308;
const int nervos_ckb = coinType + 309;
const int ultrain = coinType + 310;
const int adshares = coinType + 311;
const int aura = coinType + 312;
const int zilliqa = coinType + 313;
const int moac = coinType + 314;
const int swtc = coinType + 315;
const int vnscoin = coinType + 316;
const int plg = coinType + 317;
const int matrix_ai_network = coinType + 318;
const int eccoin = coinType + 319;
const int rapids = coinType + 320;
const int rapture = coinType + 321;
const int hashgard = coinType + 322;
const int zero0 = coinType + 323;
const int eboost = coinType + 324;
const int shard = coinType + 325;
const int linda_coin = coinType + 326;
const int commercium = coinType + 327;
const int blocknet = coinType + 328;
const int audax = coinType + 329;
const int terra = coinType + 330;
const int zprime = coinType + 331;
const int kuva_utility_note = coinType + 332;
const int memcoin = coinType + 333;
const int credits = coinType + 334;
const int swiftcash = coinType + 335;
const int fix = coinType + 336;
const int cpchain = coinType + 337;
const int virtualgoodstoken = coinType + 338;
const int devault = coinType + 339;
const int n8vcoin = coinType + 340;
const int omotenashicoin = coinType + 341;
const int blast = coinType + 342;
const int decent = coinType + 343;
const int auxilium = coinType + 344;
const int usdp = coinType + 345;
const int htdf = coinType + 346;
const int ycash = coinType + 347;
const int qlc_chain = coinType + 348;
const int icetea_blockchain = coinType + 349;
const int arrowchain = coinType + 350;
const int medium = coinType + 351;
const int cybex = coinType + 352;
const int lto_network = coinType + 353;
const int polkadot = coinType + 354;
const int aeon = coinType + 355;
const int resistance = coinType + 356;
const int aryacoin = coinType + 357;
const int dapscoin = coinType + 358;
const int casinocoin = coinType + 359;
const int v_systems = coinType + 360;
const int nollar = coinType + 361;
const int nos = coinType + 362;
const int cpuchain = coinType + 363;
const int lambda_storage_chain = coinType + 364;
const int valuecyber = coinType + 365;
const int canonchain = coinType + 366;
const int abbc = coinType + 367;
const int het = coinType + 368;
const int asch = coinType + 369;
const int vidulum = coinType + 370;
const int medibloc = coinType + 371;
const int zvchain = coinType + 372;
const int vestx = coinType + 373;
const int darkbit = coinType + 374;
const int supereos = coinType + 375;
const int maxonrow = coinType + 376;
const int zenzo = coinType + 377;
const int xchain = coinType + 378;
const int sonicx = coinType + 379;
const int nyzo = coinType + 380;
const int ulcoin = coinType + 381;
const int ryo_currency = coinType + 382;
const int kaleidochain = coinType + 383;
const int stakenet = coinType + 384;
const int dogecash = coinType + 385;
const int bitcoin_matteos_vision = coinType + 386;
const int quebecoin = coinType + 387;
const int imagecoin = coinType + 388;
const int qos = coinType + 389;
const int pkt = coinType + 390;
const int litecoinhd = coinType + 391;
const int cennznet = coinType + 392;
const int hyper_speed_network = coinType + 393;
const int crypto_com_chain = coinType + 394;
const int umbru = coinType + 395;
const int free_ton = coinType + 396;
const int near_protocol = coinType + 397;
const int xpchain = coinType + 398;
const int zero_one_coin = coinType + 399;
const int nix = coinType + 400;
const int utopiacoin = coinType + 401;
const int galilel = coinType + 402;
const int oneledger = coinType + 403;
const int xbi = coinType + 404;
const int donu = coinType + 405;
const int earths = coinType + 406;
const int hddcash = coinType + 407;
const int sugarchain = coinType + 408;
const int ailecoin = coinType + 409;
const int snowgem = coinType + 410;
const int tangerine_network = coinType + 411;
const int ain = coinType + 412;
const int masari = coinType + 413;
const int sumokoin = coinType + 414;
const int electroneum = coinType + 415;
const int bytz = coinType + 416;
const int wownero = coinType + 417;
const int xtendcash = coinType + 418;
const int lethean = coinType + 419;
const int nodehost = coinType + 420;
const int argoneum = coinType + 421;
const int conceal_network = coinType + 422;
const int title_network = coinType + 423;
const int teloscoin = coinType + 424;
const int aion = coinType + 425;
const int bitcoin_confidential = coinType + 426;
const int kmushicoin = coinType + 427;
const int zcore = coinType + 428;
const int ergo = coinType + 429;
const int criptopeso = coinType + 430;
const int bitcoin_2 = coinType + 431;
const int xrphd = coinType + 432;
const int we_coin = coinType + 433;
const int kusama = coinType + 434;
const int peepcoin = coinType + 435;
const int netcloth = coinType + 436;
const int chipo = coinType + 437;
const int link = coinType + 438;
const int devault_token_protocol = coinType + 439;
const int bitcoin_royale = coinType + 440;
const int aergo = coinType + 441;
const int dothereum = coinType + 442;
const int lava = coinType + 443;
const int phore = coinType + 444;
const int vitae = coinType + 445;
const int cocos_bcx = coinType + 446;
const int dinero = coinType + 447;
const int simplicity = coinType + 448;
const int myce = coinType + 449;
const int solaris = coinType + 450;
const int klimatas = coinType + 451;
const int dgld = coinType + 452;
const int insolar = coinType + 453;
const int empow = coinType + 454;
const int shineblocks = coinType + 455;
const int seele = coinType + 456;
const int aeternity = coinType + 457;
const int obsidianx = coinType + 458;
const int kava = coinType + 459;
const int gleec = coinType + 460;
const int filecoin = coinType + 461;
const int rutanio = coinType + 462;
const int csdt = coinType + 463;
const int etherinc = coinType + 464;
const int zclassic_simple_ledger_protocol = coinType + 465;
const int ethercore = coinType + 466;
const int dxchain_token = coinType + 467;
const int capricoin_plus = coinType + 468;
const int bithereum = coinType + 469;
const int mesg = coinType + 470;
const int fimk = coinType + 471;
const int arweave = coinType + 472;
const int origo = coinType + 473;
const int oasis_network = coinType + 474;
const int bare_network = coinType + 475;
const int gleecbtc = coinType + 476;
const int color_coin = coinType + 477;
const int ring = coinType + 478;
const int tool_global = coinType + 479;
const int pexa = coinType + 480;
const int mooncoin = coinType + 481;
const int ocean_protocol = coinType + 482;
const int bluzelle_native = coinType + 483;
const int amo_blockchain = coinType + 484;
const int freecash = coinType + 485;
const int latticex = coinType + 486;
const int bitcoin_bank = coinType + 487;
const int amoveo = coinType + 488;
const int counos_coin = coinType + 489;
const int graphene = coinType + 490;
const int minter_network = coinType + 491;
const int kunpeng_network = coinType + 492;
const int finl_chain = coinType + 493;
const int band = coinType + 494;
const int dropil = coinType + 495;
const int bluehelix_chain = coinType + 496;
const int scrypta = coinType + 497;
const int credits1 = coinType + 498;
const int rupaya = coinType + 499;
const int theta = coinType + 500;
const int solana = coinType + 501;
const int thoughtai = coinType + 502;
const int conflux = coinType + 503;
const int kumacoin = coinType + 504;
const int provenance = coinType + 505;
const int casperlabs = coinType + 506;
const int earth = coinType + 507;
const int elrond = coinType + 508;
const int xaya = coinType + 509;
const int koto = coinType + 510;
const int zero = coinType + 511;
const int radiant = coinType + 512;
const int seele_n = coinType + 513;
const int aeth = coinType + 514;
const int idena = coinType + 515;
const int virtual_economy_era = coinType + 516;
const int sierracoin = coinType + 517;
const int linkeye = coinType + 518;
const int bitcoin_smart_contract = coinType + 519;
const int bitcoinvip = coinType + 520;
const int dabacus = coinType + 521;
const int stakecubecoin = coinType + 522;
const int edgeware = coinType + 523;
const int amsterdamcoin = coinType + 524;
const int gossip_coin = coinType + 525;
const int bumo = coinType + 526;
const int gram = coinType + 527;
const int yapstone = coinType + 528;
const int secret_network = coinType + 529;
const int novo = coinType + 530;
const int ghost = coinType + 531;
const int hst = coinType + 532;
const int projectcoin = coinType + 533;
const int youchain = coinType + 534;
const int haven_protocol = coinType + 535;
const int beyondcoin = coinType + 536;
const int joys_digital = coinType + 537;
const int valorbit = coinType + 538;
const int flow = coinType + 539;
const int spacemesh_coin = coinType + 540;
const int scdo = coinType + 541;
const int iq_cash = coinType + 542;
const int compendia = coinType + 543;
const int coinevo = coinType + 544;
const int scribe = coinType + 545;
const int hyperion = coinType + 546;
const int bhp = coinType + 547;
const int bigbang_core = coinType + 548;
const int marketfinance = coinType + 549;
const int xinfin_network = coinType + 550;
const int straightedge = coinType + 551;
const int sumcoin = coinType + 552;
const int huobichain = coinType + 553;
const int flare_spark = coinType + 554;
const int bitcoin_smart = coinType + 555;
const int kratos = coinType + 556;
const int lkrcoin = coinType + 557;
const int tao = coinType + 558;
const int whitecoin = coinType + 559;
const int deal = coinType + 560;
const int nexty = coinType + 561;
const int top_network = coinType + 562;
const int stakebird = coinType + 563;
const int agoric = coinType + 564;
const int coinicles = coinType + 565;
const int irisnet = coinType + 566;
const int nine_chronicles = coinType + 567;
const int large_coin = coinType + 568;
const int super_zero_protocol = coinType + 569;
const int beldex = coinType + 570;
const int counos_x = coinType + 571;
const int saluscoin = coinType + 572;
const int serum = coinType + 573;
const int velas = coinType + 574;
const int vidt_datalink = coinType + 575;
const int bitcoinpos = coinType + 576;
const int nkn = coinType + 577;
const int ilcoin = coinType + 578;
const int bonorum = coinType + 579;
const int platincoin = coinType + 580;
const int dune = coinType + 581;
const int darmacash = coinType + 582;
const int creditcoin = coinType + 583;
const int haidai_network = coinType + 584;
const int goldbcr = coinType + 585;
const int xdag = coinType + 586;
const int incognito_privacy = coinType + 587;
const int safecapital = coinType + 588;
const int theta_fuel = coinType + 589;
const int gentarium = coinType + 590;

class Coins {
  static List<Coin> coins(Chain chain) => [
        Coin(chain, bitcoin),
        Coin(chain, testnets),
        Coin(chain, litecoin),
        Coin(chain, reddcoin),
        Coin(chain, dash),
        Coin(chain, peercoin),
        Coin(chain, namecoin),
        Coin(chain, feathercoin),
        Coin(chain, counterparty),
        Coin(chain, blackcoin),
        Coin(chain, nushares),
        Coin(chain, nubits),
        Coin(chain, mazacoin),
        Coin(chain, viacoin),
        Coin(chain, clearinghouse),
        Coin(chain, rubycoin),
        Coin(chain, groestlcoin),
        Coin(chain, digitalcoin),
        Coin(chain, cannacoin),
        Coin(chain, digibyte),
        Coin(chain, openAssets),
        Coin(chain, monacoin),
        Coin(chain, clams),
        Coin(chain, primecoin),
        Coin(chain, neoscoin),
        Coin(chain, jumbucks),
        Coin(chain, ziftrcoin),
        Coin(chain, vertcoin),
        Coin(chain, nxt),
        Coin(chain, burst),
        Coin(chain, monetaryunit),
        Coin(chain, zoom),
        Coin(chain, virtual_cash_also_known_as_vpncoin),
        Coin(chain, canada_ecoin),
        Coin(chain, shadowcash),
        Coin(chain, parkbyte),
        Coin(chain, pandacoin),
        Coin(chain, startcoin),
        Coin(chain, moin),
        Coin(chain, expanse),
        Coin(chain, einsteinium),
        Coin(chain, decred),
        Coin(chain, nem),
        Coin(chain, particl),
        Coin(chain, argentum),
        Coin(chain, libertas),
        Coin(chain, posw_coin),
        Coin(chain, shreeji),
        Coin(chain, global_currency_reserve_gcrcoin),
        Coin(chain, novacoin),
        Coin(chain, asiacoin),
        Coin(chain, bitcoindark),
        Coin(chain, dopecoin),
        Coin(chain, templecoin),
        Coin(chain, aib),
        Coin(chain, edrcoin),
        Coin(chain, syscoin),
        Coin(chain, solarcoin),
        Coin(chain, smileycoin),
        Coin(chain, ether),
        Coin(chain, ether_classic),
        Coin(chain, pesobit),
        Coin(chain, landcoin),
        Coin(chain, open_chain),
        Coin(chain, bitcoinplus),
        Coin(chain, internet_of_people),
        Coin(chain, nexus),
        Coin(chain, insanecoin),
        Coin(chain, okcash),
        Coin(chain, britcoin),
        Coin(chain, compcoin),
        Coin(chain, crown),
        Coin(chain, belacoin),
        Coin(chain, icon),
        Coin(chain, fujicoin),
        Coin(chain, mix),
        Coin(chain, verge),
        Coin(chain, electronic_gulden),
        Coin(chain, clubcoin),
        Coin(chain, richcoin),
        Coin(chain, potcoin),
        Coin(chain, quarkcoin),
        Coin(chain, terracoin),
        Coin(chain, gridcoin),
        Coin(chain, auroracoin),
        Coin(chain, ixcoin),
        Coin(chain, gulden),
        Coin(chain, bitbean),
        Coin(chain, bata),
        Coin(chain, myriadcoin),
        Coin(chain, bitsend),
        Coin(chain, unobtanium),
        Coin(chain, mastertrader),
        Coin(chain, goldblocks),
        Coin(chain, saham),
        Coin(chain, chronos),
        Coin(chain, ubiquoin),
        Coin(chain, evotion),
        Coin(chain, savetheocean),
        Coin(chain, bigup),
        Coin(chain, gamecredits),
        Coin(chain, dollarcoins),
        Coin(chain, zayedcoin),
        Coin(chain, dubaicoin),
        Coin(chain, stratis),
        Coin(chain, shilling),
        Coin(chain, marscoin),
        Coin(chain, ubiq),
        Coin(chain, pesetacoin),
        Coin(chain, neurocoin),
        Coin(chain, ark),
        Coin(chain, ultimatesecurecashmain),
        Coin(chain, hempcoin),
        Coin(chain, linx),
        Coin(chain, ecoin),
        Coin(chain, denarius),
        Coin(chain, pinkcoin),
        Coin(chain, atom),
        Coin(chain, pivx),
        Coin(chain, flashcoin),
        Coin(chain, zencash),
        Coin(chain, putincoin),
        Coin(chain, bitzeny),
        Coin(chain, unify),
        Coin(chain, stealthcoin),
        Coin(chain, breakout_coin),
        Coin(chain, vcash),
        Coin(chain, monero),
        Coin(chain, voxels),
        Coin(chain, navcoin),
        Coin(chain, factom_factoids),
        Coin(chain, factom_entry_credits),
        Coin(chain, zcash),
        Coin(chain, lisk),
        Coin(chain, steem),
        Coin(chain, zcoin),
        Coin(chain, rsk),
        Coin(chain, giftblock),
        Coin(chain, realpointcoin),
        Coin(chain, lbry_credits),
        Coin(chain, komodo),
        Coin(chain, bisq_token),
        Coin(chain, riecoin),
        Coin(chain, ripple),
        Coin(chain, bitcoin_cash),
        Coin(chain, neblio),
        Coin(chain, zclassic),
        Coin(chain, stellar_lumens),
        Coin(chain, nolimitcoin2),
        Coin(chain, whalecoin),
        Coin(chain, europecoin),
        Coin(chain, diamond),
        Coin(chain, bytom),
        Coin(chain, biocoin),
        Coin(chain, whitecoin_classic),
        Coin(chain, bitcoin_gold),
        Coin(chain, bitcoin_2x),
        Coin(chain, superskynet),
        Coin(chain, toacoin),
        Coin(chain, bitcore),
        Coin(chain, adcoin),
        Coin(chain, bridgecoin),
        Coin(chain, ellaism),
        Coin(chain, pirl),
        Coin(chain, nano),
        Coin(chain, vivo),
        Coin(chain, firstcoin),
        Coin(chain, helleniccoin),
        Coin(chain, buzz),
        Coin(chain, ember),
        Coin(chain, hcash),
        Coin(chain, htmlcoin),
        Coin(chain, obsidian),
        Coin(chain, onixcoin),
        Coin(chain, ravencoin),
        Coin(chain, gobyte),
        Coin(chain, bitcoinz),
        Coin(chain, poa),
        Coin(chain, newyorkcoin),
        Coin(chain, martexcoin),
        Coin(chain, wincoin),
        Coin(chain, minexcoin),
        Coin(chain, bitcoin_private),
        Coin(chain, musicoin),
        Coin(chain, bitcoin_atom),
        Coin(chain, crave),
        Coin(chain, straks),
        Coin(chain, world_bitcoin),
        Coin(chain, litecash),
        Coin(chain, exclusivecoin),
        Coin(chain, lynx),
        Coin(chain, litecoincash),
        Coin(chain, feirm),
        Coin(chain, eos),
        Coin(chain, tron),
        Coin(chain, kobocoin),
        Coin(chain, hush),
        Coin(chain, bananos),
        Coin(chain, etf),
        Coin(chain, omni),
        Coin(chain, bitcoinfile),
        Coin(chain, uniform_fiscal_object),
        Coin(chain, cryptonodes),
        Coin(chain, bytecoin),
        Coin(chain, ringo),
        Coin(chain, platon),
        Coin(chain, everitoken),
        Coin(chain, atn),
        Coin(chain, bismuth),
        Coin(chain, neetcoin),
        Coin(chain, bopochain),
        Coin(chain, utrum),
        Coin(chain, spectrecoin),
        Coin(chain, monkey_project),
        Coin(chain, boxycoin),
        Coin(chain, flo),
        Coin(chain, megacoin),
        Coin(chain, bitcloud),
        Coin(chain, artax),
        Coin(chain, anon),
        Coin(chain, litecoinz),
        Coin(chain, bitcoin_green),
        Coin(chain, askcoin),
        Coin(chain, smartcash),
        Coin(chain, xuez),
        Coin(chain, helium),
        Coin(chain, webchain),
        Coin(chain, actinium),
        Coin(chain, nos_stable_coins),
        Coin(chain, bitcash),
        Coin(chain, help_the_homeless_coin),
        Coin(chain, trezarcoin),
        Coin(chain, varda),
        Coin(chain, iov),
        Coin(chain, fio),
        Coin(chain, bitcoinsv),
        Coin(chain, dexon),
        Coin(chain, quantum_resistant_ledger),
        Coin(chain, chainx),
        Coin(chain, loki),
        Coin(chain, imagewallet),
        Coin(chain, nimiq),
        Coin(chain, sovereign_coin),
        Coin(chain, jibital_coin),
        Coin(chain, simple_ledger_protocol),
        Coin(chain, energy_web),
        Coin(chain, ulord),
        Coin(chain, exos),
        Coin(chain, electra),
        Coin(chain, soom),
        Coin(chain, redstone),
        Coin(chain, freecoin),
        Coin(chain, newpowercoin),
        Coin(chain, blockstamp),
        Coin(chain, smartholdem),
        Coin(chain, bitcoin_nano),
        Coin(chain, bitcoin_core),
        Coin(chain, zen_protocol),
        Coin(chain, zest),
        Coin(chain, arcblock),
        Coin(chain, pion),
        Coin(chain, dreamteam3),
        Coin(chain, zbux),
        Coin(chain, kepler),
        Coin(chain, tokenpay),
        Coin(chain, chainzilla),
        Coin(chain, anker),
        Coin(chain, bcchain),
        Coin(chain, hpb),
        Coin(chain, one),
        Coin(chain, sbc),
        Coin(chain, ipchain),
        Coin(chain, dominantchain),
        Coin(chain, onegram),
        Coin(chain, shitcoin),
        Coin(chain, andescoin),
        Coin(chain, arepacoin),
        Coin(chain, bolivarcoin),
        Coin(chain, rilcoin),
        Coin(chain, hathor_network),
        Coin(chain, factom_id),
        Coin(chain, bravo),
        Coin(chain, algorand),
        Coin(chain, bitcoinzero),
        Coin(chain, gravitycoin),
        Coin(chain, heat),
        Coin(chain, digitalnote),
        Coin(chain, fusion),
        Coin(chain, capricoin),
        Coin(chain, bold),
        Coin(chain, iost),
        Coin(chain, tkeycoin),
        Coin(chain, usechain),
        Coin(chain, bitcoincz),
        Coin(chain, iocoin),
        Coin(chain, asofe),
        Coin(chain, mass),
        Coin(chain, faircoin),
        Coin(chain, nekonium),
        Coin(chain, genaro_network),
        Coin(chain, divi_project),
        Coin(chain, community),
        Coin(chain, euno),
        Coin(chain, iotex),
        Coin(chain, deeponion),
        Coin(chain, eightbit),
        Coin(chain, atoken_coin),
        Coin(chain, bitshares),
        Coin(chain, nervos_ckb),
        Coin(chain, ultrain),
        Coin(chain, adshares),
        Coin(chain, aura),
        Coin(chain, zilliqa),
        Coin(chain, moac),
        Coin(chain, swtc),
        Coin(chain, vnscoin),
        Coin(chain, plg),
        Coin(chain, matrix_ai_network),
        Coin(chain, eccoin),
        Coin(chain, rapids),
        Coin(chain, rapture),
        Coin(chain, hashgard),
        Coin(chain, zero0),
        Coin(chain, eboost),
        Coin(chain, shard),
        Coin(chain, linda_coin),
        Coin(chain, commercium),
        Coin(chain, blocknet),
        Coin(chain, audax),
        Coin(chain, terra),
        Coin(chain, zprime),
        Coin(chain, kuva_utility_note),
        Coin(chain, memcoin),
        Coin(chain, credits),
        Coin(chain, swiftcash),
        Coin(chain, fix),
        Coin(chain, cpchain),
        Coin(chain, virtualgoodstoken),
        Coin(chain, devault),
        Coin(chain, n8vcoin),
        Coin(chain, omotenashicoin),
        Coin(chain, blast),
        Coin(chain, decent),
        Coin(chain, auxilium),
        Coin(chain, usdp),
        Coin(chain, htdf),
        Coin(chain, ycash),
        Coin(chain, qlc_chain),
        Coin(chain, icetea_blockchain),
        Coin(chain, arrowchain),
        Coin(chain, medium),
        Coin(chain, cybex),
        Coin(chain, lto_network),
        Coin(chain, polkadot),
        Coin(chain, aeon),
        Coin(chain, resistance),
        Coin(chain, aryacoin),
        Coin(chain, dapscoin),
        Coin(chain, casinocoin),
        Coin(chain, v_systems),
        Coin(chain, nollar),
        Coin(chain, nos),
        Coin(chain, cpuchain),
        Coin(chain, lambda_storage_chain),
        Coin(chain, valuecyber),
        Coin(chain, canonchain),
        Coin(chain, abbc),
        Coin(chain, het),
        Coin(chain, asch),
        Coin(chain, vidulum),
        Coin(chain, medibloc),
        Coin(chain, zvchain),
        Coin(chain, vestx),
        Coin(chain, darkbit),
        Coin(chain, supereos),
        Coin(chain, maxonrow),
        Coin(chain, zenzo),
        Coin(chain, xchain),
        Coin(chain, sonicx),
        Coin(chain, nyzo),
        Coin(chain, ulcoin),
        Coin(chain, ryo_currency),
        Coin(chain, kaleidochain),
        Coin(chain, stakenet),
        Coin(chain, dogecash),
        Coin(chain, bitcoin_matteos_vision),
        Coin(chain, quebecoin),
        Coin(chain, imagecoin),
        Coin(chain, qos),
        Coin(chain, pkt),
        Coin(chain, litecoinhd),
        Coin(chain, cennznet),
        Coin(chain, hyper_speed_network),
        Coin(chain, crypto_com_chain),
        Coin(chain, umbru),
        Coin(chain, free_ton),
        Coin(chain, near_protocol),
        Coin(chain, xpchain),
        Coin(chain, zero_one_coin),
        Coin(chain, nix),
        Coin(chain, utopiacoin),
        Coin(chain, galilel),
        Coin(chain, oneledger),
        Coin(chain, xbi),
        Coin(chain, donu),
        Coin(chain, earths),
        Coin(chain, hddcash),
        Coin(chain, sugarchain),
        Coin(chain, ailecoin),
        Coin(chain, snowgem),
        Coin(chain, tangerine_network),
        Coin(chain, ain),
        Coin(chain, masari),
        Coin(chain, sumokoin),
        Coin(chain, electroneum),
        Coin(chain, bytz),
        Coin(chain, wownero),
        Coin(chain, xtendcash),
        Coin(chain, lethean),
        Coin(chain, nodehost),
        Coin(chain, argoneum),
        Coin(chain, conceal_network),
        Coin(chain, title_network),
        Coin(chain, teloscoin),
        Coin(chain, aion),
        Coin(chain, bitcoin_confidential),
        Coin(chain, kmushicoin),
        Coin(chain, zcore),
        Coin(chain, ergo),
        Coin(chain, criptopeso),
        Coin(chain, bitcoin_2),
        Coin(chain, xrphd),
        Coin(chain, we_coin),
        Coin(chain, kusama),
        Coin(chain, peepcoin),
        Coin(chain, netcloth),
        Coin(chain, chipo),
        Coin(chain, link),
        Coin(chain, devault_token_protocol),
        Coin(chain, bitcoin_royale),
        Coin(chain, aergo),
        Coin(chain, dothereum),
        Coin(chain, lava),
        Coin(chain, phore),
        Coin(chain, vitae),
        Coin(chain, cocos_bcx),
        Coin(chain, dinero),
        Coin(chain, simplicity),
        Coin(chain, myce),
        Coin(chain, solaris),
        Coin(chain, klimatas),
        Coin(chain, dgld),
        Coin(chain, insolar),
        Coin(chain, empow),
        Coin(chain, shineblocks),
        Coin(chain, seele),
        Coin(chain, aeternity),
        Coin(chain, obsidianx),
        Coin(chain, kava),
        Coin(chain, gleec),
        Coin(chain, filecoin),
        Coin(chain, rutanio),
        Coin(chain, csdt),
        Coin(chain, etherinc),
        Coin(chain, zclassic_simple_ledger_protocol),
        Coin(chain, ethercore),
        Coin(chain, dxchain_token),
        Coin(chain, capricoin_plus),
        Coin(chain, bithereum),
        Coin(chain, mesg),
        Coin(chain, fimk),
        Coin(chain, arweave),
        Coin(chain, origo),
        Coin(chain, oasis_network),
        Coin(chain, bare_network),
        Coin(chain, gleecbtc),
        Coin(chain, color_coin),
        Coin(chain, ring),
        Coin(chain, tool_global),
        Coin(chain, pexa),
        Coin(chain, mooncoin),
        Coin(chain, ocean_protocol),
        Coin(chain, bluzelle_native),
        Coin(chain, amo_blockchain),
        Coin(chain, freecash),
        Coin(chain, latticex),
        Coin(chain, bitcoin_bank),
        Coin(chain, amoveo),
        Coin(chain, counos_coin),
        Coin(chain, graphene),
        Coin(chain, minter_network),
        Coin(chain, kunpeng_network),
        Coin(chain, finl_chain),
        Coin(chain, band),
        Coin(chain, dropil),
        Coin(chain, bluehelix_chain),
        Coin(chain, scrypta),
        Coin(chain, credits1),
        Coin(chain, rupaya),
        Coin(chain, theta),
        Coin(chain, solana),
        Coin(chain, thoughtai),
        Coin(chain, conflux),
        Coin(chain, kumacoin),
        Coin(chain, provenance),
        Coin(chain, casperlabs),
        Coin(chain, earth),
        Coin(chain, elrond),
        Coin(chain, xaya),
        Coin(chain, koto),
        Coin(chain, zero),
        Coin(chain, radiant),
        Coin(chain, seele_n),
        Coin(chain, aeth),
        Coin(chain, idena),
        Coin(chain, virtual_economy_era),
        Coin(chain, sierracoin),
        Coin(chain, linkeye),
        Coin(chain, bitcoin_smart_contract),
        Coin(chain, bitcoinvip),
        Coin(chain, dabacus),
        Coin(chain, stakecubecoin),
        Coin(chain, edgeware),
        Coin(chain, amsterdamcoin),
        Coin(chain, gossip_coin),
        Coin(chain, bumo),
        Coin(chain, gram),
        Coin(chain, yapstone),
        Coin(chain, secret_network),
        Coin(chain, novo),
        Coin(chain, ghost),
        Coin(chain, hst),
        Coin(chain, projectcoin),
        Coin(chain, youchain),
        Coin(chain, haven_protocol),
        Coin(chain, beyondcoin),
        Coin(chain, joys_digital),
        Coin(chain, valorbit),
        Coin(chain, flow),
        Coin(chain, spacemesh_coin),
        Coin(chain, scdo),
        Coin(chain, iq_cash),
        Coin(chain, compendia),
        Coin(chain, coinevo),
        Coin(chain, scribe),
        Coin(chain, hyperion),
        Coin(chain, bhp),
        Coin(chain, bigbang_core),
        Coin(chain, marketfinance),
        Coin(chain, xinfin_network),
        Coin(chain, straightedge),
        Coin(chain, sumcoin),
        Coin(chain, huobichain),
        Coin(chain, flare_spark),
        Coin(chain, bitcoin_smart),
        Coin(chain, kratos),
        Coin(chain, lkrcoin),
        Coin(chain, tao),
        Coin(chain, whitecoin),
        Coin(chain, deal),
        Coin(chain, nexty),
        Coin(chain, top_network),
        Coin(chain, stakebird),
        Coin(chain, agoric),
        Coin(chain, coinicles),
        Coin(chain, irisnet),
        Coin(chain, nine_chronicles),
        Coin(chain, large_coin),
        Coin(chain, super_zero_protocol),
        Coin(chain, beldex),
        Coin(chain, counos_x),
        Coin(chain, saluscoin),
        Coin(chain, serum),
        Coin(chain, velas),
        Coin(chain, vidt_datalink),
        Coin(chain, bitcoinpos),
        Coin(chain, nkn),
        Coin(chain, ilcoin),
        Coin(chain, bonorum),
        Coin(chain, platincoin),
        Coin(chain, dune),
        Coin(chain, darmacash),
        Coin(chain, creditcoin),
        Coin(chain, haidai_network),
        Coin(chain, goldbcr),
        Coin(chain, xdag),
        Coin(chain, incognito_privacy),
        Coin(chain, safecapital),
        Coin(chain, theta_fuel),
        Coin(chain, gentarium),
      ];
}

class Coin {
  Coin(this.chain, this.index);

  final Chain chain;
  final int index;

  String get path => 'm/${forHumans(purpose)}/${forHumans(index)}';

  Future<List<Account>> accounts() async {
    var accounts = <Account>[];

    var next = Account(this, 0, changeExternal);
    while (await next.isUsed) {
      accounts.add(next);
      next = next.next();
    }

    return accounts;
  }
}
