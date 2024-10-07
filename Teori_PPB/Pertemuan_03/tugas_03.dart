// Matrix Transpose

void main() {
  int A = 3, B = 2;
  
  List<List<int>> matrix = List.generate(A, (i) => List.generate(B, (j) => i * B + j + 1));
  
  print("Matriks A x B:");
  matrix.forEach(print);
  
  print("\nMatriks Transpose:");
  List.generate(B, (i) => List.generate(A, (j) => matrix[j][i])).forEach(print);
}

