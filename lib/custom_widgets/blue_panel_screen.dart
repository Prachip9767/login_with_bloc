import 'package:flutter/material.dart';

class BluePanelScreen extends StatelessWidget {
  const BluePanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0575E6),
            Color(0xFF02298A),
            Color(0xFF021B79),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'GoFinance',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // const SizedBox(height: 16),
                Text(
                  'The most popular peer to peer lending at SEA',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                const SizedBox(height: 23),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF0575E6),
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text('Read More',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
