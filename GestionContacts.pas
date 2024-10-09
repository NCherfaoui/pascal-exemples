program GestionContacts;

uses
  SysUtils;

type
  TContact = record
    Nom: string;
    Prenom: string;
    Telephone: string;
  end;

var
  Contacts: array[1..100] of TContact;
  NombreContacts: integer;
  choix: char;
  i: integer;
  RechercheNom: string;

procedure AjouterContact;
begin
  if NombreContacts < 100 then
  begin
    writeln('Ajouter un nouveau contact :');
    write('Nom : ');
    readln(Contacts[NombreContacts + 1].Nom);
    write('Prénom : ');
    readln(Contacts[NombreContacts + 1].Prenom);
    write('Téléphone : ');
    readln(Contacts[NombreContacts + 1].Telephone);
    NombreContacts := NombreContacts + 1;
    writeln('Contact ajouté avec succès.');
  end
  else
    writeln('La liste de contacts est pleine.');
end;

procedure AfficherContacts;
begin
  if NombreContacts = 0 then
    writeln('Aucun contact à afficher.')
  else
  begin
    writeln('Liste des contacts :');
    for i := 1 to NombreContacts do
      writeln(Contacts[i].Nom, ' ', Contacts[i].Prenom, ' : ', Contacts[i].Telephone);
  end;
end;

procedure RechercherContact;
begin
  write('Entrez le nom du contact à rechercher : ');
  readln(RechercheNom);
  for i := 1 to NombreContacts do
  begin
    if Contacts[i].Nom = RechercheNom then
    begin
      writeln('Contact trouvé :');
      writeln(Contacts[i].Nom, ' ', Contacts[i].Prenom, ' : ', Contacts[i].Telephone);
      exit;
    end;
  end;
  writeln('Contact non trouvé.');
end;

begin
  NombreContacts := 0;
  repeat
    writeln('Gestion de contacts');
    writeln('1. Ajouter un contact');
    writeln('2. Afficher tous les contacts');
    writeln('3. Rechercher un contact');
    writeln('4. Quitter');
    write('Entrez votre choix (1-4) : ');
    readln(choix);

    case choix of
      '1': AjouterContact;
      '2': AfficherContacts;
      '3': RechercherContact;
      '4': writeln('Au revoir !');
      else writeln('Choix invalide.');
    end;
  until choix = '4';
end.
