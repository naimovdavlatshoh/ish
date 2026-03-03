import '../../shared/models/user_model.dart';

class MockUsers {
  static final List<UserModel> users = [
    UserModel(
      id: '1',
      name: 'Sardor Rahimov',
      email: 'sardor@example.com',
      bio: 'Software Engineer at Google | Flutter Developer | Tech Enthusiast',
      avatarUrl: 'https://i.pravatar.cc/150?img=1',
      coverUrl: 'https://picsum.photos/800/200?random=1',
      headline: 'Senior Software Engineer',
      location: 'Tashkent, Uzbekistan',
      connections: 500,
      followers: 1200,
      skills: ['Flutter', 'Dart', 'Firebase', 'UI/UX'],
      experience: [
        Experience(
          company: 'Google',
          position: 'Senior Software Engineer',
          duration: '2021 - Present',
          description: 'Leading Flutter development team',
        ),
        Experience(
          company: 'Microsoft',
          position: 'Software Engineer',
          duration: '2019 - 2021',
          description: 'Developed cross-platform applications',
        ),
      ],
    ),
    UserModel(
      id: '2',
      name: 'Madina Karimova',
      email: 'madina@example.com',
      bio: 'Product Designer | UI/UX Expert | Creating beautiful experiences',
      avatarUrl: 'https://i.pravatar.cc/150?img=5',
      coverUrl: 'https://picsum.photos/800/200?random=2',
      headline: 'Senior Product Designer',
      location: 'Samarkand, Uzbekistan',
      connections: 320,
      followers: 890,
      skills: ['Figma', 'Adobe XD', 'UI Design', 'Prototyping'],
      experience: [
        Experience(
          company: 'Yandex',
          position: 'Senior Product Designer',
          duration: '2020 - Present',
          description: 'Designing user interfaces for web and mobile',
        ),
      ],
    ),
    UserModel(
      id: '3',
      name: 'Jasur Tursunov',
      email: 'jasur@example.com',
      bio: 'Data Scientist | Machine Learning Engineer | AI Enthusiast',
      avatarUrl: 'https://i.pravatar.cc/150?img=8',
      coverUrl: 'https://picsum.photos/800/200?random=3',
      headline: 'Data Scientist',
      location: 'Bukhara, Uzbekistan',
      connections: 450,
      followers: 980,
      skills: ['Python', 'TensorFlow', 'Machine Learning', 'Data Analysis'],
      experience: [
        Experience(
          company: 'Facebook',
          position: 'Data Scientist',
          duration: '2022 - Present',
          description: 'Building ML models for content recommendation',
        ),
      ],
    ),
    UserModel(
      id: '4',
      name: 'Dilnoza Azimova',
      email: 'dilnoza@example.com',
      bio: 'Full Stack Developer | React & Node.js | Open Source Contributor',
      avatarUrl: 'https://i.pravatar.cc/150?img=10',
      coverUrl: 'https://picsum.photos/800/200?random=4',
      headline: 'Full Stack Developer',
      location: 'Tashkent, Uzbekistan',
      connections: 280,
      followers: 650,
      skills: ['React', 'Node.js', 'MongoDB', 'Docker'],
      experience: [
        Experience(
          company: 'Amazon',
          position: 'Full Stack Developer',
          duration: '2021 - Present',
          description: 'Developing scalable web applications',
        ),
      ],
    ),
    UserModel(
      id: '5',
      name: 'Bobur Aliyev',
      email: 'bobur@example.com',
      bio: 'DevOps Engineer | Cloud Architecture | Kubernetes Expert',
      avatarUrl: 'https://i.pravatar.cc/150?img=12',
      coverUrl: 'https://picsum.photos/800/200?random=5',
      headline: 'DevOps Engineer',
      location: 'Tashkent, Uzbekistan',
      connections: 390,
      followers: 820,
      skills: ['Docker', 'Kubernetes', 'AWS', 'CI/CD'],
      experience: [
        Experience(
          company: 'Netflix',
          position: 'DevOps Engineer',
          duration: '2020 - Present',
          description: 'Managing cloud infrastructure and deployments',
        ),
      ],
    ),
  ];

  static UserModel getUserById(String id) {
    return users.firstWhere(
      (user) => user.id == id,
      orElse: () => users.first,
    );
  }

  static UserModel get currentUser => users.first;
}
