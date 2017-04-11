#by dbotova 2017 (hercules Cretan Bull)

.name "moonlight"
.comment "You wiil be punished in the name of the Moon"

l0:			sti r1, %:live, %1
			sti r1, %:moondust, %1
			sti r1, %:l1, %1
			sti r1, %:l0, %1
			sti r1, %:reborn, %1
			live %0
			lfork %:l0
			live %0

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
			zjmp %:live

moondust:	st r1, -100
			st r1, -90
			st r1, -110
			st r1, -80
			st r1, -120
			st r1, -70
			st r1, -130
			st r1, -60
			st r1, -140
			st r1, -50
			st r1, -150
			st r1, -40
			st r1, -160
			st r1, -30
			st r1, -170
			st r1, -20
			st r1, -180
			st r1, -10
			st r1, -190
			zjmp %:moondust
			lfork %:l0
