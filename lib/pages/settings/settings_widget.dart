import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 432.0,
                  height: 932.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Blank_Screen.png',
                      ).image,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 33.0, 37.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Icon(
                                  Icons.close_rounded,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 17.0),
                          child: Container(
                            width: 77.0,
                            height: 77.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Group_6.png',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF7056EA),
                              ),
                            ),
                            child: AuthUserStreamWidget(
                              builder: (context) => ClipRRect(
                                borderRadius: BorderRadius.circular(24.0),
                                child: Image.network(
                                  currentUserPhoto,
                                  width: 77.0,
                                  height: 77.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              150.0, 0.0, 150.0, 27.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: AuthUserStreamWidget(
                                  builder: (context) => TextFormField(
                                    controller: _model.textController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        final usersUpdateData =
                                            createUsersRecordData(
                                          displayName:
                                              _model.textController.text,
                                        );
                                        await currentUserReference!
                                            .update(usersUpdateData);
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: currentUserDisplayName,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF7056EA),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10.0, 0.0, 0.0, 0.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 60.0),
                          child: Container(
                            width: 164.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF312569),
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  56.0, 8.0, 0.0, 0.0),
                              child: Text(
                                'Personal',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      color: Color(0xFFFDFDFD),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              56.0, 0.0, 0.0, 6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Interest',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 0.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController1 ??=
                                  FormFieldController<String>(null),
                              options: [
                                'movies',
                                'Family and friends',
                                'Travel',
                                'Personal Interest',
                                'School',
                                'Others',
                                'Work or job oppurtunity'
                              ],
                              onChanged: (val) async {
                                setState(() => _model.dropDownValue1 = val);
                                final usersUpdateData = createUsersRecordData(
                                  interest: _model.dropDownValue1,
                                );
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              width: 325.0,
                              height: 33.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              hintText: valueOrDefault(
                                  currentUserDocument?.interest, ''),
                              searchHintText: 'Search for an item...',
                              icon: FaIcon(
                                FontAwesomeIcons.edit,
                                color: Color(0xFF9D9D9D),
                                size: 10.0,
                              ),
                              fillColor: Color(0xFF312569),
                              elevation: 2.0,
                              borderColor: Color(0xFF7056EA),
                              borderWidth: 0.0,
                              borderRadius: 10.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              56.0, 23.0, 0.0, 6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Language',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 0.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController2 ??=
                                  FormFieldController<String>(null),
                              options: ['British English', 'Spanish'],
                              onChanged: (val) async {
                                setState(() => _model.dropDownValue2 = val);
                                final usersUpdateData = createUsersRecordData(
                                  language: _model.dropDownValue2,
                                );
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              width: 325.0,
                              height: 33.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              hintText: valueOrDefault(
                                  currentUserDocument?.language, ''),
                              searchHintText: 'Search for an item...',
                              icon: FaIcon(
                                FontAwesomeIcons.edit,
                                color: Color(0xFF9D9D9D),
                                size: 10.0,
                              ),
                              fillColor: Color(0xFF312569),
                              elevation: 2.0,
                              borderColor: Color(0xFF7056EA),
                              borderWidth: 0.0,
                              borderRadius: 10.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              56.0, 23.0, 0.0, 6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Level',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 0.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController3 ??=
                                  FormFieldController<String>(null),
                              options: ['Begineer', 'Advanced', 'Professional'],
                              onChanged: (val) async {
                                setState(() => _model.dropDownValue3 = val);
                                final usersUpdateData = createUsersRecordData(
                                  level: _model.dropDownValue3,
                                );
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              width: 325.0,
                              height: 33.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              hintText: valueOrDefault(
                                  currentUserDocument?.level, ''),
                              searchHintText: 'Search for an item...',
                              icon: FaIcon(
                                FontAwesomeIcons.edit,
                                color: Color(0xFF9D9D9D),
                                size: 10.0,
                              ),
                              fillColor: Color(0xFF312569),
                              elevation: 2.0,
                              borderColor: Color(0xFF7056EA),
                              borderWidth: 0.0,
                              borderRadius: 10.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              56.0, 23.0, 0.0, 6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Time',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 0.0, 0.0, 120.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController4 ??=
                                  FormFieldController<String>(null),
                              options: [
                                '5 mins per day',
                                '15 mins per day',
                                '30 mins per day',
                                '1hr per day'
                              ],
                              onChanged: (val) async {
                                setState(() => _model.dropDownValue4 = val);
                                final usersUpdateData = createUsersRecordData(
                                  time: _model.dropDownValue4,
                                );
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              width: 325.0,
                              height: 33.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              hintText:
                                  valueOrDefault(currentUserDocument?.time, ''),
                              searchHintText: 'Search for an item...',
                              icon: FaIcon(
                                FontAwesomeIcons.edit,
                                color: Color(0xFF9D9D9D),
                                size: 10.0,
                              ),
                              fillColor: Color(0xFF312569),
                              elevation: 2.0,
                              borderColor: Color(0xFF7056EA),
                              borderWidth: 0.0,
                              borderRadius: 10.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 80.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];
                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls = (await Future.wait(
                                    selectedMedia.map(
                                      (m) async => await uploadData(
                                          m.storagePath, m.bytes),
                                    ),
                                  ))
                                      .where((u) => u != null)
                                      .map((u) => u!)
                                      .toList();
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl = downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }

                              final usersUpdateData = createUsersRecordData(
                                photoUrl: _model.uploadedFileUrl,
                              );
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            text: 'Upload image',
                            options: FFButtonOptions(
                              width: 130.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth('Splashscreen123', mounted);
                          },
                          text: 'Log Out',
                          icon: Icon(
                            Icons.logout,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          options: FFButtonOptions(
                            width: 353.0,
                            height: 51.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 7.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(148.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
