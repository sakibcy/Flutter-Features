import 'package:flutter/material.dart';
import 'package:flutter_practice/models/order.dart';

class TabHome4thPage extends StatefulWidget {
  const TabHome4thPage({Key? key}) : super(key: key);

  @override
  State<TabHome4thPage> createState() => _TabHome4thPageState();
}

class _TabHome4thPageState extends State<TabHome4thPage> {
  final OrderModel _order = OrderModel();

  final _formStateKey = GlobalKey<FormState>();

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      setState(() {
        _order.item;
        _order.quantity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(crossAxisCount: 1, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                      key: _formStateKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) =>
                                _order.validateItemRequired(value!),
                            onSaved: (value) => _order.item = value!,
                            decoration: const InputDecoration(
                              hintText: 'Enter Item',
                              labelText: 'Item',
                            ),
                            onChanged: (value) {
                              _order.item = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            validator: (value) =>
                                _order.validateItemCount(value!),
                            onSaved: (value) =>
                                _order.quantity = int.tryParse(value!)!,
                            decoration: const InputDecoration(
                                hintText: 'Enter quantity',
                                labelText: 'Quantity'),
                            onChanged: (value) {
                              _order.quantity = int.tryParse(value)!;
                              setState(() {});
                            },
                          ),
                          const SizedBox(height: 20.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () => _submitOrder(),
                                child: const Text('Save')),
                          )
                        ],
                      )),
                ),
                const SizedBox(height: 30.0),
                Text('Item: ${_order.item}'),
                Text('Quantity: ${_order.quantity}'),
              ],
            ),
          ]),
        )
      ],
    ));
  }
}
