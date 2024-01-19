import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';

import '../../domain/core/types.dart';
import '../../domain/dashboard/i_dashboard_data_source.dart';
import '../../domain/dashboard/user_chatbot.dart';

@Injectable(as: IDashBoardDataSource)
class DashboardDataSourceImpl implements IDashBoardDataSource {
  DashboardDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> createNewIndexFromCsv(Uint8List fileBytes) async {
    l.i('*-' * 100);
    l.i('createNewIndexFromCsv: -> $fileBytes');
    try {
      // Realizar la solicitud POST con Dio
      final response = await _dio.post(
        '/data-manager/v1/upload-file/test/',
        data: FormData.fromMap({
          'file': MultipartFile.fromBytes(
            fileBytes,
            filename:
                'nombre_del_archivo.csv', // Puedes personalizar el nombre del archivo aquí
          ),
        }),
      );

      // Manejar la respuesta
      print('Respuesta del servidor: ${response.data}');
    } catch (e) {
      // Manejar errores
      print('Error al subir el archivo: $e');
    }
    l.i('*-' * 100);
    // final formData = FormData.fromMap({
    //   'name': 'dio',
    //   'date': DateTime.now().toIso8601String(),
    //   'file': await MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
    // });
    // final response = await dio.post('/info', data: formData);
  }

  @override
  Future<List<UserChatBot>> getUserChatBots() async {
    const path = "/data-manager/v1/upload-file/csv/";
    final response = await _dio.get(path);
    final data = response.data as List<dynamic>;
    final results =
        data.map((chat) => UserChatBot.fromJson(chat as Json)).toList();
    if (results.isNotEmpty) {
      return results;
    }
    throw Exception('No fetched user chat bots.');
  }
}
