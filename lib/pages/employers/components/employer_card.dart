import 'package:exactapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class EmployerCard extends StatelessWidget {
  const EmployerCard({super.key, required this.name, required this.url});
  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.4, color: const Color.fromARGB(255, 9, 25, 66))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                url,
                height: SizeConfig.heightSize(context, 0.13),
                width: SizeConfig.widthSize(context, 0.34),
                fit: BoxFit.fill,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 8, bottom: 4),
            child: Text(name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 9, 25, 66))),
          )
        ],
      ),
    );
  }
}
