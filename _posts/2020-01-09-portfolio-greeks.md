---
title: Portfolio Greeks
---
To fully understand the directional risk of the overall portfolio, you cannot simply add up the deltas of the options in the portfolio. The size and correlation of each underlying is not comparable. For example, a $1 move in a >$200 underlying like QQQ is much less impactful than a $1 move in a $45 underlying like FXI.

Also, each underlying's correlation to the market is very different. Some stocks tend to follow the market direction, while others tend to move opposite.

One more point, deltas are factored by the total exposure to the underlying. The more options you hold for a single underlying, the more directional risk you hold linked to that underlying. For example, being short 10 TLT and being long 1 FXI, the overall directional risk to your portfolio will be skewed toward changes in TLT.

To establish a metric that balances direction and size of directional risk regardless of underlying, you can weight your underlyings against a broad market index, such as SPY. Once weighted, you can see directional risk both on an individual underlying basis but also across your entire portfolio.

| Underlying | Option                  | Quantity | Underlying Delta | Total Delta | Underlying Price | Underlying Beta* | Beta-weighted Delta |
| ---------- | ----------------------- | --------: | ----------------: | -----------: | ----------------: | ----------------: | -------------------: |
| EEM        | Feb-21 $43 put          | -2       | 0.1078           | -0.2156     | $45.50           | 0.9200           | -0.0277             |  
| F          | Mar-20 $10 covered call | 3        | -0.2279          | -0.6837     | $9.25            | 1.0000           | -0.0194             |
| FXI        | $42 married put         | 1        | 0.2489           | 0.2489      | $44.37           | 1.1700           | 0.0396              |     
| GLD        | Feb-21 $145 calls       | 3        | -0.6687          | -2.0061     | $145.74          | -0.2000          | 0.1793              |     
| GLD        | Feb 21 $145 puts        | 3        | 0.2489           | 0.7467      | $145.74          | -0.2000          | -0.0668             |     
| IWM        | Feb-21 $166 calls       | 3        | 0.4651           | 1.3953      | $166.02          | 1.1600           | 0.8241              |     
| IWM        | Jan-21 $166 calls       | -3       | -0.4463          | 1.3389      | $166.02          | 1.1600           | 0.7908              |     
| QQQ        | Feb-21 $222 call        | -1       | -0.3001          | 0.3001      | $218.40          | 1.1600           | 0.2332              |     
| QQQ        | Feb-21 $204 put         | -1       | 0.0497           | -0.0497     | $218.40          | 1.1600           | -0.0386             |     
| TLT        | Feb-21 $143 calls       | -3       | -0.1667          | 0.5001      | $136.40          | -0.3200          | -0.0669             |     
| TLT        | Feb-21 $134 puts        | -3       | 0.3285           | -0.9855     | $136.40          | -0.3200          | 0.1319              |    
| USO        | Jan-20 $12 call         | -5       | -0.9298          | 4.649       | $12.51           | 1.1600           | 0.2069              |    
| USO        | Feb-20 $12 call         | 5        | 0.7715           | 3.8575      | $12.51           | 1.1600           | 0.1717              |    
|            |                         |          | **-0.5191**          | **9.0959**      |           |                  | **2.3583**              |  

The results in the table show how incorrect you can be just looking at raw deltas. Adding up the total deltas shows that my portfolio is long 9 deltas. Using a delta neutral strategy, I would then add 9 short deltas to my portfolio to bring my total direction risk to 0.

However, beta weighting shows the true direction risk of the portfolio is only 2, roughly a quarter of my total deltas. If I employed my previous tactic of shorting 9 deltas in order to bring the directional risk of the portfolio to 0, I would be incorrect and likely have an overall negative directional bias in my portfolio.

For a small trader like myself, the difference between 9 long deltas and 2 long beta-weighted deltas is quite small, meaning that taking a corrective action to become delta-neutral is probably not necessary. However, I imagine if I held a much larger portfolio where the difference between my portfolio deltas and beta-weighted deltas was large number. Making trades to eliminate that directional risk would not create the expected outcome. I would still be exposed to a potentially serious market risk.
