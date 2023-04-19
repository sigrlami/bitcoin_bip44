// import 'dart:io';
//
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:mock_web_server/mock_web_server.dart';
//
// import 'package:test/test.dart';
//
// import 'package:bitcoin_bip44_ng/src/discover.dart';
// import 'package:bitcoin_bip44_ng/src/discover/blockchair.dart';
// import 'package:bitcoin_bip44_ng/src/discover/blockstream.dart';
//
// void main() {
//   group('address scanning', () {
//     late MockWebServer server;
//
//     setUp(() async {
//       server = MockWebServer();
//       await server.start();
//     });
//
//     tearDown(() async {
//       server.shutdown();
//     });
//
//     group('on Blockchair', () {
//       test('found', () async {
//         var responseFromFile =
//             await File('test/files/blockchair_address_found.json').readAsString();
//         server.enqueue(body: responseFromFile);
//         Scanner scanner = Blockchair(server.url);
//
//         expect(await scanner.present('33fyxZPikQcoejqW1YvJecjCNawYKcKE8m'), true);
//       });
//
//       test('not found', () async {
//         var responseFromFile =
//             await File('test/files/blockchair_address_not_found.json').readAsString();
//         server.enqueue(body: responseFromFile);
//         Scanner scanner = Blockchair(server.url);
//
//         expect(await scanner.present('33fyxZPikQcoejqW1YvJecjCNawYK'), false);
//       });
//     });
//
//     group('on Blockstream', () {
//       test('found', () async {
//         server.enqueue(httpCode: 200);
//         Scanner scanner = Blockstream(server.url);
//
//         expect(await scanner.present('33fyxZPikQcoejqW1YvJecjCNawYKcKE8m'), true);
//       });
//
//       test('not found', () async {
//         server.enqueue(httpCode: 400);
//         Scanner scanner = Blockstream(server.url);
//
//         expect(await scanner.present('33fyxZPikQcoejqW1YvJecjCNawYKcKE8m'), false);
//       });
//     });
//   });
// }
