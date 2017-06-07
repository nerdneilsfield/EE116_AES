library project
use project.aes.all;

library ieee;
use ieee.std_logic_1164.all;

entity subbytes is

    port(
        inMat : in Matrix;
        outMat : out Matrix
    );

end entity subbytes;


architecture behaviour of subbytes is

    component sbox is
        port(
            inByte : in Byte;
            outByte : out Byte
        );
    end component sbox;

begin:

    sbox_00: sbox port map(
        inByte => inMat(0)(0);
        outByte => outMat(0)(0);
    );
    
    sbox_01: sbox port map(
        inByte => inMat(0)(1);
        outByte => outMat(0)(1);
    );

    sbox_02: sbox port map(
        inByte => inMat(0)(2);
        outByte => outMat(0)(2);
    );

    sbox_03: sbox port map(
        inByte => inMat(0)(3);
        outByte => outMat(0)(3);
    );

    sbox_10: sbox port map(
        inByte => inMat(1)(0);
        outByte => outMat(1)(0);
    );
    
    sbox_11: sbox port map(
        inByte => inMat(1)(1);
        outByte => outMat(1)(1);
    );

    sbox_12: sbox port map(
        inByte => inMat(1)(2);
        outByte => outMat(1)(2);
    );

    sbox_13: sbox port map(
        inByte => inMat(1)(3);
        outByte => outMat(1)(3);
    );
    sbox_20: sbox port map(
        inByte => inMat(2)(0);
        outByte => outMat(2)(0);
    );
    
    sbox_21: sbox port map(
        inByte => inMat(2)(1);
        outByte => outMat(2)(1);
    );

    sbox_22: sbox port map(
        inByte => inMat(2)(2);
        outByte => outMat(2)(2);
    );

    sbox_23: sbox port map(
        inByte => inMat(2)(3);
        outByte => outMat(2)(3);
    );
    sbox_30: sbox port map(
        inByte => inMat(3)(0);
        outByte => outMat(3)(0);
    );
    
    sbox_31: sbox port map(
        inByte => inMat(3)(1);
        outByte => outMat(3)(1);
    );

    sbox_32: sbox port map(
        inByte => inMat(3)(2);
        outByte => outMat(3)(2);
    );

    sbox_33: sbox port map(
        inByte => inMat(3)(3);
        outByte => outMat(3)(3);
    );

end behaviour;