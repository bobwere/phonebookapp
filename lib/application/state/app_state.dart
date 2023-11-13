import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_book_app/domain/user_contact.dart';
import 'package:phone_book_app/infrastructure/user_contact_repository.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    List<UserContact>? allUserContacts,
    List<UserContact>? filteredUserContacts,
    UserContact? userContactsToEdit,
    String? searchTerm,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        allUserContacts: UserContactRepository().retrieveCacheUserContacts(),
        filteredUserContacts:
            UserContactRepository().retrieveCacheUserContacts(),
        searchTerm: '',
      );
}
