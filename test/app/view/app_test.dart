import 'package:flutter_test/flutter_test.dart';
import 'package:phone_book_app/app/app.dart';
// import 'package:phone_book_app/presentation/view/counter_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      // expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
