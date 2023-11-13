import 'package:flutter_test/flutter_test.dart';

import 'package:phone_book_app/application/application.dart';
import 'package:phone_book_app/application/state/app_state.dart';

void main() {
  group('AppCubit', () {
    test('initial state', () {
      expect(AppCubit().state, equals(AppState.initial()));
    });
  });
}
