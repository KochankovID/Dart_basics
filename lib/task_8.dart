class User {
  String email;

  User(this.email);
}

class AdminUser extends User with EmailParser {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin EmailParser on User {
  String getMailSystem() {
    var mailSystem = this.email.split('@');
    if (mailSystem.length != 2) {
      throw ArgumentError('Email does\'t pass the validation');
    }
    return mailSystem[1];
  }
}

class UserManager<T extends User> {
  late List<T> _users;

  UserManager(this._users);

  add(T user) {
    _users.add(user);
  }

  remove(T user) {
    _users.remove(user);
  }

  List<String> getEmails() {
    return _users
        .map((e) => e is AdminUser ? e.getMailSystem() : e.email)
        .toList();
  }
}
