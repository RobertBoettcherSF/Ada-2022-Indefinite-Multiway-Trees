--  Ada 2022 topic: Ada.Containers.Indefinite_Multiway_Trees.
pragma Ada_2022;
with Ada.Containers.Indefinite_Multiway_Trees;
package Indefinite_Multiway_Trees_Demo is
   package String_Trees is new Ada.Containers.Indefinite_Multiway_Trees
     (Element_Type => String);
   function Build_And_Count return Natural;
   function Root_Child_Labels_Ok return Boolean;
end Indefinite_Multiway_Trees_Demo;
