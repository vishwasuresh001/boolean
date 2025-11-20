module Boolean(
    input A, B, C, D,
    input w, x, y, z,
    output F1, F2
);

    // F1 expression
    assign F1 = (~A & ~B & ~C & ~D) |
                (A & ~C & ~D) |
                (~B & C & ~D) |
                (~A & B & C & D) |
                (B & ~C & D);

    // F2 expression
    assign F2 = (x & ~y & z) |
                (~x & ~y & z) |
                (~w & x & y) |
                (w & x & ~y) |
                (w & x & y);

endmodule