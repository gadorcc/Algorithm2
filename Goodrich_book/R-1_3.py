def minmax(data):
    data.sort()
    l = len(data) - 1
    min_data,max_data = data[0],data[l]
    return(min_data, max_data)

minmax([2,6,7,4,1,56,43])
