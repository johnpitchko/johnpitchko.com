---
title: 'Covered Calls 4 Ways'
---

The covered call is a common strategy for bullish directional plays. The play is particularly common for rookie option traders because of its risk-definition and simple P&L and max loss calculations. Another reason is that many investors likely already hold at least 100 shares in an optionable underlying so implementing a covered call means simply selling an out-of-money call.

The one drawback to a covered call is the significant reduction in buying power resulting from opening the strategy. For example, opening a 30 delta covered call in SPY reduces buying power by more than $20,000. Covered calls may be impossible for small accounts unless the trader already owns the stock or limits themselves to lower priced underlyings (which is perfectly acceptable).

Other strategies are available to traders who like the bullish direction and P&L graph of the traditional covered call. One strategy is to simply short an at-the-money or in-the-money put. Some traders may be hesitant to open naked option positions due to their undefined risk. However, as [Tom and team demonstrate in this video](https://www.tastytrade.com/tt/shows/market-measures/episodes/recovering-from-losses-in-naked-options-09-25-2017), the loss rate between a naked 30 delta short put and a 30 delta short put with a 10 delta long put (i.e. a bull put spread) is nearly the same (do be aware of the higher average losses however). Also, the average recovery time for a naked short put was about 50% less than the spread.

A [poor man's covered call](https://www.tastytrade.com/tt/learn/poor-man-covered-call) is another alternative.

A third strategy is to open a [synthetic covered call](https://www.tastytrade.com/tt/shows/market-measures/episodes/covered-call-vs-synthetic-covered-call-08-04-2017). This play involves shorting an at-the-money put and buying an at-the-money call, which creates the synthetic long stock position, then shorting an out-of-the-money call. For example, buying the 50 delta call, selling the 50 delta put, and selling the 30 delta call.

The table below shows details of how these different options compare to each other. Each strategy was simulated on the EEM ETF for the April 17, 2020 expiration cycle.

* Covered call: long 100 shares @ $43.30 and short 30 delta (44.5 strike) call
* Poor man's covered call: long 70 delta May-15 (41 strike) call and short 30 delta Apr-17 (44.5 strike) call
* Short put: short 70 delta Apr-17 (45 strike) put
* Synthetic covered call: long 50 delta (43 strike) call, short 50 delta (43.5) put, short 30 delta (44.5) call

| Strategy                | Strikes         | Open db/cr | Buying power reduction | Max return | Max risk | Risk:reward ratio ($:$) |
| ----------------------- | --------------- | ----------:| ----------------------:| ----------:| --------:| -----------------------:|
| Covered call            | 44.5c           |   $4,266db |                 $4,131 |       $184 |   $4,266 |                    23:1 |
| Poor man's covered call | 41c/44.5c       |     $266db |               **$907** |       $101 | **$266** |                 **3:1** |
| Short put               | 45p             |     $206cr |                 $4,349 |   **$206** |   $4,294 |                    21:1 |
| Synthetic covered call  | 43c/43.5p/44.5c |      $29cr |                 $4,653 |       $179 |   $4,321 |                    24:1 |
