# Hailstone Sequence

The Hailstone sequence of numbers can be generated from a starting positive integer, n by:

    If n is 1 then the sequence ends.
    If n is even then the next n of the sequence = n/2
    If n is odd then the next n of the sequence = (3 * n) + 1 

The (unproven), Collatz conjecture is that the hailstone sequence for any starting number always terminates.

Task Description:

    Create a routine to generate the hailstone sequence for a number.
    Use the routine to show that the hailstone sequence for the number 27 has 112 elements starting with 27, 82, 41, 124 and ending with 8, 4, 2, 1
    Show the number less than 100,000 which has the longest hailstone sequence together with that sequence's length.
    (But don't show the actual sequence!) 
