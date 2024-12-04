import 'dart:ui';

import 'package:flutter/material.dart';

class GameBoard extends StatelessWidget {
  final List<String> board;
  final Function(int)? onCellTap;
  final List<int>? winningPattern; // New parameter to highlight winning cells

  const GameBoard({required this.board, this.onCellTap, this.winningPattern});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Keep this for a 3x3 grid
          crossAxisSpacing: 5, // Adjust horizontal spacing
          mainAxisSpacing: 5, // Adjust vertical spacing
        ),
        itemBuilder: (context, index) {
          bool isWinningCell = winningPattern != null && winningPattern!.contains(index);

          return GestureDetector(
            onTap: onCellTap != null ? () => onCellTap!(index) : null,
            child: Container(
              decoration: BoxDecoration(
                color: isWinningCell ? Colors.yellow : Colors.white, // Highlight winning cell
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  board[index],
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: board[index] == "X" ? Colors.blue : Colors.red,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
