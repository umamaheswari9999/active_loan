// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i18;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/data/repo/auth_repository_impl.dart' as _i9;
import '../auth/domain/repo/auth_repository.dart' as _i8;
import '../auth/presentation/bloc/ad_user/ad_user_bloc.dart' as _i41;
import '../auth/presentation/bloc/otp_verification/otp_verification_bloc.dart'
    as _i43;
import '../auth/presentation/bloc/sign_in/sign_in_bloc.dart' as _i40;
import '../features/add_bank_details/repo/bank_details/bankdetails_networkService.dart'
    as _i11;
import '../features/add_bank_details/repo/bank_details/bankdetails_repo.dart'
    as _i47;
import '../features/emi_charges/data/repo/emi_charges_repo_impl.dart' as _i16;
import '../features/emi_charges/domain/repo/emi_charges_repo.dart' as _i15;
import '../features/emi_charges/presentation/bloc/emi_charges_bloc.dart'
    as _i49;
import '../features/emi_charges/presentation/bloc/other_charges_bloc.dart'
    as _i35;
import '../features/homeScreen/repo/loandetailsService.dart' as _i25;
import '../features/homeScreen/repo/loans_repository.dart' as _i39;
import '../features/kycVerificationndDetails/repo/additional_information/additionalinf_networkservice.dart'
    as _i6;
import '../features/kycVerificationndDetails/repo/additional_information/additionalInf_repo.dart'
    as _i44;
import '../features/kycVerificationndDetails/repo/kyc_repo/kyc_networkService.dart'
    as _i21;
import '../features/kycVerificationndDetails/repo/kyc_repo/kyc_repo.dart'
    as _i22;
import '../features/kycVerificationndDetails/repo/ldsloanstatus/status_repo.dart'
    as _i46;
import '../features/kycVerificationndDetails/repo/ldsloanstatus/statuschange_networkService.dart'
    as _i23;
import '../features/kycVerificationndDetails/repo/locations_Clientmaster/clientmaster_networkservice.dart'
    as _i13;
import '../features/kycVerificationndDetails/repo/locations_Clientmaster/location_repo.dart'
    as _i27;
import '../features/my_loans_inf/data/repo/my_loans_inf_repo_impl.dart' as _i29;
import '../features/my_loans_inf/domain/repo/my_loans_inf_repo.dart' as _i28;
import '../features/my_loans_inf/presentation/bloc/my_loans_inf_bloc.dart'
    as _i52;
import '../features/panValidation/repo/formCreation/form_repository.dart'
    as _i50;
import '../features/panValidation/repo/formCreation/formnetworkService.dart'
    as _i19;
import '../features/panValidation/repo/panValidations/pan_validationService.dart'
    as _i36;
import '../features/panValidation/repo/panValidations/repository/pan_repository.dart'
    as _i37;
import '../loans/domain/repo/loan_repo.dart' as _i4;
import '../loans/presentation/bloc/add_attachment/add_attachment_cubit.dart'
    as _i3;
import '../loans/presentation/bloc/add_note/add_note_cubit.dart' as _i5;
import '../loans/presentation/bloc/attachment_doc_types/attachment_doc_types_cubit.dart'
    as _i7;
import '../loans/presentation/bloc/bank_accounts/bank_accounts_cubit.dart'
    as _i10;
import '../loans/presentation/bloc/download_attachment/download_attachment_cubit.dart'
    as _i14;
import '../loans/presentation/bloc/emi_plans/emi_plans_cubit.dart' as _i17;
import '../loans/presentation/bloc/kyc_check/kyc_check_cubit.dart' as _i20;
import '../loans/presentation/bloc/loan_attachments/loan_attachments_cubit.dart'
    as _i24;
import '../loans/presentation/bloc/loans/loans_cubit.dart' as _i26;
import '../loans/presentation/bloc/new_loan/new_loan_cubit.dart' as _i33;
import '../loans/presentation/bloc/new_loan_actions/new_loan_action_cubit.dart'
    as _i32;
import '../loans/presentation/bloc/notes/notes_cubit.dart' as _i34;
import '../loans/presentation/bloc/recent_loans/recent_loans_cubit.dart'
    as _i38;
