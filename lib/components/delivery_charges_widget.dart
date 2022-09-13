import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../order_history/order_history_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryChargesWidget extends StatefulWidget {
  const DeliveryChargesWidget({
    Key key,
    this.odid,
  }) : super(key: key);

  final OrderDetailsRecord odid;

  @override
  _DeliveryChargesWidgetState createState() => _DeliveryChargesWidgetState();
}

class _DeliveryChargesWidgetState extends State<DeliveryChargesWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            border: Border.all(
              color: FlutterFlowTheme.of(context).secondaryText,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  'Delivery Charges',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.75, 0),
                  child: InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
          child: TextFormField(
            controller: textController,
            onChanged: (_) => EasyDebounce.debounce(
              'textController',
              Duration(milliseconds: 2000),
              () => setState(() {}),
            ),
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              labelText: 'Delivery Charges',
              hintText: 'Delivery Charges',
              hintStyle: FlutterFlowTheme.of(context).bodyText2,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              filled: true,
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              suffixIcon: textController.text.isNotEmpty
                  ? InkWell(
                      onTap: () async {
                        textController?.clear();
                        setState(() {});
                      },
                      child: Icon(
                        Icons.clear,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    )
                  : null,
            ),
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final orderDetailsUpdateData = createOrderDetailsRecordData(
                      deliveryCharges: 0.0,
                      subtotal: widget.odid.subtotal,
                      deliveryCharFree: true,
                      isDeliveryCharge: true,
                    );
                    await widget.odid.reference.update(orderDetailsUpdateData);
                    triggerPushNotification(
                      notificationTitle: 'Delivery Charges !!',
                      notificationText:
                          'Your delivery charges are ₹ 0 and the total payable amount is ${formatNumber(
                        functions.subtotal(widget.odid.subtotal, 0.0),
                        formatType: FormatType.custom,
                        format: '₹ ##,###',
                        locale: '',
                      )} . For more details click here',
                      notificationSound: 'default',
                      userRefs: [widget.odid.userId],
                      initialPageName: 'MyOrdersDetails',
                      parameterData: {
                        'odid': widget.odid,
                      },
                    );
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: OrderHistoryWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'Free',
                  options: FFButtonOptions(
                    width: 150,
                    height: 45,
                    color: Color(0xFF04EA04),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final orderDetailsUpdateData = createOrderDetailsRecordData(
                      deliveryCharges: double.parse(textController.text),
                      subtotal: widget.odid.subtotal,
                      deliveryCharFree: false,
                      isDeliveryCharge: true,
                    );
                    await widget.odid.reference.update(orderDetailsUpdateData);
                    triggerPushNotification(
                      notificationTitle: 'Delivery Charges !!',
                      notificationText:
                          'Your delivery charges are ${textController.text} and the total payable amount is ${formatNumber(
                        functions.subtotal(widget.odid.subtotal,
                            double.parse(textController.text)),
                        formatType: FormatType.custom,
                        format: '₹ ##,###',
                        locale: '',
                      )} . For more details click here',
                      notificationSound: 'default',
                      userRefs: [widget.odid.userId],
                      initialPageName: 'MyOrdersDetails',
                      parameterData: {
                        'odid': widget.odid,
                      },
                    );
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: OrderHistoryWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'Save',
                  options: FFButtonOptions(
                    width: 150,
                    height: 45,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
