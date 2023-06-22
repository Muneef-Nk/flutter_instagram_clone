class ProfileModel{
    String imagePath;
    String profileName;

  ProfileModel({
    required this.imagePath,
    required this.profileName
  });
}

List<ProfileModel> profileDetails=[
  ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/women/24.jpg',
      profileName: 'Leslie'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/men/24.jpg',
      profileName: 'Patterson'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/women/77.jpg',
      profileName: 'Phillips'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/women/22.jpg',
      profileName: 'Rhodes'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/men/18.jpg',
      profileName: 'Stewart'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/women/34.jpg',
      profileName: 'Lane'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/men/51.jpg',
      profileName: 'Neal'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/women/38.jpg',
      profileName: 'Williams'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/men/56.jpg',
      profileName: 'Torres'
  ), ProfileModel(
      imagePath: 'https://randomuser.me/api/portraits/women/32.jpg',
      profileName: 'Dallas'
  ),
];