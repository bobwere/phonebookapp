// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  List<UserContact>? get allUserContacts => throw _privateConstructorUsedError;
  List<UserContact>? get filteredUserContacts =>
      throw _privateConstructorUsedError;
  UserContact? get userContactsToEdit => throw _privateConstructorUsedError;
  String? get searchTerm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {List<UserContact>? allUserContacts,
      List<UserContact>? filteredUserContacts,
      UserContact? userContactsToEdit,
      String? searchTerm});

  $UserContactCopyWith<$Res>? get userContactsToEdit;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUserContacts = freezed,
    Object? filteredUserContacts = freezed,
    Object? userContactsToEdit = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_value.copyWith(
      allUserContacts: freezed == allUserContacts
          ? _value.allUserContacts
          : allUserContacts // ignore: cast_nullable_to_non_nullable
              as List<UserContact>?,
      filteredUserContacts: freezed == filteredUserContacts
          ? _value.filteredUserContacts
          : filteredUserContacts // ignore: cast_nullable_to_non_nullable
              as List<UserContact>?,
      userContactsToEdit: freezed == userContactsToEdit
          ? _value.userContactsToEdit
          : userContactsToEdit // ignore: cast_nullable_to_non_nullable
              as UserContact?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserContactCopyWith<$Res>? get userContactsToEdit {
    if (_value.userContactsToEdit == null) {
      return null;
    }

    return $UserContactCopyWith<$Res>(_value.userContactsToEdit!, (value) {
      return _then(_value.copyWith(userContactsToEdit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserContact>? allUserContacts,
      List<UserContact>? filteredUserContacts,
      UserContact? userContactsToEdit,
      String? searchTerm});

  @override
  $UserContactCopyWith<$Res>? get userContactsToEdit;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUserContacts = freezed,
    Object? filteredUserContacts = freezed,
    Object? userContactsToEdit = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_$AppStateImpl(
      allUserContacts: freezed == allUserContacts
          ? _value._allUserContacts
          : allUserContacts // ignore: cast_nullable_to_non_nullable
              as List<UserContact>?,
      filteredUserContacts: freezed == filteredUserContacts
          ? _value._filteredUserContacts
          : filteredUserContacts // ignore: cast_nullable_to_non_nullable
              as List<UserContact>?,
      userContactsToEdit: freezed == userContactsToEdit
          ? _value.userContactsToEdit
          : userContactsToEdit // ignore: cast_nullable_to_non_nullable
              as UserContact?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  _$AppStateImpl(
      {final List<UserContact>? allUserContacts,
      final List<UserContact>? filteredUserContacts,
      this.userContactsToEdit,
      this.searchTerm})
      : _allUserContacts = allUserContacts,
        _filteredUserContacts = filteredUserContacts;

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  final List<UserContact>? _allUserContacts;
  @override
  List<UserContact>? get allUserContacts {
    final value = _allUserContacts;
    if (value == null) return null;
    if (_allUserContacts is EqualUnmodifiableListView) return _allUserContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserContact>? _filteredUserContacts;
  @override
  List<UserContact>? get filteredUserContacts {
    final value = _filteredUserContacts;
    if (value == null) return null;
    if (_filteredUserContacts is EqualUnmodifiableListView)
      return _filteredUserContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserContact? userContactsToEdit;
  @override
  final String? searchTerm;

  @override
  String toString() {
    return 'AppState(allUserContacts: $allUserContacts, filteredUserContacts: $filteredUserContacts, userContactsToEdit: $userContactsToEdit, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allUserContacts, _allUserContacts) &&
            const DeepCollectionEquality()
                .equals(other._filteredUserContacts, _filteredUserContacts) &&
            (identical(other.userContactsToEdit, userContactsToEdit) ||
                other.userContactsToEdit == userContactsToEdit) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allUserContacts),
      const DeepCollectionEquality().hash(_filteredUserContacts),
      userContactsToEdit,
      searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final List<UserContact>? allUserContacts,
      final List<UserContact>? filteredUserContacts,
      final UserContact? userContactsToEdit,
      final String? searchTerm}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  List<UserContact>? get allUserContacts;
  @override
  List<UserContact>? get filteredUserContacts;
  @override
  UserContact? get userContactsToEdit;
  @override
  String? get searchTerm;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
