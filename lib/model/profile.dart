class Profile{
  String name;
  DateTime dataOfRegistration;
  String pathToImage;

  Profile(this.name, this.dataOfRegistration, this.pathToImage);

  int daysLeft(){
    int days = DateTime.now().difference(dataOfRegistration).inDays;
    return days;
  }

}