class ProjectDetails {
  final String image;
  final String title;
  final String subtitle;
  final String? githublink;

  ProjectDetails(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.githublink});
}

List<ProjectDetails> projectlist = [
  ProjectDetails(
    image: 'projects/esim.jpeg',
    title: 'Mobi Esim',
    subtitle: 'Upwork Project',
  ),
  ProjectDetails(
      image: 'projects/message.png',
      title: 'Nepal SA',
      subtitle: 'Messaging App',
      githublink: 'https://github.com/manojbhatta500/NepalSA'),
  ProjectDetails(
      image: 'projects/collab.jpeg',
      title: 'Collab Nepal',
      subtitle: 'Online shopping App',
      githublink: 'https://github.com/manojbhatta500/collabNepal'),
  ProjectDetails(
      image: 'projects/ai.jpg',
      title: 'Image Labels',
      subtitle: 'Image Labeling App',
      githublink: 'https://github.com/manojbhatta500/image-labeler-flutter'),
  ProjectDetails(
      image: 'projects/weatherapp.png',
      title: 'Mausam',
      subtitle: 'Weather App',
      githublink: 'https://github.com/manojbhatta500/mausam'),
  ProjectDetails(
      image: 'projects/virus.png',
      title: 'Covid Sewa',
      subtitle: 'Live Covid Data App',
      githublink: 'https://github.com/manojbhatta500/covidstat'),
  ProjectDetails(
      image: 'projects/movie.jpg',
      title: 'Cinema Sewa',
      subtitle: 'cinema Stats App',
      githublink: 'https://github.com/manojbhatta500/CinemaSewa'),
  ProjectDetails(
      image: 'projects/bmiapp.png',
      title: 'Bmi Calculator',
      subtitle: 'Bmi Calculator app',
      githublink: 'https://github.com/manojbhatta500/Bmindex'),
];
