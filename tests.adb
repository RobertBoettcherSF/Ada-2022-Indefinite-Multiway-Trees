pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Indefinite_Multiway_Trees_Demo;
procedure Tests is
begin
   Assert (Indefinite_Multiway_Trees_Demo.Build_And_Count = 3);
   Assert (Indefinite_Multiway_Trees_Demo.Root_Child_Labels_Ok);
   Put_Line ("PASS Indefinite_Multiway_Trees Append/Insert_Child");
   Put_Line ("All Indefinite_Multiway_Trees topic tests passed.");
end Tests;
