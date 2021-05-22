import 'package:cryptoland/ui/components/card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

final formatter = new NumberFormat.currency(locale: "th_TH", symbol: '฿');

final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 15,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 20),
            GestureDetector(
              onTap: () {},
              child: _cardWalletBalance(context,
                  total: '${formatter.format(22239.33)}',
                  totalCrypto: '0.000022 BTC',
                  percent: 2.444),
            ),
            _cardWalletBalance(context,
                total: '${formatter.format(1.33)}',
                totalCrypto: '0.00000233 BTC',
                percent: -1.444)
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sorted by higher %',
              style: TextStyle(color: Colors.black45),
            ),
            Row(
              children: [
                Text(
                  '24H',
                  style: TextStyle(color: Colors.black45),
                )
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  _listCryptoItems(
                      iconUrl:
                          'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/256/Ethereum-ETH-icon.png',
                      myCrypto: '2.444 ETH',
                      myBalance: '${formatter.format(10000.33)}',
                      myProfit: '${formatter.format(20.33)}',
                      percent: 5.3),
                  _listCryptoItems(
                      iconUrl:
                          'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/Basic-Attention-Token-icon.png',
                      myCrypto: '2.444 BAT',
                      myBalance: '${formatter.format(3000.33)}',
                      myProfit: '${formatter.format(20.33)}',
                      percent: 5.3),
                  _listCryptoItems(
                      iconUrl:
                          'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/Binance-Coin-icon.png',
                      myCrypto: '2.444 BNB',
                      myBalance: '${formatter.format(2020.33)}',
                      myProfit: '${formatter.format(20.33)}',
                      percent: 5.3),
                       _listCryptoItems(
                      iconUrl:
                          'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/Enjin-Coin-icon.png',
                      myCrypto: '2.444 ENJ',
                      myBalance: '${formatter.format(2020.33)}',
                      myProfit: '${formatter.format(20.33)}',
                      percent: 5.3),
                       _listCryptoItems(
                      iconUrl:
                          'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/512/Dogecoin-DOGE-icon.png',
                      myCrypto: '2.444 DOGE',
                      myBalance: '${formatter.format(2020.33)}',
                      myProfit: '${formatter.format(20.33)}',
                      percent: 5.3),
                         _listCryptoItems(
                      iconUrl:
                          'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/512/Status-icon.png',
                      myCrypto: '2.444 SNT',
                      myBalance: '${formatter.format(2020.33)}',
                      myProfit: '${formatter.format(20.33)}',
                      percent: 5.3)
                ],
              ),
            )),
      )
    ]);
  }

  Widget _cardWalletBalance(BuildContext context,
      {required String total, totalCrypto, double, percent}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: card(
          width: MediaQuery.of(context).size.width - 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Material(
                      color: Colors.blueAccent,
                      child: InkWell(
                        splashColor: Colors.red,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.account_balance_wallet,
                            color: Colors.white,
                            size: 25.0,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                      child: Text(
                    'Total wallet Balance',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Row(
                    children: [Text('THB'), Icon(Icons.keyboard_arrow_down)],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$total',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          foreground: Paint()..shader = linearGradient)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Text(
                      percent >= 0 ? '+ $percent %' : '$percent %',
                      style: TextStyle(
                          color: percent >= 0 ? Colors.green : Colors.pink,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$totalCrypto',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black38),
              ),
              Center(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: Colors.black45,
                ),
              )
            ],
          )),
    );
  }

  Widget _listCryptoItems(
      {required String iconUrl,
      double percent = 0,
      required String myCrypto,
      myBalance,
      myProfit}) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              '$iconUrl',
              width: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                        TextSpan(
                          text: '$myCrypto',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '/ BTC')
                      ])),
                  Text('$myProfit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black45))
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$myBalance',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  percent >= 0 ? '+ $percent %' : '- $percent %',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: percent >= 0 ? Colors.green : Colors.pink),
                )
              ],
            )
          ],
        )));
  }
}
