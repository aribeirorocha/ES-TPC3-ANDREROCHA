import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aplication_01/main.dart'; 

void main() {
  
  testWidgets('Cenário 1: Utilizador vê a mensagem principal no centro do ecrã', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    
    final textoPrincipal = find.text('Hi! my name is André Rocha');
    expect(textoPrincipal, findsOneWidget);
  });

  testWidgets('Cenário 2: Utilizador vê o título correto na barra superior (AppBar)', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    
    // Procura o texto da App Bar
    final tituloAppBar = find.text('ES - TPC1');
    expect(tituloAppBar, findsOneWidget);
    
    // Confirma que existe mesmo uma AppBar
    expect(find.byType(AppBar), findsOneWidget);
  });

  testWidgets('Cenário 3: A estrutura visual da aplicação carrega corretamente', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    
    // Verifica se o esqueleto principal (Scaffold) e o Center existem
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(Center), findsOneWidget);
  });

}