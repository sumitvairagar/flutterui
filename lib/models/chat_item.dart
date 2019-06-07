class ChatItem {
  final String name;
  final String message;
  final String time;
  final String avtarUrl =
      'https://i.kinja-img.com/gawker-media/image/upload/s--7S4XEiEC--/c_scale,f_auto,fl_progressive,q_80,w_800/i00guffjeziqanki0pxs.jpg';

  ChatItem(this.name, this.message, this.time);

  static List<ChatItem> dummyData = [
    ChatItem('Sumit', 'Hello World this Sumit', '12:30'),
    ChatItem('Rohit', 'Hello World this Sumit', '13:30'),
    ChatItem('Vinit', 'Hello World this Sumit', '14:30'),
    ChatItem('Ashish', 'Hello World this Sumit', '15:30'),
  ];
}
