import 'package:flutter/material.dart';
import '../../../blocs/home.bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopping/ui/android/pages/home.page.dart';

import '../../shared/widgets/category/category-list.widget.dart';
import '../../shared/widgets/product/product-list.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<HomeBloc>(context);

    return CupertinoPageScaffold(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            Text(
              "Categorias",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 10,
            ),
            CategoryList(
              categories: bloc.categories,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Mais Vendidos",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 10,
            ),
            ProductList(
              products: bloc.products,
            )
          ],
        ),
      ),
    );
  }
}
