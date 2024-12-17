// controllers/post_controller.dart
import 'package:get/get.dart';
import 'package:unguided_pertemuan14/services/api_service.dart';

class PostController extends GetxController {
  var posts = <dynamic>[].obs;
  var isLoading = false.obs;
  final ApiService _apiService = ApiService();

  // Fetch posts
  Future<void> fetchPosts() async {
    isLoading.value = true;
    try {
      await _apiService.fetchPosts();
      posts.assignAll(_apiService.posts);
      Get.snackbar('Success', 'Posts berhasil diambil!',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Gagal mengambil posts',
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }
  }

  // Create post
  Future<void> createPost() async {
    try {
      await _apiService.createPost();
      posts.add({
        'title': 'Flutter Post',
        'body': 'Ini contoh POST.',
        'id': posts.length + 1,
      });
      Get.snackbar('Success', 'Post berhasil ditambahkan!',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Gagal menambahkan post',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Update post
  Future<void> updatePost() async {
    try {
      await _apiService.updatePost();
      var post = posts.firstWhere((post) => post['id'] == 1);
      post['title'] = 'Updated Title';
      post['body'] = 'Updated Body';
      posts.refresh();
      Get.snackbar('Success', 'Post berhasil diperbarui!',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Gagal memperbarui post',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Delete post
  Future<void> deletePost() async {
    try {
      await _apiService.deletePost();
      posts.removeWhere((post) => post['id'] == 1);
      Get.snackbar('Success', 'Post berhasil dihapus!',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Gagal menghapus post',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
