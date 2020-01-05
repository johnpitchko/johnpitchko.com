---
title: 'Trade Analysis: EEM'
classes: wide
---

In mid-November, I opened two short straddles on EEM. On December 12, I was assigned on the short call leg because it was the ex-dividend date so the call holder wanted to earn some dividends. As a result, I was short 200 shares.

Unfortunately for me, the underlying price continued to climb. At first, Questrade offered a 0.00% borrow rate on EEM so I was not inclined to take any action to close the position because it cost me nothing to hold a short position. I hoped that EEM would fall so I could buy the shares back at the strike price for the exercised option.

A few days later, Questrade increased its borrow rate. The rate remained small (less than $1 USD/day), but combined with continuing rally in EEM, I knew that the longer I was short the shares, the more losses I would incur. I finally closed the position on December 27th for a disappointing $500 USD loss on the 200 EEM shares.

While I was still short the shares, I rolled my short put into a protected put to earn some premium. Since I was short the shares anyways, getting assigned on the short put would have closed my short share position.

### The Breakdown

| Date   | Action                               |  Price | Quantity | Gross Debit/Credit |                   Fees | Net Debit/Credit |
| ------ | ------------------------------------ | ------:| --------:| ------------------:| ----------------------:| ----------------:|
| Nov 13 | Sell EEM Dec-27 42.5 straddle        |  $2.03 |       -2 |            $406.00 |                 $13.96 |          $392.04 |
| Dec 13 | Assign 2x EEM 2019-Dec-27 42.5 calls | $42.50 |     -200 |         -$8,500.00 |                 $25.13 |        $8,474.87 |
| Dec 17 | Dividend paid                        |  $0.92 |     -200 |           -$185.80 |                   0.00 |         -$185.80 |
| Dec 16 | Sell diagonal put spread Feb-21 43.0 |  $0.40 |       -2 |             $80.00 |                 $11.95 |           $68.05 |
| Dec 26 | Borrow fees (total Dec 19-26)        |        |          |                    |                  $5.11 |           -$5.11 |
| Dec 27 | Buy 200x EEM                         | $45.00 |      200 |         -$9,000.00 |                  $0.00 |       $-9,000.00 |
|        |                                      |        |          |                    | **Total debit/credit** |     **-$255.99** |

## Conclusion

*Update Jan 5, 2020: I forgot to include the dividend payment I made on the short shares. I updated the table and conclusion to reflect this.*

Including all fees and proceeds from selling the straddle and diagonal, the total loss of ~~$70~~ $256 is ~~not bad~~ okay considering I had to buy the shares back for a $500 loss.

I still have a short put expiring Feb 21 that I need to monitor and either close or leave to expire. If the option expires worthless, then my final outcome of this play remains the ~~-$70~~ -$256. If I choose to buy back the short puts, then the final loss will be slightly higher depending entirely on the price of the put. Assuming EEM continues its bull run, there should be little need to buy back the put. As of Dec 29, EEM is trading above $45 and the strike of my short puts is $43. I may elect to close the position just to sleep easier even though it might increase my total loss.

Overall a great learning opportunity that mitigated a larger loss due to proper risk management. *Also, a good but costly lesson in option dividend risk.*
