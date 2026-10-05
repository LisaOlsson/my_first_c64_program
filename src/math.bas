10 rem This is a recreation of my first ever useful program.
20 rem I wrote this in 1985, when I was seven years old.
30 rem This is recreated from memory, and using English instead of Swedish.
40 rem I am trying to recreate it as accurately as possible,
50 rem without any modern coding practice.

60 poke 56328,0
61 let x = rnd(0)

70 print "math training program!"
80 print ""
90 print "1. addition"
100 print "2. subtraction"
110 print "3. multiplication"
120 print "4. division"
130 print ""
140 input "choose an operation (1 - 4):"; o
150 input "choose difficulty (1 - 4):"; d
160 if o = 1 then goto 1000
170 if o = 2 then goto 2000
180 if o = 3 then goto 3000
190 if o = 4 then goto 4000

500 print "you got ";co;" correct answers out of 10."
510 print "try again!"
520 goto 70

1000 rem Addition section
1010 let co = 0
1020 for i = 1 to 10
1030 if d = 1 then let a = int(rnd(1) * 10): let b = int(rnd(1) * 10)
1040 if d = 2 then let a = int(rnd(1) * 50): let b = int(rnd(1) * 50)
1050 if d = 3 then let a = int(rnd(1) * 80 + 20): let b = int(rnd(1) * 80 + 20)
1060 if d = 4 then let a = int(rnd(1) * 400 + 100): let b = int(rnd(1) * 400 + 100)
1070 print a;" + ";b;" = ": input ans
1080 if ans = a + b then co = co + 1: print "correct!": 
1090 if ans <> a + b then print "wrong!"
1100 next i
1110 goto 500

2000 rem Subtraction section
2010 let co = 0
2020 for i = 1 to 10
2030 if d = 1 then let a = int(rnd(1) * 10): let b = int(rnd(1) * 10)
2040 if d = 2 then let a = int(rnd(1) * 50): let b = int(rnd(1) * 50)
2050 if d = 3 then let a = int(rnd(1) * 80 + 20): let b = int(rnd(1) * 80 + 20)
2060 if d = 4 then let a = int(rnd(1) * 400 + 100): let b = int(rnd(1) * 400 + 100)
2070 let c = a + b
2080 print c;" - ";a;" = ": input ans
2090 if ans = b then co = co + 1: print "correct!"
2100 if ans <> b then print "wrong!"
2110 next i
2120 goto 500

3000 rem Multiplication section
3010 let co = 0
3020 for i = 1 to 10
3030 if d = 1 then let a = int(rnd(1) * 10): let b = int(rnd(1) * 10)
3040 if d = 2 then let a = int(rnd(1) * 20): let b = int(rnd(1) * 20)
3050 if d = 3 then let a = int(rnd(1) * 30 + 10): let b = int(rnd(1) * 30 + 10)
3060 if d = 4 then let a = int(rnd(1) * 50 + 20): let b = int(rnd(1) * 50 + 20)
3070 print a;" * ";b;" = ": input ans
3080 if ans = a * b then co = co + 1: print "correct!": 
3090 if ans <> a * b then print "wrong!"
3100 next i
3110 goto 500

4000 rem Division section
4010 let co = 0
4020 for i = 1 to 10
4030 if d = 1 then let b = int(rnd(1) * 9 + 1): let c = int(rnd(1) * 10)
4040 if d = 2 then let b = int(rnd(1) * 19 + 1): let c = int(rnd(1) * 20)
4050 if d = 3 then let b = int(rnd(1) * 30 + 10): let c = int(rnd(1) * 30 + 10)
4060 if d = 4 then let b = int(rnd(1) * 50 + 20): let c = int(rnd(1) * 50 + 20)
4070 let a = b * c
4080 print a;" / ";b;" = ": input ans
4090 if ans = c then co = co + 1: print "correct!"
4100 if ans <> c then print "wrong!"
4110 next i
4120 goto 500