import 'package:flutter/material.dart';
import 'package:homework_2/main.dart';
import 'package:homework_2/providers/local_provider.dart';
import 'package:provider/provider.dart';
import '../models/localtype.dart';
import '../models/types_model.dart';
import '../widgets/details/detail_back_button.dart';
import '../widgets/details/detail_data.dart';
import '../widgets/details/detail_title.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  LType type = LType(locals: []);
  String t = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments = ModalRoute.of(context)?.settings.arguments as LocalType;
    t = arguments.type.toString();
    print("type: $t");
    if (t.isNotEmpty) {
      getLocals(t);
    }
  }

  void getLocals(String t) async {

     type = LType(
          type: t,
          locals: context.watch<LocalProvider>().local.where((l)=> l.type == t).toList(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as LocalType;
    final String text = arguments.type;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 58, 144, 1.0),
        title:  Text(text, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: Colors.grey, size: 24))],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            DetailData(id: arguments.id, type: type),
        ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
