# Samsung Cloud als optionele Galaxy Store-app

Voor starlte, star2lte en crownlte bevat een nieuwe ROM-build geen Samsung Cloud
client en geen automatische Cloud-preload of downloadtrigger. Dit geldt voor
EXT4 en EROFS. Zowel SamsungCloud als SamsungCloudClient wordt uit de image
verwijderd. Bestaande gebruikersinstallaties worden niet door deze bronwijziging
van een aangesloten telefoon verwijderd.

De oorspronkelijke SCPMAgent blijft als Samsung shared-UID-anchor behouden,
net als de Cloud-permissionmetadata en de gedeelde-UID-allowlist voor
com.samsung.android.scloud en com.samsung.android.scpm. De optionele Cloud-app
wordt niet via component-overrides uitgeschakeld. Er wordt geen Samsung Cloud
APK ingebouwd, hertekend of automatisch gedownload, en geen handtekeningcontrole
omzeild. De gebruiker kan de officiële app zelf via Galaxy Store installeren.

De finalizer én de controle vóór packaging weigeren een image met een Cloud-app,
automatische preloadtrigger, ontbrekend anchor-APK of ontbrekende metadata.
Tests: python3 scripts/tests/test_samsung_cloud_optional.py.

Op de aangesloten S9+ is Cloud5.7.09.5 door com.sec.android.app.samsungapps
geïnstalleerd als update van een oudere system-app. Dit bevestigt de Store-route
op dat toestel, maar is geen schone installatietest voor een nieuw gebouwde ROM
zonder Cloud-preload. Die acceptatietest blijft nodig na de volgende build:
Cloud ontbreekt bij eerste start; installeren via Galaxy Store; account en
Cloud openen; herstarten en controleren dat het geïnstalleerd blijft.
