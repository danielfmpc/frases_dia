import 'package:flutter/material.dart';

void main() {
  	runApp(
		MaterialApp(
		title: "Fases do dia",
		home: HomeStateful(),
		// home: Container(color: Colors.white),
		// 		home: Container(
		// 			// color: Colors.white,
		// 			margin: EdgeInsets.all(0), // Espaçamento externo
		// 			padding: EdgeInsets.fromLTRB(0, 0, 0, 0), // Espaçamento interno
		// 			decoration: BoxDecoration(
		// 				border: Border.all(width: 1, color: Colors.white),
		// 			),
		// 			child: Column(
		// 				mainAxisAlignment: MainAxisAlignment.start, // serve para definir a posição na tela
		// 				crossAxisAlignment: CrossAxisAlignment.start, // serve para definir a posição na tela cruzando o eixo principal
		// 				children: <Widget>[
		// 					// Padding(
		// 					// 	padding: EdgeInsets.all(30), // Definindo diretamente o padding ao texto
		// 					// 	child: Text("t2"),
		// 					// ),
		// 					/*child: Image.asset(
		// 						"images/mesa.jpg",
		// 						fit: BoxFit.contain, //define como vai mostrar a imagem
		// 					),*/
		// 					FlatButton(
		// 						onPressed: (){
		// 							print("Pressionado");
		// 						},
		// 						child:Text(
		// 							"Clique aqui",
		// 							textAlign: TextAlign.justify,
		// 							style: TextStyle(
		// 								fontSize: 35,
		// 								color: Colors.black,
		// 								fontStyle: FontStyle.normal,
		// 								fontWeight: FontWeight.bold,
		// 								wordSpacing: 0, // Serve para ajustar o espaço entre as palavras
		// 								decoration: TextDecoration.none, // serve para tirar o sublinhado
		// 								decorationColor: Colors.black, // Serve para dar cor ao sublinhado
		// 								decorationStyle: TextDecorationStyle.solid, // Serve para definir a quantidade de linha do sublinhado
		// 								letterSpacing: 0 // A quantidade de espaço a ser adicionado entre cada letra. Um valor negativo pode ser usado para aproximar as letras.
		// 							),
		// 						),
		// 					),
		// 				],
		// 			),
		//   ),
		),
  	);
}

// Stateless não pode ser alterado
// Stateful pode ser alterado

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
	var _texto = "Daniel Fernando";
  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("instagram"),
				backgroundColor: Colors.black,
			),
			body: Container(
				child: Column(
					children: <Widget>[
						RaisedButton(
							onPressed: (){
								setState((){
									_texto = "oi";
								});
							},							
						),
						Text("Nome: $_texto"),
					],
				),
			),
			bottomNavigationBar: BottomAppBar(
				color: Colors.black,
				child: Padding(
					padding: EdgeInsets.all(16),
					child: Row(
						children: <Widget>[
							Text("Texto 1"),
							Text("Texto 2"),
						],
					),
				),
			),
		);
	}
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Scaffold(
		appBar: AppBar(
			title: Text("instagram"),
			backgroundColor: Colors.black,
		),
		body: Padding(
			padding: EdgeInsets.all(16),
			child: Text("Conteudo main"),
		),
		bottomNavigationBar: BottomAppBar(
			color: Colors.black,
			child: Padding(
				padding: EdgeInsets.all(16),
				child: Row(
					children: <Widget>[
						Text("Texto 1"),
						Text("Texto 2"),
					],
				),
			),
		),
	);
  }
}