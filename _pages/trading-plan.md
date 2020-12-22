---
layout: single
title: 'My Trading Plan'
permalink: 'my-trading-plan'
---

Below is the strategy I use when trading. It is inspired by a variety of sources, primarily [TastyTrade](https://www.tastytrade.com) and [Predicting Alpha](https://www.predictingalpha.com). As I learn more and experiment, I will refine the plan.

I am aware that some of the items below conflict or outright oppose each other. Trading is an art, not a science. There are countless perspectives from many successful experts. There is no single 'right' answer or strategy. This plan started as a simple copy-and-paste of ideas and notes gathered from different sources. As the plan is refined and expanded, I will try my best to remediate conflicting entries.

I will to my best to include links to videos, articles, and websites that include the source content for a particular entry in the plan below. This way, readers can learn more from the original authors.

## Objective
1. Achieve consistent long-term performance to allow financial independence/early retirement.
2. Outperform the market (e.g. SPY) month-over-month.

### Strategy
1. Prefer short neutral or naked undefined-risk strategies. In the long run, undefined risk strategies are more profitable than defined risk ones because they can be defended.
    1. 16 or 30 delta strangles (>$50) or straddles (<$50)
    2. 30 delta short puts, preferable in underlyings that pay dividends
    3. 30 delta short iron condors w/ $10 wide wings (better for small account due to lower BPR impact)
2. Make trades in high IV rank environments (IVR > 30 or VIX > 20 but < 30)
10. To scale up the account, prefer to increase risk/reward over increasing number of contracts. Only increase contracts after maximizing risk/reward (e.g. fewer, wider iron condors performed better than more, narrower iron condors)

### Choosing an Underlying
1. High IV rank; >30
2. Recent big up or down runs; good time to be long or short
3. ~~MR <= 30%~~ [^1]
4. Underlying price between $20 and $120
8. Trade non-correlated underlyings to further diversify risk

### Choosing Direction
TBD

### Entering a trade
4. Enter trades with at least with 45 days to expiration (DTE).
14. Open trades for a minimum of $1.00 total credit.

### Managing Winners and Losers
9. Know exactly how to manage a trade in a mechanical manner.* The worst case is not taking action when you should because you do not know what to do.
5. Close/manage trades at either 50% profit (25% for straddles and calendar spreads) or 21 DTE except:
6. Unless tested (where underlying price crosses strike), manage multi-leg trades a jointly; avoid legging out winning side early
7. Rolling losers need to provide enough credit to justify rolling and the likelihood of expiring ITM
17. Defend trades until 21 DTE, then decide to either close for a loser or roll out
18. Close losers at 2x credit loss (e.g. sold for $2 close at $6)
19. After rolling, exit trade at 50% of initial credit (open trade for $1.00, roll for $1.00, exit when profit is $0.50)[^2]
    1. Rolling is about extending time, not increasing profit.
    2. Calculate new exit price by subtracting initial profit target from total credit collected (e.g. $3.00 total credit and $1.00 initial profit target would result in an exit price of rolled traders $2.00)

### Portfolio Management/Allocation
11. Do not allocate more than 3% of my entire portfolio to a single position/underlying (~$2k on $50k portfolio).
13. Maintain 50% maintenance excess to avoid margin calls and provide reserve for rolling
15. Maintain portfolio theta between one or two tenths of a percentage (0.001-0.002%) of portfolio value
16. Trades should not reduce maintenance excess/buying power by more than 5% of portfolio
3. Hold between 10 and 20 non-correlated holdings simultaneously to remain diversified.
12. Allocate no more than 40% of your portfolio; best performance over time [^3]
13. Use the current VIX level to guide how much of your portfolio should be invested.

    | VIX level | Max allocation of BP | Allocation of $50k account |
    | --------- | --------------------:| --------------------------:|
    | >40       |                  50% |                     $25.0k |
    | 30-40     |                  40% |                     $20.0k |
    | 20-30     |                  35% |                     $17.5k |
    | 15-20     |                  30% |                     $15.0k |
    | 10-15     |                  25% |                     $12.5k |

1. Diversify the types of strategies used
    1. 75% allocated to undefined risk strategies; no more than 3-7% per trade;
    2. 25% allocated to defined risk strategies; no more than 1-5% per trade

### Trading Earnings
I have used and am evaluating two tactics for trading earnings:

#### Tastytrade-style earnings
1. Prefer strangle and straddles if we can afford the capital
3. Iron condors can be used if premium is concentrated ATM (wings are cheap to define risk)
    1. Iron condors should be opened at monthly expiration
5. $1.00 premium is bare minimum
6. Prefer to go out to the further expiration (front monthly expiration at least)
7. Broken-wing butterflies and ratio spreads better for Thursday/Friday earnings as they are slow moving trades
    1. Typically done in front weekly expiration
8. Verify level of underlying liquidity

#### Predicting Alpha-style earnings
1. Open an at-the-money iron fly with wings at 2 standard deviation


[^1]: This was an issue with Questrade, which had different short margin requirements on different underlyings. From what I can tell, Interactive Brokers does not assign short margin requirements in the same manner.
[^2]: https://www.tastytrade.com/tt/shows/best-practices/episodes/management-after-rolling-09-09-2019
[^3]: https://www.tastytrade.com/tt/shows/research-specials-live/episodes/how-much-money-should-i-be-trading-10-29-2019)
