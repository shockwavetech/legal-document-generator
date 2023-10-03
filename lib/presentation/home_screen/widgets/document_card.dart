import 'package:flutter/material.dart';
import 'package:legal_document_generator/components/constants/app_colors.dart';

class DocumentCard extends StatelessWidget {
  final Color color;
  final String icon;
  final String title;
  const DocumentCard(
      {super.key,
      required this.color,
      required this.icon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      shadowColor: AppColor.secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: AppColor.backgroundColor2,
      surfaceTintColor: AppColor.backgroundColor,
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: color),
          child: Image.asset(
            icon,
            fit: BoxFit.fitHeight,
            color: AppColor.white,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: AppColor.TextColor,
              fontFamily: 'Onest', fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }
}
