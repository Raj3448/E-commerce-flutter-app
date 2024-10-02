// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_seller/presentation/main_section/account/model/user_model.dart';
import 'package:ecommerce_seller/presentation/main_section/account/service/user_service.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  final UserService userService;

  _UserStore({required this.userService});

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @observable
  UserModel? user;

  @observable
  bool userDataLoaded = false;

  @action
  void fetchUserDetails() {
    if (userDataLoaded) {
      return;
    }
    isLoading = true;
    errorMessage = null;
    userService.fetchUserDetailsFromServer().then((value) {
      value.fold(
        (l) {
          errorMessage = 'Something went wrong';
        },
        (r) {
          user = r;
          userDataLoaded = true;
        },
      );
      isLoading = false;
    });
  }
}
