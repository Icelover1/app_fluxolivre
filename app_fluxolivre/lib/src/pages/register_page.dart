import 'package:flutter/material.dart';
import 'package:app_fluxolivre/src/widget/input_login_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Cadastro de Novo Usuário',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                InputLoginWidget(
                  icon: Icons.person_outline,
                  hint: 'Nome Completo',
                  obscure: false,
                ),
                InputLoginWidget(
                  icon: Icons.email_outlined,
                  hint: 'E-mail',
                  obscure: false,
                ),
                InputLoginWidget(
                  icon: Icons.badge_outlined,
                  hint: 'CPF',
                  obscure: false,
                ),
                InputLoginWidget(
                  icon: Icons.lock_outline,
                  hint: 'Senha',
                  obscure: true,
                ),
                InputLoginWidget(
                  icon: Icons.lock_outline,
                  hint: 'Confirmar Senha',
                  obscure: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAFAE24),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    // Aqui você pode adicionar a lógica de cadastro
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF031C5F),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF200D69),
                    minimumSize: const Size(double.infinity, 60),
                    side: const BorderSide(
                      color: Color(0xFFAFAE24),
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFAFAE24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
