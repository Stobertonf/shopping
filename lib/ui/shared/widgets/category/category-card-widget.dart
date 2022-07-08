import '../../../../settings.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/home.bloc.dart';
import 'package:shopping/models/category-list-item.model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: item.tag == bloc.selectedCategory
            ? Theme.of(context).primaryColor.withOpacity(0.3)
            : Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(70),
        ),
      ),
      child: FlatButton(
        child: Image.asset(
            "assets/categories/${Settings.theme}/${item.tag}.png"), //Identifica o tema e troca a cor da imagem conforme o mesmo
        onPressed: () {
          bloc.changeCategory(item.tag);
        },
      ),
    );
  }
}
