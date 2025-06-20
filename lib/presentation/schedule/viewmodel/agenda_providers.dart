import 'package:converter_screens_erp/presentation/schedule/viewmodel/agenda_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final agendaViewModelProvider = ChangeNotifierProvider((ref) {
  return AgendaViewModel();
});

final agendaIndexProvider = StateProvider<int>((ref) => 4);