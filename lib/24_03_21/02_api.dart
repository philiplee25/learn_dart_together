import 'dart:convert';

Future<Movie> getMovieInfo() async {
  // 함수를 완성하고 director가 누군지 출력해보시오.
  // Todo: 2초동안 기다리는 코드 작성
  await Future.delayed(Duration(seconds: 2));

  // 서버에서 들어오는 데이터라고 상상
  final String jsonString = '''{
    "title": "Star Ward",
    "director": "George Lucas",
    "year": 1997
  }''';

  // Todo: Movie 데이터 클래스를 리턴하도록 작성
  // jsonEncode(): Map 데이터를 Json형태로
  // jsonDecode(): Json 을 Map<String, dynamic> 데이터로
  return Movie.fromJson(jsonDecode(jsonString));
}

class Movie {
  final String title;
  final String director;
  final int year;

  Movie({required this.title, required this.director, required this.year});

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          director == other.director &&
          year == other.year;

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title: title ?? this.title,
      director: director ?? this.director,
      year: year ?? this.year,
    );
  }

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'director': director,
        'year': year,
      };
}

void main() async {
  final movieInfo = await getMovieInfo();
  print(movieInfo.director);
}
