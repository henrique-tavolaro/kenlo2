

import 'package:flutter/material.dart';

@immutable
class Failure {
  const Failure({
    required this.message,
    this.code = '',
  });

  final String message;
  final String code;

  @override
  bool operator ==(covariant Failure other) {
    if (identical(this, other)) return true;

    return other.message == message && other.code == code;
  }

  @override
  int get hashCode => message.hashCode ^ code.hashCode;
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String message,
    required String code,
  }) : super(message: message, code: code);
}

class ServerException implements Exception {
  final String message;
  final String code;

  const ServerException({
    required this.message,
    this.code = '',
  });
}