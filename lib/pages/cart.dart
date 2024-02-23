

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/const.dart';
import 'package:provider_state/provider/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar(){
    return PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: const Text('Cart'),
          //backgroundColor: Colors.blue,
        ),
    );
  }

  Widget _buildUI(){
    return Consumer<CartProvider>(
        builder: (context , provider , _ ){
          return Column(
            children: [
              Container(
                height: 500,
                child: ListView.builder(
                      itemCount: provider.items.length,
                      itemBuilder: (context, index){
                        Products product = provider.items[index];
                        return ListTile(
                          leading: Text(" ${index + 1}) ${product.name}",style: TextStyle(fontSize: 16),),
                          onLongPress: (){
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: Text("Alert !!!"),
                                content: Text("Do You Wanr to Remove This"),
                                actions: [
                                  TextButton(onPressed: (){provider.remove(product);Navigator.of(context).pop();}, child: Text("OK")),
                                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Cancel"))
                                ],
                              );
                            });
                          },
                        );
                      }),
              ),
              Text("Cart Total : \$${provider.getCartTotal()}") ,
            ],
          );
        },
    );
  }


}
