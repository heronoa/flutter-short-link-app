import '../../models/link.dart';

class LinkState {
  final List<Link> links;

  LinkState(this.links);

  LinkState copyWith(List<Link> newLinks) {
    return LinkState(newLinks);
  }
}
