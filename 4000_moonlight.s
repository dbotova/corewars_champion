#by dbotova 2017 (hercules Cretan Bull)

.name "moonlight"
.comment "You wiil be punished in the name of the Moon"

l0:		sti r1, %:live, %1
		sti r1, %:l1, %1
		sti r1, %:l0, %1
		ld %0, r10
		ld %0, r4
		ld %0, r1
		live %928638

l1:		live %4902343
		st r1, 00
		st r1, 1024

live:	live %2343
		sti r1, %:l0, %1
		fork %:l0
