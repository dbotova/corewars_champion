#by dbotova 2017 (hercules Cretan Bull)

.name "moonlight"
.comment "You wiil be punished in the name of the Moon"

l0:			sti r1, %:live, %1
			sti r1, %:moondust, %1
			sti r1, %:l1, %1
			sti r1, %:l0, %1
			sti r1, %:reborn, %1
			live %0
			lfork %:l1
			live %0
			zjmp %:l0

reborn:		st r1, 00
			st r1, 1024
			st r1, -1024
			st r1, -6000
			st r1, -1
			st r1, -5000
			st r1, -24
			live %0
			zjmp %:l0
			zjmp %:reborn
			fork %:l0

l1:			live %0
			st r1, 00
			st r1, 1024
			st r1, -1024
			st r1, -6000
			ld %-1, r10
			ld %-789, r4
			lfork %:l0
			live %0
			ld %-100, r10
			ld %-50, r4

live:		live %0
			sti r1, %:l0, %1
			fork %:l0
			sti r1, %:l0, %1
			zjmp %:l0
			zjmp %:reborn
			fork %:moondust

moondust:	st r5, -100
			st r5, -90
			st r5, -110
			st r5, -80
			st r5, -120
			st r5, -70
			st r5, -130
			st r5, -60
			st r5, -140
			st r5, -50
			st r5, -150
			st r5, -40
			st r5, -160
			st r5, -30
			st r5, -170
			st r5, -20
			st r5, -180
			st r5, -10
			st r5, -190
			zjmp %:moondust
			lfork %:l0
			fork %:l0
			fork %:moondust
