# Cheet sheet

- Dodawanie swojego nickname: `git config --global user.name <nickname>`
- Dodawanie swojego adresu email: `git config --global user.email <adres-email>`
- Clonowanie repozytorium: `git clone <link>`
- Pobieranie nowych zmian z danego repozytorium: `git pull`
- Sprawdzenie aktualnego statusu lokalnego repozytorium: `git status`
- Sprawdzenie logów: `git log`
- Dodawanie pliku `abc.txt` do repozytorium: `git add abc.txt`
- Przechodzenie oraz utworzenie nowego branch `git checkout -b <new-branch>`
- Scalanie: `git merge <branch>`

# Zadania

1. Połącz się do zdalnego serwera za pośrednictwem komend

```
ssh root@docker-de.yorune.pl -p 22<numer-uzytkownika>
```

2. Utwórz nowe repozytorim na swoim githubie
3. Utwórz token aby móc pobrać swoje repozytorium.

   Link: https://github.com/settings/tokens/new

   Pamiętaj o zaznaczeniu pełnych uprawień dla "repozytorium" dla tego tokenu

4. Pobierz swoje repozytorim

```
git clone <link>
```

4. Przedstaw się gitowi za pośrednictwem komendy

```
git config --global user.name <imię i nazwisko / przezwisko / nickname>
git config --global user.email <adres-email>

Example:
git config --global user.name "Marcin Woźniak"
git config --global user.email "y0rune@aol.com"
```

5. Utwórz plik o nazwię `testowy.txt` a następnie go dodaj do głównej gałęzi
   (main branch)

```
git add testowy.txt
```

6. Utwórz wiadomość o treści `Add: testowy.txt`

```
git commit -m "Add: testowy.txt"
```

7. Wysłanie zmian do głównej gałęz

```
git push

or

git push origin main
```

8. Dodanie do pliku `testowy.txt` losowego tekstu a następnie dodanie wiadomości
   oraz wysłanie do głównej gałezi

9. Dodaj nowy lokalny gałęzi (branch) o nazwie `new-branch`

```
git checkout -b new-branch
```

10. Dodanie nowego pliku o nazwie `new-file.txt` oraz wysłanie go do gałęzi `new-branch`

```
touch new-file.txt
git add new-file.txt
git commit -m "Add: new-file.txt"
git push --set-upstream origin new-branch
git push

or

git add new-file.txt
git commit -m "Add: new-file.txt"
git push origin new-branch
```

11. Utwórz pull request za pośrednictwem strony GitHub
12. Scal za pośrednictwem z terminala

```
git checkout main
git merge <branch>
```
