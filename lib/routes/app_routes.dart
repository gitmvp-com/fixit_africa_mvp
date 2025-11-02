import 'package:flutter/material.dart';
import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/email_verification_screen/email_verification_screen.dart';
import '../presentation/welcome_landing_screen/welcome_landing_screen.dart';
import '../presentation/welcome_sign_up_screen/welcome_sign_up_screen.dart';
import '../presentation/my_cars_screen/my_cars_screen.dart';
import '../presentation/service_booking_screen/service_booking_screen.dart';
import '../presentation/find_mechanics_screen/find_mechanics_screen.dart';
import '../presentation/mechanic_profile_screen/mechanic_profile_screen.dart';
import '../presentation/service_tracking_screen/service_tracking_screen.dart';
import '../presentation/payment_screen/payment_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/help_support_screen/help_support_screen.dart';
import '../presentation/parts_marketplace_screen/parts_marketplace_screen.dart';
import '../presentation/item_details_screen/item_details_screen.dart';
import '../presentation/price_comparison_screen/price_comparison_screen.dart';
import '../presentation/reviews_screen/reviews_screen.dart';
import '../presentation/booking_confirmation_screen/booking_confirmation_screen.dart';
import '../presentation/rate_your_mechanic_screen/rate_your_mechanic_screen.dart';
import '../presentation/service_history_screen/service_history_screen.dart';
import '../presentation/user_profile_screen/user_profile_screen.dart';
import '../presentation/garage_profile_screen/garage_profile_screen.dart';
import '../presentation/garages_screen/garages_screen.dart';
import '../presentation/favorite_garages_screen/favorite_garages_screen.dart';
import '../presentation/rate_garage_screen/rate_garage_screen.dart';
import '../presentation/chat_messaging_screen/chat_messaging_screen.dart';
import '../presentation/navigation_screen/navigation_screen.dart';
import '../presentation/roadside_assistance_screen/roadside_assistance_screen.dart';
import '../presentation/ai_repair_assistant_screen/ai_repair_assistant_screen.dart';
import '../presentation/identify_car_part_screen/identify_car_part_screen.dart';
import '../presentation/repair_guides_screen/repair_guides_screen.dart';
import '../presentation/maintenance_reminders_screen/maintenance_reminders_screen.dart';
import '../presentation/mechanic_signup_screen_1/mechanic_signup_screen_1.dart';
import '../presentation/mechanic_signup_screen_2/mechanic_signup_screen_2.dart';
import '../presentation/mechanic_profile_creation_screen/mechanic_profile_creation_screen.dart';
import '../presentation/mechanic_onboarding_screen/mechanic_onboarding_screen.dart';
import '../presentation/garage_affiliation_screen/garage_affiliation_screen.dart';
import '../presentation/document_verification_screen/document_verification_screen.dart';
import '../presentation/bank_details_setup_screen/bank_details_setup_screen.dart';
import '../presentation/mechanic_performance_screen/mechanic_performance_screen.dart';
import '../presentation/customer_feedback_screen/customer_feedback_screen.dart';
import '../presentation/financial_overview_screen/financial_overview_screen.dart';
import '../presentation/transaction_history_screen/transaction_history_screen.dart';
import '../presentation/payouts_screen/payouts_screen.dart';
import '../presentation/expenses_screen/expenses_screen.dart';
import '../presentation/analytics_screen/analytics_screen.dart';
import '../presentation/support_screen/support_screen.dart';
import '../presentation/top_mechanics_garages_screen/top_mechanics_garages_screen.dart';
import '../presentation/inventory_screen/inventory_screen.dart';
import '../presentation/bulk_upload_screen/bulk_upload_screen.dart';
import '../presentation/bulk_edit_screen/bulk_edit_screen.dart';
import '../presentation/bulk_update_screen/bulk_update_screen.dart';
import '../presentation/dynamic_pricing_screen/dynamic_pricing_screen.dart';
import '../presentation/garage_management_screen/garage_management_screen.dart';
import '../presentation/report_an_issue_screen/report_an_issue_screen.dart';
import '../presentation/order_details_screen/order_details_screen.dart';
import '../presentation/admin_dashboard_screen/admin_dashboard_screen.dart';
import '../presentation/user_reports_screen/user_reports_screen.dart';
import '../presentation/support_tickets_screen/support_tickets_screen.dart';
import '../presentation/user_management_screen/user_management_screen.dart';
import '../presentation/points_history_screen/points_history_screen.dart';
import '../presentation/enhanced_marketplace_screen/enhanced_marketplace_screen.dart';
import '../presentation/reported_listings_screen/reported_listings_screen.dart';
import '../presentation/verification_requests_screen/verification_requests_screen.dart';
import '../presentation/loyalty_program_screen/loyalty_program_screen.dart';
import '../presentation/rewards_screen/rewards_screen.dart';
import '../presentation/gift_cards_referrals_screen/gift_cards_referrals_screen.dart';
import '../presentation/product_combo_screen/product_combo_screen.dart';
import '../presentation/redeem_gift_card_screen/redeem_gift_card_screen.dart';
import '../presentation/gift_cards_referrals_management_screen/gift_cards_referrals_management_screen.dart';
import '../presentation/premium_upgrade_screen/premium_upgrade_screen.dart';
import '../presentation/admin_inbox_screen/admin_inbox_screen.dart';
import '../presentation/parts_screen/parts_screen.dart';

