class OrderModel {
  String item = 'Empty';
  int quantity = 0;

  String? validateItemRequired(String item) {
    return item.isEmpty ? 'Item Required' : null;
  }

  String? validateItemCount(String count) {
    int? _valueAsInteger = count.isEmpty ? 0 : int.tryParse(count);
    return _valueAsInteger == 0 ? 'At least one Item is required' : null;
  }
}
