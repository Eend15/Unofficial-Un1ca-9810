# S9 4 GB: optimalisatie- en acceptatieplan

Datum: 26 oktober 2026. Target: starlte (G960F/G960N).

Doel: dezelfde soepele voorgrondbediening als S9+/Note9, met een kleiner
cachebudget voor de 4 GB S9. Gelijke appretentie met 6 GB toestellen is geen
realistische aanname. Een gedeelde bronpolicy bewijst nog geen gelijke frametijden.

## 1. Nu in de bron geïmplementeerd

| Instelling | S9 4 GB | S9+/Note9 6 GB |
|---|---:|---:|
| DHA cached min/max | 6 / 19 | 8 / 24 |
| DHA empty min/max | 8 / 24 | 8 / 32 |
| Achtergrondapp-limiet | 20 | 20 |
| DHA-whitelist | aan | aan |
| DHA LMK-schaal | 0.545 | 0.545 |
| Gelijktijdige ART-processen bij boot/OTA/Mainline | 1 | 2 |
| Threads per boot-dex2oat-proces | 2 | 4 |
| Gelijktijdige ART-processen op achtergrond | 1 | 1 |
| Threads per achtergrond-dex2oat-proces | 2 | 4 |
| SystemUI-compilerfilter | speed | speed |
| Apps installeren / achtergrondoptimalisatie | speed-profile | speed-profile |

De S9-cachegrenzen zijn ontleend aan de uitgepakte officiële G960F-vendor in
out/fw/SM-G960F_PHN/vendor/build.prop. Het is een onderbouwde beginconfiguratie,
geen al fysiek bewezen optimum voor Android 16. De behouden LMK-schaal en
whitelist zijn die van de huidige gedeelde portpolicy, niet gekopieerd uit stock.

De SystemUI-filter is een door ART ondersteunde uitzondering voor deze ene app.
Andere apps blijven bij eerste boot op verify waar nodig; Android optimaliseert
later op basis van geldige profielen. speed-profile zonder passend profiel kan
nog steeds verify opleveren. De bron start geen zware compileerklus bij elke boot.

Er wordt geen low_ram-featuremodus aangezet. App-heaplimieten, zram/RAM Plus,
CPU/GPU-klokken, thermals, animaties, alarms en foreground services worden niet
gewijzigd. De oude actieve reclaim/VM/IO/GPU-loop blijft verwijderd.

## 2. Bouw en broncontrole

- Gebruik de huidige bron en de bestaande model-specifieke enforcing
  KernelSU-Next 3.4.2/SuSFS-kernel. Dezelfde kernelgeneratie, niet dezelfde
  bootimage of DTB, moet op de drie modellen worden gebruikt.
- Bouw starlte met de gewone buildenv/make_rom-route. Zowel EXT4 als EROFS
  krijgt dezelfde performancepolicy.
- De finalizer verwijdert conflicterende kopieën van beheerde properties en
  schrijft één canonieke versie. De controle vóór ZIP-packaging weigert een
  oude 6 GB-S9-policy, verkeerde compilerfilter of dubbele properties.
- Voer scripts/tests/test_performance_policy.py uit. Deze voert de echte
  shell-finalizer tweemaal uit op tijdelijke fixtures voor alle zes combinaties.

## 3. Toestelvoorbereiding en ART controleren

Gebruik op de S9, S9+ en Note9 dezelfde ROM-generatie, launcher-versie,
FHD+-resolutie, 60 Hz, animatieschaal en vergelijkbare temperatuur. Zet geen
meldingen, blur of andere functies uit om cijfers mooier te maken.

Bewaar de eerste meting vóór achtergrondoptimalisatie apart van de meting
erna. Laat na normaal gebruik de normale idle/charging-optimalisatie afronden.
Controleer met dumpsys package voor com.android.systemui,
com.sec.android.app.launcher en com.samsung.android.honeyboard de Dexopt state.

- SystemUI: verwacht speed als de Samsung ART-implementatie de property
  ondersteunt en de classloadercontext geldig is. Een afwijking wordt onderzocht.
