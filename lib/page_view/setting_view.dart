import 'package:flutter/material.dart';

class Setting_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      // painter: MainBackground(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.grey),
          ),
          elevation: 0,
          // systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SafeArea(
          bottom: true,
          child: LayoutBuilder(
              builder: (builder, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: constraints.maxHeight),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, left: 24.0, right: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'العام',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        ListTile(

                          title: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('اللغات'),
                            ],
                          ),
                          // leading: Image.asset('assets/icons/language.png'),
                          // onTap: () => Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (_) => ChangeLanguagePage()
                          //     ),
                          // ),
                        ),
                        ListTile(
                          title: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Language A / का'),
                            ],
                          ),                          // leading: Image.asset('assets/icons/country.png'),
                          // onTap: () => Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (_) => ChangeCountryPage())),
                        ),
                        ListTile(
                          title: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Language A / का'),
                            ],
                          ),                          // leading:
                          // Image.asset('assets/icons/notifications.png'),
                          // onTap: () => Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (_) =>
                          //             NotificationSettingsPage())),
                        ),
                        ListTile(
                          title: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Language A / का'),
                            ],
                          ),                          // leading: Image.asset('assets/icons/legal.png'),
                          // onTap: () => Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (_) => LegalAboutPage())),
                        ),
                        ListTile(
                          title: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Language A / का'),
                            ],
                          ),                          // leading: Image.asset('assets/icons/about_us.png'),
                          onTap: () {},
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'Account',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        ListTile(
                          title: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Language A / का'),
                            ],
                          ),                          // leading: Image.asset('assets/icons/change_pass.png'),
                          // onTap: () => Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (_) => ChangePasswordPage())),
                        ),
                        ListTile(
                          title: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Language A / का'),
                            ],
                          ),                          // leading: Image.asset('assets/icons/sign_out.png'),
                          // onTap: () => Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (_) => WelcomeBackPage())),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}