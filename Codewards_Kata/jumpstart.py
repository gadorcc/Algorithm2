def run(product_names, quantities, prices, discount, delivery_fee):
    cost = []
    output = ''
    i = 0
    for q in quantities:
        cost_q = (q * prices[i] * (100-discount)/100)
        if cost_q > 0:
            cost.append(cost_q + delivery_fee)
        else:
            cost.append(0)
        output = output + (f"{product_names[i]} : {'{0:.2f}'.format(cost[i])}  \n")
        i += 1

    print(output)

run(["Apples", "Oranges", "Bananas"], [5,3,10], [1,2,1], 9.9, 5)
