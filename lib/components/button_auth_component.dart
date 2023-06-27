import 'package:flutter/material.dart';

class ButtonAuthComp extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  const ButtonAuthComp({super.key,
  required this.title,
  required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: const Color.fromARGB(255, 86, 105, 240)),
          child: IntrinsicHeight(
            child: Stack(
              children: [
                Align(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    title,
                    style:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 61, 86, 240),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
