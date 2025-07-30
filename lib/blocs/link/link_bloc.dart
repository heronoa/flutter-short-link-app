import "package:flutter_bloc/flutter_bloc.dart";
import "../../models/link.dart";
import "link_event.dart";
import "link_state.dart";

class LinkBloc extends Bloc<LinkEvent, LinkState> {
  LinkBloc() : super(LinkState([])) {
    on<AddLink>((event, emit) {
      final updated = List<Link>.from(state.links)..add(event.link);
      emit(LinkState(updated));
    });

    on<RemoveLink>((event, emit) {
      final updated = List<Link>.from(state.links)..remove(event.link);
      emit(LinkState(updated));
    });
    on<ClearLink>((event, emit) {
      emit(LinkState([]));
    });
  }
}
