# UN1CA: controle van callbacks en vervolgmetingen

26 oktober 2026 — S9 (starlte, 4 GB), S9+ (star2lte, 6 GB),
Note9 (crownlte, 6 GB), EXT4 en EROFS.

## Wat in de source wordt gecontroleerd

- HideDuplicated: hoogstens één grace-expiry per SystemUI-proces.
  De callback vraagt een nieuwe notificatielijst op; hij bewaart
  geen verwijderde notificatiesnapshot. Een vroegere deadline gaat voor.
- MediaSource: één album-art-expiry per speler. Wisselen van nummer
  vervangt de deadline; herhaling voor hetzelfde nummer niet.
  Ontvangen artwork, verwijderde sessies en uitschakelen annuleren.
  Het pause/timeout-tick wordt verwijderd bij nieuwe verzamelpasses.
- De instelling in U1CA UI Settings herstart SystemUI. De
  uitschakelroute annuleert pending taken en blokkeert refreshes
  op de oude instantie; procesvernietiging ruimt zijn Handler-queue op.
- De nieuwe DeadlineGate draait op de SystemUI-main-looper en wordt
  apart gedragsmatig getest met een gesimuleerde klok en looper.

De vier gewijzigde, gespiegeld aanwezige Java-bestanden
(DeadlineGate, HideDuplicated, MediaSource en IslandController) zijn
byte-identiek. In zeven andere bestaande bronparen blijven bewuste
verschillen tussen de UN1CA-native variant en de upstream-variant
bestaan; de negen uitsluitend native aanwezige bronbestanden hebben
geen upstream-equivalent. Blind synchroniseren zou die integratie
kunnen beschadigen. De meegeleverde companion-APK staat in de
repositorymodule met hashmanifest; normale ROM-installatie gebruikt
geen privébackup of lokale Downloads-map. De SDK/buildtools in out
zijn alleen voor afzonderlijke APK-recompilatie en de decode-fixtures
voor tests; niet voor installatie van de meegeleverde APK.

Nieuwe bron- en testbestanden staan op dit moment nog niet in de
Git-index. De strikte clone-/indexcontrole faalt ook op bestaande
niet-gecommitte bestanden van andere projecten. Een *nieuwe* clone
van GitHub bevat deze wijzigingen pas wanneer ze later bewust worden
gecommit en gepusht; dat gebeurt niet bij deze controle.

## SurfaceFlinger: geen onbewezen zekerheid

De oude debug.sf.disable_backpressure=1 staat niet letterlijk in de
voorbereide Android 16 SurfaceFlinger-binary; de binary noemt wel
debug.sf.enable_gl_backpressure. Zoekacties in de aanwezige S22
system/lib en lib64, S9+-vendor lib64, voorbereide vendor lib64 en
betrokken initbestanden vonden evenmin de oude naam.

Dit bewijst NIET dat een andere library, een dynamisch opgebouwde
propertynaam of vendorcode deze waarde niet kon gebruiken.
Verwijderen kan gedrag veranderen; de uitkomst is ongemeten.
Er is daarom geen nieuwe compositor-/HWC-/GPU-tweak toegevoegd.
SurfaceFlinger Stuffing is niet hetzelfde als dropped appframes.

## Meetplan voor een latere, toegestane fysieke test

1. Houd ROM, kernel, resolutie (FHD+), 60 Hz, helderheid,
   animatieschalen, thermische staat, laadstatus, netwerk en
   achtergrondbelasting gelijk. Leg temperatuur en ART-status vast.
2. Fase A: zet Dynamic Island UIT en AAN via U1CA UI Settings,
   op dezelfde APK en ROM. Laat SystemUI na iedere schakelaar
   even lang opwarmen (bijvoorbeeld 5 minuten). Meet 5 rondes.
3. Elke ronde: 30 seconden identieke Home-swipes; 10 keer Recents
   open/dicht en appwissel; 10 keer notificatiepaneel open/dicht;
   30 meldingen met en zonder LiveBridge-kopie toevoegen/weghalen;
   10 muzieknummerwisselingen met en zonder artwork, play/pause,
   en een mediasessie beëindigen.
4. Fase B: vergelijk pas na latere expliciete toestemming oude en
   nieuwe callback-APK in overigens identieke ROM-kandidaten.
   Houd ook de SurfaceFlinger-property tussen deze twee kandidaten
   constant, zodat je maar één wijziging tegelijk vergelijkt.
5. Noteer Home- en SystemUI-HWUI-tellers vóór/na per proces met
   dezelfde Stats since-waarde; bereken janky delta / rendered delta.
   Meet p95/p99 en lange stalls apart, indien mogelijk per workload.
   Bij verschil een korte Perfetto-trace met UI-thread/scheduling.
6. Rapporteer HWUI-jank, App Deadline Missed en SurfaceFlinger
   Stuffing afzonderlijk; tel deze oorzaken niet bij elkaar op
   als één percentage gemiste appframes.
7. Valideer ook batterijverbruik, appretentie, notificaties bij
   scherm-uit, Bluetooth, Wearable, GPS/privacyindicator en
   mediabediening. Meet S9 4GB-herladen/LMKD/PSI afzonderlijk
   en herhaal de relevante functies op Note9.

| Referentie | Home-jank | SystemUI-jank | Panel/Recents p95-p99 | Mediawisselingen |
|---|---:|---:|---|---|
| S9+ scan 26-10 (oude build) | 0,60% | 2,68% | niet geïsoleerd | niet apart gemeten |
| Island aan, dezelfde APK | meten | meten | meten | meten |
| Island uit, dezelfde APK | meten | meten | meten | meten |
| oude vs. nieuwe callbacks | meten | meten | meten | meten |

De oude scanpercentages omvatten ook activiteiten buiten de
90-seconden-Perfetto-opname; ze zijn geen zuiver geïsoleerde ronde.
Er is nu geen post-change framemeting gedaan. Claim dus geen
prestatie- of batterijwinst op basis van deze broncodecontrole.
