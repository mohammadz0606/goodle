import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper/colors.dart';
import '../services/analytics.dart';

class PrivacyScreen extends StatelessWidget {
  static const String route = "privacy_screen";

  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnalyticsApp.trackPageView("Privacy Screen");
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 30.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextTitle(context, text: "Privacy Policy"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(context,
                text:
                    "Tariq Alfakori built the Goodle app as a Free app. This SERVICE is provided by Tariq Alfakori at no cost and is intended for use as is.\n\nThis page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.\n\nIf you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.\n\nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Goodle unless otherwise defined in this Privacy Policy."),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(
              context,
              text: "Information Collection and Use",
            ),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to none. The information that I request will be retained on your device and is not collected by me in any way.\n\nThe app does use third-party services that may collect information used to identify you.\n\nLink to the privacy policy of third-party service providers used by the app",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildOptions(
              context,
              optionText: "Google Play Services",
              url: "https://policies.google.com/privacy",
            ),
            _buildOptions(
              context,
              optionText: "AdMob",
              url: "https://support.google.com/admob/answer/6128543?hl=en",
            ),
            _buildOptions(
              context,
              optionText: "Google Analytics for Firebase",
              url: "https://firebase.google.com/policies/analytics",
            ),
            _buildOptions(
              context,
              optionText: "Firebase Crashlytics",
              url: "https://firebase.google.com/support/privacy/",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Log Data"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Cookies"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\n\nThis Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Service Providers"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "I may employ third-party companies and individuals due to the following reasons:",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildOptions(
              context,
              optionText: "To facilitate our Service;",
            ),
            _buildSizedBoxTitleAndText(),
            _buildOptions(
              context,
              optionText: "To provide the Service on our behalf;",
            ),
            _buildSizedBoxTitleAndText(),
            _buildOptions(
              context,
              optionText: "To perform Service-related services;\nor",
            ),
            _buildSizedBoxTitleAndText(),
            _buildOptions(
              context,
              optionText: "To assist us in analyzing how our Service is used.",
            ),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Security"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Links to Other Sites"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Children’s Privacy"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Changes to This Privacy Policy"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\n\nThis policy is effective as of 2023-06-26",
            ),
            _buildSizedBoxTitleAndTitle(),
            _buildTextTitle(context, text: "Contact Us"),
            _buildSizedBoxTitleAndText(),
            _buildTextBody(
              context,
              text:
                  "If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at:",
            ),
            _buildTextBody(
              context,
              text: "goodlecontacts@gmail.com.",
              url: "goodlecontacts@gmail.com <goodlecontacts@gmail.com>;",
            ),
            _buildTextBody(
              context,
              text: "\nThis privacy policy page was created at:",
            ),
            _buildTextBody(
              context,
              text: "[privacypolicytemplate.net]",
              url: "https://privacypolicytemplate.net",
              fontSize: 7.sp,
            ),
            _buildTextBody(
              context,
              text: "modified/generated by [App Privacy Policy Generator]",
              url: "https://app-privacy-policy-generator.nisrulz.com/",
              fontSize: 7.sp,
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildOptions(
    BuildContext context, {
    required String optionText,
    String? url,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: Row(
        children: [
          _buildCircleAvatar(),
          SizedBox(width: 10.w),
          Expanded(
            child: _buildTextBody(
              context,
              text: optionText,
              url: url,
            ),
          ),
        ],
      ),
    );
  }

  CircleAvatar _buildCircleAvatar() {
    return CircleAvatar(
      radius: 2.8.r,
      backgroundColor: AppColors.black,
    );
  }

  GestureDetector _buildTextBody(
    BuildContext context, {
    required String text,
    String? url,
    double? fontSize,
  }) {
    return GestureDetector(
      onTap: () async {
        if (url != null && await canLaunchUrl(Uri.parse(url))) {
          if (url.contains("@")) {
            //await launchUrl(Uri.parse("mailto:$url"));
            await launchUrl(
              Uri(
                scheme: "mailto",
                path: url,
                query: encodeQueryParameters(<String, String>{
                  'subject': 'Example Subject & Symbols are allowed!',
                }),
              ),
            );
          } else {
            await launchUrl(Uri.parse(url));
          }
        }
      },
      child: url != null
          ? Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: fontSize ?? 14.sp,
                    decoration: TextDecoration.underline,
                  ),
            )
          : Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14.sp,
                  ),
            ),
    );
  }

  Text _buildTextTitle(
    BuildContext context, {
    required String text,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18.3.sp,
          ),
    );
  }

  SizedBox _buildSizedBoxTitleAndText() => SizedBox(height: 3.h);

  SizedBox _buildSizedBoxTitleAndTitle() => SizedBox(height: 15.h);

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Privacy",
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 22.sp,
              color: AppColors.red,
            ),
      ),
      leading: IconButton(
        color: AppColors.red,
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
