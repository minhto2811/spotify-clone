import 'package:dartz/dartz.dart';
import 'package:app_spotify/core/usecase/usecase.dart';
import 'package:app_spotify/data/models/auth/signin_user_req.dart';
import 'package:app_spotify/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SigninUseCase implements UseCase<Either,SigninUserReq> {


  @override
  Future<Either> call({SigninUserReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }

}