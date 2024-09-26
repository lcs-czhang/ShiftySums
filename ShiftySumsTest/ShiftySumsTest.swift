//
//  ShiftySumsTest.swift
//  ShiftySumsTest
//
//  Created by Yuzhou Zhang on 2024-09-26.
//

import Testing

struct ShiftySumsTest {

    @Test func twelveShiftThree()  {
        #expect(shiftTheNumber(number: 12, shift: 3) == 13332)
    }
    @Test func eighteenShiftFive()  {
        #expect(shiftTheNumber(number: 18, shift: 5) == 1999998)
    }
    @Test func hundredShiftZero()  {
        #expect(shiftTheNumber(number: 100, shift: 0) == 100)
    }
    @Test func N1939Shift5()  {
        #expect(shiftTheNumber(number: 1939, shift: 5) == 215444229)
    }
}
