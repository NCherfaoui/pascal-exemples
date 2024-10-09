program Calculatrice;

uses
  SysUtils;

var
  choix: char;
  a, b, resultat: real;

begin
  writeln('Bienvenue dans la calculatrice en Pascal');
  writeln('Choisissez une opération :');
  writeln('1. Addition');
  writeln('2. Soustraction');
  writeln('3. Multiplication');
  writeln('4. Division');
  write('Entrez votre choix (1-4) : ');
  readln(choix);

  write('Entrez le premier nombre : ');
  readln(a);
  write('Entrez le deuxième nombre : ');
  readln(b);

  case choix of
    '1': 
      begin
        resultat := a + b;
        writeln('Le résultat de l''addition est : ', resultat:0:2);
      end;
    '2': 
      begin
        resultat := a - b;
        writeln('Le résultat de la soustraction est : ', resultat:0:2);
      end;
    '3': 
      begin
        resultat := a * b;
        writeln('Le résultat de la multiplication est : ', resultat:0:2);
      end;
    '4': 
      begin
        if b = 0 then
          writeln('Erreur : Division par zéro')
        else
        begin
          resultat := a / b;
          writeln('Le résultat de la division est : ', resultat:0:2);
        end;
      end;
    else
      writeln('Choix invalide');
  end;
end.
