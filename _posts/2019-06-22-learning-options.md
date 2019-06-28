---
title: Learning Options
---

Due to reading too many posts on [/r/wallstreetbets](https://www.reddit.com/r/wallstreetbets), I am interested in experimenting with options. Blindly going on [Questrade](https://www.questrade.com) and trading options without any real understanding of the fundamentals seems risky, so let's see if what sort of success I can make with some paper trades.

For this example, let's say that I am bullish on Apple ($AAPL). As of June 22, 2019, the stock is currently trading at  $199.78. I think anything under $200/share is undervalued and that the stock price will rise in the future.

Apple's next earnings call is July 30, so I will choose an expiration date of August 2 (as all option contracts are written with Friday expiration dates). Feeling bullish, I will note three call options; one in-the-money (ITM), at-the-money (ATM), and out-of-the-money (OTM). Around August 2, I will evaluate the price of each of these calls to determine if my gambling/analysis paid off.

Commissions for trading options are important to note. Fees for options are generally higher than ones for equities, so it is important to track their impact on the overall success of a trade. Commissions on small volume/low value options can very quickly erode profit. I mentioned earlier that I use Questrade, who [charges $9.95 per trade plus $1 per contract](https://www.questrade.com/pricing/self-directed-commissions-plans-fees). Other brokerage firms may offer reduced fees resulting in less impact on the profit of a trade.

|Strike|Price|Implied Volatility|Delta|Trade Value[^1]|Plus Commission|
|-----:|----:|-----------------:|----:|-----------------------:|--------------:|
|192.50|11.99|32.67%|0.6633|1,199.00|1209.95
|197.50|8.44|29.60%|0.5487|844.00|854.95
|202.50|6.00|29.00%|0.4328|600.00|610.95

[^1]:One contract (100 shares)

# The Wheel

Today I started reading about a strategy called [The Wheel](www.optionstradingiq.com/the-wheel-strategy/). The strategy involves a cycle of selling cash-secured puts then selling covered calls if the put is assigned. Because the trader may has a higher risk of being assigned and holding equities, the strategy is ideal for someone who is comfortable holding the underlying stock.

Let's paper-trade this strategy with Ford Motor Company (NYSE:$F). As of today, its last trade was $9.99. The strategy begins with selling a cash-secured put with a strike price of $8.00 with an expiry of 2019-09-20. The last price for this option is $0.07. If this trade is completed, my account will be credited $7.00. Let's ignore commissions for now.

There are a few ways in which the option may play out:
1. If $F falls below $8.00, I will be assigned and must purchase 100 shares of $F for $7.97 (derived from the $8.00 strike minus the $0.07 premium). Total cost is $797.00.
2. If $F does not fall below $8.00, I keep the $7.00 premium from selling the put.

The cycle then continues. The next decision point will depend on the performance of $F over the next few weeks.

Another upside to keep in mind is that the trader will collect the dividends on any assigned shares while he or she holds them. For this reason, it is ideal to use this strategy on stocks that have historically paid a strong dividend. The additional cash can mitigate the pain from bad trades and boost gains from good ones. In the above example with $F, the company has historically [paid a dividend of around $0.15/share](https://www.dividend.com/dividend-stocks/consumer-goods/auto-manufacturers-major/f-ford-motor-company/). If I am assigned those 100 shares and I hold them over a dividend record date, I would receive $15.00. Not enough to retire on, but helpful to cover the awful Questrade [option assignment fee of $24.95](https://www.questrade.com/pricing/self-directed-commissions-plans-fees/transaction).

# Key Notes

In my research, I've come across some very important fundamental information that I feel I will not remember unless I write down.

* A call option is:
  * __in-the-money__ when the __strike price is below market price__.
  * __out-of-the-money__ when the __strike price is above market price__.
* A put option is:
  * __in-the-money__ when the __strike price is above market price__.
  * __out-of-the-money__ when the __strike price is below market price__.
* If I have a __long call__, then I have an option to buy shares.
* If I have a __short call__, then I have an option to sell shares.
* If I have a __long put__, then I have an option to sell shares.
* If I have a __short put__, then I have an option to buy shares.
