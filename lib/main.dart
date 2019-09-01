import 'dart:math';
import 'package:flutter/material.dart';

void main() {
	runApp(
		MaterialApp(
			home: Home(),
		)
	);
}

class Home extends StatefulWidget {
	@override
	_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
	var _frases = [
		"Levanta, sacode a poeira, dá a volta por cima.",
		"Nem todos os dias são bons, mas há algo bom em cada dia.",
		"Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo.",
		"Toda manhã você tem duas escolhas: continuar dormindo com seus sonhos ou acordar e persegui-los!",
		"A cada novo dia, a cada momento, temos a nossa disposição a maravilhosa possibilidade do encontro, que traz em si infinitas oportunidades. Precisamos apenas estar atentos.",
		"O otimismo é a fé em ação. Nada se pode levar a efeito sem otimismo.",
		"A sua irritação não solucionará problema algum. O seu mau humor não modifica a vida. Não estrague o seu dia.",
		"Vamos inventar o amanhã no lugar de se preocupar com o que aconteceu ontem.",
		"As pessoas mais felizes não têm as melhores coisas. Elas sabem fazer o melhor das oportunidades que aparecem em seus caminhos.",
		"Ninguém, além de você, está no controle de sua felicidade. Portanto, ajuste as velas e corrija e rumo.",
	];
	var _fraseGerada = "Clique abaixo para gerar uma frase";

	void _gerarFrases(){
		var numeroSorteado = Random().nextInt(_frases.length);
		
		setState(() {
			_fraseGerada = _frases[numeroSorteado];
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Frase do dia"),
				backgroundColor: Colors.green,
			),
			body: Center(
				child: Container(
				//width: double.infinity, // completa de acordo com a tela
				padding: EdgeInsets.all(16),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget>[
						Image.asset("images/logo.png"),
						Text(
							_fraseGerada,
							textAlign: TextAlign.justify,
							style: TextStyle(
								fontSize: 17,
								color: Colors.black,
								fontStyle: FontStyle.italic,
							),							
						),
						RaisedButton(
							child: Text(
								"Nova frase",
								style: TextStyle(
									fontSize: 25,
									fontWeight: FontWeight.bold,
									color: Colors.white,
								),
							),
							onPressed: _gerarFrases,
							color: Colors.green,
						)
					],
				),
			),
			),
		);
	}
}