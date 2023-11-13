import 'package:bloc/bloc.dart';
import 'package:phone_book_app/application/state/app_state.dart';
import 'package:phone_book_app/domain/user_contact.dart';

/// Holds logic pertaining to the contacts
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial());

  void addNewContact(UserContact contact) {
    // get cached user contacts
    final cachedUserContacts =
        List.of(state.allUserContacts ?? <UserContact>[]);

    // add new contac to cached contact
    final updatedUserContacts = [...cachedUserContacts, contact];

    // update state with new contact list
    final newAppState = state.copyWith(allUserContacts: updatedUserContacts);

    emit(newAppState);

    // filter contact afresh based on new data added
    filterContactList();
  }

  void changeContactToEdit(UserContact contact) {
    emit(state.copyWith(userContactsToEdit: contact));
  }

  void editContact(UserContact contactToEdit) {
    // get cached user contacts
    final cachedUserContacts =
        List.of(state.allUserContacts ?? <UserContact>[]);

    // get index of contactToEdit in the cached contact list
    final cachedContactToEditIndex = cachedUserContacts
        .indexWhere((contact) => contact.id == contactToEdit.id);

    // cancel exection if contact is not found
    if (cachedContactToEditIndex == -1) {
      return;
    }

    // update cached user list with the new contact list
    cachedUserContacts[cachedContactToEditIndex] = contactToEdit;

    // update state with new contact list
    final newAppState = state.copyWith(allUserContacts: cachedUserContacts);

    emit(newAppState);

    // filter contact afresh based on new data edited
    filterContactList();
  }

  void deleteContact(UserContact contactToDelete) {
    // get cached user contacts
    final cachedUserContacts =
        List.of(state.allUserContacts ?? <UserContact>[]);

    // remove contact from the cached list
    final updatedCachedContact = cachedUserContacts
        .where((contact) => contact.id != contactToDelete.id)
        .toList();

    // update state with new contact list
    final newAppState = state.copyWith(allUserContacts: updatedCachedContact);

    emit(newAppState);

    // filter contact afresh based on new data deleted
    filterContactList();
  }

  void changeSearchTerm(String? searchTerm) {
    if (searchTerm == null) {
      emit(state.copyWith(searchTerm: ''));
      return;
    }

    // emit new state
    emit(state.copyWith(searchTerm: searchTerm));

    // filter contact afresh based on new data deleted
    filterContactList();
  }

  void filterContactList() {
    final searchTerm = state.searchTerm;
    if (searchTerm == null || searchTerm.isEmpty) {
      emit(
        state.copyWith(
          searchTerm: '',
          filteredUserContacts: state.allUserContacts,
        ),
      );
      return;
    }

    // get cached user contacts
    final cachedUserContacts =
        List.of(state.allUserContacts ?? <UserContact>[]);

    final filteredCachedContact = cachedUserContacts.where((contact) {
      // check name if is contained in the search term
      return (contact.name ?? '').toLowerCase().contains(
            searchTerm.toLowerCase(),
          );
    }).toList();

    // emit new state
    emit(state.copyWith(filteredUserContacts: filteredCachedContact));
  }
}
