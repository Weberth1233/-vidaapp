import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

SupabaseClient createSupabaseClient() {
  String apiKey = dotenv.env['API_KEY'] ?? '';
  String apiUrl = dotenv.env['API_URL'] ?? '';
  return SupabaseClient(apiUrl, apiKey);
}
