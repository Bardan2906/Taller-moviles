import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _volume = 5;
  final int _min = 0;
  final int _max = 10;

  void _increase() {
    setState(() {
      if (_volume < _max) _volume++;
    });
  }

  void _decrease() {
    setState(() {
      if (_volume > _min) _volume--;
    });
  }

  IconData _volumeIcon() {
    if (_volume == 0) return Icons.volume_off;
    if (_volume <= 3) return Icons.volume_mute;
    if (_volume <= 7) return Icons.volume_down;
    return Icons.volume_up;
  }

  Color _volumeColor() {
    if (_volume == 0) return Colors.grey;
    if (_volume <= 3) return Colors.deepPurple;
    if (_volume <= 7) return Colors.purpleAccent;
    return Colors.pinkAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.deepPurple, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Volumen',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Icon(_volumeIcon(), size: 80, color: _volumeColor()),
          const SizedBox(height: 8),
          Text(
            '$_volume',
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: _volume / _max,
              minHeight: 12,
              color: _volumeColor(),
              backgroundColor: Colors.grey.shade300,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decrease,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: _increase,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}