Corona Virus
================

## Coronavirus

Here we analyze infection data for the 2019 novel Coronavirus COVID-19
(2019-nCoV) epidemic. The raw data is pulled from the Johns Hopkins
University Center for Systems Science and Engineering (JHU CCSE)
Coronavirus repository.

A CSV file is available here
<https://github.com/RamiKrispin/coronavirus-csv>

``` r
url <- "https://tinyurl.com/COVID-2019"
virus <- read.csv(url)

tail(virus)
```

    ##      Province.State Country.Region     Lat     Long       date cases      type
    ## 2675         Shanxi Mainland China 37.5777 112.2922 2020-03-03     5 recovered
    ## 2676        Sichuan Mainland China 30.6171 102.7103 2020-03-03     8 recovered
    ## 2677        Tianjin Mainland China 39.3054 117.3230 2020-03-03    13 recovered
    ## 2678       Xinjiang Mainland China 41.1129  85.2401 2020-03-03     2 recovered
    ## 2679         Yunnan Mainland China 24.9740 101.4870 2020-03-03     1 recovered
    ## 2680       Zhejiang Mainland China 29.1832 120.0934 2020-03-03    24 recovered

Q1. How many total infected cases are there around the world?

``` r
total <- sum(virus$cases)
```

Q2. How many deaths linked to infected cases have there been?

``` r
inds <- virus$type=="death"
deaths <- sum(virus[inds,"cases"])
```

Q3. What is the overall death rate?

``` r
round(deaths/total * 100, 2)
```

    ## [1] 2.19

Q4. What is the death rate in China?

``` r
ChinaCases <- (virus$Country.Region == "Mainland China")
totalChinaCases <- sum(virus[ChinaCases, "cases"])

ChinaDeaths <- virus$Country.Region=="Mainland China" & virus$type=="death"
totalChinaDeaths <- sum(virus[ChinaDeaths,"cases"])

round(totalChinaDeaths/totalChinaCases *100, 2)
```

    ## [1] 2.26

Q5. What is the death rate in Italy, Iran and the US?

``` r
#Italy
ItalyCases <- (virus$Country.Region == "Italy")
totalItalyCases <- sum(virus[ItalyCases, "cases"])

ItalyDeaths <- virus$Country.Region=="Italy" & virus$type=="death"
totalItalyDeaths <- sum(virus[ItalyDeaths,"cases"])

round(totalItalyDeaths/totalItalyCases *100, 2)
```

    ## [1] 2.88

``` r
#Iran
IranCases <- (virus$Country.Region == "Iran")
totalIranCases <- sum(virus[IranCases, "cases"])

IranDeaths <- virus$Country.Region=="Iran" & virus$type=="death"
totalIranDeaths <- sum(virus[IranDeaths,"cases"])

round(totalIranDeaths/totalIranCases *100, 2)
```

    ## [1] 2.85

``` r
#US
USCases <- (virus$Country.Region == "US")
totalUSCases <- sum(virus[USCases, "cases"])

USDeaths <- virus$Country.Region=="US" & virus$type=="death"
totalUSDeaths <- sum(virus[USDeaths,"cases"])

round(totalUSDeaths/totalUSCases *100, 2)
```

    ## [1] 5.11
