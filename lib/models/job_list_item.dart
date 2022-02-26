class JobListItem {
  String title = 'Flutter Developer Required';
  String location = 'Karachi, Pakistan';
  String position = 'Flutter Developer';
  String description =
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.';

  JobListItem();

  factory JobListItem.set({
    required String title,
    required String location,
  }) {
    JobListItem object = JobListItem();
    object.title = title;
    object.location = location;
    return object;
  }

  setPosition(String position) {
    this.position = position;
  }

  setDescription(String description) {
    this.description = description;
  }
}
