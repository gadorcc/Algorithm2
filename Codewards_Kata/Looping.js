function sumOfNegative(array) {
  let sumNeg = 0;
  array.forEach((num) => {
    if (num < 0) {
      sumNeg += num
    }
  });
  console.log(sumNeg)
}

sumOfNegative([15, 16, 17, 1000])
