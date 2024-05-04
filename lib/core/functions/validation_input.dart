
String? validationInput(String val, int min, int max, String type) {
  if (type == 'username') {
    if (val.length < 3) {
      return 'not valid username';
    }
  }
  if (type == 'Phone') {
    if ( val.length >10) {
      return 'not valid Phone';
    }
  }
  if (val.isEmpty) {
    return "can't be Empty";
  }
  if (type == 'email') {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(val)
        ? null
        : "You must enter a valid email address";
  }
  if (val.length < min) {
    return "can't be less than $min";
  }
  if (val.length > max) {
    return "can't be larger than $max";
  }
  return null;
}
