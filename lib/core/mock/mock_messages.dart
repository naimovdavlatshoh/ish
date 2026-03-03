import '../../shared/models/message_model.dart';

class MockMessages {
  static final List<ChatModel> chats = [
    ChatModel(
      id: '1',
      userId: '2',
      userName: 'Madina Karimova',
      userAvatar: 'https://i.pravatar.cc/150?img=5',
      userHeadline: 'Senior Product Designer',
      lastMessage: 'Thanks for your feedback on the design!',
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 15)),
      unreadCount: 2,
      isOnline: true,
    ),
    ChatModel(
      id: '2',
      userId: '3',
      userName: 'Jasur Tursunov',
      userAvatar: 'https://i.pravatar.cc/150?img=8',
      userHeadline: 'Data Scientist',
      lastMessage: 'Let\'s schedule a call next week',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 2)),
      unreadCount: 0,
      isOnline: false,
    ),
    ChatModel(
      id: '3',
      userId: '4',
      userName: 'Dilnoza Azimova',
      userAvatar: 'https://i.pravatar.cc/150?img=10',
      userHeadline: 'Full Stack Developer',
      lastMessage: 'I reviewed your pull request',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 5)),
      unreadCount: 1,
      isOnline: true,
    ),
    ChatModel(
      id: '4',
      userId: '5',
      userName: 'Bobur Aliyev',
      userAvatar: 'https://i.pravatar.cc/150?img=12',
      userHeadline: 'DevOps Engineer',
      lastMessage: 'The deployment was successful!',
      lastMessageTime: DateTime.now().subtract(const Duration(days: 1)),
      unreadCount: 0,
      isOnline: false,
    ),
  ];

  static final Map<String, List<MessageModel>> messages = {
    '1': [
      MessageModel(
        id: '1',
        chatId: '1',
        senderId: '2',
        content: 'Hi! I saw your post about Flutter development',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
        isRead: true,
      ),
      MessageModel(
        id: '2',
        chatId: '1',
        senderId: '1',
        content: 'Hello! Thanks for reaching out. How can I help you?',
        timestamp: DateTime.now().subtract(const Duration(minutes: 55)),
        isRead: true,
      ),
      MessageModel(
        id: '3',
        chatId: '1',
        senderId: '2',
        content: 'I have some UI/UX designs that might interest you',
        timestamp: DateTime.now().subtract(const Duration(minutes: 50)),
        isRead: true,
      ),
      MessageModel(
        id: '4',
        chatId: '1',
        senderId: '1',
        content: 'That sounds great! Please share them',
        timestamp: DateTime.now().subtract(const Duration(minutes: 45)),
        isRead: true,
      ),
      MessageModel(
        id: '5',
        chatId: '1',
        senderId: '2',
        content: 'Here you go! Let me know what you think',
        timestamp: DateTime.now().subtract(const Duration(minutes: 40)),
        isRead: true,
      ),
      MessageModel(
        id: '6',
        chatId: '1',
        senderId: '1',
        content: 'These designs look amazing! The color scheme is perfect',
        timestamp: DateTime.now().subtract(const Duration(minutes: 20)),
        isRead: true,
      ),
      MessageModel(
        id: '7',
        chatId: '1',
        senderId: '2',
        content: 'Thanks for your feedback on the design!',
        timestamp: DateTime.now().subtract(const Duration(minutes: 15)),
        isRead: false,
      ),
    ],
    '2': [
      MessageModel(
        id: '8',
        chatId: '2',
        senderId: '3',
        content: 'Hey, are you available for a quick chat?',
        timestamp: DateTime.now().subtract(const Duration(hours: 3)),
        isRead: true,
      ),
      MessageModel(
        id: '9',
        chatId: '2',
        senderId: '1',
        content: 'Sure! What\'s up?',
        timestamp: DateTime.now().subtract(const Duration(hours: 2, minutes: 30)),
        isRead: true,
      ),
      MessageModel(
        id: '10',
        chatId: '2',
        senderId: '3',
        content: 'Let\'s schedule a call next week',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        isRead: true,
      ),
    ],
  };

  static List<ChatModel> getChats() => chats;

  static List<MessageModel> getMessages(String chatId) {
    return messages[chatId] ?? [];
  }

  static ChatModel getChatById(String chatId) {
    return chats.firstWhere(
      (chat) => chat.id == chatId,
      orElse: () => chats.first,
    );
  }
}
