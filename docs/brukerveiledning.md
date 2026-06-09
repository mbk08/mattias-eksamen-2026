# Brukerveiledning

Dette dokumentet forklarer hvordan du bruker og vedlikeholder nettsiden for kontorutleie.

## Hva som er inkludert
- `index.html`: Hovedsiden med informasjon om kontorutleie, tjenester og kontakt.
- `dokumentasjon.html`: En egen dokumentasjonsside for tekniske beskrivelser og kundedokumentasjon.
- `stil.css`: Felles styling for nettsiden.
- `db/init.sql`: Et SQL-skript for databaseoppsett som kan brukes senere hvis du ønsker backend-funksjonalitet.

## Hvordan åpne nettsiden
1. Åpne `index.html` i en nettleser.
2. Bruk navigasjonslenkene for å gå til seksjonene Tjenester, Dokumentasjon og Kontakt.
3. Klikk på knappen «Se all dokumentasjon» for å gå direkte til `dokumentasjon.html`.

## Innhold på `index.html`
- Introduksjon til kontorutleie og hva bedriften tilbyr
- En oversikt over kontorlokaler og nettverkstjenester
- Fordeler ved å velge løsningen
- Kontaktinformasjon for potensielle kunder
- Lenke til dokumentasjonssiden

## Innhold på `dokumentasjon.html`
- Teknisk dokumentasjon for kunder
- Beskrivelse av nettverksarkitektur
- Forklaring av IP-oppsett, VLAN, brannmurregler og WiFi
- Informasjon om skriver og kontornettverk

## Redigere nettsiden
- Endre tekst direkte i `index.html` og `dokumentasjon.html`.
- Endre farger, skrifttyper, marginer og responsive regler i `stil.css`.
- For ny dokumentasjon, legg til nye seksjoner i `dokumentasjon.html` og eventuelt suppler med bilder.

## Bruke `db/init.sql`
`db/init.sql` er ment som en framtidig databasemodell for PostgreSQL.

Tabellene er:
- `customers`: Kundedata og kontaktinformasjon
- `network_setup`: Nettverksinnstillinger per kunde
- `system_logs`: Hendelseslogger knyttet til systemet

Denne løsning er foreløpig statisk. Det betyr at siden ikke er koblet til databasen i dag, men `db/init.sql` viser hvordan du kan strukturere data hvis du senere bygger en backend.

## Videre utvikling
- Legg til backend for å hente kunde- og dokumentasjonsdata dynamisk
- Legg til innloggingsmulighet for kunder dersom du trenger kundespesifikk dokumentasjon
- Gjør dokumentasjonen mer interaktiv med filter og søk
- Utvid `stil.css` for mer avansert responsiv design

## Tips for presentasjonen
- Forklar at prosjektet er en statisk nettside for et kontorutleie-selskap
- Vis hvordan `index.html` og `dokumentasjon.html` henger sammen
- Nevn at databasen er planlagt, men ikke implementert i denne versjonen
- Avslutt med hvilke utvidelser som kan komme senere
