class ChatMessage {
  String sender;
  String message;
  DateTime timestamp;
  String type;
  String path;

  ChatMessage({
    required this.sender,
    required this.message,
    required this.timestamp,
    required this.type,
    required this.path
  });

  // Constructor to convert a map to ChatMessage object
  ChatMessage.fromJson(Map<String, dynamic> json)
      : sender = json['sender'] ?? '',
        message = json['message'] ?? '',
        type = json['type']??'',
        path = json['path']??'',
        timestamp = DateTime.parse(json['timestamp'] ?? '');
}