class AppRoutes {
  static const String signInScreen = '/sign-in-screen';
  static const String signUpScreen = '/sign-up-screen';
  static const String emailVerificationScreen = '/email-verification-screen';
  static const String welcomeLandingScreen = '/welcome-landing-screen';
  static const String welcomeSignUpScreen = '/welcome-sign-up-screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String myCarsScreen = '/my_cars_screen';
  static const String serviceBookingScreen = '/service_booking_screen';
  static const String findMechanicsScreen = '/find_mechanics_screen';
  static const String mechanicProfileScreen = '/mechanic_profile_screen';
  static const String serviceTrackingScreen = '/service_tracking_screen';
  static const String paymentScreen = '/payment_screen';
  static const String profileScreen = '/profile_screen';
  static const String notificationsScreen = '/notifications_screen';
  static const String helpSupportScreen = '/help_support_screen';
  static const String partsMarketplaceScreen = '/parts_marketplace_screen';
  static const String itemDetailsScreen = '/item_details_screen';
  static const String priceComparisonScreen = '/price_comparison_screen';
  static const String reviewsScreen = '/reviews_screen';
  static const String bookingConfirmationScreen = '/booking_confirmation_screen';
  static const String rateYourMechanicScreen = '/rate_your_mechanic_screen';
  static const String serviceHistoryScreen = '/service_history_screen';
  static const String userProfileScreen = '/user_profile_screen';
  static const String garageProfileScreen = '/garage_profile_screen';
  static const String garagesScreen = '/garages_screen';
  static const String favoriteGaragesScreen = '/favorite_garages_screen';
  static const String rateGarageScreen = '/rate_garage_screen';
  static const String chatMessagingScreen = '/chat_messaging_screen';
  static const String navigationScreen = '/navigation_screen';
  static const String roadsideAssistanceScreen = '/roadside_assistance_screen';
  static const String aiRepairAssistantScreen = '/ai_repair_assistant_screen';
  static const String identifyCarPartScreen = '/identify_car_part_screen';
  static const String repairGuidesScreen = '/repair_guides_screen';
  static const String maintenanceRemindersScreen = '/maintenance_reminders_screen';
  static const String mechanicSignupScreen1 = '/mechanic_signup_screen_1';
  static const String mechanicSignupScreen2 = '/mechanic_signup_screen_2';
  static const String mechanicProfileCreationScreen = '/mechanic_profile_creation_screen';
  static const String mechanicOnboardingScreen = '/mechanic_onboarding_screen';
  static const String garageAffiliationScreen = '/garage_affiliation_screen';
  static const String documentVerificationScreen = '/document_verification_screen';
  static const String bankDetailsSetupScreen = '/bank_details_setup_screen';
  static const String mechanicPerformanceScreen = '/mechanic_performance_screen';
  static const String customerFeedbackScreen = '/customer_feedback_screen';
  static const String financialOverviewScreen = '/financial_overview_screen';
  static const String transactionHistoryScreen = '/transaction_history_screen';
  static const String payoutsScreen = '/payouts_screen';
  static const String expensesScreen = '/expenses_screen';
  static const String analyticsScreen = '/analytics_screen';
  static const String supportScreen = '/support_screen';
  static const String topMechanicsGaragesScreen = '/top_mechanics_garages_screen';
  static const String inventoryScreen = '/inventory_screen';
  static const String bulkUploadScreen = '/bulk_upload_screen';
  static const String bulkEditScreen = '/bulk_edit_screen';
  static const String bulkUpdateScreen = '/bulk_update_screen';
  static const String dynamicPricingScreen = '/dynamic_pricing_screen';
  static const String garageManagementScreen = '/garage_management_screen';
  static const String reportAnIssueScreen = '/report_an_issue_screen';
  static const String orderDetailsScreen = '/order_details_screen';
  static const String adminDashboardScreen = '/admin_dashboard_screen';
  static const String userReportsScreen = '/user_reports_screen';
  static const String supportTicketsScreen = '/support_tickets_screen';
  static const String userManagementScreen = '/user_management_screen';
  static const String pointsHistoryScreen = '/points_history_screen';
  static const String enhancedMarketplaceScreen = '/enhanced_marketplace_screen';
  static const String reportedListingsScreen = '/reported_listings_screen';
  static const String verificationRequestsScreen = '/verification_requests_screen';
  static const String loyaltyProgramScreen = '/loyalty_program_screen';
  static const String rewardsScreen = '/rewards_screen';
  static const String giftCardsReferralsScreen = '/gift_cards_referrals_screen';
  static const String productComboScreen = '/product_combo_screen';
  static const String redeemGiftCardScreen = '/redeem_gift_card_screen';
  static const String giftCardsReferralsManagementScreen = '/gift_cards_referrals_management_screen';
  static const String premiumUpgradeScreen = '/premium_upgrade_screen';
  static const String adminInboxScreen = '/admin_inbox_screen';
  static const String partsScreen = '/parts-screen';

