import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vidaapp/modules/00_core_modules/infra/base_model.dart';
import 'idata_sources.dart';

class DataSourcesImpl<T extends BaseModel> implements IDatasource<T> {
  final SupabaseClient client;

  DataSourcesImpl({required this.client});

  @override
  Future<List<T>> get(
      String path, T Function(Map<String, dynamic> map) fromMap) async {
    try {
      final response = await client.from(path).select() as List<dynamic>;

      return response.map((json) => fromMap(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch $path $e');
    }
  }

  @override
  Future<void> add(String path, data) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String path) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> update(String path, data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
