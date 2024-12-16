import 'package:get/get.dart';

class NoteController extends GetxController {
  var notes = <Map<String, String>>[].obs;

  // Tambah catatan
  void addNote(String title, String description) {
    notes.add({'title': title, 'description': description});
  }

  // Hapus catatan
  void deleteNote(int index) {
    notes.removeAt(index);
  }
}
