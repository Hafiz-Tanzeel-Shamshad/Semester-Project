int getBestMove(List<String> board, String aiPlayer, String humanPlayer) {
  int bestScore = -1000;
  int move = -1;

  for (int i = 0; i < board.length; i++) {
    if (board[i] == "") {
      board[i] = aiPlayer;
      int score = minimax(board, false, aiPlayer, humanPlayer);
      board[i] = "";
      if (score > bestScore) {
        bestScore = score;
        move = i;
      }
    }
  }
  return move;
}

int minimax(List<String> board, bool isMaximizing, String aiPlayer, String humanPlayer) {
  String winner = evaluateWinner(board);
  if (winner == aiPlayer) return 10;
  if (winner == humanPlayer) return -10;
  if (!board.contains("")) return 0;

  int bestScore = isMaximizing ? -1000 : 1000;

  for (int i = 0; i < board.length; i++) {
    if (board[i] == "") {
      board[i] = isMaximizing ? aiPlayer : humanPlayer;
      int score = minimax(board, !isMaximizing, aiPlayer, humanPlayer);
      board[i] = "";
      bestScore = isMaximizing
          ? (score > bestScore ? score : bestScore)
          : (score < bestScore ? score : bestScore);
    }
  }
  return bestScore;
}

String evaluateWinner(List<String> board) {
  const winPatterns = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
    [0, 4, 8], [2, 4, 6], // Diagonals
  ];

  for (var pattern in winPatterns) {
    if (board[pattern[0]] != "" &&
        board[pattern[0]] == board[pattern[1]] &&
        board[pattern[0]] == board[pattern[2]]) {
      return board[pattern[0]];
    }
  }
  return "";
}
