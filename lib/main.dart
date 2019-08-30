
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
	runApp(
		MaterialApp(
			title: "Fases do dia",
			// home: Container(color: Colors.white),
			home: Container(
				color: Colors.white,
				child: Column(
					children: <Widget>[
						Text(
							"Osso",
							style: TextStyle(
								fontSize: 35,
								color: Colors.black,
								fontStyle: FontStyle.normal,
								fontWeight: FontWeight.bold,
							),
						),
					],
				),
			),
		),
	);
}