  static Map<String, WidgetBuilder> get routes => {
    welcomeLandingScreen: (context) => const WelcomeLandingScreen(),
    welcomeSignUpScreen: (context) => const WelcomeSignUpScreen(),
    signInScreen: (context) => const SignInScreen(),
    signUpScreen: (context) => const SignUpScreen(),
    emailVerificationScreen: (context) => const EmailVerificationScreen(),
    dashboardScreen: (context) => const DashboardScreen(),
    myCarsScreen: (context) => const MyCarsScreen(),
    serviceBookingScreen: (context) => const ServiceBookingScreen(),
    findMechanicsScreen: (context) => const FindMechanicsScreen(),
    mechanicProfileScreen: (context) => const MechanicProfileScreen(),
    serviceTrackingScreen: (context) => const ServiceTrackingScreen(),
    paymentScreen: (context) => const PaymentScreen(),
    profileScreen: (context) => const ProfileScreen(),
    notificationsScreen: (context) => const NotificationsScreen(),
    helpSupportScreen: (context) => const HelpSupportScreen(),
    partsMarketplaceScreen: (context) => const PartsMarketplaceScreen(),
    itemDetailsScreen: (context) => const ItemDetailsScreen(),
    priceComparisonScreen: (context) => const PriceComparisonScreen(),
    reviewsScreen: (context) => const ReviewsScreen(),
    bookingConfirmationScreen: (context) => const BookingConfirmationScreen(),
    rateYourMechanicScreen: (context) => const RateYourMechanicScreen(),
    serviceHistoryScreen: (context) => const ServiceHistoryScreen(),
    userProfileScreen: (context) => const UserProfileScreen(),
    garageProfileScreen: (context) => const GarageProfileScreen(),
    garagesScreen: (context) => const GaragesScreen(),
    favoriteGaragesScreen: (context) => const FavoriteGaragesScreen(),
    rateGarageScreen: (context) => const RateGarageScreen(),
    chatMessagingScreen: (context) => const ChatMessagingScreen(),
    navigationScreen: (context) => const NavigationScreen(),
    roadsideAssistanceScreen: (context) => const RoadsideAssistanceScreen(),
    aiRepairAssistantScreen: (context) => const AiRepairAssistantScreen(),
    identifyCarPartScreen: (context) => const IdentifyCarPartScreen(),
    repairGuidesScreen: (context) => const RepairGuidesScreen(),
    maintenanceRemindersScreen: (context) => const MaintenanceRemindersScreen(),
    mechanicSignupScreen1: (context) => const MechanicSignupScreen1(),
    mechanicSignupScreen2: (context) => const MechanicSignupScreen2(),
    mechanicProfileCreationScreen: (context) => const MechanicProfileCreationScreen(),
    mechanicOnboardingScreen: (context) => const MechanicOnboardingScreen(),
    garageAffiliationScreen: (context) => const GarageAffiliationScreen(),
    documentVerificationScreen: (context) => const DocumentVerificationScreen(),
    bankDetailsSetupScreen: (context) => const BankDetailsSetupScreen(),
    mechanicPerformanceScreen: (context) => const MechanicPerformanceScreen(),
    customerFeedbackScreen: (context) => const CustomerFeedbackScreen(),
    financialOverviewScreen: (context) => const FinancialOverviewScreen(),
    transactionHistoryScreen: (context) => const TransactionHistoryScreen(),
    payoutsScreen: (context) => const PayoutsScreen(),
    expensesScreen: (context) => const ExpensesScreen(),
    analyticsScreen: (context) => const AnalyticsScreen(),
    supportScreen: (context) => const SupportScreen(),
    topMechanicsGaragesScreen: (context) => const TopMechanicsGaragesScreen(),
    inventoryScreen: (context) => const InventoryScreen(),
    bulkUploadScreen: (context) => const BulkUploadScreen(),
    bulkEditScreen: (context) => const BulkEditScreen(),
    bulkUpdateScreen: (context) => const BulkUpdateScreen(),
    dynamicPricingScreen: (context) => const DynamicPricingScreen(),
    garageManagementScreen: (context) => const GarageManagementScreen(),
    reportAnIssueScreen: (context) => const ReportAnIssueScreen(),
    orderDetailsScreen: (context) => const OrderDetailsScreen(),
    adminDashboardScreen: (context) => const AdminDashboardScreen(),
    userReportsScreen: (context) => const UserReportsScreen(),
    supportTicketsScreen: (context) => const SupportTicketsScreen(),
    userManagementScreen: (context) => const UserManagementScreen(),
    pointsHistoryScreen: (context) => const PointsHistoryScreen(),
    enhancedMarketplaceScreen: (context) => const EnhancedMarketplaceScreen(),
    reportedListingsScreen: (context) => const ReportedListingsScreen(),
    verificationRequestsScreen: (context) => const VerificationRequestsScreen(),
    loyaltyProgramScreen: (context) => const LoyaltyProgramScreen(),
    rewardsScreen: (context) => const RewardsScreen(),
    giftCardsReferralsScreen: (context) => const GiftCardsReferralsScreen(),
    productComboScreen: (context) => const ProductComboScreen(),
    redeemGiftCardScreen: (context) => const RedeemGiftCardScreen(),
    giftCardsReferralsManagementScreen: (context) => const GiftCardsReferralsManagementScreen(),
    premiumUpgradeScreen: (context) => const PremiumUpgradeScreen(),
    adminInboxScreen: (context) => const AdminInboxScreen(),
    partsScreen: (context) => const PartsScreen(),
  };
}
