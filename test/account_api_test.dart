import 'package:mixin_bot_sdk_dart/mixin_bot_sdk_dart.dart';
import 'package:mixin_bot_sdk_dart/src/client.dart';
import 'package:mixin_bot_sdk_dart/src/vo/signal_key_count.dart';
import 'package:test/test.dart';

import 'config.dart';

void main() {
  group('user apis', () {
    var client = Client('UA', uid, sid, private);

    test('test getMe', () async {
      var resp = await client.accountApi.getMe();
      print(resp.data.toJson());
    });

    test('test getSignalCountKey', () async {
      // await client.accountApi.getSignalKeyCount();
    });

    test('test logout', () async {
      await client.accountApi.logout().then((response) {});
    });
  });
}
