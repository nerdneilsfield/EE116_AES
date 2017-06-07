library project;
use project.aes.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numberic.all;

entity mixmatrix is

    port (
        inMat : in Matrix;
        outMat: out Matrix
    );

end entity mixmatrix;


architecture behaviour of mixmatrix is

    component mixcolumn is
        port (
            inCol : in Word;
            outCol : out Word
        );
    end component mixcolumn;

begin



end behaviour;