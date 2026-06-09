# Kontorutleie-nettside

Dette prosjektet inneholder en enkel web-løsning for et kontorutleie-selskap som tilbyr kontorlokaler og nettverksinfrastruktur til små bedrifter.

## Innhold
- `index.html` - hovedsiden med tjenester, dokumentasjonslenke og kontaktinformasjon
- `dokumentasjon.html` - teknisk dokumentasjon for eksisterende kunder
- `stil.css` - felles stilark for hele nettsiden
- `docs/brukerveiledning.md` - brukerveiledning for løsningen
- `db/init.sql` - SQL-script for å opprette database-skjema ved eventuell senere bruk

## Hvordan bruke
Åpne `index.html` i en nettleser for å se nettsiden. Dokumentasjonssiden finnes via lenken fra forsiden.

## Database-konsept
`db/init.sql` inneholder en enklere PostgreSQL-modell som kan brukes senere hvis du ønsker backend-støtte.

Tabellene er:
- `customers` for kunde- og bedriftsinformasjon
- `network_setup` for hvert kundes subnett, gateway, DHCP-område og DNS
- `system_logs` for tekniske logger og endringshistorikk

Denne løsningen er foreløpig statisk. Når databasen tas i bruk, kan en backend hente kundeinformasjon fra `customers` og vise nettverksdokumentasjon som tilhører hver kunde.

## Notater
- Ingen autentisering er implementert i denne versjonen
- Nettsiden er laget som en responsiv statisk side med en egen dokumentasjonsside
- `db/init.sql` er klar for å kjøres mot en PostgreSQL-instans når den skal tas i bruk