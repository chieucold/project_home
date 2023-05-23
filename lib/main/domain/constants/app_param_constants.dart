class AppParamConstants {
  AppParamConstants._();
  //code
  static const int code400 = 400;
  static const int code200 = 200;

  //key argument
  static const String keyArgumentMeInfoModel = 'keyArgumentMeInfoModel';
  static const String keyArgumentPayHome = 'keyArgumentPayHome';
  static const String receiver = 'receiver';
  static const String unitMoney = 'đ';
  static const String infoTransfer = 'infoTransfer';
  static const String infoKeyScreenConfirmation = 'infoKeyScreenConfirmation';
  static const String response = 'response';
  static const String transferArgument = 'transferArgument';
  static const String transferResult = 'transferResult';
  static const String receiverName = 'receiverName';
  static const String onSuccessLink = '000';
  static const String resultsBackToHome = 'resultsBackToHome';
  static const String resultsCheckLinkBank = 'SUCCESS';
  static const String resultsCheckLinkBankPending = 'PENDING';
  static const String resultsCheckLinkBankFailure = 'FAILURE';
  static const String resultsCheckLinkBankError = 'ERROR';
  static const String titleOmipay = 'OMIPAY';
  static const String formatPhone = '+84';
  static const String creditLimitPerMoth = 'CREDIT_LIMIT_PER_MONTH';
  static const String creditLimitPerDay = 'CREDIT_LIMIT_PER_DAY';
  static const String limitWithDraw = 'WITHDRAWAL';
  static const String isFromQrCode = 'isFromQrCode';
  static const String phoneNumber = 'phoneNumber';
  static const String withdrawalToBank = 'withdrawalToBank';
  static const String other = 'other';
  static const String withdrawal = 'withdraw';
  static const String balance = 'balance';
  static const String bankArgument = 'bankArgument';
  static const String isVerified = 'isVerified';
  static const String fromScreen = 'fromScreen';
  static const String onResumed = 'resumed';
  static const String settingValue = 'settingValue';
  static const String settingTransaction = 'settingTransaction';
  static const String reloadData = 'reloadData';
  static const String selectBankScreen = 'selectBankScreen';
  static const String depositBank = 'DEPOSIT_BANK';
  static const String withdrawalBank = 'WITHDRAWAL_BANK';

  //from screen connect bank
  static const String fromScreenRecharge = 'fromScreenRecharge';
  static const String fromScreenWithDraw = 'fromScreenWithDraw';
  static const String fromScreenMoneyVETC = 'fromScreenMoneyVETC';
  static const String fromScreenPayPhoneRecharge = 'fromScreenPayPhoneRecharge';
  static const String fromScreenTransactionConfirm =
      'fromScreenTransactionConfirm';

  // from screen invoice information
  static const String fromScreenInvoiceInformation =
      'fromScreenInvoiceInformation';
  static const String keyArgumentInvoiceInformation =
      'keyArgumentInvoiceInformation';

  static const String keyArgumentDetailsTvCap = 'keyArgumentDetailsTvCap';

  //pay service
  static const String electric = 'DIEN';
  static const String water = 'NUOC';
  static const String finance = 'THANH_TOAN_HOA_DON_TRA_SAU';
  static const String television = 'TRUYEN_HINH';
  static const String phoneService = 'DIEN_THOAI';
  static const String insurance = 'INSURANCE';
  static const String tuitionFee = 'HOA_DON_HOC_PHI';
  static const String card = 'CARD';
  static const String phone = 'PHONE';
  static const String internet = 'code';
  static const String depositPhone = 'NAP_TIEN_DIEN_THOAI';
  static const String depositCardPhone = 'NAP_MA_THE';
  static const String depositDataPhone = 'NAP_DATA_DIEN_THOAI';
  static const String phoneRechargePostpaid = 'THANH_TOAN_HOA_DON_TRA_SAU';
  static const String keyArgumentGeyBill = 'keyArgumentGeyBill';
  static const String keyArgumentPhoneBill = 'keyArgumentPhoneBill';
  static const String keyArgumentConfirmTransaction =
      'keyArgumentConfirmTransaction';
  static const String keyArgumentOtpPay = 'keyArgumentOtpPay';
  static const String keyArgumentSearchPayBill = 'keyArgumentSearchPayBill';
  static const String keyGetBankWithDraw = 'WITHDRAWAL_BANK';
  static const String keyWithdrawType = 'IBFT';

  // notification
  static const String keyCutBodyNotification = 'EWALLET';
  static const String keyGetDataNotification = 'payload';
  static const String keyGetTypeIdNotification = 'typeId';

  // key name bank
  static const String keySourceInternal = 'INTERNAL';
  static const String keyNameBankBidv = 'BIDV';

  // check transaction pre commit
  static const String keyDepositOmiPay =
      'DEPOSIT_OMIPAY'; // Phí nạp tiền vào ví
  static const String keyPaymentOmiPay =
      'PAYMENT_OMIPAY'; // Thanh toán service trên hệ thống OMIPAY
  static const String keyWithdrawOmiPay = 'WITHDRAW'; // Phí rút  tiền
  static const String keyTransferInternal =
      'TRANSFER_INTERNAL'; // - Chuyển tiền nộ bộ DONE
  static const String keyPaymentBankOrATM = 'PAYMENT_BANK_OR_ATM';
  static const String keyTransactionType = 'DEPOSIT';
  static const String keyWithdrawal = 'WITHDRAWAL';

  // fee key
  static const String day = 'DAY';
  static const String month = 'MONTH';

  static const String transactionLimit = 'TRANSACTION_LIMIT';
  static const String otpMethod = 'OTP_METHOD';
}
