library ieee;
use ieee.std_logic_1164.all;

package project is

    -- Defination of Types
    subtype Byte is std_logic_vector(7 downto 0);
    type Word is array (0 to 3) of Byte;
    type Matrix is array ( 0 to 3 ) of Word;

    -- Some useful constant
    constant zbyte : Byte := (others => '0');
    constant zword : word := (others => zbyte);
    constant zmatrix : matrix := (others => zword);

    -- Declar some useful function 
    function conv_word (
        input : std_logic_vector(31 downto 0)
    )
    return Word;

    function shift_rows(
        input : Matrix
    )
    return Matrix;

    function "xor" (
        left : Matrix;
        right : std_logic_vector
    )
    return Matrix;

end package project;

-- Implementation of the functions
package body project is

    function conv_word
    
end package ;