program GestionBibliotheque;

uses
  SysUtils;

type
  TBook = record
    Title: string;
    Author: string;
    ISBN: string;
    Available: boolean;
  end;

var
  Books: array[1..100] of TBook;
  BookCount: integer;
  Choice: char;
  i: integer;
  SearchTitle: string;

procedure AddBook;
begin
  if BookCount < 100 then
  begin
    writeln('Ajouter un nouveau livre :');
    write('Titre : ');
    readln(Books[BookCount + 1].Title);
    write('Auteur : ');
    readln(Books[BookCount + 1].Author);
    write('ISBN : ');
    readln(Books[BookCount + 1].ISBN);
    Books[BookCount + 1].Available := true;
    BookCount := BookCount + 1;
    writeln('Livre ajouté avec succès.');
  end
  else
    writeln('La bibliothèque est pleine.');
end;

procedure DisplayBooks;
begin
  if BookCount = 0 then
    writeln('Aucun livre à afficher.')
  else
  begin
    writeln('Liste des livres :');
    for i := 1 to BookCount do
    begin
      if Books[i].Available then
        writeln(Books[i].Title, ' par ', Books[i].Author, ' (ISBN: ', Books[i].ISBN, ') - Disponible')
      else
        writeln(Books[i].Title, ' par ', Books[i].Author, ' (ISBN: ', Books[i].ISBN, ') - Emprunté');
    end;
  end;
end;

procedure SearchBook;
begin
  write('Entrez le titre du livre à rechercher : ');
  readln(SearchTitle);
  for i := 1 to BookCount do
  begin
    if Books[i].Title = SearchTitle then
    begin
      writeln('Livre trouvé :');
      if Books[i].Available then
        writeln(Books[i].Title, ' par ', Books[i].Author, ' (ISBN: ', Books[i].ISBN, ') - Disponible')
      else
        writeln(Books[i].Title, ' par ', Books[i].Author, ' (ISBN: ', Books[i].ISBN, ') - Emprunté');
      exit;
    end;
  end;
  writeln('Livre non trouvé.');
end;

procedure BorrowBook;
begin
  write('Entrez le titre du livre à emprunter : ');
  readln(SearchTitle);
  for i := 1 to BookCount do
  begin
    if (Books[i].Title = SearchTitle) and Books[i].Available then
    begin
      Books[i].Available := false;
      writeln('Livre emprunté avec succès.');
      exit;
    end;
  end;
  writeln('Livre non disponible ou non trouvé.');
end;

procedure ReturnBook;
begin
  write('Entrez le titre du livre à rendre : ');
  readln(SearchTitle);
  for i := 1 to BookCount do
  begin
    if (Books[i].Title = SearchTitle) and not Books[i].Available then
    begin
      Books[i].Available := true;
      writeln('Livre rendu avec succès.');
      exit;
    end;
  end;
  writeln('Livre non trouvé ou déjà disponible.');
end;

begin
  BookCount := 0;
  repeat
    writeln('Gestion de bibliothèque');
    writeln('1. Ajouter un livre');
    writeln('2. Afficher tous les livres');
    writeln('3. Rechercher un livre');
    writeln('4. Emprunter un livre');
    writeln('5. Rendre un livre');
    writeln('6. Quitter');
    write('Entrez votre choix (1-6) : ');
    readln(Choice);

    case Choice of
      '1': AddBook;
      '2': DisplayBooks;
      '3': SearchBook;
      '4': BorrowBook;
      '5': ReturnBook;
      '6': writeln('Au revoir !');
      else writeln('Choix invalide.');
    end;
  until Choice = '6';
end.
