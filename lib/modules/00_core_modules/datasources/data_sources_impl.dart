import 'package:supabase_flutter/supabase_flutter.dart';
import 'idata_sources.dart';

class DataSourcesImpl<T> implements IDatasource<T> {
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
  Future<bool> delete(String path, int id) async {
    bool result = false;
    try {
      await client.from(path).delete().eq('id', id);
      result = true;
    } catch (e) {
      throw Exception('Failed to fetch $path $e');
    }
    return result;
  }

  @override
  Future<void> update(String path, data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
