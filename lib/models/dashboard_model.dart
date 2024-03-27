class DashBoardModel {
  DashBoardModel({
    this.dashboard,
  });

  final Dashboard? dashboard;

  factory DashBoardModel.fromJson(Map<String, dynamic> json){
    return DashBoardModel(
      dashboard: json["dashboard"] == null ? null : Dashboard.fromJson(json["dashboard"]),
    );
  }

}

class Dashboard {
  Dashboard({
    required this.totalOrder,
    required this.customerQueries,
    required this.orderRequest,
    required this.customerStatus,
    required this.latestOrders,
  });

  final int? totalOrder;
  final int? customerQueries;
  final int? orderRequest;
  final int? customerStatus;
  final List<LatestOrder> latestOrders;

  factory Dashboard.fromJson(Map<String, dynamic> json){
    return Dashboard(
      totalOrder: json["total_order"],
      customerQueries: json["customer_queries"],
      orderRequest: json["order_request"],
      customerStatus: json["customer_status"],
      latestOrders: json["latest_orders"] == null ? [] : List<LatestOrder>.from(json["latest_orders"]!.map((x) => LatestOrder.fromJson(x))),
    );
  }

}

class LatestOrder {
  LatestOrder({
    required this.id,
    required this.invoiceNo,
    required this.branchId,
    required this.customerId,
    required this.employeeId,
    required this.saleBy,
    required this.name,
    required this.email,
    required this.phone,
    required this.price,
    required this.vat,
    required this.dueAmount,
    required this.paidAmount,
    required this.withSourceCode,
    required this.sourceCodeCost,
    required this.withServiceCharge,
    required this.serviceChargeCost,
    required this.projectName,
    required this.paymentMethod,
    required this.hasRenewableItem,
    required this.hasCustomizableItem,
    required this.paymentStatus,
    required this.nextRenewDate,
    required this.discount,
    required this.discountType,
    required this.note,
    required this.paymentProofImage,
    required this.paymentTransactionId,
    required this.paymentPhone,
    required this.paymentAccountNumber,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final String? invoiceNo;
  final int? branchId;
  final int? customerId;
  final int? employeeId;
  final dynamic saleBy;
  final dynamic name;
  final dynamic email;
  final dynamic phone;
  final int? price;
  final int? vat;
  final int? dueAmount;
  final int? paidAmount;
  final int? withSourceCode;
  final int? sourceCodeCost;
  final int? withServiceCharge;
  final int? serviceChargeCost;
  final String? projectName;
  final String? paymentMethod;
  final dynamic hasRenewableItem;
  final dynamic hasCustomizableItem;
  final int? paymentStatus;
  final dynamic nextRenewDate;
  final int? discount;
  final dynamic discountType;
  final String? note;
  final dynamic paymentProofImage;
  final dynamic paymentTransactionId;
  final dynamic paymentPhone;
  final String? paymentAccountNumber;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory LatestOrder.fromJson(Map<String, dynamic> json){
    return LatestOrder(
      id: json["id"],
      invoiceNo: json["invoice_no"],
      branchId: json["branch_id"],
      customerId: json["customer_id"],
      employeeId: json["employee_id"],
      saleBy: json["sale_by"],
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      price: json["price"],
      vat: json["vat"],
      dueAmount: json["due_amount"],
      paidAmount: json["paid_amount"],
      withSourceCode: json["with_source_code"],
      sourceCodeCost: json["source_code_cost"],
      withServiceCharge: json["with_service_charge"],
      serviceChargeCost: json["service_charge_cost"],
      projectName: json["project_name"],
      paymentMethod: json["payment_method"],
      hasRenewableItem: json["has_renewable_item"],
      hasCustomizableItem: json["has_customizable_item"],
      paymentStatus: json["payment_status"],
      nextRenewDate: json["next_renew_date"],
      discount: json["discount"],
      discountType: json["discount_type"],
      note: json["note"],
      paymentProofImage: json["payment_proof_image"],
      paymentTransactionId: json["payment_transaction_id"],
      paymentPhone: json["payment_phone"],
      paymentAccountNumber: json["payment_account_number"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
    );
  }

}
