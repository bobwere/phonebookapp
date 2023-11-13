// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      allUserContacts: (json['allUserContacts'] as List<dynamic>?)
          ?.map((e) => UserContact.fromJson(e as Map<String, dynamic>))
          .toList(),
      filteredUserContacts: (json['filteredUserContacts'] as List<dynamic>?)
          ?.map((e) => UserContact.fromJson(e as Map<String, dynamic>))
          .toList(),
      userContactsToEdit: json['userContactsToEdit'] == null
          ? null
          : UserContact.fromJson(
              json['userContactsToEdit'] as Map<String, dynamic>),
      searchTerm: json['searchTerm'] as String?,
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'allUserContacts': instance.allUserContacts,
      'filteredUserContacts': instance.filteredUserContacts,
      'userContactsToEdit': instance.userContactsToEdit,
      'searchTerm': instance.searchTerm,
    };
