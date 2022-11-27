
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import '../model/user_model.dart';
import '../respository/auth_repository.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import 'user_view_model.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  bool _doctorsignUpLoading = false;
  bool get doctorsignUpLoading => _doctorsignUpLoading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

   setdoctorSignUpLoading(bool value) {
    _doctorsignUpLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);

    _myRepo.loginApi(data).then((value) {
      setLoading(false);
     final userPreference = Provider.of<UserViewModel>(context, listen: false);
      userPreference.saveUser(UserModel(
          token: value['token'].toString(),
          //expiry: value['expiry'].toString()
          ));

         Utils.flushBarErrorMessage('Login Successfully', context);
         Navigator.pushNamed(context, RoutesName.startpage);
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);

    _myRepo.signUpApi(data).then((value) {
      setSignUpLoading(false);
      Utils.flushBarErrorMessage('SignUp Successfully', context);
      Navigator.pushNamed(context, RoutesName.startpage);
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

Future<void> doctorsignUpApi(dynamic data, BuildContext context) async {
    setdoctorSignUpLoading(true);

    _myRepo.doctorsignUpApi(data).then((value) {
      setdoctorSignUpLoading(false);
      Utils.flushBarErrorMessage('SignUp Successfully', context);
      Navigator.pushNamed(context, RoutesName.startpage);
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setdoctorSignUpLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

}
