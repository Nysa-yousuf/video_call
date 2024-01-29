import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:video_call/constants/app_theme.dart';
import 'package:video_call/constants/assets.dart';
import 'package:video_call/constants/device_utils.dart';
import 'package:video_call/ui_screens/video_call_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  late ThemeData themeData;

  ValueNotifier userCredential = ValueNotifier('');
  bool? userCredentialValue;


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    themeData = Theme.of(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sign In'),
            actions: [
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  ElevatedButton(
                      onPressed: () async {
                        bool result = await signOutFromGoogle();
                        if (result) userCredential.value = '';
                      },
                      child: const Text('Logout')),
                ],
              ),
          ],

        ),
        body: ValueListenableBuilder(
            valueListenable: userCredential,
            builder: (context, value, child) {
              return (userCredential.value == '' ||
                  userCredential.value == null)
                  ? Center(
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    iconSize: DeviceUtils.size10,
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.googleLogo,
                          height: 20,
                            width: 20,
                        ),
                         SizedBox(
                          width: DeviceUtils.size20,
                        ),
                        Text(
                          'Sign in with Google',
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.titleSmall,
                              color: themeData.colorScheme.onBackground,
                              fontWeight: 500),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),

                    onPressed: () async {
                      userCredential.value = await signInWithGoogle();
                      if (userCredential.value != null){
                        if (kDebugMode) {
                          print(userCredential.value.user!.email);
                        }
                      }
                    },
                  ),
                ),
              )
                  : Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 1.5, color: Colors.black54)),
                      child: Image.network(
                          userCredential.value.user!.photoURL.toString()),
                    ),
                      SizedBox(
                      height: DeviceUtils.size20,
                    ),
                    Text(userCredential.value.user!.displayName
                        .toString()),
                      SizedBox(
                      height: DeviceUtils.size20,
                    ),
                    Text(userCredential.value.user!.email.toString()),

                    SizedBox(
                      height: DeviceUtils.size50,
                    ),
                    _buildVideoCallButton(),
                  ],
                ),
              );
            }));
  }

  Widget _buildVideoCallButton() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Welcome! You are logged in.'),
        SizedBox(height: DeviceUtils.size16),
        ElevatedButton(
          onPressed: () {
            // Your video call initiation logic goes here
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Video Call Started'),
                  content: const Text('Your video call has been initiated.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const VideoCallingScreen()), (route) => false);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Start Video Call'),
        ),
      ],
    );
  }

  Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      if (kDebugMode) {
        print('exception->$e');
      }
    }
  }

  Future<bool> signOutFromGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}