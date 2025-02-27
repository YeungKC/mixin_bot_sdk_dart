import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:ed25519_edwards/src/edwards25519.dart';

Uint8List privateKeyToCurve25519(Uint8List privateKey) {
  var output = AccumulatorSink<Digest>();
  var input = sha512.startChunkedConversion(output);
  input.add(privateKey.sublist(0, 32));
  input.close();
  var digest = output.events.single.bytes.sublist(0, 32);
  digest[0] &= 248;
  digest[31] &= 127;
  digest[31] |= 64;
  return digest;
}

Uint8List publicKeyToCurve25519(Uint8List publicKey) {
  var A = ExtendedGroupElement();
  A.FromBytes(publicKey);

  var x = _edwardsToMontgomeryX(A.Y);
  var curve25519Public = Uint8List(32);
  FeToBytes(curve25519Public, x);
  return curve25519Public;
}

FieldElement _edwardsToMontgomeryX(FieldElement y) {
  var oneMinusY = FieldElement();
  FeOne(oneMinusY);
  FeSub(oneMinusY, oneMinusY, y);
  FeInvert(oneMinusY, oneMinusY);

  var outX = FieldElement();
  FeOne(outX);
  FeAdd(outX, outX, y);

  FeMul(outX, outX, oneMinusY);
  return outX;
}
