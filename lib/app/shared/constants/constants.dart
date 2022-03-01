import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

//*App Constants

//!---Global Constants----------------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kShopName = 'Nome da Barbearia';
//?--------Colors---------------------------------------------------------------
const kPrimaryColor = Color(0xFF7D5A50);
const kPrimaryLightColor = Color(0xFFF5F6F9);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF593A2E),
    Color(0xFF646464),
  ],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kBackgroundPageColor = Color(0xFFFAFAFA);
const kBackgroundColor = Color(0xFFD8D8D8);
const kErrorColor = Color(0xFFFF4848);
const kSuccessColor = Color(0xFF4CAF50);
const kIconsSVGColor = Color(0xFF593A2E);
const kButtonBackgroundColor = Color(0xFFF5F6F9);
//?--------Assets Path----------------------------------------------------------
//?--------Patterns-------------------------------------------------------------
const kDateFormatPattern = 'dd/MM/yyyy';
//?--------Maps/List------------------------------------------------------------
//?--------Form Errors Message--------------------------------------------------
final RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = 'Por favor, digite o seu email';
const String kInvalidEmailError = 'Por favor, digite um email válido';
const String kPassNullError = 'Por favor digite a sua senha';
const String kShortPassError = 'A senha digitada é muito curta';
const String kNameNullError = 'Por favor, digite seu nome';
const String kPhoneNullError = 'Por favor, digite seu telefone para contato';
const String kStreetNullError = 'Por favor, digite o nome da rua, avenida, etc';
const String kNumberNullError = 'Por favor, digite o numero da casa';
const String kSuburbNullError = 'Por favor, digite o bairro';
//?--------Firebase Authentication Code Exceptions------------------------------
const String kAuthAccountExistsCode =
    'account-exists-with-different-credential';
const String kAuthEmailAlreadyInUseCode = 'email-already-in-use';
const String kAuthWrongPassCode = 'wrong-password';
const String kAuthUserDisableCode = 'user-disabled';
const String kAuthManyRequestsCode = 'too-many-requests';
const String kAuthOperationNotAllowedCode = 'operation-not-allowed';
const String kAuthInvalidEmailCode = 'invalid-email';
const String kAuthWeakPasswordCode = 'weak-password';
const String kAuthInvalidCredentialCode = 'invalid-credential';
const String kAuthUserNotFoundCode = 'user-not-found';
const String kAuthSigninRequiredCode = 'sign_in_required';
const String kAuthSigninCanceledCode = 'sign_in_canceled';
const String kAuthNetworkErrorCode = 'network_error';
const String kAuthSigninFailedCode = 'sign_in_failed';
const String kAuthNotAcceptTermsCode = 'not-accept-terms';
//?--------Firebase Authentication Message Exceptions---------------------------
const String kAuthEmailAlreadyInUseMessage =
    'Email já está em uso. Tente outro email ou faça Login';
const String kAuthWrongPassMessage = 'Senha incorreta para este email';
const String kAuthUserDisableMessage = 'Seu cadastro está desbilitado';
const String kAuthManyRequestsMessage = 'Muitas tentativas consecutivas falhas';
const String kAuthOperationNotAllowedMessage =
    'Erro no servidor, tente novamente mais tarde';
const String kAuthInvalidEmailMessage = 'Email digitado é inválido';
const String kAuthWeakPasswordMessage =
    'A senha digitada não é forte o suficiente para sua segurança';
const String kAuthInvalidCredentialMessage =
    'A credencial fornecida é inválida, tente outra conta ou outro método de login';
const String kAuthUserNotFoundMessage =
    'Usuário não encontrado, verifique o email digitado';
const String kAuthSigninRequiredMessage =
    'Requer que seja feito Login com uma conta Google';
const String kAuthSigninCanceledMessage = 'Processo de login cancelado';
const String kAuthNetworkErrorMessage =
    'Erro de rede, tente novamente mais tarde';
const String kAuthSigninFailedMessage =
    'Falha ao tentar efetuar login com o Google';
const String kAuthNotAcceptTermsMessage =
    'Aceite os Termos e Condições para poder utilizar o app';
const String kAuthDefaultMessage =
    'Falha ao tentar acessar, verifique as informações inseridas';
//?--------Settings/Duration/Sizes----------------------------------------------
const kAnimationDuration = Duration(microseconds: 200);
const kdefaultDuration = Duration(milliseconds: 250);

