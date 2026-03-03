import '../../../shared/models/job_model.dart';

class MockJobs {
  static final List<JobModel> jobs = [
    JobModel(
      id: '1',
      title: 'Senior Flutter Developer',
      company: 'Google',
      companyLogo: 'https://logo.clearbit.com/google.com',
      location: 'Mountain View, CA',
      type: 'Full-time',
      level: 'Senior',
      description: '''We are looking for a Senior Flutter Developer to join our team and help build the next generation of mobile applications.

Responsibilities:
• Design and develop high-quality Flutter applications
• Collaborate with cross-functional teams
• Write clean, maintainable code
• Mentor junior developers
• Stay up-to-date with Flutter ecosystem

Benefits:
• Competitive salary
• Health insurance
• Remote work options
• Professional development''',
      requirements: [
        '5+ years of Flutter/Dart experience',
        'Strong understanding of mobile architecture',
        'Experience with state management (Riverpod, BLoC)',
        'Knowledge of CI/CD pipelines',
        'Excellent communication skills',
      ],
      salary: '\$120,000 - \$180,000/year',
      postedDate: DateTime.now().subtract(const Duration(days: 2)),
      applicants: 45,
      isRemote: true,
      isSaved: false,
    ),
    JobModel(
      id: '2',
      title: 'Product Designer',
      company: 'Apple',
      companyLogo: 'https://logo.clearbit.com/apple.com',
      location: 'Cupertino, CA',
      type: 'Full-time',
      level: 'Mid',
      description: '''Join our design team to create beautiful and intuitive user experiences for millions of users worldwide.

What you'll do:
• Design user interfaces for iOS and macOS applications
• Create wireframes and prototypes
• Conduct user research and testing
• Collaborate with developers and product managers
• Maintain design systems

What we offer:
• Competitive compensation
• Stock options
• Health and wellness benefits
• Flexible work schedule''',
      requirements: [
        '3+ years of product design experience',
        'Proficiency in Figma, Sketch, or Adobe XD',
        'Strong portfolio showcasing UI/UX work',
        'Understanding of iOS design guidelines',
        'Excellent visual design skills',
      ],
      salary: '\$90,000 - \$140,000/year',
      postedDate: DateTime.now().subtract(const Duration(days: 5)),
      applicants: 78,
      isRemote: false,
      isSaved: true,
    ),
    JobModel(
      id: '3',
      title: 'Full Stack Developer',
      company: 'Meta',
      companyLogo: 'https://logo.clearbit.com/meta.com',
      location: 'Menlo Park, CA',
      type: 'Full-time',
      level: 'Senior',
      description: '''We're seeking a talented Full Stack Developer to build scalable web applications that connect billions of people.

Your role:
• Develop front-end and back-end components
• Optimize application performance
• Work with React, Node.js, and GraphQL
• Participate in code reviews
• Deploy and monitor applications

Perks:
• Competitive salary and equity
• Comprehensive health coverage
• Free meals and snacks
• Gym membership''',
      requirements: [
        '4+ years of full-stack development',
        'Expert in React and Node.js',
        'Experience with GraphQL and REST APIs',
        'Knowledge of database design (SQL/NoSQL)',
        'Strong problem-solving skills',
      ],
      salary: '\$130,000 - \$200,000/year',
      postedDate: DateTime.now().subtract(const Duration(days: 7)),
      applicants: 123,
      isRemote: true,
      isSaved: false,
    ),
    JobModel(
      id: '4',
      title: 'DevOps Engineer',
      company: 'Amazon',
      companyLogo: 'https://logo.clearbit.com/amazon.com',
      location: 'Seattle, WA',
      type: 'Full-time',
      level: 'Mid',
      description: '''Join our DevOps team to build and maintain infrastructure that powers one of the world's largest cloud platforms.

Responsibilities:
• Manage AWS infrastructure
• Implement CI/CD pipelines
• Monitor system performance
• Automate deployment processes
• Ensure security best practices

Benefits:
• Competitive base salary
• Stock options
• Health and dental insurance
• Professional development budget''',
      requirements: [
        '3+ years of DevOps experience',
        'Strong knowledge of AWS services',
        'Experience with Docker and Kubernetes',
        'Proficiency in scripting (Python, Bash)',
        'Understanding of networking and security',
      ],
      salary: '\$100,000 - \$150,000/year',
      postedDate: DateTime.now().subtract(const Duration(days: 10)),
      applicants: 67,
      isRemote: true,
      isSaved: false,
    ),
    JobModel(
      id: '5',
      title: 'Mobile App Developer',
      company: 'Uber',
      companyLogo: 'https://logo.clearbit.com/uber.com',
      location: 'San Francisco, CA',
      type: 'Full-time',
      level: 'Mid',
      description: '''Help build the mobile applications that millions of riders and drivers use every day.

What you'll do:
• Develop features for iOS and Android apps
• Optimize app performance
• Fix bugs and improve stability
• Work with product and design teams
• Contribute to technical architecture

What we offer:
• Competitive salary
• Equity compensation
• Unlimited PTO
• Free Uber rides''',
      requirements: [
        '3+ years of mobile development (iOS/Android)',
        'Experience with Swift or Kotlin',
        'Knowledge of mobile architecture patterns',
        'Strong debugging skills',
        'Team collaboration experience',
      ],
      salary: '\$110,000 - \$160,000/year',
      postedDate: DateTime.now().subtract(const Duration(days: 14)),
      applicants: 89,
      isRemote: false,
      isSaved: true,
    ),
  ];

  static List<JobModel> getJobs() => jobs;

  static JobModel getJobById(String id) {
    return jobs.firstWhere(
      (job) => job.id == id,
      orElse: () => jobs.first,
    );
  }

  static List<JobModel> getSavedJobs() {
    return jobs.where((job) => job.isSaved).toList();
  }
}
