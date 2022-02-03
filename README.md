[![Open in colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/gprzy/PETR4.SA-forecasting/blob/main/PETR4.SA-forecasting.ipynb)

# PETR4.SA-forecasting
A collection of PIBIC 2020-2021 codes. Statistical models of time series analysis applied to stock market predictions, compared to CNN and LSTM forecasts. Trading simulation with PETR4.SA stocks.

Topic of the PIBIC: "Evaluation of the Performance of Deep Learning Techniques for the Classification of the Temporal Behavior of Shares".

## Tested Models
- [X] **SMA10** (Simple Moving Average of 10 days) 
- [X] **SMA30** (Simple Moving Average of 30 days)
- [X] **SMA50** (Simple Moving Average of 50 days)
- [X] **Autorregressive model** (AR)
- [X] **ARMA** model
- [X] **ARIMA** model
- [X] **Naive1** (Naive model of 1 day)
- [X] **Naive5** (Naive model of 5 days)
- [X] **CNN** (Convolutional Neural Network)
- [X] **LSTM** (Long Short-Term Memory)

## Models Results

|          |    SMA10 |    SMA30 |    SMA50 |       AR | ARMA(2,0,2) | ARIMA(5,0,2) |   Naive1 |   Naive5 |       CNN |     LSTM |
|---------:|---------:|---------:|---------:|---------:|------------:|-------------:|---------:|---------:|----------:|---------:|
| Accuracy | 0.589431 | 0.540650 | 0.520325 | 0.626016 |    0.491870 |     0.508130 | 0.491870 | 0.520325 |  0.544715 | 0.524390 |
|      MSE | 0.550165 | 1.392854 | 2.068185 | 0.126310 |    0.272212 |     0.293134 | 0.244692 | 1.064078 |  4.456264 | 1.356165 |
|       R2 | 0.798460 | 0.489760 | 0.242368 | 0.953729 |    0.953729 |     0.891471 | 0.910363 | 0.610200 | -0.632448 | 0.503201 |

## *Trading* Results

|                |          AR |  ARMA(2,0,2) | ARIMA(5,0,2) |         CNN |        LSTM |
|---------------:|------------:|-------------:|-------------:|------------:|------------:|
|   Final Wallet | 134110.0150 | 105564.99850 |  110709.9910 | 110859.9835 | 103360.0075 |
|   Wallets Diff |  34110.0150 |   5564.99850 |   10709.9910 |  10859.9835 |   3360.0075 |
| % Wallets Diff |      1.3411 |      1.05565 |       1.1071 |      1.1086 |      1.0336 |
|          Score |     43.0000 |     21.00000 |      25.0000 |     35.0000 |     16.0000 |
|           Loss |     23.0000 |     41.00000 |      38.0000 |     22.0000 |     17.0000 |

## Data source
The PETR4.Sa historical data is available on Yahoo Finance: https://finance.yahoo.com/quote/PETR4.SA/history?p=PETR4.SA

## PIBIC 2020-2021 Report
Report: https://github.com/gprzy/report-pibic-2020-2021/blob/main/report-pibic-2020-2021.pdf
