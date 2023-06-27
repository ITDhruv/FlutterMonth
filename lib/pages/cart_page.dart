import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
// import 'package:flutter_catalog/utils/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart Items".text.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          const Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl4
              .color(context.theme.hintColor)
              .make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: "Buying not supported yet".text.make()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.hintColor),
                  ),
                  child: "Buy".text.color(context.theme.canvasColor).make())
              .w24(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
            onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
