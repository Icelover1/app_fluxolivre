import 'package:app_fluxolivre/src/pages/home_page.dart';
import 'package:app_fluxolivre/src/pages/login_pages.dart';
import 'package:flutter/material.dart';
import 'package:app_fluxolivre/src/pages/register_page.dart';

/* classe mywidget herdando a stateless */
/* classe principal appfluxolivre */
class AppFluxoLivre extends StatelessWidget {
  const AppFluxoLivre({super.key});
/* classe inicia com letra maiusula */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* este titulo nao vai aparecer em nada */
      title: 'AppFluxoLivre',
      /* primeira pagina  a ser executada */
      routes: {
        '/': (_) => LoginPage(),
        '/home': (_) => HomePage(),
        '/register': (_) => RegisterPage(),
      },
    );
  }
}
