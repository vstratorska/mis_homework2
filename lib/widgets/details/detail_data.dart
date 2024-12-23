import 'package:flutter/material.dart';
import 'package:homework_2/widgets/local_item.dart';
import 'package:provider/provider.dart';

import '../../models/types_model.dart';
import '../../providers/local_provider.dart';
import '../../services/local_service.dart';


class DetailData extends StatelessWidget {
  final int id;
  final LType type;
  late List<Local> local = [];

  DetailData({super.key, required this.id, required this.type});


  @override
  Widget build(BuildContext context) {

    final locals = type.locals;
      return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.white,),
          child: Column(
            children:   locals.map((local)
            {
              return LocalItem(
                local: local,
              );
            }).toList(),
          ));
    }
  }


