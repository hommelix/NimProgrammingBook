proc main =
  var a: array[4, uint64]
  echo("Size of array a = ", sizeof(a))
  a[0] = 7
  echo("Value of a[0] = ", a[0])
  echo("Adress of array a   = ", cast[int](addr a))
  echo("Adress of cell a[0] = ", cast[int](addr a[0]))

main()
