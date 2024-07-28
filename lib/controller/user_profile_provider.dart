import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vikncodes_task/controller/auth/token_provider.dart';
import 'package:vikncodes_task/model/user_profile_moel/user_profile_moel.dart';
import 'package:vikncodes_task/service/get_user_profile_service.dart';
part 'user_profile_provider.g.dart';

@riverpod
Future<UserProfileModel> getUserProfile(GetUserProfileRef ref) async {
  return await GetUserProfileService()
      .getUserDetails(token: ref.read(tokenProvider.notifier).state ?? "");
}