//!---Home Page Constants-------------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kHomeStatusOpenMsg = 'Já estamos abertos';
const kHomeStatusCloseMsg = 'Fechado, abriremos em breve';
const kHomeBannerMsg1 = 'Agende agora mesmo o seu horario na\n';
const kHomeSectionPortfoliosTitle = 'Nossos Portifólios';
const kHomeSectionPopularsCutsTitle = 'Cortes Populares';
const kHomePortfolioCardHairCutsTitle = 'Cortes de Cabelo';
const kHomePortfolioCardBarberCutsTitle = 'Cortes de Barba';
const kHomePortfolioCardHairCutsNumOptions = '20+';
const kHomePortfolioCardBarberCutsNumOptions = '18+';
const kHomePopularCutCardSubtitle = 'Degrade modelo';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kHomeIconBtnWithCounterSchedule =
    'assets/icons/icons/terms-and-conditions.svg';
const kHomeIconBtnWithCounterNotification = 'assets/icons/icons/bell.svg';
const kHomePortfolioCardHairCutsBkgdImg = 'assets/images/imagem-1.png';
const kHomePortfolioCardBarberCutsBkgdImg = 'assets/images/imagem-1.png';
const kHomeNotificationAssetClose = 'assets/icons/icons/minus.svg';
//?--------Maps/List------------------------------------------------------------
const kHomeOptionsArrayList = [
  {"icon": "assets/icons/headers/barbershop.svg", "text": "Opção 1"},
  {"icon": "assets/icons/headers/barber-chair.svg", "text": "Opção 2"},
  {"icon": "assets/icons/headers/barber.svg", "text": "Opção 3"},
  {"icon": "assets/icons/headers/gentleman.svg", "text": "Opção 4"},
  {"icon": "assets/icons/headers/razor-barber-1.svg", "text": "Opção 5"},
];
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Signup Page Constants-----------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kSignupTitle = 'Crie uma Conta';
const kSignupSubtitle =
    'Informe-nos seu nome para identificação, \nseu email e uma senha para acesso';
const kSignupAccThermsMsg =
    'Ao clicar em Cadastrar entendemos que você confirma a concordância \ncom os Termos e Condições de uso desta aplicação';

//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kSignUpIconAssetPathName = 'assets/icons/textfield/user.svg';
const kSignUpIconAssetPathEmail = 'assets/icons/textfield/email.svg';
const kSignUpIconAssetPathPassword = 'assets/icons/textfield/password.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Signin Page Constants-----------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kSigninTitle = 'Bem Vindo!';
const kSigninSubtitle =
    'Acesse agora mesmo o app com seu email e senha \n ou continue com sua rede social';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kSigninIconAssetPathEmail = 'assets/icons/textfield/email.svg';
const kSigninIconAssetPathPassword = 'assets/icons/textfield/password.svg';
const kSigninIconAssetPathGoogle = 'assets/icons/logos/google.svg';
const kSigninIconAssetPathFacebook = 'assets/icons/logos/facebook.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---ForgotPass Page Constants-------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kForgotPassTitle = 'Recuperação de Conta';
const kForgotPassSubtitle =
    'Por favor insira seu email e enviaremos à você\n um link para recuperação da sua conta';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kForgotPassIconAssetPathEmail = 'assets/icons/textfield/email.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Navigation Constants------------------------------------------------------
//?--------Texts----------------------------------------------------------------
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kNavigationBarIconAssetPathHome =
    'assets/icons/bottombar/home-bar-color.svg';
const kNavigationBarIconAssetPathSchedules =
    'assets/icons/bottombar/products-bar-color.svg';
const kNavigationBarIconAssetPathLoyalty =
    'assets/icons/icons/terms-and-conditions.svg';
const kNavigationBarIconAssetPathPortfolio =
    'assets/icons/icons/terms-and-conditions.svg';
const kNavigationBarIconAssetPathProfile =
    'assets/icons/bottombar/user-bar-color.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Onboarding Constants------------------------------------------------------
