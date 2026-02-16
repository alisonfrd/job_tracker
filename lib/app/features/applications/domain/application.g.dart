// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Application _$ApplicationFromJson(Map<String, dynamic> json) => _Application(
  id: json['id'] as String,
  companyName: json['companyName'] as String,
  positionTitle: json['positionTitle'] as String,
  status: $enumDecode(_$ApplicationStatusEnumMap, json['status']),
  appliedAt: DateTime.parse(json['appliedAt'] as String),
  notes: json['notes'] as String?,
  salaryCents: (json['salaryCents'] as num?)?.toInt(),
  employmentType: $enumDecode(_$EmploymentTypeEnumMap, json['employmentType']),
  locationScope: $enumDecode(_$LocationScopeEnumMap, json['locationScope']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ApplicationToJson(_Application instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'positionTitle': instance.positionTitle,
      'status': _$ApplicationStatusEnumMap[instance.status]!,
      'appliedAt': instance.appliedAt.toIso8601String(),
      'notes': instance.notes,
      'salaryCents': instance.salaryCents,
      'employmentType': _$EmploymentTypeEnumMap[instance.employmentType]!,
      'locationScope': _$LocationScopeEnumMap[instance.locationScope]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ApplicationStatusEnumMap = {
  ApplicationStatus.applied: 'applied',
  ApplicationStatus.interview: 'interview',
  ApplicationStatus.offer: 'offer',
  ApplicationStatus.rejected: 'rejected',
};

const _$EmploymentTypeEnumMap = {
  EmploymentType.clt: 'clt',
  EmploymentType.pj: 'pj',
};

const _$LocationScopeEnumMap = {
  LocationScope.national: 'national',
  LocationScope.international: 'international',
};
