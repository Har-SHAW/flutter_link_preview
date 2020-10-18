import 'package:flutter/material.dart';
import 'package:flutter_link_preview/flutter_link_preview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> listUrl = [
    "https://producthabits.com/stop-ignoring-competitors/",
// "https://producthabits.com/product-manager-job-description/",
// "https://producthabits.com/my-billion-dollar-mistake/",
// "https://usefyi.com/sketch-history/",
// "https://producthabits.com/the-skimm-7-million-subscribers-in-7-years/",
// "https://producthabits.com/net-promoter-score-the-ecstasy-of-business-metrics/",
// "https://producthabits.com/fifty-five-percent-of-companies-use-this-one-method-to-measure-customer-happiness/",
// "https://producthabits.com/is-snapchat-going-to-die/",
// "https://producthabits.com/how-square-became-a-30-billion-company-by-reimagining-payments/",
// "https://producthabits.com/how-medium-transformed-online-publishing-by-making-long-form-content-cool-again/",
// "https://usefyi.com/microsoft-history/",
// "https://producthabits.com/how-pinterest-became-an-11-billion-company-by-organizing-the-worlds-hobbies/",
// "https://producthabits.com/how-two-designers-created-airbnb-and-turned-it-into-a-30-billion-company/",
// "https://usefyi.com/box-history/",
// "https://producthabits.com/how-whole-foods-started-an-organic-revolution-and-became-a-13-billion-company/",
// "https://producthabits.com/how-turbotax-used-design-and-emotion-to-solve-a-boring-problem-and-dominate-an-11b-industry/",
// "https://usefyi.com/github-history/",
// "https://usefyi.com/slack-history/",
// "https://producthabits.com/invisible-asymptotes-the-part-of-the-growth-curve-no-one-talks-about/",
// "https://producthabits.com/how-spotify-built-a-20-billion-business-by-changing-how-people-listen-to-music/",
// "https://producthabits.com/how-glossier-turned-into-a-400-million-business-in-four-years/",
// "https://producthabits.com/three-ways-to-tell-if-youve-found-a-breakout-market/",
// "https://producthabits.com/how-netflix-became-a-100-billion-company-in-20-years/",
// "https://producthabits.com/the-three-product-rules/",
// "https://producthabits.com/dominos-pizza-drove-90x-increase-stock-value-acting-like-tech-startup/",
// "https://producthabits.com/what-will-amazon-build-next/",
// "https://usefyi.com/asana-history/",
// "https://producthabits.com/duolingo-built-700-million-company-without-charging-users/",
// "https://producthabits.com/whats-next-nest-google/",
// "https://producthabits.com/adobe-95-billion-saas-company/",
// "https://usefyi.com/atlassian-history/",
// "https://usefyi.com/basecamp-history/",
// "https://producthabits.com/shopify-grew-snowboard-shop-10b-commerce-ecosystem/",
// "https://usefyi.com/salesforce-history/",
// "https://producthabits.com/overcome-the-guess-work-of-product-development-with-hourly-engineering-estimates/",
// "https://producthabits.com/unexpected-rebirth-google-glass/",
// "https://producthabits.com/nightmares-with-engineering-estimates/",
// "https://producthabits.com/engineering-estimates/",
// "https://producthabits.com/everyone-forgets-technical-research/",
// "https://producthabits.com/how-grammarly-quietly-grew-its-way-to-7-million-daily-users/",
// "https://producthabits.com/communication-killing-startup/",
// "https://producthabits.com/feature-creep-isnt-real-problem/",
// "https://producthabits.com/future-proof-business-model/",
// "https://producthabits.com/5-mental-models-help-product-managers-acquire-retain-users/",
// "https://producthabits.com/top-customer-support-workflows-product-focused-companies/",
// "https://producthabits.com/look-beyond-existing-customers-building-product/",
// "https://producthabits.com/next-generation-saas-will-look-like-facebook/",
// "https://producthabits.com/unlock-growth-product-invisible/",
// "https://producthabits.com/dont-kill-your-startup-with-bad-user-onboarding/",
// "https://producthabits.com/facebook-product-strategy/",
    "https://referralcandy.com/blog/content-marketing-statistics/",
    "https://referralcandy.com/blog/experts-email-workflows-automation/",
    "https://referralcandy.com/blog/referralcandy-product-updates/",
    "https://referralcandy.com/blog/customer-stories-ledger/",
    "https://referralcandy.com/blog/guestpost-visual-marketing-ecommerce-sales/",
    "https://referralcandy.com/blog/customer-stories-aasha-box-of-stories/",
    "https://referralcandy.com/blog/lessons-from-amazon-primes-referral-program/",
    "https://referralcandy.com/blog/tesla-referral-program/",
    "https://referralcandy.com/blog/starbucks-referral-program-analysis/",
    "https://referralcandy.com/blog/experts-roundup-emotional-connection-brand/",
    "https://referralcandy.com/blog/etsy-ecommerce-tips/",
    "https://referralcandy.com/blog/shopping-cart-solution/",
    "https://referralcandy.com/blog/modcloth-marketing-strategy/",
    "https://referralcandy.com/blog/how-to-beat-amazon/",
    "https://referralcandy.com/blog/best-marketing-books/",
    "https://referralcandy.com/blog/best-shopify-themes/",
    "https://referralcandy.com/blog/referralcandy-klaviyo-integration/",
    "https://referralcandy.com/blog/customer-stories-bubble-tea-club/",
    "https://referralcandy.com/blog/how-to-start-a-successful-home-business/",
    "https://referralcandy.com/blog/brand-ambassador-programs/",
    "https://referralcandy.com/blog/how-to-make-money-on-instagram/",
    "https://referralcandy.com/blog/customer-stories-meatnbone/",
    "https://referralcandy.com/blog/what-is-customer-advocacy-and-how-it-can-boost-sales/",
    "https://referralcandy.com/blog/customer-stories-tactical-edge/",
    "https://referralcandy.com/blog/customer-stories-enertor/",
    "https://referralcandy.com/blog/customer-stories-poundtoy/",
    "https://referralcandy.com/blog/how-to-define-target-market-examples/",
    "https://referralcandy.com/blog/customer-stories-keychron/",
    "https://referralcandy.com/blog/word-of-mouth-marketing-during-covid-19/",
    "https://referralcandy.com/blog/morning-brew-referral-program/",
    "https://referralcandy.com/blog/brick-mortar-drive-sales/",
    "https://referralcandy.com/blog/work-from-home-business-ideas/",
    "https://referralcandy.com/blog/enterprise-ecommerce-affiliate-program-examples/",
    "https://referralcandy.com/blog/word-of-mouth-marketing/",
    "https://referralcandy.com/blog/turning-your-passion-into-an-online-business/",
    "https://referralcandy.com/blog/enterprise-ecommerce-referral-program-examples/",
    "https://referralcandy.com/blog/12-simple-marketing-tips/",
    "https://referralcandy.com/blog/best-ecommerce-sites/",
    "https://referralcandy.com/blog/customer-acquisition-tools/",
    "https://referralcandy.com/blog/call-to-action-examples/",
    "https://growthhackingpro.com/oh-god-krakow-power-social-hashtag/",
    "https://growthhackingpro.com/growth-hacking-the-next-generation-startup-marketing/",
    "https://growthhackingpro.com/alternative-growth-hacker/",
    "https://growthhackingpro.com/growth_hacking_buzzword/",
    "https://growthhackingpro.com/customers-love-quick-wins/",
    "https://growthhackingpro.com/affiliate-marketing-why-partner-up/",
    "https://growthhackingpro.com/4-must-email-growth-hacks-arent-using/",
    "https://growthhackingpro.com/12-proven-steps-successful-giveaway-campaigns/",
    "https://growthhackingpro.com/people-stock-photos-dont-know-good-landing-pages/"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
                itemCount: listUrl.length,
                itemBuilder: (context, index) {
                  return FlutterLinkPreview(
                    url: listUrl[index],
                    builder: (info) {
                      if (info is WebInfo) {
                        String domain = listUrl[index]
                            .split(".")[listUrl[index].split(".").length - 2]
                            .split("://")[1];

                        return Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    color: Colors.grey)
                              ]),
                          height: MediaQuery.of(context).size.height * 0.45,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: Text(info.title,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              SizedBox(height: 10),
                              Container(
                                height: 200,
                                child: info.image != null
                                    ? Image.network(
                                        info.image,
                                        fit: BoxFit.cover,
                                      )
                                    : FlutterLinkPreview(
                                        url: "https://" +
                                            listUrl[index].split("/")[2],
                                        builder: (info) {
                                          return info is WebInfo &&
                                                  info.image != null
                                              ? Image.network(info.image)
                                              : Container();
                                        },
                                      ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.thumb_up),
                                          Container(width: 30,),
                                          Icon(Icons.share)
                                        ],
                                      ),
                                    ),
                                    Text(domain,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      } else {
                        return Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    color: Colors.grey)
                              ]),
                          height: MediaQuery.of(context).size.height * 0.45,
                          width: MediaQuery.of(context).size.width * 0.85,
                        );
                      }
                    },
                  );
                })));
  }
}
