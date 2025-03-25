import 'package:flutter/material.dart';

class  HomePage extends StatefulWidget {

 const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int count=0;

 void incremented (){
  setState(() {
   count++; 
  });
 }

void decrement(){
  setState(() {
   count--;  
  });
}
 /* variavel booleana(verdadeira ou falsa) recebendo o count e vereficando se e igual a 0 ele e verdade se for 1 ou -1 e falso */
 bool get isEmpty => count ==0;
 bool get isFull => count ==10;


/* declara variaveis e coloca a logica dart- tipado  */
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      alignment: Alignment.center,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/img_fundo.png'),
        fit: BoxFit.cover
        ),
    ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text(
        isFull ?'Acesso Bloqueado' : 'Acesso Liberado',
        style: TextStyle(
        color: isFull ? Color(0xFFFF0000): Color(0xFFFFFFFF),
        fontSize: 40,
        fontWeight: FontWeight.w500
        ),
        ),
      Text(
        count.toString(),
        style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 60,
        fontWeight: FontWeight.w500
        ),
        ),
        Row(
          mainAxisAlignment:  MainAxisAlignment.center,
          children:[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isEmpty ?  Color(0xAAAFAE24): Color(0xFFAFAE24),
                fixedSize: const Size(110,75),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                )
              ),
            onPressed: isEmpty ? (){}: decrement,
            child: const Text(
              'Sair',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF031C5F),
                fontWeight: FontWeight.w500,
              ),
            ),
             ),
            const SizedBox(width: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isFull ?  Color(0xAAAFAE24): Color(0xFFAFAE24),
                fixedSize: const Size(110,75),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                )
              ),
            onPressed: isFull ? (){}:incremented,
            child: const Text(
              'Entrar',
               style: TextStyle(
                fontSize: 20,
                color: Color(0xFF031C5F),
                fontWeight: FontWeight.w500,
              ),
            )
              ),
             
          ],
        ),
    ],
    ),
    ),
   );
  }
}