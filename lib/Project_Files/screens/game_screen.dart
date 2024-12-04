import 'package:flutter/material.dart';
import '../widgets/game_board.dart';
import '../models/ai_logic.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<String> board = List.generate(9, (index) => "");
  bool isPlayerTurn = true;
  String winner = "";
  bool isGameOver = false;
  List<int>? winningPattern;

  int playerScore = 0;
  int aiScore = 0;

  void resetGame() {
    setState(() {
      board = List.generate(9, (index) => "");
      isPlayerTurn = true;
      winner = "";
      isGameOver = false;
      winningPattern = null;
    });
  }

  void makeMove(int index) {
    if (board[index] == "" && !isGameOver) {
      setState(() {
        board[index] = isPlayerTurn ? "X" : "O";
        if (checkWinner() || !board.contains("")) {
          isGameOver = true;
          winner = checkWinner() ? (isPlayerTurn ? "Player" : "AI") : "Draw";
          if (winner == "Player") {
            playerScore++;
          } else if (winner == "AI") {
            aiScore++;
          }
        } else {
          isPlayerTurn = !isPlayerTurn;
          if (!isPlayerTurn) performAIMove();
        }
      });
    }
  }

  void performAIMove() async {
    await Future.delayed(Duration(milliseconds: 500));
    int aiMove = getBestMove(board, "O", "X");
    if (aiMove != -1) {
      setState(() {
        board[aiMove] = "O";
        isPlayerTurn = true;
        if (checkWinner() || !board.contains("")) {
          isGameOver = true;
          winner = checkWinner() ? "AI" : "Draw";
          if (winner == "AI") {
            aiScore++;
          }
        }
      });
    }
  }

  bool checkWinner() {
    const winPatterns = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6],
    ];

    for (var pattern in winPatterns) {
      if (board[pattern[0]] != "" &&
          board[pattern[0]] == board[pattern[1]] &&
          board[pattern[0]] == board[pattern[2]]) {
        setState(() {
          winningPattern = pattern;
        });
        return true;
      }
    }
    return false;
  }

  Future<void> confirmResetGame() async {
    final shouldReset = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Confirm Reset"),
          content: Text("Are you sure you want to restart the game?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text("No"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text("Yes"),
            ),
          ],
        );
      },
    );

    if (shouldReset == true) {
      resetGame();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                title: Text(
                  "T ic Tac Toe",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              SizedBox(height: 20),
              Text(
                "Player Score: $playerScore",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "AI Score: $aiScore",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GameBoard(
                    board: board,
                    onCellTap: isPlayerTurn ? makeMove : null,
                    winningPattern: winningPattern,
                  ),
                ),
              ),
              SizedBox(height: 10),
              if (isGameOver)
                Text(
                  winner == "Draw" ? "It's a Draw!" : "$winner Wins!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(color: Colors.black45, offset: Offset(2, 2), blurRadius: 4),
                    ],
                  ),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: confirmResetGame,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                child: Text(
                  "Restart Game",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}