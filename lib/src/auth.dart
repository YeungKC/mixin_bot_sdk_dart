import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto_keys/crypto_keys.dart';
import 'package:cryptography/cryptography.dart';
import 'package:jose/jose.dart';
import 'package:uuid/uuid.dart';

import './extension/string_extension.dart';

String signAuthTokenWithRSA(
    String userId, String sessionId, String privateKey, method, uri, body) {
  return _signAuthenticationToken(
      userId, sessionId, privateKey, method, uri, body, true);
}

String signAuthTokenWithEdDSA(
    String userId, String sessionId, String privateKey, method, uri, body) {
  return _signAuthenticationToken(
      userId, sessionId, privateKey, method, uri, body, false);
}

String _signAuthenticationToken(String userId, String sessionId,
    String privateKey, method, uri, body, bool isRSA) {
  if (userId.isNullOrEmpty ||
      sessionId.isNullOrEmpty ||
      privateKey.isNullOrEmpty) {
    return '';
  }
  final bytes = utf8.encode(method + uri + body);

  final hash = sha256.hashSync(bytes);
  final claims = JsonWebTokenClaims.fromJson({
    'uid': userId,
    'sid': sessionId,
    'iat': (DateTime.now().millisecondsSinceEpoch / 1000).floor(),
    'exp':
        (DateTime.now().add(Duration(days: 365)).millisecondsSinceEpoch / 1000)
            .floor(),
    'jti': Uuid().v4(),
    'sig': hex.encode(hash.bytes),
    'scp': 'FULL',
  });

  JsonWebKey key;
  String alg;
  if (isRSA) {
    key = JsonWebKey.fromPem(privateKey);
    alg = 'RS512';
  } else {
    var privateBytes = base64.decode(privateKey);
    key = JsonWebKey.fromCryptoKeys(
        privateKey: EdDSAPrivateKey(bytes: privateBytes));
    alg = 'EdDSA';
  }
  final builder = JsonWebSignatureBuilder();
  builder.jsonContent = claims.toJson();
  builder.addRecipient(key, algorithm: alg);

  return '${builder.build().toCompactSerialization()}';
}
