import '../../shared/models/post_model.dart';

class MockPosts {
  static final List<PostModel> posts = [
    PostModel(
      id: '1',
      authorId: '1',
      authorName: 'Sardor Rahimov',
      authorHeadline: 'Senior Software Engineer',
      authorAvatar: 'https://i.pravatar.cc/150?img=1',
      content: '''I'm excited to share that I've just completed a major Flutter project! 🎉

After 6 months of hard work, our team successfully launched a cross-platform mobile app that serves over 100,000 users.

Key achievements:
✅ 60% code reuse between iOS and Android
✅ 4.8 star rating on both app stores
✅ Load time reduced by 40%

Big thanks to my amazing team! #Flutter #MobileDevelopment #TechAchievements''',
      imageUrl: 'https://picsum.photos/600/400?random=1',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      likes: 234,
      comments: 45,
      shares: 12,
      isLiked: true,
    ),
    PostModel(
      id: '2',
      authorId: '2',
      authorName: 'Madina Karimova',
      authorHeadline: 'Senior Product Designer',
      authorAvatar: 'https://i.pravatar.cc/150?img=5',
      content: '''Design is not just what it looks like and feels like. Design is how it works. 🎨

Here's my latest UI/UX case study for a fintech app. Focused on:
• User-centered design
• Accessibility first
• Minimalist approach
• Smooth animations

What do you think? Drop your feedback below! 👇

#UIUXDesign #ProductDesign #UserExperience''',
      imageUrl: 'https://picsum.photos/600/400?random=2',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      likes: 189,
      comments: 32,
      shares: 8,
      isLiked: false,
    ),
    PostModel(
      id: '3',
      authorId: '3',
      authorName: 'Jasur Tursunov',
      authorHeadline: 'Data Scientist',
      authorAvatar: 'https://i.pravatar.cc/150?img=8',
      content: '''Just published my research paper on Machine Learning! 📊🤖

"Advanced Neural Networks for Natural Language Processing"

The paper explores new approaches to NLP using transformer architectures. Achieved 95% accuracy on sentiment analysis tasks.

Link in comments. Would love to hear your thoughts!

#MachineLearning #AI #DataScience #Research''',
      timestamp: DateTime.now().subtract(const Duration(days: 1)),
      likes: 456,
      comments: 67,
      shares: 34,
      isLiked: true,
    ),
    PostModel(
      id: '4',
      authorId: '4',
      authorName: 'Dilnoza Azimova',
      authorHeadline: 'Full Stack Developer',
      authorAvatar: 'https://i.pravatar.cc/150?img=10',
      content: '''5 React Best Practices Every Developer Should Know 💡

1. Use functional components with hooks
2. Implement proper error boundaries
3. Optimize with React.memo and useMemo
4. Keep components small and focused
5. Write comprehensive tests

Which one do you use the most? Comment below! 👇

#React #JavaScript #WebDevelopment #Programming''',
      timestamp: DateTime.now().subtract(const Duration(days: 2)),
      likes: 312,
      comments: 54,
      shares: 23,
      isLiked: false,
    ),
    PostModel(
      id: '5',
      authorId: '5',
      authorName: 'Bobur Aliyev',
      authorHeadline: 'DevOps Engineer',
      authorAvatar: 'https://i.pravatar.cc/150?img=12',
      content: '''Kubernetes vs Docker Swarm - Which one should you choose? 🤔

After managing both in production for 3 years, here's my take:

Kubernetes:
✅ Better for complex deployments
✅ Huge community support
✅ Rich ecosystem
❌ Steeper learning curve

Docker Swarm:
✅ Simple to set up
✅ Built into Docker
❌ Limited features

My recommendation: Start with Swarm, scale to Kubernetes.

What's your experience? #DevOps #Kubernetes #Docker #CloudComputing''',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      likes: 278,
      comments: 41,
      shares: 19,
      isLiked: true,
    ),
  ];

  static List<PostModel> getPosts() => posts;

  static PostModel getPostById(String id) {
    return posts.firstWhere(
      (post) => post.id == id,
      orElse: () => posts.first,
    );
  }

  static List<PostModel> getPostsByUserId(String userId) {
    return posts.where((post) => post.authorId == userId).toList();
  }
}
