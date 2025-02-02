class Movie {
  String title;
  String director;
  String rating;

  Movie(this.title, this.director, [this.rating = "Not Rated"]);

  void showDetails() {
    print("Title: $title, Director: $director, Rating: $rating");
  }
}

void main() {
  Movie movie1 = Movie("Inception", "Christopher Nolan", "PG-13");
  Movie movie2 = Movie("The Matrix", "Lana Wachowski");

  movie1.showDetails();
  movie2.showDetails();
}