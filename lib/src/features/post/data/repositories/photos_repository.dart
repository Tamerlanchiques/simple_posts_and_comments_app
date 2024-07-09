import 'package:simple_posts_and_comments_app/src/features/post/domain/models/photo/photo.dart';
import '../api/photos_api.dart';

abstract class IPhotosRepository {
  Future<List<Photo>> getAllPhotos();
  Future<Photo> getPhotoByPostId(int id);
}

class PhotosRepositoryImpl implements IPhotosRepository {
  final IPhotosApi _photosApi;

  const PhotosRepositoryImpl(this._photosApi);

  @override
  Future<List<Photo>> getAllPhotos() async {
    try {
      return await _photosApi.getAllPhotos();
    } catch (e) {
      throw Exception('Failed to load photos: $e');
    }
  }

  @override
  Future<Photo> getPhotoByPostId(int id) async {
    try {
      return await _photosApi.getPhotoById(id);
    } catch (e) {
      throw Exception('Failed to load photo: $e');
    }
  }
}
