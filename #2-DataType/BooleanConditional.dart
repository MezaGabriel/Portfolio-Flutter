void main() {
  // Variable
  bool? isActiveNull = null;
  bool isActive = true;
  //bool isActive = false;

  // Condition
  if (isActive) {
    print('Is Active');
  } else {
    print('Is Inactive');
  }

  // Condition
  if (isActiveNull /*!=*/ == null) {
    print('Is Active equals null');
  } else {
    print('Is Inactive not null');
  }
}
