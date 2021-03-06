insert into institution (name, description) values ("Dla dzieci", "Pomoc osobom znajdującym się w trudnej sytuacji życiowej.");
insert into institution (name, description) values ("Bez domu", "Pomoc dla osób nieposiadajacych miejsca zamieszkania");
insert into institution (name, description) values ("Pamięć", "Pomoc dla osób starszych nie posiadających bliskich");
insert into institution (name, description) values ("Pupil", "Pomoc dla schronisk w pozyskiwaniu koców i pościeli dla zwierząt");
insert into institution (name, description) values ("Talerz Serc", "Pomoc w zapewnieniu posiłku dla osób bezdomnych");
insert into institution (name, description) values ("Piórnik", "Pomoc dla dzieci z biednych rodzin w zapewnieniu przyborów szkolnych");

insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Warszawa", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod accumsan dolor sed molestie. Etiam vulputate consequat mi maximus lacinia. Pellentesque vitae nisi nisi.", "2019-08-23", "12:04:45", 3, "Reymonta", "01-123", 1)
insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Gdańsk", "Sed placerat cursus diam eget venenatis. Nunc laoreet euismod fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus.", "2019-03-12", "14:22:21", 5, "Kopernika", "02-111", 2)
insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Warszawa", "Nunc pharetra, lectus in fermentum tempus, eros magna fringilla metus, sit amet vulputate ipsum leo at magna.", "2019-07-02", "17:02:11", 3, "Mickiewicza", "03-222", 1)
insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Wrocław", "Pellentesque libero ipsum, rutrum sed fermentum non, condimentum eu turpis. Proin eu magna pellentesque, rutrum enim in, dictum metus.", "2019-08-11", "13:33:31", 6, "Reja", "01-133", 4)
insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Poznań", "Proin est sem, blandit nec tincidunt non, fringilla eget felis. In ac tempor dolor. Cras erat risus, auctor sit amet volutpat nec, suscipit vitae nisi.", "2019-02-11", "11:22:33", 2, "Sienkiewicza", "32-124", 2)
insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Szczecin", "Donec elementum elementum augue sed ultricies. Pellentesque non varius velit, at fermentum enim.", "2019-04-22", "15:50:32", 3, "Słowackiego", "01-563", 4)
insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Kraków", "Quisque congue dui sed lorem tristique luctus a id nulla. Praesent vel dui et odio lobortis pulvinar.", "2019-08-30", "12:14:42", 8, "Prusa", "24-455", 3)
insert into donation (city, pickUpComment, pickUpDate, pickUpTime, quantity, street, zipCode, institution_id) values ("Warszawa", "Integer aliquam dui nec urna facilisis, nec pulvinar leo vehicula. Etiam volutpat finibus arcu, at malesuada enim volutpat efficitur.", "2019-06-30", "09:11:53", 1, "Adama Małysza", "12-632", 2)

insert into category (name) value ("ubrania, które nadają się do ponownego użycia");
insert into category (name) value ("ubrania, do wyrzucenia");
insert into category (name) value ("zabawki");
insert into category (name) value ("książki");
insert into category (name) value ("inne");