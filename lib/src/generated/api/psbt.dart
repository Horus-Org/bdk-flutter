// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../lib.dart';
import 'error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'types.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`, `from`

class BdkPsbt {
  final MutexPartiallySignedTransaction ptr;

  const BdkPsbt({
    required this.ptr,
  });

  String asString() => core.instance.api.crateApiPsbtBdkPsbtAsString(
        that: this,
      );

  /// Combines this PartiallySignedTransaction with other PSBT as described by BIP 174.
  ///
  /// In accordance with BIP 174 this function is commutative i.e., `A.combine(B) == B.combine(A)`
  static Future<BdkPsbt> combine(
          {required BdkPsbt ptr, required BdkPsbt other}) =>
      core.instance.api.crateApiPsbtBdkPsbtCombine(ptr: ptr, other: other);

  /// Return the transaction.
  static Future<BdkTransaction> extractTx({required BdkPsbt ptr}) =>
      core.instance.api.crateApiPsbtBdkPsbtExtractTx(ptr: ptr);

  /// The total transaction fee amount, sum of input amounts minus sum of output amounts, in Sats.
  /// If the PSBT is missing a TxOut for an input returns None.
  Future<BigInt?> feeAmount() => core.instance.api.crateApiPsbtBdkPsbtFeeAmount(
        that: this,
      );

  /// The transaction's fee rate. This value will only be accurate if calculated AFTER the
  /// `PartiallySignedTransaction` is finalized and all witness/signature data is added to the
  /// transaction.
  /// If the PSBT is missing a TxOut for an input returns None.
  Future<FeeRate?> feeRate() => core.instance.api.crateApiPsbtBdkPsbtFeeRate(
        that: this,
      );

  static Future<BdkPsbt> fromStr({required String psbtBase64}) =>
      core.instance.api.crateApiPsbtBdkPsbtFromStr(psbtBase64: psbtBase64);

  /// Serialize the PSBT data structure as a String of JSON.
  Future<String> jsonSerialize() =>
      core.instance.api.crateApiPsbtBdkPsbtJsonSerialize(
        that: this,
      );

  ///Serialize as raw binary data
  Future<Uint8List> serialize() =>
      core.instance.api.crateApiPsbtBdkPsbtSerialize(
        that: this,
      );

  ///Computes the `Txid`.
  /// Hashes the transaction excluding the segwit data (i. e. the marker, flag bytes, and the witness fields themselves).
  /// For non-segwit transactions which do not have any segwit data, this will be equal to transaction.wtxid().
  Future<String> txid() => core.instance.api.crateApiPsbtBdkPsbtTxid(
        that: this,
      );

  @override
  int get hashCode => ptr.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BdkPsbt && runtimeType == other.runtimeType && ptr == other.ptr;
}
