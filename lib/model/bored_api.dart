// To parse this JSON data, do
//
//     final boredApi = boredApiFromJson(jsonString);
import 'dart:convert';

BoredApi boredApiFromJson(String str) => BoredApi.fromJson(json.decode(str));

String boredApiToJson(BoredApi data) => json.encode(data.toJson());

class BoredApi {
    BoredApi({
        required this.activity,
        required this.type,
        required this.participants,
        required this.price,
        required this.link,
        required this.key,
        required this.accessibility,
    });

    String activity;
    String type;
    num participants;
    num price;
    String link;
    String key;
    double accessibility;

    factory BoredApi.fromJson(Map<String, dynamic> json) => BoredApi(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
    };
}
