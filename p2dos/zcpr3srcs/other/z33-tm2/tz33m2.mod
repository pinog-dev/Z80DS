MODULE TZ33M2;
(* TEST ZCPR33-MODULA2 INTERFACE MECHANISM *)

FROM INOUT IMPORT OpenOutput,WriteHex;
FROM Z33M2 IMPORT GETENV;
VAR
C: CARDINAL;
BEGIN
  C :=GETENV();
  OpenOutput("");
  WriteHex(C,4);
END TZ33M2.

                            