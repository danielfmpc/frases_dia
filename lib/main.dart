
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
	runApp(
		MaterialApp(
			title: "Fases do dia",
			// home: Container(color: Colors.white),
			home: Container(
				// color: Colors.white,
				margin: EdgeInsets.all(0), // Espaçamento externo
				padding: EdgeInsets.fromLTRB(0, 0, 0, 0), // Espaçamento interno
				decoration: BoxDecoration(
					border: Border.all(width: 1, color: Colors.white),

				),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.start, // serve para definir a posição na tela
					crossAxisAlignment: CrossAxisAlignment.start, // serve para definir a posição na tela cruzando o eixo principal
					children: <Widget>[
						// Padding(
						// 	padding: EdgeInsets.all(30), // Definindo diretamente o padding ao texto
						// 	child: Text("t2"),
						// ), 
						FlatButton(
							onPressed: (){
								print("Pressionado");
							},
							child:Text(
								"Clique aqui",
								textAlign: TextAlign.justify,
								style: TextStyle(
									fontSize: 35,
									color: Colors.black,
									fontStyle: FontStyle.normal,
									fontWeight: FontWeight.bold,
									wordSpacing: 0, // Serve para ajustar o espaço entre as palavras
									decoration: TextDecoration.none, // serve para tirar o sublinhado
									decorationColor: Colors.black, // Serve para dar cor ao sublinhado
									decorationStyle: TextDecorationStyle.solid, // Serve para definir a quantidade de linha do sublinhado
									letterSpacing: 0 // A quantidade de espaço a ser adicionado entre cada letra. Um valor negativo pode ser usado para aproximar as letras.
								),
							),	
						),
					],
				),
			),
		),
	);
}