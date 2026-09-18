pragma Ada_2022;

package body Indefinite_Multiway_Trees_Demo is

   use String_Trees;

   function Build_And_Count return Natural is
      T      : Tree;
      Root_C : Cursor;
   begin
      Clear (T);
      Root_C := Root (T);
      Append_Child (T, Root_C, New_Item => "alpha");
      Append_Child (T, Root_C, New_Item => "beta");
      Insert_Child
        (T, Parent => Root_C, Before => No_Element, New_Item => "gamma");
      return Natural (Child_Count (Root_C));
   end Build_And_Count;

   function Root_Child_Labels_Ok return Boolean is
      T      : Tree;
      Root_C : Cursor;
      A, B   : Cursor;
   begin
      Clear (T);
      Root_C := Root (T);
      Append_Child (T, Root_C, New_Item => "left");
      Append_Child (T, Root_C, New_Item => "right");
      A := First_Child (Root_C);
      B := Next_Sibling (A);
      if A = No_Element or else B = No_Element then
         return False;
      end if;
      return Element (A) = "left" and then Element (B) = "right";
   end Root_Child_Labels_Ok;

end Indefinite_Multiway_Trees_Demo;
