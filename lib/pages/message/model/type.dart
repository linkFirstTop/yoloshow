

enum MessageType{
  all(0,'All'),comment(1,'Comment'),newFans(2,'New Fans'),Official(3,'Official');
  const MessageType(this.number,this.title);
  final String title;
  final int number;
}