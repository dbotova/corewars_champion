#by dbotova 2017 (hercules Cretan Bull)

.name "moonlight"
.comment "You wiil be punished in the name of the Moon"

l0:			sti r1, %:moondust, %1
			sti r1, %:live, %1
			sti r1, %:l1, %1
			sti r1, %:reborn, %1
			live %928638
			lfork %:l0

reborn:		st r1, 00
			st r1, 1024
			st r1, -1024
			st r1, -6000
			st r1, -1
			st r1, -5000
			st r1, -24
			live %100
			zjmp %:reborn
			fork %:reborn
			live %2

l1:			live %2
			st r1, 00
			st r1, 1024
			st r1, -1024
			st r1, -6000
			ld %-1, r10
			ld %-789, r4
			lfork %:l1
			live %100
			ld %-100, r10
			ld %-50, r4
			live %2

live:		live %2
			sti r1, %:l0, %2000
			fork %:l1
			live %2

moondust:	st r3, -100
			st r3, -90
			st r3, -110
			st r3, -80
			st r3, -120
			st r3, -70
			st r3, -130
			st r3, -60
			st r3, -140
			st r3, -50
			st r3, -150
			st r3, -40
			st r3, -160
			st r3, -30
			st r3, -170
			st r3, -20
			st r3, -180
			st r3, -10
			st r3, -190
			st r3, 0
			st r3, 200
			add r1, r10, r3
			st r3, 100
			st r3, 90
			st r3, 110
			st r3, 80
			st r3, 120
			st r3, 70
			st r3, 130
			st r3, 60
			st r3, 140
			st r3, 50
			st r3, 150
			st r3, 40
			st r3, 160
			st r3, 30
			st r3, 170
			st r3, 20
			st r3, 180
			st r3, 10
			st r3, 190
			st r3, 0
			st r3, 200
			add r1, r10, r3
			zjmp %:moondust
			fork %:moondust
			live %2
