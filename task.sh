piCalculation()
{
  ITER=10000
  pi=0

  echo "Calculation begins..."
  BEGIN=$(date +%s)
  for (( i=0; i<$ITER; i++ ))
  do
    pi=$(echo "$pi + 4 * (-1)^$i / (2*$i + 1)" | bc -l)
    if (( $i % 500 == 0 && $i != 0 && i != $ITER )); then
          echo " - Iteration $i ($(date +%H:%M:%S)) : PI is ~$pi"
    fi
  done
  END=$(date +%s)
  echo "Final PI calculation: $pi"
  echo "Calculation took $(($END - $BEGIN)) seconds"
}

piCalculation | curl -sF 'sprunge=<-' http://sprunge.us