//?--------Texts----------------------------------------------------------------
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
//?--------Maps/List------------------------------------------------------------
const kSplashDataStringMap = [
  {
    'title': 'HEY!',
    'subtitle':
        'Bem vindo ao aplicativo de agendamentos de horários\n da Barbearia $kShopName',
    'image': 'assets/illustrations/barber-amico.svg',
  },
  {
    'title': 'PRONTO?',
    'subtitle': 'Agende agora mesmo um horário\n de forma fácil e segura',
    'image': 'assets/illustrations/calendar-amico.svg',
  },
  {
    'title': 'E AÍ?',
    'subtitle':
        'Não continue como um náufrago,\nbora dar um trato nesses fios aí!',
    'image': 'assets/illustrations/shipwreck-survivor-amico.svg',
  },
];
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Book Page Constants-------------------------------------------------------
//?--------Texts----------------------------------------------------------------
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kBookIconAssetPathLocal = 'assets/icons/textfield/address.svg';
const kBookIconAssetPathLocalOption = 'assets/icons/widgets/check-rounded.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------
const kSelectionShapeDate = DateRangePickerSelectionShape.rectangle;

//!---Loyalty Page Constants----------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kLoyaltyCardTitle = 'Pontuação:';
const kPrefixLoyaltyCardMsgCounting = 'Quase lá, faltam apenas ';
const kSuffixLoyaltyCardMsgCounting = ' pontos';
const kPrefixLoyaltyCardMsgInfo = 'A cada ';
const kMidstLoyaltyCardMsgInfo =
    ' cortes agendados pelo app ou realizados direto na barbearia você ganha um corte gratuito no valor de R\$ ';
const kSuffixLoyaltyCardMsgInfo = ' .';
const kQRCodeInstructionMsg =
    'Apresente este cupom em seu próximo agendamento para ter direito ao corte gratuito.';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kLoyaltyIconPointFilledAssetPathName =
    'assets/icons/widgets/check-rounded.svg';
const kLoyaltyIconPointNotFilledPathName =
    'assets/icons/widgets/check-rounded.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Schedule Page Constants---------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kPrefixIdScheduleTile = '#';
const kScheduleTileTitle = 'Informações';
const kPrefixScheduleDateTile = 'Agendado para o dia ';
const kPrefixScheduleHourTile = 'Horario: ';
const kPrefixScheduleLocalTile = 'Local: ';
const kPrefixScheduleAddressTile = 'Endereço: ';
const kPrefixScheduleProfessionalTile = 'Profissional: ';
const kScheduleStatus1 = 'Agendado';
const kScheduleStatus2 = 'Confirmado';
const kScheduleStatus3 = 'Realizado';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kSchedulesIconAssetPathName = 'assets/icons/textfield/address.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Portfolio Page Constants--------------------------------------------------
//?--------Texts----------------------------------------------------------------
//?--------Constants------------------------------------------------------------
const kPortfolioHairCutsTypeConstant = 'hair';
const kPortfolioBaberCutsTypeConstant = 'barber';
const kPortfolioPopularCutsTypeConstant = 'popular';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Profile Page Constants----------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kProfileMenuTitleTextEditAccount = 'Minha Conta';
const kProfileMenuTitleTextNotifications = 'Notificações';
const kProfileMenuTitleTextMyCoupons = 'Meus Cupons';
const kProfileMenuTitleTextTermsAndConditions = 'Ler os Termos e Condições';
const kProfileMenuTitleTextLogout = 'Sair do Aplicativo';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
const kProfileDefaultImageNetwork =
    'https://firebasestorage.googleapis.com/v0/b/barbearia-real.appspot.com/o/Web%201920%20%E2%80%93%201.png?alt=media&token=a9a37f7a-f4fd-409b-af13-5ed0da3f332e';
const kProfileAssetIconCamera = 'assets/icons/icons/camera.svg';
const kProfileAssetIconRightArrow = 'assets/icons/icons/right-arrow-angle.svg';
const kProfileAssetIconEditAccount = 'assets/icons/icons/edit.svg';
const kProfileAssetIconNotifications = 'assets/icons/icons/bell.svg';
const kProfileAssetIconMyCoupons = 'assets/icons/icons/discount-voucher.svg';
const kProfileAssetIconTermsAndConditions =
    'assets/icons/icons/terms-and-conditions.svg';
const kProfileAssetIconLogout = 'assets/icons/icons/logout.svg';
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------

//!---Cuts Page Constants----------------------------------------------------
//?--------Texts----------------------------------------------------------------
const kCutsDescriptionTitle = 'Sobre este modelo:';
const kCutsDescription2Title = 'Como manter o topete pompadour?:';
//?--------Colors---------------------------------------------------------------
//?--------Assets Path----------------------------------------------------------
//?--------Maps/List------------------------------------------------------------
//?--------Exceptions Code------------------------------------------------------
//?--------Settings/Duration/Sizes----------------------------------------------
