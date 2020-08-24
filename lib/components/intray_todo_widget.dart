import 'package:flutter/material.dart';
import 'package:tasko/styles/colours.dart';
import 'package:tasko/styles/text_styles.dart';

class IntrayToDo extends StatelessWidget {
  const IntrayToDo({Key key, this.title}) : super(key: key);
	final String title;

	@override
	Widget build(BuildContext context) {

		return Container(
			height: 100,
			margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
			padding: EdgeInsets.all(10.0),
			decoration: BoxDecoration(
				borderRadius: BorderRadius.all(Radius.circular(10)),
				color: Colour.red,
				boxShadow: [
					BoxShadow(
						color: Colors.black.withOpacity(0.5),
						blurRadius: 10.0
					)
				]
			),
			child: Row(
				children: [
					Radio(value: null, groupValue: null, onChanged: null),
					Column(
						children: [
							Text(title, style: TextStyles.intrayTitle,),
						],
					)
				],
			),
		);
	}
}