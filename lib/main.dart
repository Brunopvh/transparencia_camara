import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparencia_camara/api_dados/api_bindings.dart';
import 'package:transparencia_camara/screens/home_page.dart';
import 'package:transparencia_camara/screens/list_proposicoes.dart';
import 'package:transparencia_camara/screens/page_depudato_estadual.dart';
import 'package:transparencia_camara/screens/page_depudato_federal.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'camara dos deputados',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      initialBinding: ApiBindings(),
      getPages: [
        GetPage(
              name: '/', 
              page:() => MyHomePage(title: 'Transparência App')
              ),
        GetPage(
              name: '/federais', 
              page: () => PageDeputadosFederais()
              ),
        GetPage(
              name: '/estaduais', 
              page: () => PageDeputadosEstaduais(),
              ),

        GetPage(
              name: '/federais/proposicoes', 
              page: () => PageProposicoes(),
              ),
      ],
    );
  }
}