import '../my_loans/data/repo/my_loans_repo_impl.dart' as _i31;
import '../my_loans/domain/repo/my_loans_repo.dart' as _i30;
import '../my_loans/presentation/bloc/my_loans_bloc.dart' as _i51;
import '../shared/api_helper.dart' as _i45;
import '../shared/usecases/check_user_credentails_usecase.dart' as _i48;
import '../sign_up/data/sign_up_repository.dart' as _i53;
import '../sign_up/data/sign_up_servicelocator.dart' as _i42;
import 'external_libs_injection.dart'
    as _i54; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalLibs = _$ExternalLibs();
  gh.factory<_i3.AddAttachmentCubit>(
      () => _i3.AddAttachmentCubit(get<_i4.LoanRepo>()));
  gh.factory<_i5.AddNoteCubit>(() => _i5.AddNoteCubit(get<_i4.LoanRepo>()));
  gh.lazySingleton<_i6.AdditionalInformation>(
      () => _i6.AdditionalInformation());
  gh.factory<_i7.AttachmentDocTypesCubit>(
      () => _i7.AttachmentDocTypesCubit(get<_i4.LoanRepo>()));
  gh.lazySingleton<_i8.AuthRepository>(() => _i9.AuthRepositoryImpl());
  gh.factory<_i10.BankAccountsCubit>(
      () => _i10.BankAccountsCubit(get<_i4.LoanRepo>()));
  gh.lazySingleton<_i11.BankdetailsnetworkServiece>(
      () => _i11.BankdetailsnetworkServiece());
  gh.lazySingleton<_i12.Client>(() => externalLibs.client);
  gh.lazySingleton<_i13.ClientmasterLocationsfetch>(
      () => _i13.ClientmasterLocationsfetch());
  gh.factory<_i14.DownloadAttachmentCubit>(
      () => _i14.DownloadAttachmentCubit(get<_i4.LoanRepo>()));
  gh.lazySingleton<_i15.EmiChargesRepo>(() => _i16.EmiChrgesRepoImpl());
  gh.factory<_i17.EmiPlansCubit>(() => _i17.EmiPlansCubit(get<_i4.LoanRepo>()));
  gh.lazySingleton<_i18.FlutterSecureStorage>(() => externalLibs.secureStorage);
  gh.lazySingleton<_i19.FormcreationNetworkServiece>(
      () => _i19.FormcreationNetworkServiece());
  gh.factory<_i20.KycCheckCubit>(() => _i20.KycCheckCubit(get<_i4.LoanRepo>()));
  gh.lazySingleton<_i21.KycFlowsteps>(() => _i21.KycFlowsteps());
  gh.factory<_i22.KycRepo>(
      () => _i22.KycRepo(service: get<_i21.KycFlowsteps>()));
  gh.lazySingleton<_i23.LdsapploanstatusUpdate>(
      () => _i23.LdsapploanstatusUpdate());
  gh.factory<_i24.LoanAttachmentsCubit>(
      () => _i24.LoanAttachmentsCubit(get<_i4.LoanRepo>()));
  gh.lazySingleton<_i25.LoandetailsnetworkServiece>(
      () => _i25.LoandetailsnetworkServiece());
  gh.factory<_i26.LoansCubit>(() => _i26.LoansCubit(get<_i4.LoanRepo>()));
  gh.factory<_i27.LocationsRepo>(() =>
      _i27.LocationsRepo(service: get<_i13.ClientmasterLocationsfetch>()));
  gh.lazySingleton<_i28.MyLoansInfRepo>(() => _i29.MyLoansInfRepoImpl());
  gh.lazySingleton<_i30.MyLoansRepo>(() => _i31.MyLoansRepoImpl());
  gh.factory<_i32.NewLoanActionCubit>(
      () => _i32.NewLoanActionCubit(get<_i4.LoanRepo>()));
  gh.factory<_i33.NewLoanCubit>(() => _i33.NewLoanCubit(get<_i4.LoanRepo>()));
  gh.factory<_i34.NotesCubit>(() => _i34.NotesCubit(get<_i4.LoanRepo>()));
  gh.factory<_i35.OtherChargesBloc>(() =>
      _i35.OtherChargesBloc(otherChargesRepo: get<_i15.EmiChargesRepo>()));
  gh.lazySingleton<_i36.PANdetailsnetworkServiece>(
      () => _i36.PANdetailsnetworkServiece());
  gh.factory<_i37.PanRepo>(
      () => _i37.PanRepo(service: get<_i36.PANdetailsnetworkServiece>()));
  gh.factory<_i38.RecentLoansCubit>(
      () => _i38.RecentLoansCubit(get<_i4.LoanRepo>()));
  gh.factory<_i39.Repo>(
      () => _i39.Repo(service: get<_i25.LoandetailsnetworkServiece>()));
  gh.factory<_i40.SignInBloc>(() => _i40.SignInBloc(get<_i8.AuthRepository>()));
  gh.factory<_i41.UserCheckBloc>(
      () => _i41.UserCheckBloc(get<_i8.AuthRepository>()));
  gh.lazySingleton<_i42.UserdetailsnetworkService>(
      () => _i42.UserdetailsnetworkService());
  gh.factory<_i43.VerifyBloc>(() => _i43.VerifyBloc(get<_i8.AuthRepository>()));
  gh.factory<_i44.AdditionalInfRepo>(
      () => _i44.AdditionalInfRepo(service: get<_i6.AdditionalInformation>()));
  gh.lazySingleton<_i45.ApiHelper>(() => _i45.ApiHelper(get<_i12.Client>()));
  gh.factory<_i46.ApploanstatusUpdateRepo>(() => _i46.ApploanstatusUpdateRepo(
      service: get<_i23.LdsapploanstatusUpdate>()));
  gh.factory<_i47.BankRepo>(
      () => _i47.BankRepo(service: get<_i11.BankdetailsnetworkServiece>()));
  gh.factory<_i48.CheckUserCredentialsUseCase>(
      () => _i48.CheckUserCredentialsUseCase(get<_i45.ApiHelper>()));
  gh.factory<_i49.EmiChargesBloc>(
      () => _i49.EmiChargesBloc(emiChargesRepo: get<_i15.EmiChargesRepo>()));
  gh.factory<_i50.FormRepo>(
      () => _i50.FormRepo(service: get<_i19.FormcreationNetworkServiece>()));
  gh.factory<_i51.MyLoansBloc>(() => _i51.MyLoansBloc(get<_i30.MyLoansRepo>()));
  gh.factory<_i52.MyLoansInfBloc>(
      () => _i52.MyLoansInfBloc(myLoansInfRepo: get<_i28.MyLoansInfRepo>()));
  gh.factory<_i53.SignUpRepo>(
      () => _i53.SignUpRepo(service: get<_i42.UserdetailsnetworkService>()));
  return get;
}

class _$ExternalLibs extends _i54.ExternalLibs {}
