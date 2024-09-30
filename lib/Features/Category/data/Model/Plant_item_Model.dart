class PlantItemModel {
  final String img, title, supTitle, type;
  final String disease1,disease2,disease3 ;
  final String pests1,pests2,pests3 ;
  final bool isSunny ;
 // final List<String> imgList ;

  PlantItemModel(
      {
        required this.img,
        required this.title,
        required this.supTitle,
        required this.type,
        required this.isSunny,
        required this.disease1,
        required this.disease2,
        required this.disease3,
        required this.pests1,
        required this.pests2,
        required this.pests3,
       // required this.imgList,
      });
  factory PlantItemModel.fromjson (data){
    return PlantItemModel(
        img: data['img'],
        title: data['Name1'],
        supTitle: data['Name2'],
        type: data['Type'],
        isSunny: data['Icon'],
        disease1:  data['txt2'],
        disease2:  data['txt3'],
        disease3:  data['txt4'],
        pests1:  data['txt5'],
        pests2:  data['txt6'],
        pests3:  data['txt7'],
        //imgList: data['Imglist'],

    );
  }
}