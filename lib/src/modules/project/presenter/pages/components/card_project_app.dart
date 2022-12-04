import 'package:flutter/material.dart';

class CardProjectApp extends StatelessWidget {
  final String title;
  final int progress;
  final List<String> members;

  const CardProjectApp(
      {Key? key,
      required this.title,
      required this.progress,
      required this.members})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6),
      color: Colors.blue.shade700,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0))),
                const Icon(Icons.more_horiz_rounded, color: Colors.white)
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Progresso",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300)),
                Text("$progress%",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300)),
              ],
            ),
            const SizedBox(height: 6),
            Stack(
              children: [
                Container(
                  height: 6,
                  width: _componentWidth(context),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(2)),
                ),
                Container(
                  height: 6,
                  width: (_componentWidth(context) / 100) * progress,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2)),
                ),
              ],
            ),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }

  double _componentWidth(BuildContext context) =>
      (((MediaQuery.of(context).size.width / 100) * 75) - 14);
}
