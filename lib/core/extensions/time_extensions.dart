extension CalculateTimeDifference on String {
  String calculateTimeDifference() {
    final DateTime now = DateTime.now();
    final DateTime time = DateTime.parse(this);
    final Duration difference = now.difference(time);
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return '${difference.inSeconds}s ago';
    }
  }
}
