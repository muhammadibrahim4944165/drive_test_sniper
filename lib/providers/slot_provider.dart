// Riverpod provider for slot monitoring
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/slot_model.dart';
import '../services/dvsa_service.dart';

final dvsaServiceProvider = Provider<DvsaService>((ref) => DvsaService());

final slotListProvider = StateProvider<List<SlotModel>>((ref) => []);
