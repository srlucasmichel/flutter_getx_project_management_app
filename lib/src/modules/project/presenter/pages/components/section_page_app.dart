import 'package:flutter/material.dart';

class SectionPageApp extends StatelessWidget {
  final String title;
  final String description;
  final String titleButton;
  final VoidCallback onButtonClick;

  const SectionPageApp(
      {Key? key,
      required this.title,
      required this.description,
      required this.titleButton,
      required this.onButtonClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 19.0)),
              const SizedBox(height: 2),
              Text(description,
                  style:
                      const TextStyle(color: Colors.black54, fontSize: 13.0, fontWeight: FontWeight.w300)),
            ],
          ),
        ),
        Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
          onTap: onButtonClick,
          child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                    color: const Color(0XFFE0EBFA),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const Icon(Icons.add_rounded, color: Color(0XFF4E6E80), size: 22.0),
                    const SizedBox(width: 4),
                    Text(titleButton,
                        style: const TextStyle(
                            color: Color(0XFF4E6E80), fontSize: 15.0)),
                  ],
                ),
          ),
        ),
              ],
            ))
      ],
    );
  }
}
