import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFriendsWidget extends StatefulWidget {
  const MyFriendsWidget({
    Key key,
    this.vacacancyId,
  }) : super(key: key);

  final String vacacancyId;

  @override
  _MyFriendsWidgetState createState() => _MyFriendsWidgetState();
}

class _MyFriendsWidgetState extends State<MyFriendsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetVacancyByIdCall.call(
        id: valueOrDefault<String>(
          widget.vacacancyId,
          '14526f67-bb5c-4aff-a33d-6feff419dc5b',
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitPulse(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final myFriendsGetVacancyByIdResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            title: Text(
              'Vacancies',
              style: FlutterFlowTheme.of(context).title1,
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  buttonSize: 48,
                  icon: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    size: 30,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
            centerTitle: false,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).background,
          body: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                    child: Text(
                      'Vacancy',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    thickness: 2,
                    color: Color(0xFFF2F5F7),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Role : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        valueOrDefault<String>(
                          getJsonField(
                            (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                            r'''$.role''',
                          ).toString(),
                          'role',
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'Description : ',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          getJsonField(
                            (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                            r'''$.description''',
                          ).toString(),
                          'description',
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Location : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        getJsonField(
                          (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                          r'''$.locationOfEmployment''',
                        ).toString(),
                        'locationOfEmployment',
                      ),
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Mode : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        getJsonField(
                          (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                          r'''$.modeOfEmployment''',
                        ).toString(),
                        'modeOfEmployment',
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Should Have Passport : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        getJsonField(
                          (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                          r'''$.shouldPossesPassport''',
                        ).toString(),
                        'Should have passport',
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Willing To Relocate : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Text(
                      getJsonField(
                        (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                        r'''$.willingToRelocate''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Company Name : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Text(
                      getJsonField(
                        (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                        r'''$.reportingCompany.name''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Company Email : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Text(
                      getJsonField(
                        (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                        r'''$.reportingCompany.email''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Company Phone : ',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                    Text(
                      getJsonField(
                        (myFriendsGetVacancyByIdResponse?.jsonBody ?? ''),
                        r'''$.reportingCompany.phone''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await ApplyForPositionCall.call(
                          user: FFAppState().uuid,
                          vacancy: widget.vacacancyId,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Applied for position successfully',
                              style: TextStyle(),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor: Color(0x00000000),
                          ),
                        );
                      },
                      text: 'Apply For Position',
                      options: FFButtonOptions(
                        width: 330,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
