class PlantStateInfoModel {
  final String? disease;
  final String? plant;
  final String? status;

  PlantStateInfoModel({
    this.disease,
    this.plant,
    this.status,
  });
  factory PlantStateInfoModel.fromJson(Map<String, dynamic> json) =>
      PlantStateInfoModel(
        disease: json["disease"] ?? "noValue",
        plant: json["plant"] ?? "noValue",
        status: json["status"] ?? "noValue",
      );

  Map<String, dynamic> toJson() => {
        "disease": disease,
        "plant": plant,
        "status": status,
      };
}
