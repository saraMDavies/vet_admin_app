

car_colours = ['red', 'blue', 'blue', 'grey', 'red', 'yellow', 'blue']

agg_data = {}
for colour in car_colours:
    if colour in agg_data.keys():
        agg_data[colour] += 1
    else:
        agg_data[colour] = 1
    
print(agg_data)


        



