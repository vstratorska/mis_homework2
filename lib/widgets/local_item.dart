import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/types_model.dart';
import '../providers/local_provider.dart';

class LocalItem extends StatefulWidget {
  const LocalItem({super.key, required this.local});
  final Local local;

  @override
  State<LocalItem> createState() => _LocalItemState();
}

class _LocalItemState extends State<LocalItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.local.name,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 58, 144, 1.0),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.network(
                    widget.local.image,
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Address: ",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 58, 144, 1.0),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  widget.local.address,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 58, 144, 1.0),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Distance (in meters): ",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 58, 144, 1.0),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  widget.local.distance.toString(),
                  style: TextStyle(
                    color: Color.fromRGBO(0, 58, 144, 1.0),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Working Hours: ",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 58, 144, 1.0),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  widget.local.working_hours,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 58, 144, 1.0),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () {
                      context.read<LocalProvider>().toggleFavorite(widget.local);
                    },
                    color: widget.local.isFavorite ? Colors.red : Colors.blueGrey,
                    icon: const Icon(Icons.favorite),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
