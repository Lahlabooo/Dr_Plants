class PlantItemModel {
  final String img, title, supTitle, type;
  final bool isSuuny ;

  PlantItemModel(
      {
        required this.img,
        required this.title,
        required this.supTitle,
        required this.type,
        required this.isSuuny
      });
  factory PlantItemModel.fromjson (data){
    return PlantItemModel(
        img: data['img'],
        title: data['Name1'],
        supTitle: data['Name2'],
        type: data['Type'],
        isSuuny: data['Icon'],
    );
  }
}