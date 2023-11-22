import pandas as pd

closing_prices = pd.read_csv('../Data/data.csv')
closing_prices.sort_values(by=['Date'], inplace=True)

coupons = [column for column in closing_prices.columns if column.startswith('Paid Coupon')]
# Divide the coupons by 100 to get the actual coupon value
closing_prices[coupons] /= 100
# Split the data into train, validation and test sets
train_fraction = 0.6
validation_fraction = 0.2
test_fraction = 0.2

train_cutoff = int(len(closing_prices) * train_fraction)
validation_cutoff = int(len(closing_prices) * (train_fraction + validation_fraction))

train_data = closing_prices.iloc[:train_cutoff]
validation_data = closing_prices.iloc[train_cutoff:validation_cutoff]
test_data = closing_prices.iloc[validation_cutoff:]

train_data.to_csv('../Data/train.csv', index=False)
validation_data.to_csv('../Data/validation.csv', index=False)
test_data.to_csv('../Data/test.csv', index=False)