abstract class ItemEvent {
  const ItemEvent();
}

class GetItems extends ItemEvent {
  const GetItems();
}

class LoadMoreItems extends ItemEvent {}