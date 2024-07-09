import 'package:dio/dio.dart';
import '../../domain/models/photo/photo.dart';

abstract class IPhotosApi {
  Future<List<Photo>> getAllPhotos();
  Future<Photo> getPhotoById(int id);
}

class PhotosApi implements IPhotosApi {
  final Dio _dio;

  const PhotosApi(this._dio);

  @override
  Future<List<Photo>> getAllPhotos() async {
    final response = await _dio.get('/photos');
    final List<dynamic> data = response.data;
    return data.map((json) => Photo.fromJson(json)).toList();
  }

  @override
  Future<Photo> getPhotoById(int id) async {
    final response = await _dio.get('/photos/$id');
    return Photo.fromJson(response.data);
  }
}
