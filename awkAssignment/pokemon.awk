# This is an awk script that will find certain statistics of pokemon from a csv file.
# We are going to make the information as easy to read as possible.
# Made by Cooper Myers in CIS 241.

BEGIN{
	FS = ","
	numRows = 800
	powName = 0
	powTotal = 0
}

{

	/Most Powerful Pokemon/
	if (powTotal < $5 && $2 != "Name"){
		powTotal = $5
		powName = $2	
	}

	else if (powTotal == $5 && $2 != "Name"){
	powName = powName "," $2	
	}


	/Total of Each Column/
	{totalSum += $5}
	{hpSum += $6}
	{attackSum += $7}
	{defenseSum += $8}
	{spAttSum += $9}
	{spDefSum += $10}
	{speSum += $11}


}

/Most Powerful Pokemon of Each Type/
/Grass/ && grassMax<$5 {grassMax = $5 + 0; nameGrass = $2; next}
/Grass/ && grassMax==$5 {nameGrass = nameGrass ORS $2}
/Poison/ && poisonMax<$5 {poisonMax = $5 + 0; namePoison = $2; next}
/Poison/ && poisonMax==$5 {namePoison = namePoison ORS $2}
/Fire/ && fireMax<$5 {fireMax = $5 + 0; nameFire = $2; next}
/Fire/ && fireMax==$5 {nameFire = nameFire ORS $2}
/Flying/ && flyingMax<$5 {flyingMax = $5 + 0; nameFlying = $2; next}
/Flying/ && flyingMax==$5 {nameFlying = nameFlying ORS $2}
/Dragon/ && dragonMax<$5 {dragonMax = $5 + 0; nameDragon = $2; next}
/Dragon/ && dragonmax==$5 {nameDragon = nameDragon ORS $2}
/Water/ && waterMax<$5 {waterMax = $5 + 0; nameWater = $2; next}
/Water/ && waterMax==$5 {nameWater = nameWater ORS $2}
/Bug/ && bugMax<$5 {bugMax = $5 + 0; nameBug = $2; next}
/Bug/ && bugMax==$5 {nameBug = nameBug ORS $2}
/Normal/ && normalMax<$5 {normalMax = $5 + 0; nameNormal = $2; next}
/Normal/ && normalMax==$5 {nameNormal = nameNormal ORS $2}
/Electric/ && electricMax<$5 {electricMax = $5 + 0; nameElectric = $2; next}
/Electric/ && electricMax==$5 {nameElectric = nameElectric ORS $2}
/Ground/ && groundMax<$5 {groundMax = $5 + 0; nameGround = $2; next}
/Ground/ && groundMax==$5 {nameGround = nameGround ORS $2}
/Fairy/ && fairyMax<$5 {fairyMax = $5 + 0; nameFairy = $2; next}
/Fairy/ && fairymax==$5 {nameFairy = nameFairy ORS $2}
/Fighting/ && fightingMax<$5 {fightingMax = $5 + 0; nameFighting = $2; next} 
/Fighting/ && fightingMax==$5 {nameFighting = nameFighting ORS $2} 
/Psychic/ && psychicMax<$5 {psychicMax = $5 + 0; namePsychic = $2; next}
/Psychic/ && psychicMax==$5 {namePsychic = namePsychic ORS $2} 
/Steel/ && steelMax<$5 {steelMax = $5 + 0; nameSteel = $2; next} 
/Steel/ && steelmax==$5 {nameSteel = nameSteel ORS $2}
/Rock/ && rockMax<$5 {rockMax = $5 + 0; nameRock = $2; next}
/Rock/ && rockMax==$5 {nameRock = nameRock ORS $2}
/Ice/ && iceMax<$5 {iceMax = $5 + 0; nameIce = $2; next}
/Ice/ && iceMax==$5 {nameIce = nameIce ORS $2}
/Dark/ && darkMax<$5 {darkMax = $5 + 0; nameDark = $2; next}
/Dark/ && darkmax==$5 {nameDark = nameDark ORS $2}


