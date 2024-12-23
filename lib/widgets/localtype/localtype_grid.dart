import 'package:flutter/material.dart';
import 'package:homework_2/widgets/localtype/localtype_card.dart';

import '../../models/localtype.dart';



class LocalTypeGrid extends StatefulWidget {
  final List<LocalType> localtypes;
  const LocalTypeGrid({super.key, required this.localtypes});

  @override
  State<LocalTypeGrid> createState() => _LocalTypeGridState();
}

class _LocalTypeGridState extends State<LocalTypeGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(padding: const EdgeInsets.all(4),
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        semanticChildCount: 250,
        childAspectRatio: 200/ 250,
        shrinkWrap: true,
        children: widget.localtypes.map((localtype) => LocalTypeCard(
          id: localtype.id, type: localtype.type, image: localtype.image,
        )).toList()
    );
  }
}