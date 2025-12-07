import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget seatBox(String label, bool selected) {
    return Container(
      width: 70,
      height: 60,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFB8FF3F) : const Color(0xFF2A2A2C),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: selected ? Colors.black : Colors.white70,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0E0F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "TICKET",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1C),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Rrw Hospital", style: TextStyle(color: Colors.white70)),
                    Text("Kravchenko Street", style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("RRW",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB8FF3F),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.directions_bus, size: 16),
                        SizedBox(width: 4),
                        Text("1h 23m"),
                      ],
                    ),
                  ),
                  const Text("KRS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold)),
                ],
              ),

              const SizedBox(height: 10),

              /// DATE
              const Text(
                "22 March, 2023",
                style: TextStyle(color: Colors.white54),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: SingleChildScrollView(
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          seatBox("A0", true),
                          seatBox("A1", false),
                          seatBox("A2", false),
                          seatBox("A3", false),
                        ],
                      ),
                      TableRow(
                        children: [
                          seatBox("A4", false),
                          seatBox("A5", false),
                          seatBox("A6", false),
                          seatBox("A7", false),
                        ],
                      ),
                      TableRow(
                        children: [
                          seatBox("A8", false),
                          seatBox("A9", false),
                          seatBox("A10", false),
                          seatBox("A11", false),
                        ],
                      ),
                      TableRow(
                        children: [
                          seatBox("A12", false),
                          seatBox("A13", false),
                          seatBox("A14", false),
                          seatBox("A15", true),
                        ],
                      ),
                      TableRow(
                        children: [
                          seatBox("A16", false),
                          seatBox("A17", false),
                          seatBox("A18", false),
                          seatBox("A19", false),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB8FF3F),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Buy ticket",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
