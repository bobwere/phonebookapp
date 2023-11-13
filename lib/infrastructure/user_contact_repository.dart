import 'package:phone_book_app/domain/user_contact.dart';

/// User repository used to store user contacts
class UserContactRepository {
  final cachedUserContact = [
    {
      'id': '1',
      'name': 'Alice Johnson',
      'phone': '+1234567890',
      'avatar': 'https://picsum.photos/200/300'
    },
    {
      'id': '2',
      'name': 'Bob Smith',
      'phone': '+0987654321',
      'avatar': 'https://picsum.photos/200/300'
    },
    {
      'id': '3',
      'name': 'Charlie Brown',
      'phone': '+1122334455',
      'avatar': 'https://picsum.photos/200/300'
    },
    {
      'id': '4',
      'name': 'David Williams',
      'phone': '+5566778899',
      'avatar': 'https://picsum.photos/200/300'
    },
    {
      'id': '5',
      'name': 'Eva Green',
      'phone': '+2244668800',
      'avatar': 'https://picsum.photos/200/300'
    },
  ];

  /// fetch all user contacts from cache
  List<UserContact> retrieveCacheUserContacts() {
    final contacts = <UserContact>[];

    // loop thru each contact and convert to dart objectand add to list
    for (final contact in cachedUserContact) {
      contacts.add(UserContact.fromJson(contact));
    }

    return contacts;
  }
}
