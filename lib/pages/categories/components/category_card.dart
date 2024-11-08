import 'package:exactapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String name;
  final String count;
  const CategoryCard({super.key, required this.count, required this.name});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("dislay job details");
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints:
              BoxConstraints(maxHeight: SizeConfig.heightSize(context, 0.1)),
          decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.08),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(widget.name,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey))),
                Text(widget.count,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 9, 25, 66)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
