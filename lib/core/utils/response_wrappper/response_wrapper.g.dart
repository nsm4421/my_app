// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseWrapperImpl<T> _$$ResponseWrapperImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseWrapperImpl<T>(
      status: $enumDecode(_$ResponseStatusEnumMap, json['status']),
      code: json['code'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$ResponseWrapperImplToJson<T>(
  _$ResponseWrapperImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      'code': instance.code,
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.success: 'success',
  ResponseStatus.error: 'error',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
