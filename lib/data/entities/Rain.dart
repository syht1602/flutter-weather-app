class Rain {
  int? i3h;

  Rain({i3h});

  Rain.fromJson(Map<String, dynamic> json) {
    i3h = json['3h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['3h'] = i3h;
    return data;
  }
}

class Clouds {
  int? all;

  Clouds({all});

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}
