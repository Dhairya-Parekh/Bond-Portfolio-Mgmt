import re

def extract_loss_values(filename):
    loss_values = []
    with open(filename, 'r') as file:
        for line in file:
            match = re.search(r'loss = ([+-]?(\d+(\.\d*)?|\.\d+)([eE][+-]?\d+)?)', line)
            if match:
                loss_values.append(float(match.group(1)))
    return loss_values

loss_values = extract_loss_values('train1.txt')
print(loss_values)