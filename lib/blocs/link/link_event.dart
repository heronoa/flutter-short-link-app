import "../../models/link.dart";

abstract class LinkEvent {}

class AddLink extends LinkEvent {
  final Link link;
  AddLink(this.link);
}

class RemoveLink extends LinkEvent {
  final Link link;
  RemoveLink(this.link);
}

class ClearLink extends LinkEvent {}
