import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RMenu extends StatelessWidget {
  const RMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              _buildmenu(Icons.food_bank, 'All'),
              Spacer(),
              _buildmenu(Icons.emoji_food_beverage, 'Coffee'),
              Spacer(),
              _buildmenu(Icons.fastfood, 'Burger'),
              Spacer(),
              _buildmenu(Icons.local_pizza, 'Pizza'),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildmenu(IconData mIcon, String mText){
    return Container(
      width: 60,height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12)
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent),
          Text(mText)
        ],
      ),
    );
  }
}

