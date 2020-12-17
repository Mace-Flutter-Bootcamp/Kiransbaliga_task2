class NeedRide {
  NeedRide({this.dest, this.name, this.phone, this.start});
  String name;
  String phone;
  String start;
  String dest;
}

class GetRide {
  GetRide({this.dest, this.name, this.phone, this.start});
  String name;
  String phone;
  String start;
  String dest;
}

List<NeedRide> nr = [];
List<GetRide> gr = [];
int getorneed;
String s;