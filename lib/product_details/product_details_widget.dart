import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../components/quantity_widget.dart';
import '../delivery_address/delivery_address_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsWidget extends StatefulWidget {
  const ProductDetailsWidget({
    Key key,
    this.prid,
    this.psql,
  }) : super(key: key);

  final ProductMasterRecord prid;
  final dynamic psql;

  @override
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget>
    with TickerProviderStateMixin {
  OrderDetailsRecord orderdetails;
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 700,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 120),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProductMasterRecord>>(
      stream: queryProductMasterRecord(
        queryBuilder: (productMasterRecord) =>
            productMasterRecord.where('SQL_id', isEqualTo: widget.prid.sQLId),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitDoubleBounce(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<ProductMasterRecord> productDetailsProductMasterRecordList =
            snapshot.data;
        final productDetailsProductMasterRecord =
            productDetailsProductMasterRecordList.isNotEmpty
                ? productDetailsProductMasterRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Color(0xFFDBE2E7),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            StreamBuilder<List<ProductImageRecord>>(
                              stream: queryProductImageRecord(
                                queryBuilder: (productImageRecord) =>
                                    productImageRecord
                                        .where('id',
                                            isEqualTo:
                                                productDetailsProductMasterRecord
                                                    .reference)
                                        .orderBy('created_time'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SpinKitDoubleBounce(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                List<ProductImageRecord>
                                    pageViewProductImageRecordList =
                                    snapshot.data;
                                return Container(
                                  width: 400,
                                  height: 400,
                                  child: Stack(
                                    children: [
                                      PageView.builder(
                                        controller: pageViewController ??=
                                            PageController(
                                                initialPage: min(
                                                    0,
                                                    pageViewProductImageRecordList
                                                            .length -
                                                        1)),
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            pageViewProductImageRecordList
                                                .length,
                                        itemBuilder: (context, pageViewIndex) {
                                          final pageViewProductImageRecord =
                                              pageViewProductImageRecordList[
                                                  pageViewIndex];
                                          return InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  child:
                                                      FlutterFlowExpandedImageView(
                                                    image: Image.network(
                                                      valueOrDefault<String>(
                                                        pageViewProductImageRecord
                                                            .image,
                                                        'https://img.freepik.com/free-vector/image-upload-concept-illustration_114360-798.jpg?w=740&t=st=1653624426~exp=1653625026~hmac=e10a5b45f42df97d2861f460babd0c4b624db5228e52ee2c780849f9f3a8852a',
                                                      ),
                                                      fit: BoxFit.contain,
                                                    ),
                                                    allowRotation: false,
                                                    tag: valueOrDefault<String>(
                                                      pageViewProductImageRecord
                                                          .image,
                                                      'https://img.freepik.com/free-vector/image-upload-concept-illustration_114360-798.jpg?w=740&t=st=1653624426~exp=1653625026~hmac=e10a5b45f42df97d2861f460babd0c4b624db5228e52ee2c780849f9f3a8852a' +
                                                          '$pageViewIndex',
                                                    ),
                                                    useHeroAnimation: true,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Hero(
                                              tag: valueOrDefault<String>(
                                                pageViewProductImageRecord
                                                    .image,
                                                'https://img.freepik.com/free-vector/image-upload-concept-illustration_114360-798.jpg?w=740&t=st=1653624426~exp=1653625026~hmac=e10a5b45f42df97d2861f460babd0c4b624db5228e52ee2c780849f9f3a8852a' +
                                                    '$pageViewIndex',
                                              ),
                                              transitionOnUserGestures: true,
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  pageViewProductImageRecord
                                                      .image,
                                                  'https://img.freepik.com/free-vector/image-upload-concept-illustration_114360-798.jpg?w=740&t=st=1653624426~exp=1653625026~hmac=e10a5b45f42df97d2861f460babd0c4b624db5228e52ee2c780849f9f3a8852a',
                                                ),
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 10),
                                          child: SmoothPageIndicator(
                                            controller: pageViewController ??=
                                                PageController(
                                                    initialPage: min(
                                                        0,
                                                        pageViewProductImageRecordList
                                                                .length -
                                                            1)),
                                            count:
                                                pageViewProductImageRecordList
                                                    .length,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) {
                                              pageViewController.animateToPage(
                                                i,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            },
                                            effect: ExpandingDotsEffect(
                                              expansionFactor: 2,
                                              spacing: 8,
                                              radius: 16,
                                              dotWidth: 10,
                                              dotHeight: 10,
                                              dotColor: Color(0xFF9E9E9E),
                                              activeDotColor: Color(0xFF3F51B5),
                                              paintStyle: PaintingStyle.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 32, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0x3A000000),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: Icon(
                                              Icons.arrow_back_rounded,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              await Navigator
                                                  .pushAndRemoveUntil(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType
                                                      .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                  reverseDuration: Duration(
                                                      milliseconds: 300),
                                                  child: HomePageWidget(),
                                                ),
                                                (r) => false,
                                              );
                                            },
                                          ),
                                        ),
                                        Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0x3A000000),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: ToggleIcon(
                                            onPressed: () async {
                                              final favouriteElement =
                                                  currentUserReference;
                                              final favouriteUpdate =
                                                  productDetailsProductMasterRecord
                                                          .favourite
                                                          .toList()
                                                          .contains(
                                                              favouriteElement)
                                                      ? FieldValue.arrayRemove(
                                                          [favouriteElement])
                                                      : FieldValue.arrayUnion(
                                                          [favouriteElement]);
                                              final productMasterUpdateData = {
                                                'favourite': favouriteUpdate,
                                              };
                                              await productDetailsProductMasterRecord
                                                  .reference
                                                  .update(
                                                      productMasterUpdateData);
                                            },
                                            value:
                                                productDetailsProductMasterRecord
                                                    .favourite
                                                    .toList()
                                                    .contains(
                                                        currentUserReference),
                                            onIcon: Icon(
                                              Icons.favorite,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24,
                                            ),
                                            offIcon: Icon(
                                              Icons.favorite_border,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).animated(
                          [animationsMap['containerOnPageLoadAnimation1']]),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 92,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x430F1113),
                              offset: Offset(0, -2),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    productDetailsProductMasterRecord.brandName,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ).animated(
                                  [animationsMap['rowOnPageLoadAnimation1']]),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 10, 24, 0),
                                  child: Text(
                                    productDetailsProductMasterRecord
                                        .itemMaster,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF1D2429),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (functions.visibledisc(getJsonField(
                                            widget.psql,
                                            r'''$..default_cd''',
                                          )) ==
                                          true)
                                        Align(
                                          alignment: AlignmentDirectional(1, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Text(
                                              '${getJsonField(
                                                widget.psql,
                                                r'''$..default_cd''',
                                              ).toString()}% Off',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title2
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: Color(0xFF04EA04),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (functions.mrpequalrate(
                                              getJsonField(
                                                widget.psql,
                                                r'''$..mrp''',
                                              ),
                                              functions
                                                  .defaultcd(
                                                      getJsonField(
                                                        widget.psql,
                                                        r'''$..rate''',
                                                      ),
                                                      getJsonField(
                                                        widget.psql,
                                                        r'''$..default_cd''',
                                                      ))
                                                  .toDouble()) ==
                                          true)
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(1, 0),
                                            child: Text(
                                              '₹ ${getJsonField(
                                                widget.psql,
                                                r'''$..mrp''',
                                              ).toString()}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title2
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          formatNumber(
                                            functions.defaultcd(
                                                getJsonField(
                                                  widget.psql,
                                                  r'''$..rate''',
                                                ),
                                                getJsonField(
                                                  widget.psql,
                                                  r'''$..default_cd''',
                                                )),
                                            formatType: FormatType.custom,
                                            format: '₹ ##,###',
                                            locale: '',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF4B39EF),
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ).animated([
                                    animationsMap['rowOnPageLoadAnimation2']
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBarIndicator(
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFFA130),
                              ),
                              direction: Axis.horizontal,
                              rating: 5,
                              unratedColor: Color(0xFF95A1AC),
                              itemCount: 5,
                              itemSize: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                '4/5 Reviews',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ).animated([animationsMap['rowOnPageLoadAnimation3']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'DESCRIPTION',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ).animated([animationsMap['rowOnPageLoadAnimation4']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 5, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Brand Name: ${productDetailsProductMasterRecord.brandName}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Catagory Name : ${productDetailsProductMasterRecord.catagoreyName}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'DELIVERED BY',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ).animated([animationsMap['rowOnPageLoadAnimation5']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 30,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                '02 / 03 hrs.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ).animated([animationsMap['rowOnPageLoadAnimation6']]),
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x55000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 52),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: DeliveryAddressWidget(
                                  proid: widget.prid,
                                  psql: widget.psql,
                                ),
                              ),
                            );
                          },
                          text: 'Buy Now',
                          options: FFButtonOptions(
                            width: 160,
                            height: 50,
                            color: Color(0xFFFFA130),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Color(0xFFFFA130),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        StreamBuilder<List<OrderDetailsRecord>>(
                          stream: queryOrderDetailsRecord(
                            queryBuilder: (orderDetailsRecord) =>
                                orderDetailsRecord
                                    .where('UserId',
                                        isEqualTo: currentUserReference)
                                    .where('Is_Order', isEqualTo: false),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitDoubleBounce(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            List<OrderDetailsRecord>
                                buttonOrderDetailsRecordList = snapshot.data;
                            final buttonOrderDetailsRecord =
                                buttonOrderDetailsRecordList.isNotEmpty
                                    ? buttonOrderDetailsRecordList.first
                                    : null;
                            return FFButtonWidget(
                              onPressed: () async {
                                if (!(buttonOrderDetailsRecord != null)) {
                                  final orderDetailsCreateData =
                                      createOrderDetailsRecordData(
                                    userId: currentUserReference,
                                    isOrder: false,
                                  );
                                  var orderDetailsRecordReference =
                                      OrderDetailsRecord.collection.doc();
                                  await orderDetailsRecordReference
                                      .set(orderDetailsCreateData);
                                  orderdetails =
                                      OrderDetailsRecord.getDocumentFromData(
                                          orderDetailsCreateData,
                                          orderDetailsRecordReference);
                                }
                                triggerPushNotification(
                                  notificationTitle: 'Added to Cart',
                                  notificationText:
                                      '${productDetailsProductMasterRecord.itemMaster} is added to cart. Go and shop now',
                                  notificationImageUrl:
                                      productDetailsProductMasterRecord
                                          .photoOnList,
                                  notificationSound: 'default',
                                  userRefs: [currentUserReference],
                                  initialPageName: 'Cart',
                                  parameterData: {},
                                );
                                triggerPushNotification(
                                  notificationTitle: 'Don\'t thick so much',
                                  notificationText:
                                      'Buy now ${productDetailsProductMasterRecord.itemMaster}',
                                  notificationImageUrl:
                                      productDetailsProductMasterRecord
                                          .photoOnList,
                                  notificationSound: 'default',
                                  userRefs: [currentUserReference],
                                  initialPageName: 'Product_Details',
                                  parameterData: {
                                    'prid': widget.prid,
                                    'psql': widget.psql,
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        child: QuantityWidget(
                                          cartid:
                                              productDetailsProductMasterRecord,
                                          psql: widget.psql,
                                        ),
                                      ),
                                    );
                                  },
                                );

                                setState(() {});
                              },
                              text: 'Add to Cart',
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: 160,
                                height: 50,
                                color: Color(0xFF4B39EF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ).animated([animationsMap['containerOnPageLoadAnimation2']]),
            ],
          ),
        );
      },
    );
  }
}
