def nbMonths(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth)
  n=0
  return [n,(startPriceOld  - startPriceNew).to_i ] if startPriceNew < (startPriceOld)
  n = 1
  while startPriceNew > (startPriceOld + savingperMonth)

    startPriceOld = startPriceOld - ((startPriceOld * percentLossByMonth) / 100)
    startPriceNew = startPriceNew - ((startPriceNew * percentLossByMonth) / 100)
    n += 1
    percentLossByMonth += 0.5 if n.even?

    savingperMonth += 1000
  end

  startPriceOld = startPriceOld - ((startPriceOld * percentLossByMonth) / 100)
  startPriceNew = startPriceNew - ((startPriceNew * percentLossByMonth) / 100)
  return [n,((startPriceOld + savingperMonth) - startPriceNew).to_i ]
end


nbMonths(2000, 8000, 1000, 1.5)
nbMonths(12000, 8000, 1000, 1.5)
