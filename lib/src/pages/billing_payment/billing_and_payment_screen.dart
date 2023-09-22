import 'package:provider_app/src/app/app_export.dart';

class BillingsAndPaymentScreen extends StatefulWidget {
  const BillingsAndPaymentScreen({
    super.key,
  });

  @override
  State<BillingsAndPaymentScreen> createState() => _BillingsAndPaymentScreenState();
}

class _BillingsAndPaymentScreenState extends State<BillingsAndPaymentScreen> {

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      appbarText: StringConstants.billings,
      isBackAppBar: false,
      body: MainScaffold(
        body: Container(
            child: Column(
          children: [
            BillingPaymentExpansionPanel(),
            
      ],
        )),
        isGradient: true,
      ),
    );
  }
}


class BillingPaymentExpansionPanel extends StatefulWidget {
  const BillingPaymentExpansionPanel({super.key});

  @override
  State<BillingPaymentExpansionPanel> createState() => _BillingPaymentExpansionPanelState();
}

class _BillingPaymentExpansionPanelState extends State<BillingPaymentExpansionPanel> {
  bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    return    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ExpansionPanelList(
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            this.isExpanded = isExpanded;
          });
        },
        elevation: 0,
        expandedHeaderPadding: EdgeInsets.zero,
        expandIconColor: ColorConstants.white,
        dividerColor: ColorConstants.black,
        children: [
          ExpansionPanel(
              backgroundColor: getThemeStateIsLight()
                  ? lighten(getThemeColor(context), 0.1)
                  : darken(getThemeColor(context), 0.5),
              isExpanded: isExpanded ?? false,
              headerBuilder: (context, isExpanded) => AppTileComponent(
                    isExpandable: true,
                    image: AssetsConstants.healthProfile,
                    onTap: () {
                      setState(() {
                        this.isExpanded = !isExpanded;
                      });
                    },
                    test: StringConstants.healthProfile,
                  ),
              body: Column(
                children: healthProfile
                    .asMap()
                    .entries
                    .map((e) => InkWell(
                          onTap: () =>
                              NavigationUtil.push(context, e.value.route),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: getThemeStateIsLight()
                                    ? darken(getThemeColor(context), 0.3)
                                    : Theme.of(context)
                                        .scaffoldBackgroundColor),
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 7.5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (e.key != 0)
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: lighten(
                                            getThemeColor(context), 0.4),
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(e.value.text),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ))
        ],
      ),
    ) ;
  }
}