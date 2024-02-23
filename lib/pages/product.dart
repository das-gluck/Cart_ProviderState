import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/const.dart';
import 'package:provider_state/provider/cart_provider.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context){
    return AppBar(
      title: const Text('Products'),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context, "/CartPage");
        }, icon: const Icon(Icons.shopping_cart)),
      ],
    );
  }

  Widget _buildUI(BuildContext context){
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return ListView.builder(
        itemCount: PRODUCTS.length,
        itemBuilder: (context , index) {
          Products products = PRODUCTS[index];
          return ListTile(
            leading: Container(
              height: 25,
              width: 25,
              color: products.color,
            ),
            title: Text(
              products.name
            ),
            trailing: Checkbox(
              value: cartProvider.items.contains(products),
              onChanged: (value) {
                if(value == true) {
                  cartProvider.add(products);
                } else{
                  cartProvider.remove(products);
                }
              },
            ),
          );
        }
    );
  }

}
