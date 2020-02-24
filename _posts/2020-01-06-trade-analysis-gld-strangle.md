---
title: 'Trade analysis: GLD short strangle'
---

On December 24, 2019, I opened 3 2020-Feb-21 145c/135p short strangles on GLD for a $1.51 credit. Since that date, GLD has risen by about 5%, testing my $145 calls.

On December 31, I rolled up the 135p to 138, adding another $0.28 credit.

Unfortunately, GLD continues to rise steadily, likely due to US tensions with Iran after the Soleimani killing. On January 6, GLD closed at $147, moving my short $145 calls in-the-money. My net loss on the strangle is just shy $800. Ouch!

To defend, my plan is to invert the position by rolling up my $138 put to a strike of $147.

| Date   | Action                                     | Price | Quantity | Gross Debit/Credit |    Fees | Net Debit/Credit |
| ------ | ------------------------------------------ | -----:| --------:| ------------------:| -------:| ----------------:|
| Dec 24 | Open 3 GLD 2020-Feb-21 145c/135p strangles | $1.51 |       -3 |            $453.00 | -$15.95 |          $437.05 |
| Dec 31 | Roll up 135p to 138p                       | $0.28 |       -3 |             $84.00 | -$15.95 |           $68.05 |
| Jan 07 | Roll up 138p to 145p                       | $1.00 |       -3 |            $300.00 | -$15.96 |          $284.04 |
| Feb 04 | Close position                             | $5.15 |        3 |         -$1,545.00 | -$15.96 |       -$1,560.96 |
|        |                                            |       |          |       **-$708.00** |         |     **-$771.82** |

~~[OptionAlpha recommends tracking the total credit captured during rolls](https://optionalpha.com/managing-inverted-option-positions-106780.html) to identify the impact of maximum loss when going inverted. Kirk specifically recommends to "maintain a net [total] credit that is higher than the width of the inverted strikes". Collecting $2.35 total credit so far, in addition to whatever credit I collect from going inverted, provides me margin to go wide on the inversion. I could roll up to a $147p and still have room to be profitable on the trade.~~ My original plan was to invert the trade, but I felt more confident rolling to a $145p transforming to a straddle.

One lesson I learned is, when rolling, make sure the credit you will capture will justify the fees. You can see that on December 31, I paid $16 in fees to gain a net credit of $68. I should have rolled the 135p up to a higher strike to capture more premium to make it 'worth my while'. If I rolled up to 142p or 145p as I did on Jan 07, I would have saved myself $16 in fees.

I will update this post as the play unfolds.

**Update (2020-Feb-04):**  Jan 31 was 21 days to expiration (DTE). According to my trading plan, that is when I need to close these positions. The 'manage at 21 DTE' is a best practice suggested by Tastytrade. This trade went red very quickly as the coronavirus caused many investors panic and dump their stocks in favour of gold. The price soared above $149 so my short calls were very in-the-money. I thought about holding out for a little longer, but I decided to be disciplined and follow my trading plan and sell at 21 DTE.

My net loss was about $770. I also had a sizeable loss on my [short TLT strangle]({% link _posts/2020-01-23-trade-analysis-tlt-short-strangle.md %}) that expired at the same time as this one and suffered similar performance issues due to the coronavirus. The simultaneous losses in both these strangles simultaneously really stung.

I chalk up these losing trades to two things. First, this coronavirus was a real black swan. Even though these positions moved against me before the virus was big news, the fear in the market really drove the prices for TLT and GLD high in late January. Unfortunately a trader cannot do much to prevent black swan events, aside from having good risk management, which I did not. Second, I probably should have been more diversified in my strangles. TLT and GLD have a correlation of about 0.65, so moderately high. It would have been better to choose underlyings with lower correlations so that big moves in one are isolated.
