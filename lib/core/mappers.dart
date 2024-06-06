class LocationModel {
  String? name;
  double? lat;
  double? lon;
  LocationModel(this.name, this.lat, this.lon);
}

List<LocationModel> locations = [
  LocationModel('Berlin', 52.5200, 13.4050),
  LocationModel('Marienberg', 50.5274, 13.2050),
  LocationModel('Liberec', 50.5274, 15.2050),
  LocationModel('Rosental', 50.5274, 14.2050),
  LocationModel('Klodzko', 50.5274, 16.2050),
];
