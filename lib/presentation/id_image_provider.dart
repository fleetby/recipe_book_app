import 'package:cached_network_image/cached_network_image.dart';
import 'package:recipe_book_app/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class IdImageProvider extends CachedNetworkImageProvider {
  IdImageProvider(String id)
      : super(get<SupabaseClient>().storage.from('images').getPublicUrl(id));
}
