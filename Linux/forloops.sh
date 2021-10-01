#!/bin/bash
#Variables
states=( 'New York' 'Virginia' 'Maine' 'Hawaii' 'Colorado' )
#prints out favorite state
for state in ${states[@]};
do
if [ $state == 'Hawaii' ]
then
echo "Hawaii is the best"
else
echo "I am not fond of Hawaii"
fi
done
