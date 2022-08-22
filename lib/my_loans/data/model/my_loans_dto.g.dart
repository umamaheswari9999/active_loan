// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_loans_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyLoansDto _$$_MyLoansDtoFromJson(Map<String, dynamic> json) =>
    _$_MyLoansDto(
      id: json['id'] as String,
      loanamount: (json['loanamount'] as num).toDouble(),
      dateofloansanction: json['dateofloansanction'] as String,
      loanno: json['loanno'] as String,
      recordstatus: json['recordstatus'] as String,
      applicantname: json['applicantname'] as String,
      prooftypenumber: json['prooftypenumber'] as String,
    );

Map<String, dynamic> _$$_MyLoansDtoToJson(_$_MyLoansDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loanamount': instance.loanamount,
      'dateofloansanction': instance.dateofloansanction,
      'loanno': instance.loanno,
      'recordstatus': instance.recordstatus,
      'applicantname': instance.applicantname,
      'prooftypenumber': instance.prooftypenumber,
    };
