import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final SupabaseService _instance = SupabaseService._internal();
  factory SupabaseService() => _instance;
  SupabaseService._internal();

  static SupabaseService get instance => _instance;

  late final SupabaseClient _client;

  SupabaseClient get client => _client;

  Future<void> initialize() async {
    const supabaseUrl = String.fromEnvironment(
      'SUPABASE_URL',
      defaultValue: 'your_supabase_url_here',
    );

    const supabaseAnonKey = String.fromEnvironment(
      'SUPABASE_ANON_KEY',
      defaultValue: 'your_supabase_anon_key_here',
    );

    if (supabaseUrl == 'your_supabase_url_here' ||
        supabaseAnonKey == 'your_supabase_anon_key_here') {
      throw Exception(
        'Supabase credentials not configured. Please set SUPABASE_URL and SUPABASE_ANON_KEY environment variables.',
      );
    }

    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
      debug: false,
    );

    _client = Supabase.instance.client;
  }

  bool get isInitialized {
    try {
      return Supabase.instance.client != null;
    } catch (e) {
      return false;
    }
  }

  User? get currentUser => _client.auth.currentUser;

  bool get isAuthenticated => currentUser != null;
}
