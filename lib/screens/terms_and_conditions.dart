import 'package:playstore_app/datas/account_menu_json.dart';
import 'package:playstore_app/screens/SyllabusScreen.dart';
import 'package:playstore_app/theme/colors.dart';
import 'package:playstore_app/theme/padding.dart';
import 'package:playstore_app/uiwidgets/custom_place_holder.dart';
import 'package:playstore_app/uiwidgets/custom_place_holder_contact_support.dart';
import 'package:playstore_app/uiwidgets/custom_title.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:playstore_app/theme/theme_provider.dart';
import 'package:playstore_app/widgets/ChangeThemeButtonWidget.dart';

import 'package:provider/provider.dart';
import 'package:playstore_app/theme/theme_provider.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  TermsAndConditionsState createState() => TermsAndConditionsState();
}

class TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appbarColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            // ? Color.fromARGB(255, 62, 61, 61)
            ? const Color.fromARGB(255, 62, 61, 61)
            : Colors.blue.shade600;
    final textWhite =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            // ? Color.fromARGB(255, 62, 61, 61)
            ? const Color.fromARGB(227, 56, 53, 53)
            : const Color(0xFFFFFFFF);

    return Scaffold(
      backgroundColor: textWhite,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Text('Terms and Conditions'),
          actions: [ChangeThemeButtonWidget()],
          backgroundColor: appbarColor,
          elevation: 0.0,
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    // var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18, 100, 20, 20),
        child: Column(children: [
          Text(
            '''Terms and Conditions


Welcome to alevelnotes!
These terms and conditions outline the rules and regulations for the use of alevelnotes's app.

By accessing this app we assume you accept these terms and conditions. Do not continue to use alevelnotes if you do not agree to take all of the terms and conditions stated on this page.

The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: "Client", "You" and "Your" refers to you, the person log on this app and compliant to the Company’s terms and conditions. "The Company", "Ourselves", "We", "Our" and "Us", refers to our Company. "Party", "Parties", or "Us", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.

Cookies
We employ the use of cookies. By accessing alevelnotes, you agreed to use cookies in agreement with the alevelnotes's Privacy Policy.

Most interactive apps use cookies to let us retrieve the user’s details for each visit. Cookies are used by our app to enable the functionality of certain areas to make it easier for people visiting our app. Some of our affiliate/advertising partners may also use cookies.

License
Unless otherwise stated, alevelnotes and/or its licensors own the intellectual property rights for all material on alevelnotes. All intellectual property rights are reserved. You may access this from alevelnotes for your own personal use subjected to restrictions set in these terms and conditions.

You must not:

Republish material from alevelnotes
Sell, rent or sub-license material from alevelnotes
Reproduce, duplicate or copy material from alevelnotes
Redistribute content from alevelnotes
This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Terms And Conditions Generator.

Parts of this app offer an opportunity for users to post and exchange opinions and information in certain areas of the app. alevelnotes does not filter, edit, publish or review Comments prior to their presence on the app. Comments do not reflect the views and opinions of alevelnotes,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, alevelnotes shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this app.

alevelnotes reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.

You warrant and represent that:

You are entitled to post the Comments on our app and have all necessary licenses and consents to do so;
The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;
The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy
The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.
You hereby grant alevelnotes a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.

Hyperlinking to our Content
The following organizations may link to our app without prior written approval:

Government agencies;
Search engines;
News organizations;
Online directory distributors may link to our app in the same manner as they hyperlink to the apps of other listed businesses; and
System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our app.
These organizations may link to our home page, to publications or to other app information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.

We may consider and approve other link requests from the following types of organizations:

commonly-known consumer and/or business information sources;
dot.com community sites;
associations or other groups representing charities;
online directory distributors;
internet portals;
accounting, law and consulting firms; and
educational institutions and trade associations.
We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of alevelnotes; and (d) the link is in the context of general resource information.

These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.

If you are one of the organizations listed in paragraph 2 above and are interested in linking to our app, you must inform us by sending an e-mail to alevelnotes. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our app, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.

Approved organizations may hyperlink to our app as follows:

By use of our corporate name; or
By use of the uniform resource locator being linked to; or
By use of any other description of our app being linked to that makes sense within the context and format of content on the linking party’s site.
No use of alevelnotes's logo or other artwork will be allowed for linking absent a trademark license agreement.

iFrames
Without prior approval and written permission, you may not create frames around our apppages that alter in any way the visual presentation or appearance of our app.

Content Liability
We shall not be hold responsible for any content that appears on your app. You agree to protect and defend us against all claims that is rising on your app. No link(s) should appear on any app that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.

Your Privacy
Please read Privacy Policy

Reservation of Rights
We reserve the right to request that you remove all links or any particular link to our app. You approve to immediately remove all links to our app upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our app, you agree to be bound to and follow these linking terms and conditions.

Removal of links from our app
If you find any link on our app that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.

We do not ensure that the information on this app is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the app remains available or that the material on the app is kept up to date.

Disclaimer
To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our app and the use of this app. Nothing in this disclaimer will:

limit or exclude our or your liability for death or personal injury;
limit or exclude our or your liability for fraud or fraudulent misrepresentation;
limit any of our or your liabilities in any way that is not permitted under applicable law; or
exclude any of our or your liabilities that may not be excluded under applicable law.
The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.

As long as the app and the information and services on the app are provided free of charge, we will not be liable for any loss or damage of any nature.''',
            style: TextStyle(
                fontSize: 17,
                // backgroundColor: Color.fromARGB(255, 245, 245, 245),
                backgroundColor:
                    Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        // ? Color.fromARGB(255, 62, 61, 61)
                        ? const Color.fromARGB(227, 83, 83, 83)
                        : Color.fromARGB(255, 229, 229, 229),
                letterSpacing: 0.9),
            textAlign: TextAlign.justify,
          ),
        ]));
  }
}
