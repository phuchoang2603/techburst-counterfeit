import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://imsukqvinrtpckpajzpu.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imltc3VrcXZpbnJ0cGNrcGFqenB1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAzOTE5ODIsImV4cCI6MjAwNTk2Nzk4Mn0.neQLfo0E3Ny5VrJKn3fWX7gKKH0PzQAcTsFDwaIWzZo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
