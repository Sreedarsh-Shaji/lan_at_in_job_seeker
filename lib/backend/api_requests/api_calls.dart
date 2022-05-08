import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class JobSeekerLoginCall {
  static Future<ApiCallResponse> call({
    String username = '',
    String password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'JobSeekerLogin',
      apiUrl: 'http://54.234.117.216:8080/api/v1/userAuth/login-user-mobile',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class JobSeekerSignupCall {
  static Future<ApiCallResponse> call({
    String name = '',
    String password = '',
    String email = '',
    String phone = '',
  }) {
    final body = '''
{
  "name": "${name}",
  "password": "${password}",
  "email": "${email}",
  "phone": "${phone}",
  "role": "JOBSEEKER"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'JobSeekerSignup',
      apiUrl: 'http://54.234.117.216:8080/api/v1/userAuth/signup-user',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'password': password,
        'email': email,
        'phone': phone,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetAllVacanciesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllVacancies',
      apiUrl: 'http://54.234.117.216:8080/hiring/get-all-vacancies',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetVacancyByIdCall {
  static Future<ApiCallResponse> call({
    String id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetVacancyById',
      apiUrl: 'http://54.234.117.216:8080/hiring/get-vacancy/mobile',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
    );
  }
}

class ApplyForPositionCall {
  static Future<ApiCallResponse> call({
    String user = '',
    String vacancy = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ApplyForPosition',
      apiUrl: 'http://54.234.117.216:8080/api/v1/userApply/apply-mobile',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user': user,
        'vacancy': vacancy,
      },
      returnBody: true,
    );
  }
}

class GetAppliedPositionByIdCall {
  static Future<ApiCallResponse> call({
    String id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAppliedPositionById',
      apiUrl: 'http://54.234.117.216:8080/api/v1/userApply/get-bt-id/mobile',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
    );
  }
}
