import 'package:flutter/cupertino.dart';
import 'package:planta/Features/Home/Data/Models/Category_Model.dart';
import 'package:planta/Features/Home/Presentation/Views/Widgets/Category_Item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: MediaQuery.of(context).size.height *.5,
      child: GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.3),
        itemBuilder: (context, index) =>  CategoryItem(catModel:
        CategoryModel.categoryData()[index],),
        // scrollDirection: Axis.vertical,

        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
      ),
    );
  }
}
