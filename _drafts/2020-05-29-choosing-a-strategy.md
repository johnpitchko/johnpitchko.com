---
title: Choosing a strategy
---

## 1. Seek high IV rank

High IV rank means options prices are high. Range for IV rank is between 0 to 100. High IV rank would be above 50. Compare against IV rank of SPY.

## 2. Check for upcoming events
Earnings reports are binary events that *usually* result in prices for underlyings to jump or drop significantly after the event occurs.

Another event to be mindful of is ex-dividend dates. If you are short call options, the holder may choose to exercise the option ahead of the ex-dividend date *even if the option is out-of-the-money*.

<script src="https://cdnjs.cloudflare.com/ajax/libs/mermaid/8.5.1/mermaid.min.js" integrity="sha256-l28DspUteK5IQ/BJAooA6UHmm/m4kYuJ4NvoeEmz3K0=" crossorigin="anonymous"></script>
<script>mermaid.initialize({startOnLoad:true});</script>

<div class="mermaid">
graph TD
  id1[IV rank above IV rank for SPY?]-->id2[Upcoming critical events e.g. earnings, dividends]-->id3{Underlying price}

  id3-- <$50 ---id4[Straddle]
  id3-- Around $50 ---B[Straddle]
  id3-- >$50 ---id6[Strangle]

</div>

Flowcharts powered by [Mermaid](https://mermaid-js.github.io/mermaid/#/).
id3-- Less than $50! --id4
