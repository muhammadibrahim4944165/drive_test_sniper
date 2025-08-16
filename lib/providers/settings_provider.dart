// Riverpod provider for app settings
import 'package:flutter_riverpod/flutter_riverpod.dart';

final darkModeProvider = StateProvider<bool>((ref) => false);
final notificationPrefProvider = StateProvider<bool>((ref) => true);
