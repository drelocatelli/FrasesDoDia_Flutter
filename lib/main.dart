import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
  
  class Home extends StatefulWidget {
    const Home({Key? key}) : super(key: key);
  
    @override
    _HomeState createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {
    var _frases = [
      "Sou apenas um pequeno planeta que se perde diariamente em todo o seu universo.",
      "Novas amizades serão sempre bem-vindas para darem cor e alegria ao meu dia a dia.",
      "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
      "Nem toda mudança importante acontece de repente e faz barulho, algumas são silenciosas e vão se fazendo no dia a dia.",
      "Quando vires um homem bom, tenta imitá-lo; quando vires um homem mau, examina-te a ti mesmo.",
      "Para ver muita coisa é preciso despregar os olhos de si mesmo.",
      "Não ser descoberto numa mentira é o mesmo que dizer a verdade.",
      "Não corrigir nossas falhas é o mesmo que cometer novos erros.",
      "É fazendo que se aprende a fazer aquilo que se deve aprender a fazer.",
      "O ignorante afirma, o sábio duvida, o sensato reflete.",
      "O sábio nunca diz tudo o que pensa, mas pensa sempre tudo o que diz.",
      "Exige muito de ti e espera pouco dos outros. Assim, evitarás muitos aborrecimentos.",
      "A imaginação é mais importante que o conhecimento.",
      "Não tentes ser bem-sucedido, tenta antes ser um homem de valor.",
      "O mundo não está ameaçado pelas pessoas más, e sim por aquelas que permitem a maldade.",
    ];
    var _fraseGerada = "Clique abaixo para gerar uma frase!";

    void _gerarFrase() {
      var numeroSorteado = Random().nextInt(_frases.length);
      setState(() {
        _fraseGerada = _frases[numeroSorteado];
      });
    }

    var dev = "Drelocatelli";

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.lightGreen,
      ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 10),
                  child: Text("by $dev", style: TextStyle(fontSize: 10, color: Colors.black38)),
                ),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  child: Text("Gerar frase"),
                  onPressed: _gerarFrase,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    textStyle: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
