#!/bin/bash

echo '# --- mirrored from '$1' ---'

cat $1 | grep -v "#" | grep -E "[\t 0-9]*" | awk '
{
  if(NF > 0)
    print $7, -$8, $9, $10, $11, -$12,   $1, -$2, $3, $4, $5, -$6,   $17, -$18, -$19, -$20,   $13, -$14, -$15, -$16, $21; 
}
'
