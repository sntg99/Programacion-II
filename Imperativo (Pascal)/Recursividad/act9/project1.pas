program project1;

const
    dimF = 8;  {Dimensión física del vector}

type

    vector = array [1..dimF] of LongInt;

    dim = 0..dimF;

{ACTIVIDAD}
{Ej b}
function Maximo (dimL,num:dim; v:vector):integer;
var max:integer;
begin
     if (num=(dimL+1)) then
        Maximo:=-1
     else
       begin
          Maximo:=Maximo(dimL,num+1,v);
          if (v[num]>Maximo) then
              Maximo:=v[num];
       end;
end;
{Ej c}
function Suma (dimL:dim; num,acum: integer; v:vector):integer;
begin
     if (num=(dimL+1)) then
         Suma:=acum
     else begin
         acum:=v[num]+Suma(dimL,(num+1),acum,v);
         Suma:=acum;
     end;
end;

{-----------------------------------------------------------------------------
CARGARVECTOR - Carga nros aleatorios entre 0 y 100 en el vector hasta que
llegue el nro 99 o hasta que se complete el vector}
Procedure cargarVector ( var vec: vector; var dimL: dim);
var
   d: integer;
begin
     Randomize;  { Inicializa la secuencia de random a partir de una semilla}
     dimL := 0;
     d:= random(100);
     while (d <> 99)  and ( dimL < dimF ) do begin
           dimL := dimL + 1;
           vec[dimL] := d;
           d:= random(100);
     end;
End;



{-----------------------------------------------------------------------------
IMPRIMIRVECTOR - Imprime todos los nros del vector }
Procedure imprimirVector ( var vec: vector; var dimL: dim );
var
   i: dim;
begin
     for i:= 1 to dimL do
         write ('-----');
     writeln;
     write (' ');
     for i:= 1 to dimL do begin
        if(vec[i] < 9)then
            write ('0');
        write(vec[i], ' | ');
     end;
     writeln;
     for i:= 1 to dimL do
         write ('-----');
     writeln;
     writeln;
End;

{PROGRAMA PRINCIPAL}
var
   v: vector;
   dimL: dim;
   max:integer;
begin

     cargarVector(v,dimL);
     writeln('Nros almacenados: ');
     imprimirVector(v, dimL);
     writeln(Maximo(dimL,1,v));
     writeln(Suma(dimL,1,0,v));
     readln;
end.