/Grass/ {numGrass += 1}
/Grass/ {totalGrass += $5}
/Poison/ {numPoison += 1}
/Poison/ {totalPoison += $5}
/Fire/ {numFire += 1}
/Fire/ {totalFire += $5}
/Flying/ {numFlying += 1}
/Flying/ {totalFlying += $5}
/Dragon/ {numDragon += 1}
/Dragon/ {totalDragon += $5}
/Water/ {numWater += 1}
/Water/ {totalWater += $5}
/Bug/ {numBug += 1}
/Bug/ {totalBug += $5}
/Normal/ {numNormal += 1}
/Normal/ {totalNormal += $5}
/Electric/ {numElectric += 1}
/Electric/ {totalElectric += $5}
/Ground/ {numGround += 1}
/Ground/ {totalGround += $5}
/Fairy/ {numFairy += 1}
/Fairy/ {totalFairy += $5}
/Fighting/ {numFighting += 1}
/Fighting/ {totalFighting += $5}
/Psychic/ {numPsychic += 1}
/Psychic/ {totalPsychic += $5}
/Steel/ {numSteel += 1} 
/Steel/ {totalSteel += $5}
/Rock/ {numRock += 1}
/Rock/ {totalRock += $5}
/Ice/ {numIce += 1}
/Ice/ {totalIce += $5}
/Dark/ {numDark += 1}
/Dark/ {totalDark += $5}




END{
	print "Most Powerful Pokemon is :\n"
	print "The highest total: " powTotal "\n" 
	print "The most powerful pokemon: " powName "\n"
	print "The Average of Each Column:\n"
	print "Total: "totalSum/numRows
	print "HP: "hpSum/numRows
	print "Attack: "attackSum/numRows
	print "Defense: "defenseSum/numRows
	print "SP Atk: "spAttSum/numRows
	print "SP Def: "spDefSum/numRows
	print "Speed: "speSum
	print "Most Powerful Grass Pokemon: " nameGrass " with " grassMax "\n"
	print "Most Powerful Poison Pokemon: " namePoison " with " poisonMax "\n"
	print "Most Powerful Fire Pokemon: " nameFire " with " fireMax "\n"
	print "Most Powerful Flying Pokemon: " nameFlying " with " flyingMax "\n"
	print "Most Powerful Dragon Pokemon: " nameDragon " with " dragonMax "\n"
	print "Most Powerful Water Pokemon: " nameWater " with " waterMax "\n"
	print "Most Powerful Bug Pokemon: " nameBug " with " bugMax "\n"
	print "Most Powerful Normal Pokemon: " nameNormal " with" normalMax "\n"
	print "Most Powerful Electric Pokemon: " nameElectric " with " electricMax "\n"
	print "Most Powerful Ground Pokemon: " nameGround " with " groundMax "\n"
	print "The average power of Grass pokemon is: " totalGrass/numGrass "\n"
	print "The average power of Poison pokemon is: " totalPoison/numPoison "\n"
	print "The average power of Fire pokemon is: " totalFire/numFire "\n"
	print "The average power of Flying pokemon is: " totalFlying/numFlying "\n"
	print "The average power of Dragon pokemon is: " totalDragon/numDragon "\n"
	print "The average power of Water pokemon is: " totalWater/numWater "\n"
	print "The average power of Bug pokemon is: " totalBug/numBug "\n"
	print "The average power of Normal pokemon is: " totalNormal/numNormal "\n"
	print "The average power of Electric pokemon is: " totalElectric/numElectric "\n"
	print "The average power of Ground pokemon is: " totalGround/numGround "\n"
	print "The average power of Fairy pokemon is: " totalFairy/numFairy "\n"
	print "The average power of Fighting pokemon is: " totalFighting/numFighting "\n"
	print "The average power of Psychic pokemon is: " totalPsychic/numPsychic "\n"
	print "The average power of Steel pokemon is: " totalSteel/numSteel "\n"
	print "The average power of Rock pokemon is: " totalRock/numRock "\n"
	print "The average power of Ice pokemon is: " totalIce/numIce "\n"
	print "The average power of Dark pokemon is: " totalDark/numDark "\n"
	print "My interesting calculation:" waterMax-grassMax
	print "This is for those who are team Water, this is the difference between Water and Grass when you take their maximums."
}
