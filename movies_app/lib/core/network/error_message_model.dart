// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool success;
  const ErrorMessageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });

  @override
  List<Object> get props => [statusCode, statusMessage, success];

  factory ErrorMessageModel.fromjson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      statusCode: json['status_code'] as int,
      statusMessage: json['status_message'] as String,
      success: json['success'] as bool,
    );
  }
}