- Launcher/toetsenbord: verwacht speed-profile zodra een bruikbaar profiel is
  verwerkt. Alleen het ingestelde propertygetal bewijst dit niet.
- Als ART op verify blijft hangen: eerst reden/profiel/classloadercontext en
  dex2oat-fouten verzamelen; niet op alle apps speed forceren of caches wissen.

## 4. Soepelheid meten

Doe drie rondes per toestel, steeds buiten dumpstate-generatie, actieve
diagnostische polling of compilerwerkzaamheden:

1. 30 seconden heen en weer tussen dezelfde startschermen.
2. Tien keer Recents openen/sluiten en tussen twee apps wisselen.
3. Tien keer notificatiepaneel openen/sluiten.
4. Dezelfde lijst in Settings scrollen en toetsenbord tien keer openen/sluiten.

Bewaar gfxinfo-tellers vóór/na elke ronde; trek alleen tellers van hetzelfde
proces en dezelfde Stats-since af. Noteer totale frames, gemiste deadlines,
P95/P99 en zichtbare haperingen. Gebruik bij verschillen een korte ondersteunde
Perfetto/atrace-meting om UI-thread, scheduling, frequenties en reclaim te scheiden.

Streef naar een launcherresultaat binnen ongeveer twee procentpunten van de
S9+-referentie onder dezelfde test. De nieuwere S9+-scan van 26 oktober
registreerde 0,60% Home- en 2,68% SystemUI-jank uit HWUI-tellerverschillen;
deze intervalmeting omvat ook omliggende activiteit en is nog geen
strikt vergelijkbare S9/Note9-referentie. De oudere 2,62%/8,87%-meting
is geen actuele prestatiegarantie. Vergelijk P95 en langere stalls eveneens;
alleen gemiddelde FPS of animatiesnelheid is onvoldoende.

## 5. Specifiek voor 4 GB: multitasking en meldingen

- Wissel in vaste volgorde tussen Settings, browser met dezelfde pagina,
  berichten, videospeler en Camera. Herhaal drie keer en tel herladen.
- Controleer audio tijdens appwissels, alarm, notificaties met scherm uit en
  Bluetooth-reconnect. Geen gemiste meldingen accepteren als RAM-optimalisatie.
- Meet MemAvailable, PSI memory/IO, zram-gebruik, swap-in/out en LMKD-kills.
  Vrij RAM alleen is geen kwaliteitsmaat; pagecache is nuttig geheugen.
- Herhaal na minstens 30 minuten normaal gebruik en bij normale warme
  bedrijfstemperatuur. Laat thermische bescherming intact.

## 6. Alleen verder tunen als de metingen dat rechtvaardigen

- Minder cached/empty processen alleen als reclaim/PSI aantoonbaar haperingen
  veroorzaakt en herladen/meldingen niet verslechteren.
- Geen lagere foreground-heapgrens zonder app-specifiek geheugenbewijs.
- Geen vaste extra zram, swappiness of IO-scheduler-tweak zonder A/B-meting.
- Een GPU-knelpunt krijgt een renderonderzoek; een UI-thread-knelpunt geen
  willekeurige GPU-overclock. S9+ vendorbestanden nooit naar S9 kopiëren.

Eerst één wijziging per meetronde, met dezelfde workload en herstelmogelijkheid.
Bij regressie het S9-profiel aanpassen, niet de bewezen 6 GB-profielen veranderen.

## Huidige status

Bron en regressietests gereed. Nog nodig: echte G960-toestelacceptatie,
genormaliseerde Note9-test met huidige kernel en nieuwe ART-policy, en herhaalde
S9+-referentie. Tot die tests slagen wordt niet beweerd dat de drie even soepel zijn.

Referenties: https://source.android.com/docs/core/runtime/configure/art-service
en Android 16 ART Dexopter.adjustCompilerFilter:
https://android.googlesource.com/platform/art/+/refs/heads/android16-release/libartservice/service/java/com/android/server/art/Dexopter.java
