import 'package:flutter/material.dart';
import '../../models/localtype.dart';

class LocalTypeCard extends StatelessWidget {
  final int id;
  final String type;
  final String image;

  const LocalTypeCard({
    super.key,
    required this.id,
    required this.type,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        splashColor: Colors.blue[50],
        onTap: () => {
          Navigator.pushNamed(context, '/details',
              arguments: LocalType(id: id, type: type, image: image))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          child: Stack(
            children: [
              Opacity(
                opacity: 0.3,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  type,
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Center the text
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
