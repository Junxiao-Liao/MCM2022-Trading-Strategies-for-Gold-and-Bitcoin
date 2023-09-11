# Trading Strategies for Gold and Bitcoin

## Background 

Market traders frequently buy and sell volatile assets with the goal of maximizing their total return. There is usually a commission for each purchase and sale. Two such assets are gold and bitcoin.

## Requirement

You have been asked by a trader to develop a model that uses only the past daily price stream to determine each day if the trader should buy, hold, or sell assets in their portfolio. 

The model will be tested on a five-year trading period from 9/11/2016 to 9/10/2021. On each trading day, the trader's portfolio will consist of cash, gold, and bitcoin [C, G, B] valued in US dollars, troy ounces, and bitcoins respectively. The initial portfolio is [1000, 0, 0]. The commission for each transaction (purchase or sale) costs α% of the amount traded, with αgold = 1% and αbitcoin = 2%. There is no cost to hold an asset.

To develop the model, only the data in the two provided spreadsheets can be used.

## Approach

### Assumptions

1. When making trades on day N, the gold/bitcoin prices up to day N are known and can be used to buy at the day N price. Profits are calculated starting from day N+1.

2. Cash earns a fixed 2% annual interest rate. 

3. Commissions for gold and bitcoin trades are settled on the trade day, with profits starting the next day.

### Data Preprocessing

- Fill in missing values
- Normalize data

### Predict Gold Prices

- BP neural network

### Predict Bitcoin Prices 

- GM(1,1) grey forecasting model

### Trading Strategy

- Gold: long-term hold, trade based on risk analysis
- Bitcoin: short-term speculation, trade based on predicted price changes

Consider 8 cases for each day:

1. Sell both: Sell half gold, all bitcoin
2. Buy both: Half cash to gold, half to bitcoin  
3. Buy gold, sell bitcoin: Sell all bitcoin, half cash to gold
4. Sell gold, buy bitcoin: Sell all gold, half cash to bitcoin
5. Only buy gold: Half cash to gold
6. Only buy bitcoin: Half cash to bitcoin
7. Only sell gold: Sell half gold
8. Only sell bitcoin: Sell all bitcoin

### Risk Measurement

- VaR, CVaR for optimal asset allocation
- Diversification: correlation analysis  
- Volatility: standard deviation of returns

### Robustness Analysis

- Model accuracy metrics
- Disturb input data and evaluate model stability
- Vary initial gold/bitcoin allocation and analyze total portfolio value over time

## Draft Details

- Specific data preprocessing steps 
- Detailed explanation of prediction models
- Parameter tuning process
- Formulas for risk metrics
- Pseudocode for trading strategy
