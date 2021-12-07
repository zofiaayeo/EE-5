{

  Project: EE-5 Practical 1
  Platform: Parallax Project USB Board
  Revision: 1.1
  Author: Zofia
  Date: 28th Oct 2021
  Log:
    Date: Desc
    28/10/2021: Display 0 - 9 with a delay of 300ms in a continuous loop
}

CON
      _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 1_500_000   ' clkfreq = 300ms

PUB Main

  ' Declaration & Initilisation
  DIRA[0..7]~~    '<= Output
  OUTA[0..7] := %11111111     ' Sets Pins 0 - 7 to High
  waitcnt(cnt + clkfreq*3)    ' 900ms delay to visual inspection of all lights are working
  OUTA[0..7] := %00000000     ' Sets Pins 0 - 7 to Low
  waitcnt(cnt + clkfreq*2)    ' 600ms delay before start of loop

  repeat
    OUTA[0..7] := %11111100  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 1 1 1 1 1 0 0 respectively to display 0
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %01100000  ' Sets Pins 0 1 2 3 4 5 6 7 to 0 1 1 0 0 0 0 0 respectively to display 1
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %11011010  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 1 0 1 1 0 1 0 respectively to display 2
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %11110010  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 1 1 1 0 0 1 0 respectively to display 3
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %01100110  ' Sets Pins 0 1 2 3 4 5 6 7 to 0 1 1 0 0 1 1 0 respectively to display 4
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %10110110  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 0 1 1 0 1 1 0 respectively to display 5
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %10111110  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 0 1 1 1 1 1 0 respectively to display 6
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %11100000  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 1 1 0 0 0 0 0 respectively to display 7
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %11111110  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 1 1 1 1 1 1 0 respectively to display 8
    waitcnt(cnt + clkfreq)   ' 300ms delay
    OUTA[0..7] := %11100110  ' Sets Pins 0 1 2 3 4 5 6 7 to 1 1 1 0 0 1 1 0 respectively to display 9
    waitcnt(cnt + clkfreq)   ' 300ms delay

  repeat