// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqEntityImpl _$$FaqEntityImplFromJson(Map<String, dynamic> json) =>
    _$FaqEntityImpl(
      id: json['id'] as int,
      question: json['question'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$FaqEntityImplToJson(_$FaqEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
    };
