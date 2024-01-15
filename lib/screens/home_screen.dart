import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_shopping_app/widgets/custom_text_form_field.dart';
import 'package:grocery_shopping_app/widgets/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Escolher',
              style: textTheme.headline5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Localização',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 8,
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Badge(
                  isLabelVisible: true,
                  label: Text('2'),
                  child: Icon(Icons.shopping_cart)))
        ],
        backgroundColor: colorTheme.primaryContainer,
        bottom: PreferredSize(
          child:GrocerySearchTextFormField(),
          preferredSize: Size.fromHeight(56),
        ),
        
      ),bottomNavigationBar: AppBottomNavBar(index: 0,),
    );
  }
}
