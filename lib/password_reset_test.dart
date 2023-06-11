import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/password_reset_screen.dart';

void main() {
  testWidgets('Password reset test', (WidgetTester tester) async {
    // Construisez l'interface de réinitialisation de mot de passe
    await tester.pumpWidget(PasswordResetScreen());

    // Vérifiez si les champs de texte existent
    expect(find.byType(TextField), findsNWidgets(4));

    // Entrez des valeurs dans les champs de texte
    await tester.enterText(find.byType(TextField).at(0), 'john_doe');
    await tester.enterText(find.byType(TextField).at(1), 'johndoe@example.com');
    await tester.enterText(find.byType(TextField).at(2), 'new_password');
    await tester.enterText(find.byType(TextField).at(3), 'new_password');

    // Appuyez sur le bouton de réinitialisation du mot de passe
    await tester.tap(find.byType(ElevatedButton));

    // Attendez que les modifications soient traitées
    await tester.pump();

    // Vérifiez si le mot de passe a été réinitialisé avec succès
    expect(find.text('Successful password reset.'), findsOneWidget);
  });
}
