import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/cartshow_widget.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({
    Key key,
    this.cartid,
    this.psql,
  }) : super(key: key);

  final ProductMasterRecord cartid;
  final dynamic psql;

  @override
  _QuantityWidgetState createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  ApiCallResponse order;
  OrdersRecord orderid;
  int countControllerValue;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<OrderDetailsRecord>>(
      stream: queryOrderDetailsRecord(
        queryBuilder: (orderDetailsRecord) => orderDetailsRecord
            .where('UserId', isEqualTo: currentUserReference)
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
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<OrderDetailsRecord> columnOrderDetailsRecordList = snapshot.data;
        final columnOrderDetailsRecord = columnOrderDetailsRecordList.isNotEmpty
            ? columnOrderDetailsRecordList.first
            : null;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 0.5,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Select The Quantity',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                    child: Image.network(
                      widget.cartid.photoOnList,
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                          child: Text(
                            widget.cartid.itemMaster,
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
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
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFF9E9E9E),
                                  width: 1,
                                ),
                              ),
                              child: FlutterFlowCountController(
                                decrementIconBuilder: (enabled) => FaIcon(
                                  FontAwesomeIcons.minus,
                                  color: enabled
                                      ? Color(0xDD000000)
                                      : Color(0xFFEEEEEE),
                                  size: 18,
                                ),
                                incrementIconBuilder: (enabled) => FaIcon(
                                  FontAwesomeIcons.plus,
                                  color:
                                      enabled ? Colors.blue : Color(0xFFEEEEEE),
                                  size: 20,
                                ),
                                countBuilder: (count) => Text(
                                  count.toString(),
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                count: countControllerValue ??= 1,
                                updateCount: (count) => setState(
                                    () => countControllerValue = count),
                                stepSize: 1,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final ordersCreateData = createOrdersRecordData(
                    userId: currentUserReference,
                    pid: widget.cartid.reference,
                    itemName: widget.cartid.itemMaster,
                    mrp: getJsonField(
                      widget.psql,
                      r'''$..mrp''',
                    ),
                    rate: getJsonField(
                      widget.psql,
                      r'''$..rate''',
                    ),
                    photoOnList: widget.cartid.photoOnList,
                    subtotal: functions
                        .quantityrate(
                            functions.defaultcd(
                                getJsonField(
                                  widget.psql,
                                  r'''$..rate''',
                                ),
                                getJsonField(
                                  widget.psql,
                                  r'''$..default_cd''',
                                )),
                            countControllerValue)
                        .toDouble(),
                    disc: getJsonField(
                      widget.psql,
                      r'''$..default_cd''',
                    ),
                    quantity: countControllerValue,
                    orderDetails: columnOrderDetailsRecord.reference,
                    orderTime: getCurrentTimestamp,
                    sQLId: widget.cartid.sQLId,
                  );
                  var ordersRecordReference = OrdersRecord.collection.doc();
                  await ordersRecordReference.set(ordersCreateData);
                  orderid = OrdersRecord.getDocumentFromData(
                      ordersCreateData, ordersRecordReference);
                  order = await CreateOrderCall.call(
                    stype: 'CreateOrder',
                    itemId: widget.cartid.sQLId,
                    quantity: countControllerValue,
                    itemName: widget.cartid.itemMaster,
                    mrp: getJsonField(
                      widget.psql,
                      r'''$..mrp''',
                    ),
                    rate: getJsonField(
                      widget.psql,
                      r'''$..rate''',
                    ),
                    defaultCd: getJsonField(
                      widget.psql,
                      r'''$..default_cd''',
                    ),
                    subtotal: functions
                        .quantityrate(
                            functions.defaultcd(
                                getJsonField(
                                  widget.psql,
                                  r'''$..rate''',
                                ),
                                getJsonField(
                                  widget.psql,
                                  r'''$..default_cd''',
                                )),
                            countControllerValue)
                        .toDouble(),
                    orderStatus: 'Not Placed',
                    deliveryCharge: 0.0,
                    isOrdered: false,
                    orderTime: getCurrentTimestamp.toString(),
                    userId: currentUserUid,
                  );
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: CartshowWidget(
                            cartid: widget.cartid,
                            psql: widget.psql,
                          ),
                        ),
                      );
                    },
                  );

                  setState(() {});
                },
                text: 'Add To Cart',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
