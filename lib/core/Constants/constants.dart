// ignore_for_file: non_constant_identifier_names

class Constants {

   static int? boxId ;
   static int? storeId ;
   static int counterCart=0;
   static int clientId=0;
   static int invTypeId=0;
   static String? invType;
   static String? idate_txt; 
   static String ENDPOINT_23 = "http://144.91.81.59:89"; 
   static String BASE_URL = "$ENDPOINT_23/api/";
   // http://sqlfalcon.ddns.net:89
   static String getDepartments = "Branch/Get";
   static String getUserLogin = "User/Login";
   static String getEmployeeSalary = "SalaryReport/GetUserSalaries";
   static String getUserProfile = "User/GetUserById";
   static String getAttendencRecordCheckIn = "CheckIn/AttendanceRecord";
   static String getAttendencStatus = "CheckIn/AllowRecordAttendanceOrNot";
   static String makeRequest = "Requests/AddRequest";
   static String getListRequest = "Requests/GetUserRequestsByTypeId";
   static String getPendingRequests = "Requests/GetPendingRequests";
   static String getAccept_RefusePending = "Requests/Accept_RefusePending";
   static String getAccept_RefuseManager = "Requests/Accept_Refuse";
   static String getManagerRequests = "Requests/GetManagerRequests";
   static String updateDeviceToken = "User/UpdateDeviceToken";
   static String userLogout = "User/Logout";
   static String prepareRequest = "Sell/PrepareRequest";
   static String prepareAllDatabase = "ChooseMyDB/Get";
   static String prepareNameOfDatabase = "ChooseMyDB/GetDB_byCompanyNumber";
   static String vacationKind = "Vacation_Code/Get";
   static String attendenceAndLeaving = "Attendance_Departure/GetAttendance_Departure";
   static String updateProfile = "UpdateProfileRequest/AddRequest";
   static String getAllUsers = "User/GetUsersInSameDepartment";
   static String getForgetPassword = "User/ForgetPassword";
   static String verifyToChangePassword = "User/VerifyToChangePassword";

   static String getProducts = "Product/GetProducts";
   static String getProductsByCategoryId = "Product/GetProductsByCategoryId";
   static String getCategories = "Category/GetCategories";
   static String getProductsByCategory = "Product/GetProductsByCategoryId";
   static String addCheckoutRequest = "Invoice/AddInvoice";
   static String getAllInvoices = "Invoice/GetMandopInvoices";
   static String addCollections = "Invoice/AddCollections";
   static String addCollectionsList = "Invoice/AddCollectionsList";
   static String getInvoiceData = "Invoice/GetVAT_Percent";
   static String getStoreBalance = "Store/GetStoreBalance";
   static String checkProductAvailability = "Product/CheckProductAvailability";
   static String getCustomerAccount = "Customer/GetCustomerAccount";
   static String getVersionNumber = "User/GetCurrentVersion";
   static String checkMinPrice = "Invoice/CheckMinPrice";
   static String checkCreditLimit = "Invoice/CheckCreditLimit";
}