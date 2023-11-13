// ignore_for_file: unused_local_variable

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:phone_book_app/application/application.dart';
import 'package:phone_book_app/application/state/app_state.dart';
import 'package:phone_book_app/presentation/view/home_page.dart';
import '../../helpers/helpers.dart';

class MockCounterCubit extends MockCubit<AppState> implements AppCubit {}

void main() {
  group('HomePage', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpApp(const HomePage());
    });
  });

  group('HomePage', () {
    late AppCubit counterCubit;

    setUp(() {
      counterCubit = MockCounterCubit();
    });

    testWidgets('renders current count', (tester) async {});

    testWidgets(
        'calls increment when increment button is tapped', (tester) async {});

    testWidgets(
        'calls decrement when decrement button is tapped', (tester) async {});
  });
}
