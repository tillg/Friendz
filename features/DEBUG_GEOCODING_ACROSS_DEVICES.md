We are trying to undersstand why the iPad is re-geo-locing over 1000 addresses, while there are only 122 left the geo-loc on the iPhone.

This is the logging we see on the iPad:


Model container initialized with CloudKit sync
Failed to locate resource named "default.csv"
CAMetalLayer ignoring invalid setDrawableSize width=0.000000 height=0.000000
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 23408
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 23405
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39763
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39502
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 23407
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 23406
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 22741
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 22678
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 22679
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 22680
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 23409
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 24177
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 24179
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 24178
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 23410
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39504
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39503
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39501
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39280
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39281
[2.1.2] DCEL FaceWarning complex vertex at FaceIndex 39282
Connection error: Error Domain=NSCocoaErrorDomain Code=4099 "The connection to service named com.apple.PerfPowerTelemetryClientRegistrationService was invalidated: failed at lookup with error 159 - Sandbox restriction." UserInfo={NSDebugDescription=The connection to service named com.apple.PerfPowerTelemetryClientRegistrationService was invalidated: failed at lookup with error 159 - Sandbox restriction.}
(+[PPSClientDonation isRegisteredSubsystem:category:]) Permission denied: Maps / SpringfieldUsage
🔍 Friend 'Radim Seznam' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Tal 13,  - lat:16.585322, lon:107.515905, needsGeocoding:false
✅ PRESERVED geocoding: Tal 13,  → (16.585322, 107.515905), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Brandstatthof 3, Rottach-Egern - lat:47.6892386, lon:11.7954191, needsGeocoding:false
✅ PRESERVED geocoding: Brandstatthof 3, Rottach-Egern → (47.6892386, 11.7954191), needsGeocoding=false
🔍 Friend 'Francesco Tiberi' has 2 existing address(es)
   [0] Via Gobetti, 2a
Cernusco sul Naviglio, Milano - lat:45.5201642, lon:9.3447717, needsGeocoding:false
   [1] Via Gobetti, 2a

Cernusco sul Naviglio, Milano - lat:45.5201642, lon:9.3447717, needsGeocoding:false
✅ PRESERVED geocoding: Via Gobetti, 2a
Cernusco sul Naviglio, Milano → (45.5201642, 9.3447717), needsGeocoding=false
✅ PRESERVED geocoding: Via Gobetti, 2a

Cernusco sul Naviglio, Milano → (45.5201642, 9.3447717), needsGeocoding=false
🔍 Friend 'Martin Rexa' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Marienstr. 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Monika Meisinger' has 2 existing address(es)
   [0] Richard-Strauß-Str. 24, München 81677 - lat:48.13998, lon:11.6153593, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Richard-Strauß-Str. 24, München 81677 → (48.13998, 11.6153593), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Beate Still' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Münchner Str. 15, Unterföhring bei München - lat:48.1801193, lon:11.6294581, needsGeocoding:false
✅ PRESERVED geocoding: Münchner Str. 15, Unterföhring bei München → (48.1801193, 11.6294581), needsGeocoding=false
🔍 Friend 'Eleonora Laczova' has 1 existing address(es)
   [0] Anglicka 26, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kateřina Vášova' has 1 existing address(es)
   [0] Lighthouse Vltavla Waterfront Towers

Jankovcova 1569/2c, Prague 7 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anke Slotty' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tobias Ritter' has 1 existing address(es)
   [0] , München Unterhaching - lat:48.0658986, lon:11.6173662, needsGeocoding:false
✅ PRESERVED geocoding: , München Unterhaching → (48.0658986, 11.6173662), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Tal 24, Munich - lat:48.1357873, lon:11.579558, needsGeocoding:false
✅ PRESERVED geocoding: Tal 24, Munich → (48.1357873, 11.579558), needsGeocoding=false
🔍 Friend 'David Riva' has 1 existing address(es)
   [0] Pelhrimovska 340/11 P4, Michle, Prague - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Oda Breitenstein, von' has 1 existing address(es)
   [0] ul. Dabrowskiego 56, Warsaw - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Johann Christian Schiessl' has 2 existing address(es)
   [0] Kirchstr. 12, Vaduz - lat:47.136991, lon:9.519771, needsGeocoding:false
   [1] Seestr. 127, Küsnacht - lat:47.3191887, lon:8.5793577, needsGeocoding:false
✅ PRESERVED geocoding: Kirchstr. 12, Vaduz → (47.136991, 9.519771), needsGeocoding=false
✅ PRESERVED geocoding: Seestr. 127, Küsnacht → (47.3191887, 8.5793577), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Maria-Theresia-Straße 1, München - lat:48.1360762, lon:11.5967014, needsGeocoding:false
✅ PRESERVED geocoding: Maria-Theresia-Straße 1, München → (48.1360762, 11.5967014), needsGeocoding=false
🔍 Friend 'Gunnar Brink' has 1 existing address(es)
   [0] Lochhamer Schlag 12, Gräfelfing - lat:48.1206889, lon:11.4501542, needsGeocoding:false
✅ PRESERVED geocoding: Lochhamer Schlag 12, Gräfelfing → (48.1206889, 11.4501542), needsGeocoding=false
🔍 Friend 'Jenny & Tero Tapala' has 1 existing address(es)
   [0] Möschenfelderstr. 28, Vaterstetten - lat:48.1042151, lon:11.7707005, needsGeocoding:false
✅ PRESERVED geocoding: Möschenfelderstr. 28, Vaterstetten → (48.1042151, 11.7707005), needsGeocoding=false
🔍 Friend ' Sivananda Yoga München' has 1 existing address(es)
   [0] Steinheilstraße 1, München - lat:48.149306, lon:11.5654673, needsGeocoding:false
✅ PRESERVED geocoding: Steinheilstraße 1, München → (48.149306, 11.5654673), needsGeocoding=false
🔍 Friend 'Matthias Wiesmann' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Peter Hruschka' has 1 existing address(es)
   [0] Langenbruchweg 71, Aachen - lat:50.7904988, lon:6.1250857, needsGeocoding:false
✅ PRESERVED geocoding: Langenbruchweg 71, Aachen → (50.7904988, 6.1250857), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Belehradska 120, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anne Pieper' has 1 existing address(es)
   [0] Am Herrnacker 20, Dreieich - lat:50.0217381, lon:8.7020629, needsGeocoding:false
✅ PRESERVED geocoding: Am Herrnacker 20, Dreieich → (50.0217381, 8.7020629), needsGeocoding=false
🔍 Friend 'Radek Šimunek' has 1 existing address(es)
   [0] Na Dedince 515/12, Praha 8 - lat:50.1155678, lon:14.4724545, needsGeocoding:false
✅ PRESERVED geocoding: Na Dedince 515/12, Praha 8 → (50.1155678, 14.4724545), needsGeocoding=false
🔍 Friend 'Andy Campbell' has 1 existing address(es)
   [0] , LOndon - lat:51.5033768, lon:-0.0795183, needsGeocoding:false
✅ PRESERVED geocoding: , LOndon → (51.5033768, -0.0795183), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Amalienstr. 97, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Leicht' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Leopoldstr. 33, München - lat:48.1588522, lon:11.5848246, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Leopoldstr. 33, München → (48.1588522, 11.5848246), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Segenstr. 5, München - Perlach - lat:48.1137781, lon:11.6251889, needsGeocoding:false
✅ PRESERVED geocoding: Segenstr. 5, München - Perlach → (48.1137781, 11.6251889), needsGeocoding=false
🔍 Friend 'Tobias Herwig' has 1 existing address(es)
   [0] , Leonberg (Stuttgart) - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Orestis Madianos' has 2 existing address(es)
   [0] , Munich - lat:nil, lon:nil, needsGeocoding:true
   [1] c/o S. Meier DöllingerStr 28, Munich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jörg Ahrens' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Patrick McCrae' has 1 existing address(es)
   [0] Bundestr. 28a, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Famille Bidet' has 3 existing address(es)
   [0] ,  - lat:46.2636145, lon:2.1787414, needsGeocoding:false
   [1] Rue des Rosiers 26, Paris - lat:48.857185, lon:2.3595103, needsGeocoding:false
   [2] Les Olivičres, Montbrison sur Lez - lat:44.4429249, lon:5.0170156, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (46.2636145, 2.1787414), needsGeocoding=false
✅ PRESERVED geocoding: Rue des Rosiers 26, Paris → (48.857185, 2.3595103), needsGeocoding=false
✅ PRESERVED geocoding: Les Olivičres, Montbrison sur Lez → (44.4429249, 5.0170156), needsGeocoding=false
🔍 Friend 'Berthold von Freyberg' has 1 existing address(es)
   [0] Kardinal-Faulhaber-Str. 10, München - lat:48.1406043, lon:11.5746254, needsGeocoding:false
✅ PRESERVED geocoding: Kardinal-Faulhaber-Str. 10, München → (48.1406043, 11.5746254), needsGeocoding=false
🔍 Friend 'Denisa ' has 1 existing address(es)
   [0] Vršovická 1a, Praha - lat:50.0662404, lon:14.449139, needsGeocoding:false
✅ PRESERVED geocoding: Vršovická 1a, Praha → (50.0662404, 14.449139), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Münchener Str. 3, Ismaning b. München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Dempfle' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Sebastian Sauter' has 2 existing address(es)
   [0] Hermannweg 11a, Baunatal-Gr. - lat:nil, lon:nil, needsGeocoding:true
   [1] Schmales Feld 20, Horn-Bad Meinberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ingo Wilhelm' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Günter Stegner' has 1 existing address(es)
   [0] Orleanstr. 4, München - lat:48.1235358, lon:11.598272, needsGeocoding:false
✅ PRESERVED geocoding: Orleanstr. 4, München → (48.1235358, 11.598272), needsGeocoding=false
🔍 Friend 'Stuart Thompson' has 1 existing address(es)
   [0] , Dubai - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dave Boden' has 1 existing address(es)
   [0] , Leipzig - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Irmgard & HH Gartner' has 1 existing address(es)
   [0] Südring 347, Mainz - lat:49.972805, lon:8.2408848, needsGeocoding:false
✅ PRESERVED geocoding: Südring 347, Mainz → (49.972805, 8.2408848), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kampl 659, Neustift - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 80 Phan Thanh, DaNang - lat:16.0633293, lon:108.2085622, needsGeocoding:false
✅ PRESERVED geocoding: 80 Phan Thanh, DaNang → (16.0633293, 108.2085622), needsGeocoding=false
🔍 Friend 'Winfried Kärtner' has 1 existing address(es)
   [0] Thomas-Dehler-Str. 27, München - lat:48.0974445, lon:11.6448895, needsGeocoding:false
✅ PRESERVED geocoding: Thomas-Dehler-Str. 27, München → (48.0974445, 11.6448895), needsGeocoding=false
🔍 Friend 'Veronika Lüdemann, geb. Westerlund' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Harthauserstr. 72, München - lat:48.081104, lon:11.5459745, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Harthauserstr. 72, München → (48.081104, 11.5459745), needsGeocoding=false
🔍 Friend 'Sascha Kampf' has 1 existing address(es)
   [0] Sapporobogen 6 - 8, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Weissmüller' has 1 existing address(es)
   [0] Innstr. 6, München - lat:48.144527, lon:11.6086887, needsGeocoding:false
✅ PRESERVED geocoding: Innstr. 6, München → (48.144527, 11.6086887), needsGeocoding=false
🔍 Friend 'Brad Beitinger' has 1 existing address(es)
   [0] Jeremiasova 947, Praha 5 - lat:50.0394715, lon:14.3264418, needsGeocoding:false
✅ PRESERVED geocoding: Jeremiasova 947, Praha 5 → (50.0394715, 14.3264418), needsGeocoding=false
🔍 Friend 'Daniele Sasia' has 1 existing address(es)
   [0] 187 Tran Phu Street, DaNang - lat:16.07107563907085, lon:108.22393071142825, needsGeocoding:false
✅ PRESERVED geocoding: 187 Tran Phu Street, DaNang → (16.07107563907085, 108.22393071142825), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Leopoldstr. 44, München - lat:48.1570027, lon:11.5849483, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 44, München → (48.1570027, 11.5849483), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Harvestehuder Weg 1b, Hamburg - lat:53.5673513, lon:10.0017816, needsGeocoding:false
✅ PRESERVED geocoding: Harvestehuder Weg 1b, Hamburg → (53.5673513, 10.0017816), needsGeocoding=false
🔍 Friend 'Michael Lindemann' has 1 existing address(es)
   [0] , Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Khánh Phạm' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Thomas Kneist' has 1 existing address(es)
   [0] Neumarkt 2, Leipzig - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Promenadeplatz 12, München - lat:48.1407472, lon:11.5715438, needsGeocoding:false
✅ PRESERVED geocoding: Promenadeplatz 12, München → (48.1407472, 11.5715438), needsGeocoding=false
🔍 Friend 'Anh Đặng' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Jürgen Knopp' has 2 existing address(es)
   [0] Waldstraße 7a, Neubiberg - lat:nil, lon:nil, needsGeocoding:true
   [1] www.digital-skill.de , Waldstraße 7a, Neubiberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Pascal Bresson' has 1 existing address(es)
   [0] , Grenoble - lat:45.1870781, lon:5.7306849, needsGeocoding:false
✅ PRESERVED geocoding: , Grenoble → (45.1870781, 5.7306849), needsGeocoding=false
🔍 Friend 'Frank Wagner' has 1 existing address(es)
   [0] Erhardstr. 8, Munich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ava ' has 1 existing address(es)
   [0] , Hoi An - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephane Derderian' has 1 existing address(es)
   [0] , Grenoble - lat:45.1870781, lon:5.7306849, needsGeocoding:false
✅ PRESERVED geocoding: , Grenoble → (45.1870781, 5.7306849), needsGeocoding=false
🔍 Friend 'Nadia Akhmisse' has 1 existing address(es)
   [0] ,  - lat:46.9101275, lon:8.4164954, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (46.9101275, 8.4164954), needsGeocoding=false
🔍 Friend 'Thomas Hertz' has 1 existing address(es)
   [0] Nymphenburger Str. 86, München - lat:48.1504933, lon:11.5468907, needsGeocoding:false
✅ PRESERVED geocoding: Nymphenburger Str. 86, München → (48.1504933, 11.5468907), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Narodni 22, Praha 1 - lat:50.0821004, lon:14.4187251, needsGeocoding:false
✅ PRESERVED geocoding: Narodni 22, Praha 1 → (50.0821004, 14.4187251), needsGeocoding=false
🔍 Friend 'Philipp Fehre' has 1 existing address(es)
   [0] Roßmarkt 6, München - lat:48.1334227, lon:11.569133, needsGeocoding:false
✅ PRESERVED geocoding: Roßmarkt 6, München → (48.1334227, 11.569133), needsGeocoding=false
🔍 Friend 'Claudia Wilmanns' has 1 existing address(es)
   [0] Lueg ins Land, München 80331 - lat:48.135485803169836, lon:11.582124775904395, needsGeocoding:false
✅ PRESERVED geocoding: Lueg ins Land, München 80331 → (48.135485803169836, 11.582124775904395), needsGeocoding=false
🔍 Friend 'Betina Wiesmann' has 1 existing address(es)
   [0] Ringbergweg 89-93, Rottach-Egern - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Silvia & Vincent Teissier' has 1 existing address(es)
   [0] ,  - lat:46.2636145, lon:2.1787414, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (46.2636145, 2.1787414), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Amalienstr. 81, München - lat:48.1511479, lon:11.5787653, needsGeocoding:false
✅ PRESERVED geocoding: Amalienstr. 81, München → (48.1511479, 11.5787653), needsGeocoding=false
🔍 Friend 'Bruno Behler' has 2 existing address(es)
   [0] Zweibrückenstraße 12, München - lat:48.1325134, lon:11.5839434, needsGeocoding:false
   [1] Berghamer Straße 8, Otterfing - lat:47.90979, lon:11.6739186, needsGeocoding:false
✅ PRESERVED geocoding: Zweibrückenstraße 12, München → (48.1325134, 11.5839434), needsGeocoding=false
✅ PRESERVED geocoding: Berghamer Straße 8, Otterfing → (47.90979, 11.6739186), needsGeocoding=false
🔍 Friend 'Michael Gendreyzig' has 2 existing address(es)
   [0] Landsberger Str. 358, München - lat:48.1444104, lon:11.4921561, needsGeocoding:false
   [1] Frankfurter Ring 105a, Muenchen - lat:48.1882173, lon:11.58567, needsGeocoding:false
✅ PRESERVED geocoding: Landsberger Str. 358, München → (48.1444104, 11.4921561), needsGeocoding=false
✅ PRESERVED geocoding: Frankfurter Ring 105a, Muenchen → (48.1882173, 11.58567), needsGeocoding=false
🔍 Friend 'Sascha Horstbrink' has 1 existing address(es)
   [0] Stolzestr. 20, Hannover - lat:52.3681445, lon:9.7588778, needsGeocoding:false
✅ PRESERVED geocoding: Stolzestr. 20, Hannover → (52.3681445, 9.7588778), needsGeocoding=false
🔍 Friend 'Sandy Jokl' has 1 existing address(es)
   [0] Humboldstr. 8, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Frundsbergstraße 46, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hang Nguyen' has 1 existing address(es)
   [0] 28 Phan Boi Chau,  - lat:12.6825235, lon:108.0455975, needsGeocoding:false
✅ PRESERVED geocoding: 28 Phan Boi Chau,  → (12.6825235, 108.0455975), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schleißheimerstr. 465, München - lat:48.2102978, lon:11.5623071, needsGeocoding:false
✅ PRESERVED geocoding: Schleißheimerstr. 465, München → (48.2102978, 11.5623071), needsGeocoding=false
🔍 Friend 'Holger Seehausen' has 2 existing address(es)
   [0] Theodostr. 5, Ingolstadt - lat:48.7451523, lon:11.4516565, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Theodostr. 5, Ingolstadt → (48.7451523, 11.4516565), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Thomas Zwettler' has 1 existing address(es)
   [0] Kraepelinstr. 55a, München - lat:48.174421, lon:11.5742881, needsGeocoding:false
✅ PRESERVED geocoding: Kraepelinstr. 55a, München → (48.174421, 11.5742881), needsGeocoding=false
🔍 Friend 'Doris Aumiller' has 2 existing address(es)
   [0] Türkenstr. 16, München - lat:48.1463639, lon:11.5736776, needsGeocoding:false
   [1] Kapellenfeldstr. 13, München - lat:48.0887837, lon:11.6145049, needsGeocoding:false
✅ PRESERVED geocoding: Türkenstr. 16, München → (48.1463639, 11.5736776), needsGeocoding=false
✅ PRESERVED geocoding: Kapellenfeldstr. 13, München → (48.0887837, 11.6145049), needsGeocoding=false
🔍 Friend 'Marie-France Biron' has 1 existing address(es)
   [0] , Hoi An - lat:15.8798452, lon:108.3287753, needsGeocoding:false
✅ PRESERVED geocoding: , Hoi An → (15.8798452, 108.3287753), needsGeocoding=false
🔍 Friend 'Hỷ Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thanh Nguyen' has 1 existing address(es)
   [0] 675 Tran Cao-Van street, Da Nang - lat:16.0703236, lon:108.1851784, needsGeocoding:false
✅ PRESERVED geocoding: 675 Tran Cao-Van street, Da Nang → (16.0703236, 108.1851784), needsGeocoding=false
🔍 Friend 'Bernhard Schwarze' has 1 existing address(es)
   [0] Riedbach 17, Mutters - lat:47.2154379, lon:11.3759012, needsGeocoding:false
✅ PRESERVED geocoding: Riedbach 17, Mutters → (47.2154379, 11.3759012), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kellerstr. 45, München - lat:48.129545, lon:11.5973268, needsGeocoding:false
✅ PRESERVED geocoding: Kellerstr. 45, München → (48.129545, 11.5973268), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hanauer Landstr. 186, Frankfurt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Barbara Weindl' has 1 existing address(es)
   [0] , Schliersee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hien Truong' has 1 existing address(es)
   [0] , Hanoi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Oberlechner' has 1 existing address(es)
   [0] St Johannesstr. 8, Toblach - Dobbiaco - lat:46.7331166, lon:12.2231883, needsGeocoding:false
✅ PRESERVED geocoding: St Johannesstr. 8, Toblach - Dobbiaco → (46.7331166, 12.2231883), needsGeocoding=false
🔍 Friend 'Armin Lustik' has 1 existing address(es)
   [0] Industriezone Nr. 1/5 Zona Industriale
Eurocenter – Trakt/blocco C - 3. Stock/piano, Lana - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 3 Upper Pickering Street
Chinatown, Singapore - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kaiserstr. 47, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Amalienstr. 40, München - lat:48.1488012, lon:11.5778209, needsGeocoding:false
✅ PRESERVED geocoding: Amalienstr. 40, München → (48.1488012, 11.5778209), needsGeocoding=false
🔍 Friend 'Ingbert Günzel' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Nymphenburger Straße 86, München - lat:48.1504933, lon:11.5468907, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Nymphenburger Straße 86, München → (48.1504933, 11.5468907), needsGeocoding=false
🔍 Friend 'Tobias Lüßmann' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Benjamin Weinheimer ' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 17 Le Duan District, HO CHI MINH CITY - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexander Halmburger' has 1 existing address(es)
   [0] Sapporobogen 6-8, München - lat:48.1683278, lon:11.5370636, needsGeocoding:false
✅ PRESERVED geocoding: Sapporobogen 6-8, München → (48.1683278, 11.5370636), needsGeocoding=false
🔍 Friend 'Georg Kliewer' has 2 existing address(es)
   [0] Pechlerweg 2, Sauerlach - lat:nil, lon:nil, needsGeocoding:true
   [1] Zocherstraat 203b, Rotterdam - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heinz van Deelen' has 2 existing address(es)
   [0] Leonrodstr. 68, München - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Speckbacher Str 9, Meran - lat:46.668674, lon:11.151369, needsGeocoding:false
✅ PRESERVED geocoding: Speckbacher Str 9, Meran → (46.668674, 11.151369), needsGeocoding=false
🔍 Friend 'David McCormick' has 1 existing address(es)
   [0] Bach Dang 74, 3rd Floor
Indochina Towers, Da Nang - lat:20.9198945, lon:106.6781235, needsGeocoding:false
✅ PRESERVED geocoding: Bach Dang 74, 3rd Floor
Indochina Towers, Da Nang → (20.9198945, 106.6781235), needsGeocoding=false
🔍 Friend 'Volker Schmitt' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Na Porici 21

(Near the "Bílá Labut" Department store), Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Spartacus Olsson' has 1 existing address(es)
   [0] Teehaus Unterer Seeweg 1, Bernried - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Herbert Faber' has 2 existing address(es)
   [0] Maiserstr. 55

Rückgebäude, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Maiserstr. 55
Rückgebäude, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Amir Kapetanovic' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Dreimühlenstraße 30, München - lat:48.1210688, lon:11.5596053, needsGeocoding:false
✅ PRESERVED geocoding: Dreimühlenstraße 30, München → (48.1210688, 11.5596053), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Kobbe' has 1 existing address(es)
   [0] Leopoldstr. 59, München - lat:48.1614845, lon:11.5857464, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 59, München → (48.1614845, 11.5857464), needsGeocoding=false
🔍 Friend 'Csaba Mohos' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Vivienne Luong' has 1 existing address(es)
   [0] , Saigon - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mandy Litzenburger' has 1 existing address(es)
   [0] , München - lat:48.1308274, lon:11.59876, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1308274, 11.59876), needsGeocoding=false
🔍 Friend 'Günther Schlichting' has 1 existing address(es)
   [0] Pflieglweg 1, Gauting - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Leopoldstr. 7, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Katja Sonfeld' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Dominique Redon' has 1 existing address(es)
   [0] Elisabethstrasse 91, München - lat:48.1609992, lon:11.5577778, needsGeocoding:false
✅ PRESERVED geocoding: Elisabethstrasse 91, München → (48.1609992, 11.5577778), needsGeocoding=false
🔍 Friend 'Thanh Nguyen' has 1 existing address(es)
   [0] , DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Petr Fiser' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Blutenburgstraße 106, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Ingolstädter Str. 44, München - lat:48.1897517, lon:11.584578, needsGeocoding:false
✅ PRESERVED geocoding: Ingolstädter Str. 44, München → (48.1897517, 11.584578), needsGeocoding=false
🔍 Friend 'Astrid Franke' has 1 existing address(es)
   [0] Aberlestr. 16, München - lat:48.1206188, lon:11.5451443, needsGeocoding:false
✅ PRESERVED geocoding: Aberlestr. 16, München → (48.1206188, 11.5451443), needsGeocoding=false
🔍 Friend 'Hung Cao' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kerstin Schultze' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Grit Heinemann' has 1 existing address(es)
   [0] Johann-Clanze-Str. 14, München - lat:48.1129411, lon:11.5350995, needsGeocoding:false
✅ PRESERVED geocoding: Johann-Clanze-Str. 14, München → (48.1129411, 11.5350995), needsGeocoding=false
🔍 Friend 'Alexander Springer' has 1 existing address(es)
   [0] Rosenheimer Straße 145 h, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Schröter' has 1 existing address(es)
   [0] Mühlenstraße 40, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Sinitean' has 1 existing address(es)
   [0] Sonnenweg 8a, Neukeferloh 85630 - lat:48.1038615, lon:11.7624439, needsGeocoding:false
✅ PRESERVED geocoding: Sonnenweg 8a, Neukeferloh 85630 → (48.1038615, 11.7624439), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Neue Rabenstr. 15-19, Hamburg - lat:53.5609598, lon:9.9934718, needsGeocoding:false
✅ PRESERVED geocoding: Neue Rabenstr. 15-19, Hamburg → (53.5609598, 9.9934718), needsGeocoding=false
🔍 Friend 'Tereza Sobotkova' has 1 existing address(es)
   [0] , Liten - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Wolfgang Pricken' has 1 existing address(es)
   [0] Emanuel-Leutze-Straße 20, Düsseldorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Lierheimer' has 1 existing address(es)
   [0] Pariser Platz 4, München - lat:48.1282726, lon:11.599519, needsGeocoding:false
✅ PRESERVED geocoding: Pariser Platz 4, München → (48.1282726, 11.599519), needsGeocoding=false
🔍 Friend 'Martin Huber' has 1 existing address(es)
   [0] Durrhausen 21, Amerang - lat:48.027902, lon:12.3071641, needsGeocoding:false
✅ PRESERVED geocoding: Durrhausen 21, Amerang → (48.027902, 12.3071641), needsGeocoding=false
🔍 Friend 'Angela Mihaljevic' has 1 existing address(es)
   [0] Einhornallee 56

Nähe Garmischer A-Bahn, München - lat:48.1043059, lon:11.5041836, needsGeocoding:false
✅ PRESERVED geocoding: Einhornallee 56

Nähe Garmischer A-Bahn, München → (48.1043059, 11.5041836), needsGeocoding=false
🔍 Friend 'Serge Reber' has 1 existing address(es)
   [0] Römerstr. 18/I, München - lat:48.1605071, lon:11.5776615, needsGeocoding:false
✅ PRESERVED geocoding: Römerstr. 18/I, München → (48.1605071, 11.5776615), needsGeocoding=false
🔍 Friend 'Cécile Hawlik' has 2 existing address(es)
   [0] Livry-Gargan-Strasse 10, Fürstenfeldbruck - lat:nil, lon:nil, needsGeocoding:true
   [1] Theresienstr. 81g, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Susanne Grob' has 1 existing address(es)
   [0] Elsenheimerstr. 11, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Georg Lampe' has 2 existing address(es)
   [0] Wallbergstr. 40, Markt Schwaben - lat:48.1862857, lon:11.8669027, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Wallbergstr. 40, Markt Schwaben → (48.1862857, 11.8669027), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Gwendoline Jansonnie' has 1 existing address(es)
   [0] Hans-Sachs st. 1, München - lat:48.1306282, lon:11.5704044, needsGeocoding:false
✅ PRESERVED geocoding: Hans-Sachs st. 1, München → (48.1306282, 11.5704044), needsGeocoding=false
🔍 Friend 'Alessandro Martinozzi' has 1 existing address(es)
   [0] Erhardtstr. 27, Munich - lat:48.1293493, lon:11.5789354, needsGeocoding:false
✅ PRESERVED geocoding: Erhardtstr. 27, Munich → (48.1293493, 11.5789354), needsGeocoding=false
🔍 Friend 'Sonja Hommel' has 1 existing address(es)
   [0] Kaufinger Tor

Kaufinger STr. 9, München - lat:48.1375564, lon:11.5731238, needsGeocoding:false
✅ PRESERVED geocoding: Kaufinger Tor

Kaufinger STr. 9, München → (48.1375564, 11.5731238), needsGeocoding=false
🔍 Friend 'Horst Bothe' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 30, Dornach → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend 'Tero Tapala' has 1 existing address(es)
   [0] Ammerthalstrasse 7, Kirchheim  Bavaria - lat:48.1516593, lon:11.7495432, needsGeocoding:false
✅ PRESERVED geocoding: Ammerthalstrasse 7, Kirchheim  Bavaria → (48.1516593, 11.7495432), needsGeocoding=false
🔍 Friend 'Silke Schmid' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Preiss' has 1 existing address(es)
   [0] Saarbrücker Str. 24, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Lech Bazynski' has 1 existing address(es)
   [0] ul. Pruszkowska 17, Warsaw - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Lampasona Constanza' has 1 existing address(es)
   [0] Hasenbergstr. 20a, Stuttgart - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Simone Kimpeler' has 1 existing address(es)
   [0] , Karlsruhe - lat:49.01053, lon:8.3874232, needsGeocoding:false
✅ PRESERVED geocoding: , Karlsruhe → (49.01053, 8.3874232), needsGeocoding=false
🔍 Friend ' Pfitzke' has 1 existing address(es)
   [0] , Fuerteventura - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Berni Jugel' has 1 existing address(es)
   [0] Franziskanerstr. 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marc Friebertshäuser' has 1 existing address(es)
   [0] Dianastr.,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Florian Bartel' has 1 existing address(es)
   [0] Prinzregentenplatz 7, München - lat:48.1401627, lon:11.6049711, needsGeocoding:false
✅ PRESERVED geocoding: Prinzregentenplatz 7, München → (48.1401627, 11.6049711), needsGeocoding=false
🔍 Friend 'Richard Cihlář' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:50.0814894, lon:14.4266672, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavske Namesti 40, Praha 1 → (50.0814894, 14.4266672), needsGeocoding=false
🔍 Friend 'Stefan Feldmann' has 1 existing address(es)
   [0] Lise-Meitner-Str. 14, Flensburg - lat:54.7608593, lon:9.4424166, needsGeocoding:false
✅ PRESERVED geocoding: Lise-Meitner-Str. 14, Flensburg → (54.7608593, 9.4424166), needsGeocoding=false
🔍 Friend 'Ý Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Martina & Thomas Schlauch' has 1 existing address(es)
   [0] Ackermannstr. 22, Stuttgart - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Wissner' has 1 existing address(es)
   [0] Ungererstr 118a,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Catarina Lopes' has 2 existing address(es)
   [0] Rua das Musas, Lote 2.05.01..., Lisboa - lat:38.7569169, lon:-9.0945046, needsGeocoding:false
   [1] Frauenstr. 28, Munich - lat:48.1343987, lon:11.5791712, needsGeocoding:false
✅ PRESERVED geocoding: Rua das Musas, Lote 2.05.01..., Lisboa → (38.7569169, -9.0945046), needsGeocoding=false
✅ PRESERVED geocoding: Frauenstr. 28, Munich → (48.1343987, 11.5791712), needsGeocoding=false
🔍 Friend 'Petr Kocab' has 1 existing address(es)
   [0] U Pruhonu 32, Praha 7 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernd Rütgers' has 3 existing address(es)
   [0] Weinheimer Str. 93, Weinheim - lat:nil, lon:nil, needsGeocoding:true
   [1] landsberger str. 155,  haus 2, München - lat:nil, lon:nil, needsGeocoding:true
   [2] Winterstr., München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Patrizia & Eurydice Hess' has 1 existing address(es)
   [0] Elektrastr. 15, München 81925 - lat:48.1526071, lon:11.6247162, needsGeocoding:false
✅ PRESERVED geocoding: Elektrastr. 15, München 81925 → (48.1526071, 11.6247162), needsGeocoding=false
🔍 Friend 'Andrea Maragudakis' has 2 existing address(es)
   [0] Prinzregentencarrée

Leuchtenbergring 4, D – 81677 München - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Jan Macek' has 1 existing address(es)
   [0] Ostrovského 3, Praha 5 - lat:50.0686364, lon:14.4027696, needsGeocoding:false
✅ PRESERVED geocoding: Ostrovského 3, Praha 5 → (50.0686364, 14.4027696), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Lindwurmstraße 5, München - lat:48.1325888, lon:11.5653538, needsGeocoding:false
✅ PRESERVED geocoding: Lindwurmstraße 5, München → (48.1325888, 11.5653538), needsGeocoding=false
🔍 Friend 'Sotiris Lyritzis' has 1 existing address(es)
   [0] Linprunstr. 16, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eva Juzová' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:50.0814894, lon:14.4266672, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavske Namesti 40, Praha 1 → (50.0814894, 14.4266672), needsGeocoding=false
🔍 Friend 'Hiếu Chúc' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Ronald Daniel' has 1 existing address(es)
   [0] , Mannheim - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jürg Zwahlen' has 2 existing address(es)
   [0] Lighthouse Vltava Waterfront Towers

Jankovcova 2C, Praha 7 - lat:nil, lon:nil, needsGeocoding:true
   [1] Lighthouse Vltava Waterfront Towers
Jankovcova 2C, Praha 7 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hans-Dieter Oepen' has 1 existing address(es)
   [0] Kleyerstr. 94, Frankfurt am Main - lat:50.0972649, lon:8.6294397, needsGeocoding:false
✅ PRESERVED geocoding: Kleyerstr. 94, Frankfurt am Main → (50.0972649, 8.6294397), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Odeonsplatz 6+7, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Türkenstr. 90,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Steffen Weber' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Donaustaufer 25a, München - lat:48.1901782, lon:11.5119649, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Donaustaufer 25a, München → (48.1901782, 11.5119649), needsGeocoding=false
🔍 Friend 'Birgit Becker' has 2 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
   [1] Fröttmaninger Str. 10b, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Erich Schäfer' has 1 existing address(es)
   [0] Dornacher Str. 3 (HP-Building), Feldkirchen - lat:48.1509292, lon:11.7233681, needsGeocoding:false
✅ PRESERVED geocoding: Dornacher Str. 3 (HP-Building), Feldkirchen → (48.1509292, 11.7233681), needsGeocoding=false
🔍 Friend 'Peter Schlögl' has 1 existing address(es)
   [0] Baaderstraße 44, München - lat:48.1308666, lon:11.5784691, needsGeocoding:false
✅ PRESERVED geocoding: Baaderstraße 44, München → (48.1308666, 11.5784691), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Grillparzerstr. 29, München - lat:48.1356218, lon:11.6092257, needsGeocoding:false
✅ PRESERVED geocoding: Grillparzerstr. 29, München → (48.1356218, 11.6092257), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Altenmarkter Str. 6, Seeon-Seebruck - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Vltavanu 1542, Prague 4 - lat:49.9926756, lon:14.4061417, needsGeocoding:false
✅ PRESERVED geocoding: Vltavanu 1542, Prague 4 → (49.9926756, 14.4061417), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Piazza Walther, 21, Bolzano - lat:46.4986927, lon:11.3545174, needsGeocoding:false
✅ PRESERVED geocoding: Piazza Walther, 21, Bolzano → (46.4986927, 11.3545174), needsGeocoding=false
🔍 Friend 'Anne Brockhaus' has 1 existing address(es)
   [0] Sedanstr. 32, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gabi Darchinger (geb. Schilling)' has 1 existing address(es)
   [0] Leopoldstraße 256, München - lat:48.1840965, lon:11.5859699, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstraße 256, München → (48.1840965, 11.5859699), needsGeocoding=false
🔍 Friend 'Julien Bidet' has 1 existing address(es)
   [0] 155 rue Anatole France, Levallois-Perret Cedex - lat:48.8983219, lon:2.2792656, needsGeocoding:false
✅ PRESERVED geocoding: 155 rue Anatole France, Levallois-Perret Cedex → (48.8983219, 2.2792656), needsGeocoding=false
🔍 Friend 'Hanna Fiedler' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Landsberger Str. 302, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Weber' has 1 existing address(es)
   [0] Vorhoelzerstr. 2, Diessen am Ammersee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Zimmermann' has 1 existing address(es)
   [0] Promenadeplatz, München - lat:48.14004196157819, lon:11.572705800185897, needsGeocoding:false
✅ PRESERVED geocoding: Promenadeplatz, München → (48.14004196157819, 11.572705800185897), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Ledererstr. 8, München - lat:48.1367801, lon:11.5794628, needsGeocoding:false
✅ PRESERVED geocoding: Ledererstr. 8, München → (48.1367801, 11.5794628), needsGeocoding=false
🔍 Friend 'Werner Bezikofer' has 1 existing address(es)
   [0] , Engen - lat:47.8547231, lon:8.7717973, needsGeocoding:false
✅ PRESERVED geocoding: , Engen → (47.8547231, 8.7717973), needsGeocoding=false
🔍 Friend 'Quyen Nguyen' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Markus Fensterer' has 1 existing address(es)
   [0] Rosenkavalierplatz 10, München - lat:48.1518713, lon:11.6204264, needsGeocoding:false
✅ PRESERVED geocoding: Rosenkavalierplatz 10, München → (48.1518713, 11.6204264), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Stengelstr. 2, München-Schwabing - lat:48.1696558, lon:11.5939824, needsGeocoding:false
✅ PRESERVED geocoding: Stengelstr. 2, München-Schwabing → (48.1696558, 11.5939824), needsGeocoding=false
🔍 Friend 'Jacques & Fiona Röder' has 1 existing address(es)
   [0] Haselburgstrasse 6, München - lat:48.0974539, lon:11.5606543, needsGeocoding:false
✅ PRESERVED geocoding: Haselburgstrasse 6, München → (48.0974539, 11.5606543), needsGeocoding=false
🔍 Friend 'Kathrin & Hannes Sauter' has 1 existing address(es)
   [0] Riedbach 8, Mutters - lat:47.2155076, lon:11.3765617, needsGeocoding:false
✅ PRESERVED geocoding: Riedbach 8, Mutters → (47.2155076, 11.3765617), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Tengstr. 6, München - lat:48.1560174, lon:11.5687617, needsGeocoding:false
✅ PRESERVED geocoding: Tengstr. 6, München → (48.1560174, 11.5687617), needsGeocoding=false
🔍 Friend 'Tim Müller-Seydlitz' has 2 existing address(es)
   [0] Josefstr. 8a, Deisenhofen - lat:nil, lon:nil, needsGeocoding:true
   [1] Arabellastr. 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Knebel' has 1 existing address(es)
   [0] , Düsseldorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tú Nguyễn' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Michael Gebert' has 1 existing address(es)
   [0] Bertelestr. 81, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tony Chapman' has 1 existing address(es)
   [0] Room 0414, Dornach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Gasparo, de' has 1 existing address(es)
   [0] Rue des Planches, Rossemaison - lat:47.34466074360013, lon:7.34799659950024, needsGeocoding:false
✅ PRESERVED geocoding: Rue des Planches, Rossemaison → (47.34466074360013, 7.34799659950024), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Augustenstr 54, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Jahnstr. 35, München - lat:48.1275909, lon:11.5693402, needsGeocoding:false
✅ PRESERVED geocoding: Jahnstr. 35, München → (48.1275909, 11.5693402), needsGeocoding=false
🔍 Friend 'Klaus Wiedemann' has 1 existing address(es)
   [0] Tal 24, München - lat:48.1357873, lon:11.579558, needsGeocoding:false
✅ PRESERVED geocoding: Tal 24, München → (48.1357873, 11.579558), needsGeocoding=false
🔍 Friend 'Wolfi ' has 1 existing address(es)
   [0] Statz 49, Matrei am Brenner - lat:47.1207035, lon:11.4525814, needsGeocoding:false
✅ PRESERVED geocoding: Statz 49, Matrei am Brenner → (47.1207035, 11.4525814), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 271 Hà Huy Tập, Đà Nẵng - lat:16.0599078, lon:108.1877749, needsGeocoding:false
✅ PRESERVED geocoding: 271 Hà Huy Tập, Đà Nẵng → (16.0599078, 108.1877749), needsGeocoding=false
🔍 Friend 'Adeline Roupillard' has 1 existing address(es)
   [0] Fritz-Schaeffer-Strasse 9, München - lat:48.1045666, lon:11.6452724, needsGeocoding:false
✅ PRESERVED geocoding: Fritz-Schaeffer-Strasse 9, München → (48.1045666, 11.6452724), needsGeocoding=false
🔍 Friend 'Björn Jopen' has 1 existing address(es)
   [0] Bussardstrasse 5, Gräfelfing - lat:48.1175297, lon:11.4450295, needsGeocoding:false
✅ PRESERVED geocoding: Bussardstrasse 5, Gräfelfing → (48.1175297, 11.4450295), needsGeocoding=false
🔍 Friend 'Ulli Marquardt' has 1 existing address(es)
   [0] Mühlbauerstr. 45, München - lat:48.1427982, lon:11.6147442, needsGeocoding:false
✅ PRESERVED geocoding: Mühlbauerstr. 45, München → (48.1427982, 11.6147442), needsGeocoding=false
🔍 Friend 'Khanh Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christoph Schilling, von' has 2 existing address(es)
   [0] Ismaninger Str. 22, Muenchen - lat:48.1369762, lon:11.5988939, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Ismaninger Str. 22, Muenchen → (48.1369762, 11.5988939), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Silvana Heider' has 1 existing address(es)
   [0] Holländischer Brook 2, Hamburg - lat:53.545273, lon:9.9989324, needsGeocoding:false
✅ PRESERVED geocoding: Holländischer Brook 2, Hamburg → (53.545273, 9.9989324), needsGeocoding=false
🔍 Friend 'Stefan Bauer' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Steffi & Katja Wachter' has 1 existing address(es)
   [0] Gundekarstr. 23, Schwabach - lat:49.3198318, lon:11.0325919, needsGeocoding:false
✅ PRESERVED geocoding: Gundekarstr. 23, Schwabach → (49.3198318, 11.0325919), needsGeocoding=false
🔍 Friend 'Frank Schwirkmann' has 2 existing address(es)
   [0] Amselweg 10, Moosinning - lat:nil, lon:nil, needsGeocoding:true
   [1] Zamdorfer Str. 100, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Katrin-Susanne Richter' has 2 existing address(es)
   [0] Ferdinandstr. 28-30, Hamburg - lat:53.554116, lon:9.9997892, needsGeocoding:false
   [1] Dillstr. 21, Hamburg - lat:53.5701844, lon:9.9826233, needsGeocoding:false
✅ PRESERVED geocoding: Ferdinandstr. 28-30, Hamburg → (53.554116, 9.9997892), needsGeocoding=false
✅ PRESERVED geocoding: Dillstr. 21, Hamburg → (53.5701844, 9.9826233), needsGeocoding=false
🔍 Friend 'Hanh TRAN' has 1 existing address(es)
   [0] 5A Quang Trung, Danang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eleonor Detels' has 1 existing address(es)
   [0] Einsteinstraße 172, Munich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Auer' has 1 existing address(es)
   [0] Hans Pinsel Str. 7a, Haar - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Petr Žemba' has 1 existing address(es)
   [0] Metodova 7, Bratislava - lat:48.1574923, lon:17.1283814, needsGeocoding:false
✅ PRESERVED geocoding: Metodova 7, Bratislava → (48.1574923, 17.1283814), needsGeocoding=false
🔍 Friend 'Stephan & Majorie van Kuik' has 1 existing address(es)
   [0] Hütteweg 2, Ebertswil - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jürgen Goll' has 1 existing address(es)
   [0] Implerstrasse 4, München - lat:48.1237886, lon:11.5481216, needsGeocoding:false
✅ PRESERVED geocoding: Implerstrasse 4, München → (48.1237886, 11.5481216), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Helmtrudenstr 1, München - lat:48.16852, lon:11.5927554, needsGeocoding:false
✅ PRESERVED geocoding: Helmtrudenstr 1, München → (48.16852, 11.5927554), needsGeocoding=false
🔍 Friend 'Michael Prechtel' has 1 existing address(es)
   [0] Aidenbachstr. 42, München - lat:48.0978631, lon:11.5227716, needsGeocoding:false
✅ PRESERVED geocoding: Aidenbachstr. 42, München → (48.0978631, 11.5227716), needsGeocoding=false
🔍 Friend 'Herbert Sattler' has 1 existing address(es)
   [0] Otto-Hahn-Ring 6, München - lat:48.0915911, lon:11.649046, needsGeocoding:false
✅ PRESERVED geocoding: Otto-Hahn-Ring 6, München → (48.0915911, 11.649046), needsGeocoding=false
🔍 Friend 'My Tran Nhat' has 1 existing address(es)
   [0] 390/14 Le Duan Street - Thanh Khe District, DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nathalie Huguet' has 1 existing address(es)
   [0] Oberviechtacher Str. 28, München 81549 - lat:48.0912124, lon:11.6069028, needsGeocoding:false
✅ PRESERVED geocoding: Oberviechtacher Str. 28, München 81549 → (48.0912124, 11.6069028), needsGeocoding=false
🔍 Friend 'Thomas Sonnenberg' has 2 existing address(es)
   [0] Höchlstr. 3, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Ludwig-Rinn-Strasse 14-16, Heuchelheim - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nina Ardelyan' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Heinzi + Kathrin Fraas' has 1 existing address(es)
   [0] Mieslötzweg, Berchtesgaden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hermann Demuth' has 1 existing address(es)
   [0] Sommerstr 29, München - lat:48.1202688, lon:11.5723681, needsGeocoding:false
✅ PRESERVED geocoding: Sommerstr 29, München → (48.1202688, 11.5723681), needsGeocoding=false
🔍 Friend 'Silvia Kaske' has 1 existing address(es)
   [0] Berlinerstr. 8, München - lat:48.1709328, lon:11.5879464, needsGeocoding:false
✅ PRESERVED geocoding: Berlinerstr. 8, München → (48.1709328, 11.5879464), needsGeocoding=false
🔍 Friend 'Dorit Bode' has 1 existing address(es)
   [0] Einsteinring 6, Dornach - lat:48.1483581, lon:11.6873357, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 6, Dornach → (48.1483581, 11.6873357), needsGeocoding=false
🔍 Friend 'Kerstin Weidemeyer' has 1 existing address(es)
   [0] Erhardstr. 8, Munich - lat:48.1289045, lon:11.577897, needsGeocoding:false
✅ PRESERVED geocoding: Erhardstr. 8, Munich → (48.1289045, 11.577897), needsGeocoding=false
🔍 Friend 'Linnemann Johannes' has 1 existing address(es)
   [0] Niederbrodhagen 12, Bielefeld - lat:52.0397448, lon:8.5187463, needsGeocoding:false
✅ PRESERVED geocoding: Niederbrodhagen 12, Bielefeld → (52.0397448, 8.5187463), needsGeocoding=false
🔍 Friend 'Lenka Nezvalová' has 1 existing address(es)
   [0] Dlouha 2 (Blaues Tor), Praha - lat:50.0885304, lon:14.4218008, needsGeocoding:false
✅ PRESERVED geocoding: Dlouha 2 (Blaues Tor), Praha → (50.0885304, 14.4218008), needsGeocoding=false
🔍 Friend 'Gerald Fischbach' has 2 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
   [1] Randorferstr. 5, München - lat:48.1251873, lon:11.6428778, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
✅ PRESERVED geocoding: Randorferstr. 5, München → (48.1251873, 11.6428778), needsGeocoding=false
🔍 Friend 'Hans-Herbert Gartner' has 1 existing address(es)
   [0] Südring 347, Mainz - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jean-Marc & Gabrielle Gasparo & Frainer' has 1 existing address(es)
   [0] Temple Allemand 101, La Chaux-de-Fonds - lat:47.101421, lon:6.820583, needsGeocoding:false
✅ PRESERVED geocoding: Temple Allemand 101, La Chaux-de-Fonds → (47.101421, 6.820583), needsGeocoding=false
🔍 Friend 'Olaf Elbinger' has 2 existing address(es)
   [0] c/o Intershop Tower
Leutragraben 1, Jena - lat:50.9288643, lon:11.584265, needsGeocoding:false
   [1] c/o Intershop Tower

Leutragraben 1, Jena - lat:50.9288643, lon:11.584265, needsGeocoding:false
✅ PRESERVED geocoding: c/o Intershop Tower
Leutragraben 1, Jena → (50.9288643, 11.584265), needsGeocoding=false
✅ PRESERVED geocoding: c/o Intershop Tower

Leutragraben 1, Jena → (50.9288643, 11.584265), needsGeocoding=false
🔍 Friend 'Pavla Kollarova' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ali Shaheen' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Jürgen Norgiev' has 1 existing address(es)
   [0] Röderstr. 42, Wiesbaden - lat:50.0888718, lon:8.238635, needsGeocoding:false
✅ PRESERVED geocoding: Röderstr. 42, Wiesbaden → (50.0888718, 8.238635), needsGeocoding=false
🔍 Friend 'Jochen Eisl' has 1 existing address(es)
   [0] Geigenbergstr. 7, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Bereiteranger 15, München - lat:48.1262316, lon:11.5807579, needsGeocoding:false
✅ PRESERVED geocoding: Bereiteranger 15, München → (48.1262316, 11.5807579), needsGeocoding=false
🔍 Friend 'Gyula Turmayer' has 1 existing address(es)
   [0] Schäftlarnstr. 160A / Rgb., München - lat:48.1034308, lon:11.5469173, needsGeocoding:false
✅ PRESERVED geocoding: Schäftlarnstr. 160A / Rgb., München → (48.1034308, 11.5469173), needsGeocoding=false
🔍 Friend 'Vũ Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Pedro Pietro-Martin' has 1 existing address(es)
   [0] , Herrenberg - lat:48.5956667, lon:8.8672899, needsGeocoding:false
✅ PRESERVED geocoding: , Herrenberg → (48.5956667, 8.8672899), needsGeocoding=false
🔍 Friend 'Almut Roessner' has 1 existing address(es)
   [0] Bleichenbrücke 9, Hamburg - lat:53.5514801, lon:9.987641, needsGeocoding:false
✅ PRESERVED geocoding: Bleichenbrücke 9, Hamburg → (53.5514801, 9.987641), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , München Schwabing - lat:48.1609015, lon:11.5633436, needsGeocoding:false
✅ PRESERVED geocoding: , München Schwabing → (48.1609015, 11.5633436), needsGeocoding=false
🔍 Friend 'Laurent Kraffmuller' has 1 existing address(es)
   [0] 295 route de l'empereur, rueil malmaison - lat:48.8601252, lon:2.1884643, needsGeocoding:false
✅ PRESERVED geocoding: 295 route de l'empereur, rueil malmaison → (48.8601252, 2.1884643), needsGeocoding=false
🔍 Friend 'Carl-Jan (Calli) von der Goltz' has 1 existing address(es)
   [0] ABC-Straße 35, Hamburg - lat:53.5541524, lon:9.9850352, needsGeocoding:false
✅ PRESERVED geocoding: ABC-Straße 35, Hamburg → (53.5541524, 9.9850352), needsGeocoding=false
🔍 Friend 'Christine Borel' has 1 existing address(es)
   [0] 17, Boulevard Picpus, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bill Borisi' has 1 existing address(es)
   [0] Tattenbachstr. 12, München Lehel - lat:48.140241, lon:11.5902534, needsGeocoding:false
✅ PRESERVED geocoding: Tattenbachstr. 12, München Lehel → (48.140241, 11.5902534), needsGeocoding=false
🔍 Friend 'John Harper' has 1 existing address(es)
   [0] 170 West Tasman Drive, San Jose - lat:37.4083777, lon:-121.9539414, needsGeocoding:false
✅ PRESERVED geocoding: 170 West Tasman Drive, San Jose → (37.4083777, -121.9539414), needsGeocoding=false
🔍 Friend 'Ferras Zalt' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martin-Sean Horrigan' has 1 existing address(es)
   [0] , Hoi An - lat:15.8798452, lon:108.3287753, needsGeocoding:false
✅ PRESERVED geocoding: , Hoi An → (15.8798452, 108.3287753), needsGeocoding=false
🔍 Friend 'Stephan Gottwald' has 1 existing address(es)
   [0] Münchner Freihet, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefan Baer' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend ' Ascher' has 1 existing address(es)
   [0] Karlstr. 42, München - lat:48.1447215, lon:11.5615536, needsGeocoding:false
✅ PRESERVED geocoding: Karlstr. 42, München → (48.1447215, 11.5615536), needsGeocoding=false
🔍 Friend 'Wuckerl Schwind' has 1 existing address(es)
   [0] Breinberg Nord 3, 5202 Neumarkt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Giulio & Helene Martinozzi' has 1 existing address(es)
   [0] Gertrud-Kückelmann-Weg 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dirk Gardzella' has 1 existing address(es)
   [0] , Wiebaden - lat:50.0821069, lon:8.241296, needsGeocoding:false
✅ PRESERVED geocoding: , Wiebaden → (50.0821069, 8.241296), needsGeocoding=false
🔍 Friend 'Gertrud Geigenberger' has 1 existing address(es)
   [0] Otto-Hahn-Ring 6, München - lat:48.0915911, lon:11.649046, needsGeocoding:false
✅ PRESERVED geocoding: Otto-Hahn-Ring 6, München → (48.0915911, 11.649046), needsGeocoding=false
🔍 Friend 'Birgit Kutschbach' has 2 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
   [1] Birgit Kutschbach
Marktstr. 12
20357 Hamburg
Deutschland,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Edward Mayle' has 1 existing address(es)
   [0] ,  - lat:49.7247107, lon:15.3451304, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (49.7247107, 15.3451304), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Teichgraben 1, JENA - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sven Herzberg' has 1 existing address(es)
   [0] Wilhelm-Leuscher-Str. 10, Frankfurt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Horst Karlsberg' has 1 existing address(es)
   [0] , Böblingen - lat:48.6852716, lon:9.0094477, needsGeocoding:false
✅ PRESERVED geocoding: , Böblingen → (48.6852716, 9.0094477), needsGeocoding=false
🔍 Friend 'Konstantin Frischmann' has 1 existing address(es)
   [0] Ing. Etzel Straße, Innsbruck - lat:47.277227799740764, lon:11.413182173267, needsGeocoding:false
✅ PRESERVED geocoding: Ing. Etzel Straße, Innsbruck → (47.277227799740764, 11.413182173267), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 29-31, rue des Ecoles, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thom Zydervelt, Dr' has 1 existing address(es)
   [0] 64 Lê Văn Thủ, Khuê Mỹ, Ngũ Hành Sơn,  - lat:16.03163596226707, lon:108.24026112950774, needsGeocoding:false
✅ PRESERVED geocoding: 64 Lê Văn Thủ, Khuê Mỹ, Ngũ Hành Sơn,  → (16.03163596226707, 108.24026112950774), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Týn 2, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ansgar Tümmers' has 1 existing address(es)
   [0] Schraudolphstr. 18, München - lat:48.1524623, lon:11.5727804, needsGeocoding:false
✅ PRESERVED geocoding: Schraudolphstr. 18, München → (48.1524623, 11.5727804), needsGeocoding=false
🔍 Friend 'Ades Jean-Claude' has 1 existing address(es)
   [0] Lerchenfeldstr. 11, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dirk Suswedyk' has 1 existing address(es)
   [0] , Leipzig - lat:51.337296, lon:12.3761666, needsGeocoding:false
✅ PRESERVED geocoding: , Leipzig → (51.337296, 12.3761666), needsGeocoding=false
🔍 Friend 'Sven Schneider' has 1 existing address(es)
   [0] Rosenheimerstr. 145i, München - lat:48.1213223, lon:11.6060863, needsGeocoding:false
✅ PRESERVED geocoding: Rosenheimerstr. 145i, München → (48.1213223, 11.6060863), needsGeocoding=false
🔍 Friend 'Andreas Hartmann' has 1 existing address(es)
   [0] 47 Boulevard de l'Hôpital, Paris Cedex 13 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tobias Kaatz' has 1 existing address(es)
   [0] Neumarkt 2, Leipzig - lat:51.3395671, lon:12.3764004, needsGeocoding:false
✅ PRESERVED geocoding: Neumarkt 2, Leipzig → (51.3395671, 12.3764004), needsGeocoding=false
🔍 Friend 'Markus Amon' has 1 existing address(es)
   [0] Habsburgerstr. 3, München - lat:48.1564704, lon:11.5774223, needsGeocoding:false
✅ PRESERVED geocoding: Habsburgerstr. 3, München → (48.1564704, 11.5774223), needsGeocoding=false
🔍 Friend 'Tuan ' has 1 existing address(es)
   [0] Nhà D35 khu nhà ở Lê Quang Đạo, k38, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sebastian Rosendorfer' has 2 existing address(es)
   [0] Vockestraße 38, Haar - lat:nil, lon:nil, needsGeocoding:true
   [1] Benzstraße 8, Kirchheim - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hoàng Văn Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Carl Ingwersen' has 1 existing address(es)
   [0] 125 First Street, Parkmore, Sandton - lat:-26.104826, lon:28.042096, needsGeocoding:false
✅ PRESERVED geocoding: 125 First Street, Parkmore, Sandton → (-26.104826, 28.042096), needsGeocoding=false
🔍 Friend 'Sebastian Pätzold' has 1 existing address(es)
   [0] Schatzbogen 58, München - lat:48.1321003, lon:11.6586874, needsGeocoding:false
✅ PRESERVED geocoding: Schatzbogen 58, München → (48.1321003, 11.6586874), needsGeocoding=false
🔍 Friend 'Gert Bayer' has 1 existing address(es)
   [0] Körnerstr. 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Knipschild Ansgar' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Hohenstaufenring 30-32, Köln - lat:50.9314838, lon:6.9408915, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Hohenstaufenring 30-32, Köln → (50.9314838, 6.9408915), needsGeocoding=false
🔍 Friend 'Heike Gally' has 1 existing address(es)
   [0] Herrenberger Strasse 140, Boeblingen - lat:48.6756852, lon:8.9767011, needsGeocoding:false
✅ PRESERVED geocoding: Herrenberger Strasse 140, Boeblingen → (48.6756852, 8.9767011), needsGeocoding=false
🔍 Friend ' Pokorny' has 1 existing address(es)
   [0] Dr. Yikmunda Wintra 376/5, Praha 6 - lat:50.1009758, lon:14.4042629, needsGeocoding:false
✅ PRESERVED geocoding: Dr. Yikmunda Wintra 376/5, Praha 6 → (50.1009758, 14.4042629), needsGeocoding=false
🔍 Friend 'Kilian Schwieters' has 1 existing address(es)
   [0] 28 Bach Dang, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Leopoldstraße 13, München - lat:48.1557215, lon:11.5829631, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstraße 13, München → (48.1557215, 11.5829631), needsGeocoding=false
🔍 Friend 'Derya Terlemez' has 2 existing address(es)
   [0] ,  - lat:48.7719628, lon:11.4383042, needsGeocoding:false
   [1] Kraeppelinstr. 55a, München - lat:48.174421, lon:11.5742881, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (48.7719628, 11.4383042), needsGeocoding=false
✅ PRESERVED geocoding: Kraeppelinstr. 55a, München → (48.174421, 11.5742881), needsGeocoding=false
🔍 Friend 'Dagmar Strauß' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Moritz Zimmermann' has 1 existing address(es)
   [0] Nymphenburger Str. 86, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hisham Attia' has 1 existing address(es)
   [0] Barerstr. 32, München 80333 - lat:48.1462011, lon:11.5703982, needsGeocoding:false
✅ PRESERVED geocoding: Barerstr. 32, München 80333 → (48.1462011, 11.5703982), needsGeocoding=false
🔍 Friend 'Steve Radakovich' has 1 existing address(es)
   [0] , New York - lat:40.7129822, lon:-74.007205, needsGeocoding:false
✅ PRESERVED geocoding: , New York → (40.7129822, -74.007205), needsGeocoding=false
🔍 Friend 'Bechara & Claire Debbas' has 1 existing address(es)
   [0] 597 Chemin du Riou, Vence - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Sonnenstr. 32, München - lat:48.1343073, lon:11.5655946, needsGeocoding:false
✅ PRESERVED geocoding: Sonnenstr. 32, München → (48.1343073, 11.5655946), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Ernst-Merck-Straße 8, Hamburg - lat:53.5550226, lon:10.0072722, needsGeocoding:false
✅ PRESERVED geocoding: Ernst-Merck-Straße 8, Hamburg → (53.5550226, 10.0072722), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Erdinger Straße 12, München - lat:48.1418234, lon:11.6830044, needsGeocoding:false
✅ PRESERVED geocoding: Erdinger Straße 12, München → (48.1418234, 11.6830044), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Colmdorfstr. 3, München - lat:48.1540176, lon:11.4138689, needsGeocoding:false
✅ PRESERVED geocoding: Colmdorfstr. 3, München → (48.1540176, 11.4138689), needsGeocoding=false
🔍 Friend 'Martin Schmid' has 1 existing address(es)
   [0] Bernhard-Nocht-Str. 113, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eva & Bernd Ehrengart' has 1 existing address(es)
   [0] Kiebitzstr. 14, Wörthsee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Amalienstr. 23, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Böhm' has 1 existing address(es)
   [0] Frankfurter Ring 35, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hoang Thanh' has 1 existing address(es)
   [0] 172 Nguyen Van Linh Street, Da Nang - lat:16.0603387, lon:108.21303, needsGeocoding:false
✅ PRESERVED geocoding: 172 Nguyen Van Linh Street, Da Nang → (16.0603387, 108.21303), needsGeocoding=false
🔍 Friend 'Marlis Sonnenberg' has 1 existing address(es)
   [0] Am Wickerbach 7b, Hofheim - Wallau - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ngoc Hoa Hien' has 1 existing address(es)
   [0] 35 Tran Quang Khải
106 Huyền Tran Công Chúa (Mặt Sông),  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Việt Hoàng' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Dieter Rügemer' has 1 existing address(es)
   [0] Malsenstr. 66, München 80638 - lat:48.1605673, lon:11.5258148, needsGeocoding:false
✅ PRESERVED geocoding: Malsenstr. 66, München 80638 → (48.1605673, 11.5258148), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Berghammer Ampfing' has 1 existing address(es)
   [0] Münchner Str. 28

Vis a vis Bhf

Hintereingang benutzen, Ampfing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eric Chemouny' has 1 existing address(es)
   [0] 168, avenue Charles de Gaulle, Cedex Neuilly Sur Seine - lat:48.8852684, lon:2.2602095, needsGeocoding:false
✅ PRESERVED geocoding: 168, avenue Charles de Gaulle, Cedex Neuilly Sur Seine → (48.8852684, 2.2602095), needsGeocoding=false
🔍 Friend 'Cuong Bui' has 1 existing address(es)
   [0] P809, Orintal bld,
324 Tay Son st.,
Dong Da district, Hanoi - lat:20.9909707, lon:105.7245506, needsGeocoding:false
✅ PRESERVED geocoding: P809, Orintal bld,
324 Tay Son st.,
Dong Da district, Hanoi → (20.9909707, 105.7245506), needsGeocoding=false
🔍 Friend 'Jens Liermann' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Norbert Dreher' has 1 existing address(es)
   [0] Leopoldstr. 59, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Björn Koslowski' has 1 existing address(es)
   [0] 4th Floor, 33 Le Duan Blvd, Ho Chi Minh City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eloïse Gori' has 1 existing address(es)
   [0] Seinsheimstr. 23, München 81245 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Helmut Hoffmann' has 1 existing address(es)
   [0] Gerhard-Hauptmann-Ring 52, München - lat:48.0993952, lon:11.6542019, needsGeocoding:false
✅ PRESERVED geocoding: Gerhard-Hauptmann-Ring 52, München → (48.0993952, 11.6542019), needsGeocoding=false
🔍 Friend 'Angelo Caccavale' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Lars Jankowfsky' has 1 existing address(es)
   [0] Vincom Mall, 72 Lê Thánh Tôn, Bến Nghé, Quận 1, 11th floor, Ho Chi Minh City / Saigon - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ngọc Đinh' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Tobias Budde' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Peter Höftberger' has 1 existing address(es)
   [0] Eberhard-Fugger-Str 3, Salzburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Zdenek Grössl' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Bozen

Nah Walterplatz,  - lat:46.497670087650995, lon:11.355230784893502, needsGeocoding:false
   [1] Bozen
Nah Walterplatz,  - lat:46.497670087650995, lon:11.355230784893502, needsGeocoding:false
✅ PRESERVED geocoding: Bozen

Nah Walterplatz,  → (46.497670087650995, 11.355230784893502), needsGeocoding=false
✅ PRESERVED geocoding: Bozen
Nah Walterplatz,  → (46.497670087650995, 11.355230784893502), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Gravelottestr. 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Theresienstraße 37
1. Etage, München - lat:48.1479206, lon:11.5734674, needsGeocoding:false
✅ PRESERVED geocoding: Theresienstraße 37
1. Etage, München → (48.1479206, 11.5734674), needsGeocoding=false
🔍 Friend 'Jürgen Bauer' has 1 existing address(es)
   [0] Hewlett-Packard GmbH

Schickardstrasse 32, Boeblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Lubos Prandzev' has 1 existing address(es)
   [0] K Hrušovu 2/293, Praha 10 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Willi Schaefer' has 1 existing address(es)
   [0] , Einsteinring 30, 85609 Dornach, Germany - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: , Einsteinring 30, 85609 Dornach, Germany → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Willy-Brandt-Allee 3, Hannover - lat:52.3668324, lon:9.7401426, needsGeocoding:false
✅ PRESERVED geocoding: Willy-Brandt-Allee 3, Hannover → (52.3668324, 9.7401426), needsGeocoding=false
🔍 Friend ' Treibert' has 1 existing address(es)
   [0] Luisenstr. 105, Düsseldorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Engr. Ashraf' has 1 existing address(es)
   [0] Small Industries Estate, Sialkot - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Petra Mahler' has 1 existing address(es)
   [0] Altenkesseler Straße 17, Saarbrücken - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dorna Hekmat' has 2 existing address(es)
   [0] Ismaninger Str.156, München - lat:48.1501538, lon:11.6078788, needsGeocoding:false
   [1] Kaufingerstr. 15, München - lat:48.1379063, lon:11.5718052, needsGeocoding:false
✅ PRESERVED geocoding: Ismaninger Str.156, München → (48.1501538, 11.6078788), needsGeocoding=false
✅ PRESERVED geocoding: Kaufingerstr. 15, München → (48.1379063, 11.5718052), needsGeocoding=false
🔍 Friend 'Claudia Goldhammer' has 2 existing address(es)
   [0] Diefenbachstrasse 38, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Adolf-Wenz-Strasse 10, Großhesselohe - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Minh Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Jakubska 2

Old Town, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
   [1] Jakubska 2
Old Town, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Schmitz' has 2 existing address(es)
   [0] Auweg 5, Affing - lat:nil, lon:nil, needsGeocoding:true
   [1] Max-Planck-Str., Dornach / München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bình Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Ludwig-Thoma-Str. 1, Seebruck am Chiemsee - lat:50.3349188, lon:10.2064557, needsGeocoding:false
✅ PRESERVED geocoding: Ludwig-Thoma-Str. 1, Seebruck am Chiemsee → (50.3349188, 10.2064557), needsGeocoding=false
🔍 Friend 'Ambroise Trevedy' has 1 existing address(es)
   [0] Fliederstr. 2, Saarbrücken 66119 - lat:49.2273285, lon:6.9847985, needsGeocoding:false
✅ PRESERVED geocoding: Fliederstr. 2, Saarbrücken 66119 → (49.2273285, 6.9847985), needsGeocoding=false
🔍 Friend 'Etienne ' has 1 existing address(es)
   [0] Big White House, DNG Beach Road, Turn Right After Belhamy Resort,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jessica Blechschmidt' has 1 existing address(es)
   [0] Holländischer Brook 2, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , StAnton - lat:47.1263569, lon:10.2612921, needsGeocoding:false
✅ PRESERVED geocoding: , StAnton → (47.1263569, 10.2612921), needsGeocoding=false
🔍 Friend 'Dao Huyen' has 1 existing address(es)
   [0] 74 Bach Dang Street, Hai Chau District, DaNang City - lat:16.0571056, lon:108.2222019, needsGeocoding:false
✅ PRESERVED geocoding: 74 Bach Dang Street, Hai Chau District, DaNang City → (16.0571056, 108.2222019), needsGeocoding=false
🔍 Friend ' Djamali-Leonhard' has 1 existing address(es)
   [0] Mühlbaurstr. 2, München - lat:48.1397806, lon:11.6078852, needsGeocoding:false
✅ PRESERVED geocoding: Mühlbaurstr. 2, München → (48.1397806, 11.6078852), needsGeocoding=false
🔍 Friend 'Thomas Berents' has 1 existing address(es)
   [0] Stolberger Str. 76-78, Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Amblard' has 1 existing address(es)
   [0] , Neuilly sur Seine - lat:48.1622837, lon:17.5768297, needsGeocoding:false
✅ PRESERVED geocoding: , Neuilly sur Seine → (48.1622837, 17.5768297), needsGeocoding=false
🔍 Friend 'Burkhardt Hermens' has 2 existing address(es)
   [0] Apianstr. 5, Unterföhring - lat:48.1746557, lon:11.6406861, needsGeocoding:false
   [1] Ettaler Str. 17, Neuried - lat:48.0901976, lon:11.4577071, needsGeocoding:false
✅ PRESERVED geocoding: Apianstr. 5, Unterföhring → (48.1746557, 11.6406861), needsGeocoding=false
✅ PRESERVED geocoding: Ettaler Str. 17, Neuried → (48.0901976, 11.4577071), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Domplatz 20, Brixen - lat:46.4968585, lon:11.3543406, needsGeocoding:false
✅ PRESERVED geocoding: Domplatz 20, Brixen → (46.4968585, 11.3543406), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bertrand Matthelié' has 1 existing address(es)
   [0] Tekniikantie 21, ESPOO - lat:60.1864202, lon:24.8132021, needsGeocoding:false
✅ PRESERVED geocoding: Tekniikantie 21, ESPOO → (60.1864202, 24.8132021), needsGeocoding=false
🔍 Friend 'Christoph Poropatits' has 1 existing address(es)
   [0] Neue Weyerstrasse 6, Cologne - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hervé Joassard' has 1 existing address(es)
   [0] , Grenoble - lat:45.1870781, lon:5.7306849, needsGeocoding:false
✅ PRESERVED geocoding: , Grenoble → (45.1870781, 5.7306849), needsGeocoding=false
🔍 Friend 'Adrian Polaczek' has 1 existing address(es)
   [0] Krauss-Maffei Str. 2, München - lat:48.1929418, lon:11.4692396, needsGeocoding:false
✅ PRESERVED geocoding: Krauss-Maffei Str. 2, München → (48.1929418, 11.4692396), needsGeocoding=false
🔍 Friend 'Hannelore Galster' has 1 existing address(es)
   [0] Gabelsbergerstr., München - lat:48.14764868371266, lon:11.567901059720242, needsGeocoding:false
✅ PRESERVED geocoding: Gabelsbergerstr., München → (48.14764868371266, 11.567901059720242), needsGeocoding=false
🔍 Friend 'Andreas Rösch' has 1 existing address(es)
   [0] Humboldtstr. 6, Aschheim/ Dornach - lat:48.1509525, lon:11.6846437, needsGeocoding:false
✅ PRESERVED geocoding: Humboldtstr. 6, Aschheim/ Dornach → (48.1509525, 11.6846437), needsGeocoding=false
🔍 Friend 'Inge Drouzas' has 1 existing address(es)
   [0] Arsaki 12, Athen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Guido Friedl' has 1 existing address(es)
   [0] Strancicka 776/25, Praha 10 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gerd Herzog' has 1 existing address(es)
   [0] Meinertstr. 5, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'FRANCESCO CAMPAGNOLI' has 1 existing address(es)
   [0] 5, avenue Raymond Chanas, Eybens Grenoble Cedex 09 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hau ' has 1 existing address(es)
   [0] 142 Nguyen Huu Canh, Saigon - lat:10.7948175, lon:106.7143746, needsGeocoding:false
✅ PRESERVED geocoding: 142 Nguyen Huu Canh, Saigon → (10.7948175, 106.7143746), needsGeocoding=false
🔍 Friend 'Ingo Körber' has 1 existing address(es)
   [0] , Leipzig - lat:51.337296, lon:12.3761666, needsGeocoding:false
✅ PRESERVED geocoding: , Leipzig → (51.337296, 12.3761666), needsGeocoding=false
🔍 Friend 'Dietmar Wiewiora' has 1 existing address(es)
   [0] Bussardstr. 26, Unterhaching - lat:48.082607, lon:11.6064535, needsGeocoding:false
✅ PRESERVED geocoding: Bussardstr. 26, Unterhaching → (48.082607, 11.6064535), needsGeocoding=false
🔍 Friend 'Theo Panayotou' has 1 existing address(es)
   [0] Narkissou 12, Kifissia - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Loc Le Quy' has 1 existing address(es)
   [0] , Danang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Bergmann' has 1 existing address(es)
   [0] Velgen 35, Hanstedt - lat:53.0910917, lon:10.4025246, needsGeocoding:false
✅ PRESERVED geocoding: Velgen 35, Hanstedt → (53.0910917, 10.4025246), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Heřmanova 37, Praha 7 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Adrian Holzer' has 2 existing address(es)
   [0] Schürmattsrasse 11, Hünenberg - lat:47.1769226, lon:8.4300269, needsGeocoding:false
   [1] Lettenstrasse 11, Rotkreuz - lat:47.1473865, lon:8.4306871, needsGeocoding:false
✅ PRESERVED geocoding: Schürmattsrasse 11, Hünenberg → (47.1769226, 8.4300269), needsGeocoding=false
✅ PRESERVED geocoding: Lettenstrasse 11, Rotkreuz → (47.1473865, 8.4306871), needsGeocoding=false
🔍 Friend 'Mike Clark' has 1 existing address(es)
   [0] 5 Marsh Farm Road

Twickenham, London - lat:51.446293, lon:-0.3389269, needsGeocoding:false
✅ PRESERVED geocoding: 5 Marsh Farm Road

Twickenham, London → (51.446293, -0.3389269), needsGeocoding=false
🔍 Friend 'Henner Prahl' has 1 existing address(es)
   [0] , Leipzig - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Appel' has 1 existing address(es)
   [0] Schlosserstraße 1, Pliening - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nicola Vedovo' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Manni Eichberg' has 1 existing address(es)
   [0] Am Kurpark 14, Kreuth am Tegernsee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karine Maucher' has 1 existing address(es)
   [0] Nussbaumstr. 20, Muenchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Burkhard Flieth' has 1 existing address(es)
   [0] , München - lat:48.1336515, lon:11.5561752, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1336515, 11.5561752), needsGeocoding=false
🔍 Friend 'Lila Bagherzadeh' has 1 existing address(es)
   [0] Adalbert-Stifter-Str. 23, München - lat:48.1596994, lon:11.615508, needsGeocoding:false
✅ PRESERVED geocoding: Adalbert-Stifter-Str. 23, München → (48.1596994, 11.615508), needsGeocoding=false
🔍 Friend 'Michaela Kitta' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Michael Wenglein' has 2 existing address(es)
   [0] Piusstr. 16, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Forstkastenstr. 33, Stockdorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Zeiner' has 1 existing address(es)
   [0] Dingolfingerstr.  ??, München ??? - lat:48.1315526, lon:11.6140415, needsGeocoding:false
✅ PRESERVED geocoding: Dingolfingerstr.  ??, München ??? → (48.1315526, 11.6140415), needsGeocoding=false
🔍 Friend 'Fuzzi Fuchs' has 1 existing address(es)
   [0] Ramoltstr. 20, München 81735 - lat:48.1082476, lon:11.6201822, needsGeocoding:false
✅ PRESERVED geocoding: Ramoltstr. 20, München 81735 → (48.1082476, 11.6201822), needsGeocoding=false
🔍 Friend 'Ingo Werstler' has 1 existing address(es)
   [0] Piusstr. 16, München - lat:48.1234382, lon:11.6103325, needsGeocoding:false
✅ PRESERVED geocoding: Piusstr. 16, München → (48.1234382, 11.6103325), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Templova 8, Praha 1 - lat:50.0881007, lon:14.4256396, needsGeocoding:false
✅ PRESERVED geocoding: Templova 8, Praha 1 → (50.0881007, 14.4256396), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 7-9 Tran Quoc Toan (5th Floor), DA Nang - lat:16.0660804, lon:108.2235378, needsGeocoding:false
✅ PRESERVED geocoding: 7-9 Tran Quoc Toan (5th Floor), DA Nang → (16.0660804, 108.2235378), needsGeocoding=false
🔍 Friend 'Francois Veit' has 1 existing address(es)
   [0] Krakovska 9, Praha 1 - lat:50.0780862, lon:14.4278401, needsGeocoding:false
✅ PRESERVED geocoding: Krakovska 9, Praha 1 → (50.0780862, 14.4278401), needsGeocoding=false
🔍 Friend ' Hartwig' has 1 existing address(es)
   [0] Betzenweg 11a, München - lat:48.1670106, lon:11.4731978, needsGeocoding:false
✅ PRESERVED geocoding: Betzenweg 11a, München → (48.1670106, 11.4731978), needsGeocoding=false
🔍 Friend 'Javier Keller' has 1 existing address(es)
   [0] An den Treptowers 1, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tuyến Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Arnulfstraße 19, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 303 Hoang Dieu street, Da Nang - lat:16.0567364, lon:108.2172003, needsGeocoding:false
✅ PRESERVED geocoding: 303 Hoang Dieu street, Da Nang → (16.0567364, 108.2172003), needsGeocoding=false
🔍 Friend 'Damir Ismailović' has 1 existing address(es)
   [0] Boltzmannstraße 3, Garching - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Kreuth Am Tegernsee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Elisa Eitner' has 1 existing address(es)
   [0] Richard-Strauss-Str 49, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karin Heisinger' has 1 existing address(es)
   [0] Dornach 1 - Room 0204,  - lat:50.2614326, lon:11.443304, needsGeocoding:false
✅ PRESERVED geocoding: Dornach 1 - Room 0204,  → (50.2614326, 11.443304), needsGeocoding=false
🔍 Friend 'Catarina Edjfäll' has 1 existing address(es)
   [0] Raidingerstr. 9, München - lat:48.1183763, lon:11.5100504, needsGeocoding:false
✅ PRESERVED geocoding: Raidingerstr. 9, München → (48.1183763, 11.5100504), needsGeocoding=false
🔍 Friend 'Oleg Grosche' has 1 existing address(es)
   [0] Plettstr. 71, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Vân Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Calin Barbat' has 2 existing address(es)
   [0] , Dachau - lat:48.2594625, lon:11.4345959, needsGeocoding:false
   [1] Kirchenstr. 88, München - lat:48.1326639, lon:11.6084177, needsGeocoding:false
✅ PRESERVED geocoding: , Dachau → (48.2594625, 11.4345959), needsGeocoding=false
✅ PRESERVED geocoding: Kirchenstr. 88, München → (48.1326639, 11.6084177), needsGeocoding=false
🔍 Friend 'Ralf Scheuchl' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Till Haunschild' has 2 existing address(es)
   [0] Friedrichstraße 17, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Lechfeldstr. 16, Kissing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 52 Bach Dang Street, Danang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anneliese Frickemeier' has 1 existing address(es)
   [0] Bismarckstr. 62, Herford - lat:52.1206396, lon:8.6903632, needsGeocoding:false
✅ PRESERVED geocoding: Bismarckstr. 62, Herford → (52.1206396, 8.6903632), needsGeocoding=false
🔍 Friend 'Thomas Mögele' has 1 existing address(es)
   [0] Sendlinger Tor Platz 6, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 55, Quai de Bourbon, Paris - lat:48.8530802, lon:2.3534202, needsGeocoding:false
✅ PRESERVED geocoding: 55, Quai de Bourbon, Paris → (48.8530802, 2.3534202), needsGeocoding=false
🔍 Friend 'Vera Fischer' has 1 existing address(es)
   [0] Fichtenstr. 21, Unterföhring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Oliver Freitag' has 1 existing address(es)
   [0] Kellerstr. 20, München - lat:48.1303561, lon:11.5948581, needsGeocoding:false
✅ PRESERVED geocoding: Kellerstr. 20, München → (48.1303561, 11.5948581), needsGeocoding=false
🔍 Friend 'Christian Busch' has 2 existing address(es)
   [0] , Silicon Valley - lat:37.346924, lon:-121.9393145, needsGeocoding:false
   [1] , San Francisco - lat:37.779379, lon:-122.418433, needsGeocoding:false
✅ PRESERVED geocoding: , Silicon Valley → (37.346924, -121.9393145), needsGeocoding=false
✅ PRESERVED geocoding: , San Francisco → (37.779379, -122.418433), needsGeocoding=false
🔍 Friend 'Eva Fürst' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Manfred Richter' has 1 existing address(es)
   [0] Kleyerstr. 94, Frankfurt am Main - lat:50.0972649, lon:8.6294397, needsGeocoding:false
✅ PRESERVED geocoding: Kleyerstr. 94, Frankfurt am Main → (50.0972649, 8.6294397), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Mariannenstr. 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Richard Heinrich' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Fischartstr. 5, München 80686 - lat:48.1295339, lon:11.5063256, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Fischartstr. 5, München 80686 → (48.1295339, 11.5063256), needsGeocoding=false
🔍 Friend 'Miloslav Doubrava' has 1 existing address(es)
   [0] Danube House

Karolinská 650/1, Prague 8 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Josef Niedermeier' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , StAnton - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Claudia Gluchow' has 1 existing address(es)
   [0] Aidenbachstraße 42, München - lat:48.0978631, lon:11.5227716, needsGeocoding:false
✅ PRESERVED geocoding: Aidenbachstraße 42, München → (48.0978631, 11.5227716), needsGeocoding=false
🔍 Friend 'Tram Meo' has 1 existing address(es)
   [0] Baan Saraan, soi Sukhumvit 31,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Fritz (der Kleine) Keller' has 1 existing address(es)
   [0] , Southbroom - lat:-30.9179716, lon:30.321741, needsGeocoding:false
✅ PRESERVED geocoding: , Southbroom → (-30.9179716, 30.321741), needsGeocoding=false
🔍 Friend 'Matthias Albrecht' has 1 existing address(es)
   [0] Pickhuben 5, Hamburg - lat:53.5441123, lon:9.9940391, needsGeocoding:false
✅ PRESERVED geocoding: Pickhuben 5, Hamburg → (53.5441123, 9.9940391), needsGeocoding=false
🔍 Friend 'Elisa Weißmüller' has 2 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
   [1] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München → (48.1882173, 11.58567), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Christian Kredler' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Erin Streuli' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Georg Bernskoetter' has 1 existing address(es)
   [0] Herrenberger Str.140, Böblingen - lat:48.6756852, lon:8.9767011, needsGeocoding:false
✅ PRESERVED geocoding: Herrenberger Str.140, Böblingen → (48.6756852, 8.9767011), needsGeocoding=false
🔍 Friend 'Monique Morssink' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 30, Dornach → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hohenzollernstr. 11, München-Schwabing - lat:48.1595611, lon:11.5833266, needsGeocoding:false
✅ PRESERVED geocoding: Hohenzollernstr. 11, München-Schwabing → (48.1595611, 11.5833266), needsGeocoding=false
🔍 Friend 'Jaqueline Funke' has 1 existing address(es)
   [0] Treudelberg 82, Hamburg - lat:53.6737108, lon:10.0949048, needsGeocoding:false
✅ PRESERVED geocoding: Treudelberg 82, Hamburg → (53.6737108, 10.0949048), needsGeocoding=false
🔍 Friend 'Trang Tran' has 1 existing address(es)
   [0] 15 Ta My Duat, Son Tra District, Nang City - lat:16.0698866, lon:108.2342041, needsGeocoding:false
✅ PRESERVED geocoding: 15 Ta My Duat, Son Tra District, Nang City → (16.0698866, 108.2342041), needsGeocoding=false
🔍 Friend 'Jörg Seidel' has 1 existing address(es)
   [0] Hofmannstr. 51, München - lat:48.0959172, lon:11.5280425, needsGeocoding:false
✅ PRESERVED geocoding: Hofmannstr. 51, München → (48.0959172, 11.5280425), needsGeocoding=false
🔍 Friend 'Matthias Schipflinger' has 1 existing address(es)
   [0] Fürstenweg 176 (Airport), Innsbruck - lat:47.2577844, lon:11.354154, needsGeocoding:false
✅ PRESERVED geocoding: Fürstenweg 176 (Airport), Innsbruck → (47.2577844, 11.354154), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Tramsweg 4, Zams - lat:47.1569608, lon:10.5900307, needsGeocoding:false
✅ PRESERVED geocoding: Tramsweg 4, Zams → (47.1569608, 10.5900307), needsGeocoding=false
🔍 Friend 'Hermann Rieder' has 1 existing address(es)
   [0] Stiftgasse 23, Innsbruck - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 501 Lexington Avenue

at 47th Street

New York, NY 10017 - lat:40.7547302, lon:-73.9733208, needsGeocoding:false
✅ PRESERVED geocoding: 501 Lexington Avenue

at 47th Street

New York, NY 10017 → (40.7547302, -73.9733208), needsGeocoding=false
🔍 Friend 'Klaus Wallner' has 1 existing address(es)
   [0] Gut Keferloh, Keferloh 1b, Grasbrunn b. München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nicola Rossmeier' has 1 existing address(es)
   [0] Dornacher Strasse 3d, Feldkirchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kostas & Liana Karachiolis' has 2 existing address(es)
   [0] Mistralstr. 8, Lohof b. München - lat:48.2715808, lon:11.5711124, needsGeocoding:false
   [1] Mistralstr. 8, Lohof b. München - lat:48.2715808, lon:11.5711124, needsGeocoding:false
✅ PRESERVED geocoding: Mistralstr. 8, Lohof b. München → (48.2715808, 11.5711124), needsGeocoding=false
✅ PRESERVED geocoding: Mistralstr. 8, Lohof b. München → (48.2715808, 11.5711124), needsGeocoding=false
🔍 Friend 'Franziska Rappold' has 2 existing address(es)
   [0] Industriestraße 6-8, Vilsbiburg - lat:nil, lon:nil, needsGeocoding:true
   [1] , Vilsbiburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Đạt Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Via Bergamini, 11, Milano - lat:45.461684, lon:9.1943378, needsGeocoding:false
✅ PRESERVED geocoding: Via Bergamini, 11, Milano → (45.461684, 9.1943378), needsGeocoding=false
🔍 Friend 'Roland Hanne' has 1 existing address(es)
   [0] Körnerstr. 15, Hannover - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Constantin von Braun' has 2 existing address(es)
   [0] Dorotheenstrasse 31, Hamburg - lat:nil, lon:nil, needsGeocoding:true
   [1] Langelohe 65a, Elmshorn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Klaus Hasse' has 3 existing address(es)
   [0] Jägerstr. 51
Neben Gendarmenmarkt, Berlin - lat:nil, lon:nil, needsGeocoding:true
   [1] Uhlandstr. 167, Berlin - lat:nil, lon:nil, needsGeocoding:true
   [2] Jägerstr. 51

Neben Gendarmenmarkt, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Praha 1 - lat:50.0837315, lon:14.4281267, needsGeocoding:false
✅ PRESERVED geocoding: , Praha 1 → (50.0837315, 14.4281267), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Einsteinstr. 42, München - lat:48.1354653, lon:11.6010813, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinstr. 42, München → (48.1354653, 11.6010813), needsGeocoding=false
🔍 Friend 'Albert Claus' has 2 existing address(es)
   [0] Calle Hiniesta
51, Apt. 5, Sevilla - lat:nil, lon:nil, needsGeocoding:true
   [1] Calle Hiniesta

51, Apt. 5, Sevilla - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Elise Bidet' has 1 existing address(es)
   [0] , Valreaz - lat:44.383156, lon:4.9900646, needsGeocoding:false
✅ PRESERVED geocoding: , Valreaz → (44.383156, 4.9900646), needsGeocoding=false
🔍 Friend 'Sebastian Promitzer' has 1 existing address(es)
   [0] Burgstr. 22a, Zorneding bei München - lat:48.0945064, lon:11.8339433, needsGeocoding:false
✅ PRESERVED geocoding: Burgstr. 22a, Zorneding bei München → (48.0945064, 11.8339433), needsGeocoding=false
🔍 Friend 'Alex Preböck' has 1 existing address(es)
   [0] Hausen 16a, Kirchheim b. München 85551 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christin Sanft' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jean-Paul Tschumi' has 1 existing address(es)
   [0] Melody 2 Tower | N1 Dien Bien Phu Street | Ward 25, Binh Thanh District, Ho Chi Minh City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Radim ' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Hans Sachs Str 17, München - lat:48.1288091, lon:11.5698756, needsGeocoding:false
✅ PRESERVED geocoding: Hans Sachs Str 17, München → (48.1288091, 11.5698756), needsGeocoding=false
🔍 Friend 'Thomas Peisl' has 2 existing address(es)
   [0] Am Stadtpark 20, München - lat:48.1416871, lon:11.4515153, needsGeocoding:false
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Am Stadtpark 20, München → (48.1416871, 11.4515153), needsGeocoding=false
🔍 Friend 'Oliver Schniewind' has 2 existing address(es)
   [0] Jupiterstr. 13, Inning am Ammersee - lat:48.0705717, lon:11.1555464, needsGeocoding:false
   [1] Walter-Gropius-Str. 15, München - lat:48.1790365, lon:11.5950337, needsGeocoding:false
✅ PRESERVED geocoding: Jupiterstr. 13, Inning am Ammersee → (48.0705717, 11.1555464), needsGeocoding=false
✅ PRESERVED geocoding: Walter-Gropius-Str. 15, München → (48.1790365, 11.5950337), needsGeocoding=false
🔍 Friend 'Pavel Tomasek' has 1 existing address(es)
   [0] Sudomerská 9, Praha 3 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Grosse' has 1 existing address(es)
   [0] Landwehrstraße 60, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stéphanie Catala' has 2 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
   [1] Prinzregentenstrasse 56, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martin Klose' has 1 existing address(es)
   [0] , Bielefeld - lat:52.0223643, lon:8.5666139, needsGeocoding:false
✅ PRESERVED geocoding: , Bielefeld → (52.0223643, 8.5666139), needsGeocoding=false
🔍 Friend 'Lucia Kontermanova' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Richard Clarke' has 1 existing address(es)
   [0] Miladny Horakove 58
3rd Floor on the right, Praha 7 - lat:50.1001083, lon:14.425272, needsGeocoding:false
✅ PRESERVED geocoding: Miladny Horakove 58
3rd Floor on the right, Praha 7 → (50.1001083, 14.425272), needsGeocoding=false
🔍 Friend 'Peter Nietzer' has 1 existing address(es)
   [0] Haimhauser Strasse 5, München - lat:48.1624999, lon:11.5882075, needsGeocoding:false
✅ PRESERVED geocoding: Haimhauser Strasse 5, München → (48.1624999, 11.5882075), needsGeocoding=false
🔍 Friend 'Norbert Verbuecheln' has 1 existing address(es)
   [0] BarerStr 32, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martin Varendorff' has 2 existing address(es)
   [0] Ziegelstadelweg 2, Mittelstetten - lat:48.2449889, lon:11.0958234, needsGeocoding:false
   [1] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: Ziegelstadelweg 2, Mittelstetten → (48.2449889, 11.0958234), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Marius Gartner' has 1 existing address(es)
   [0] Graf-Eberstein-Str. 12, Baden-Baden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Zimmermann' has 1 existing address(es)
   [0] Am Wiesenhang 24, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Ehrmann' has 1 existing address(es)
   [0] Trogerstr. 40, München - lat:48.1393557, lon:11.6017256, needsGeocoding:false
✅ PRESERVED geocoding: Trogerstr. 40, München → (48.1393557, 11.6017256), needsGeocoding=false
🔍 Friend 'Leily Hekmat' has 1 existing address(es)
   [0] Prinzregentenstraße 70, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Na prikope 7, Praha - lat:50.0847761, lon:14.4240806, needsGeocoding:false
✅ PRESERVED geocoding: Na prikope 7, Praha → (50.0847761, 14.4240806), needsGeocoding=false
🔍 Friend 'Timo Krokowski' has 1 existing address(es)
   [0] 10th Floor, Golden Tower, 6 Nguyen Thi Minh Khai St., Ho Chi Minh City / Saigon - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Laurence Mennuni' has 1 existing address(es)
   [0] Boulevard Steve Biko, Villefontaine - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ilse Voss' has 1 existing address(es)
   [0] Rosenhäus'l, Berchtesgaden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bianca Geissler' has 1 existing address(es)
   [0] Maffeistraße 4, München - lat:48.1396368, lon:11.5752368, needsGeocoding:false
✅ PRESERVED geocoding: Maffeistraße 4, München → (48.1396368, 11.5752368), needsGeocoding=false
🔍 Friend 'Richard Stummer' has 1 existing address(es)
   [0] Nachodstr. 17, Berlin - lat:52.4951036, lon:13.332654, needsGeocoding:false
✅ PRESERVED geocoding: Nachodstr. 17, Berlin → (52.4951036, 13.332654), needsGeocoding=false
🔍 Friend 'Shona Fryxell' has 1 existing address(es)
   [0] St.-Cajetan-Str. 1, München - lat:48.121845, lon:11.5994041, needsGeocoding:false
✅ PRESERVED geocoding: St.-Cajetan-Str. 1, München → (48.121845, 11.5994041), needsGeocoding=false
🔍 Friend 'Hartmut Schaper' has 2 existing address(es)
   [0] , Erlangen - lat:49.5907616, lon:11.0063275, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: , Erlangen → (49.5907616, 11.0063275), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Alfred Merk' has 1 existing address(es)
   [0] Richard-Wagner-Str 75, Planegg - lat:48.1047777, lon:11.4336202, needsGeocoding:false
✅ PRESERVED geocoding: Richard-Wagner-Str 75, Planegg → (48.1047777, 11.4336202), needsGeocoding=false
🔍 Friend 'Dagmar Schneider' has 1 existing address(es)
   [0] Wastl-Witt-Str. 5, München 80689 - lat:48.1275678, lon:11.4725226, needsGeocoding:false
✅ PRESERVED geocoding: Wastl-Witt-Str. 5, München 80689 → (48.1275678, 11.4725226), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rumfordstraße 34, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Josef Eibl' has 1 existing address(es)
   [0] , Salzburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Constanze Nitsche' has 1 existing address(es)
   [0] Innstrasse 8, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kiên A' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Roman Pikola' has 1 existing address(es)
   [0] Na Hanspaulce 13, Praha 6 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sassa Katsaros' has 1 existing address(es)
   [0] Nawiakstr. 22, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Doikos' has 1 existing address(es)
   [0] Grillparzerstr 3,  - lat:48.13522793675475, lon:11.609737142163494, needsGeocoding:false
✅ PRESERVED geocoding: Grillparzerstr 3,  → (48.13522793675475, 11.609737142163494), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Amalienstr. 39, München - lat:48.1486135, lon:11.5771161, needsGeocoding:false
✅ PRESERVED geocoding: Amalienstr. 39, München → (48.1486135, 11.5771161), needsGeocoding=false
🔍 Friend 'Martin Schiemann' has 1 existing address(es)
   [0] Boschstr. 23a, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Herman Eibl' has 1 existing address(es)
   [0] 5440 Golling an der Salzach, Austria,  - lat:47.6015966, lon:13.1646332, needsGeocoding:false
✅ PRESERVED geocoding: 5440 Golling an der Salzach, Austria,  → (47.6015966, 13.1646332), needsGeocoding=false
🔍 Friend 'Christian Vils' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Wehntalerstraße 54, Dielsdorf - lat:47.478793, lon:8.454694, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Wehntalerstraße 54, Dielsdorf → (47.478793, 8.454694), needsGeocoding=false
🔍 Friend 'Adam Buckley' has 2 existing address(es)
   [0] Domagkstrasse 33
Haus 45, Munich - lat:48.1830775, lon:11.5969285, needsGeocoding:false
   [1] Domagkstrasse 33

Haus 45, Munich - lat:48.1830775, lon:11.5969285, needsGeocoding:false
✅ PRESERVED geocoding: Domagkstrasse 33
Haus 45, Munich → (48.1830775, 11.5969285), needsGeocoding=false
✅ PRESERVED geocoding: Domagkstrasse 33

Haus 45, Munich → (48.1830775, 11.5969285), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 11 Rue Simon-Le-Franc
Paris,  - lat:48.8601365, lon:2.3534273, needsGeocoding:false
✅ PRESERVED geocoding: 11 Rue Simon-Le-Franc
Paris,  → (48.8601365, 2.3534273), needsGeocoding=false
🔍 Friend 'Jeroen Vandamme' has 1 existing address(es)
   [0] , Lo - lat:51.2294415, lon:5.537222, needsGeocoding:false
✅ PRESERVED geocoding: , Lo → (51.2294415, 5.537222), needsGeocoding=false
🔍 Friend 'Holger Schmidt' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Joachim Himmer' has 1 existing address(es)
   [0] , Pullach - lat:48.0665731, lon:11.5172449, needsGeocoding:false
✅ PRESERVED geocoding: , Pullach → (48.0665731, 11.5172449), needsGeocoding=false
🔍 Friend 'Dieter Zimpel' has 1 existing address(es)
   [0] Fallmerayerstr. 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ngoc Truong Thi' has 1 existing address(es)
   [0] 3rd Floor, Indochina Riverside Tower 
74 Bach Dang, Hai Chau, DaNang - lat:16.0668174, lon:108.2201287, needsGeocoding:false
✅ PRESERVED geocoding: 3rd Floor, Indochina Riverside Tower 
74 Bach Dang, Hai Chau, DaNang → (16.0668174, 108.2201287), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Vodickova 29, Praha - lat:50.081247, lon:14.4245365, needsGeocoding:false
✅ PRESERVED geocoding: Vodickova 29, Praha → (50.081247, 14.4245365), needsGeocoding=false
🔍 Friend 'Leo Lordick' has 1 existing address(es)
   [0] Gaisbergstr. 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Farhud Mortazavi' has 2 existing address(es)
   [0] , Einsteinstr. 133 - lat:48.1367227, lon:11.6102628, needsGeocoding:false
   [1] Brienner Str. 7

Rückgebäude, München - lat:48.1427565, lon:11.5761306, needsGeocoding:false
✅ PRESERVED geocoding: , Einsteinstr. 133 → (48.1367227, 11.6102628), needsGeocoding=false
✅ PRESERVED geocoding: Brienner Str. 7

Rückgebäude, München → (48.1427565, 11.5761306), needsGeocoding=false
🔍 Friend 'Anja Weishaupt' has 1 existing address(es)
   [0] Frankfurter Str. 233

Gebäude TriForum

Eingang A2, Neu-Isenberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Aleksandar Stankovic' has 1 existing address(es)
   [0] Bad-Kreuther-Straße 8, München - lat:48.1210984, lon:11.6255028, needsGeocoding:false
✅ PRESERVED geocoding: Bad-Kreuther-Straße 8, München → (48.1210984, 11.6255028), needsGeocoding=false
🔍 Friend 'Eckard Baum' has 1 existing address(es)
   [0] Pobrezni 3, Praha 8 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ulrich Berger' has 1 existing address(es)
   [0] Wasserschloss Kochberg,  - lat:52.2446041, lon:13.80449, needsGeocoding:false
✅ PRESERVED geocoding: Wasserschloss Kochberg,  → (52.2446041, 13.80449), needsGeocoding=false
🔍 Friend 'Thuan Viet To' has 1 existing address(es)
   [0] Wohnung 506, Block 2.1, Nesthome Building, Chu Huy Man Street, Son Tra, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Hendel' has 1 existing address(es)
   [0] Hasso-Plattner-Ring 7, Walldorf - lat:49.2944654, lon:8.6360161, needsGeocoding:false
✅ PRESERVED geocoding: Hasso-Plattner-Ring 7, Walldorf → (49.2944654, 8.6360161), needsGeocoding=false
🔍 Friend 'Naji Chbeir' has 1 existing address(es)
   [0] 44-46 rue Bollinvillier, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Renate & Jonny Weissmüller' has 1 existing address(es)
   [0] Innstr. 6, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tony Buy' has 1 existing address(es)
   [0] QSoft Vietnam Building - 8 No3,
Dich Vong Area - Cau Giay District, Hanoi - lat:21.033908, lon:105.793935, needsGeocoding:false
✅ PRESERVED geocoding: QSoft Vietnam Building - 8 No3,
Dich Vong Area - Cau Giay District, Hanoi → (21.033908, 105.793935), needsGeocoding=false
🔍 Friend 'Dr. Beatris Zagrean ' has 1 existing address(es)
   [0] Max-planck-str.3, München - lat:48.1356807, lon:11.5969321, needsGeocoding:false
✅ PRESERVED geocoding: Max-planck-str.3, München → (48.1356807, 11.5969321), needsGeocoding=false
🔍 Friend 'Clemens Vedral' has 1 existing address(es)
   [0] Anzingerstraße 29, München - lat:48.1212371, lon:11.6105767, needsGeocoding:false
✅ PRESERVED geocoding: Anzingerstraße 29, München → (48.1212371, 11.6105767), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Piazza T. Grossi 3, Menaggio (Lago di Como) - lat:46.0201651, lon:9.2394252, needsGeocoding:false
✅ PRESERVED geocoding: Piazza T. Grossi 3, Menaggio (Lago di Como) → (46.0201651, 9.2394252), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Thierschplatz 5, München (Lehel) - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Markus Reischl' has 1 existing address(es)
   [0] Riesstrasse 25, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'René Gaudoin' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Toralf Schneider' has 2 existing address(es)
   [0] Ahornring 1, Waldstadt - lat:nil, lon:nil, needsGeocoding:true
   [1] Albert Einstein Ring 5, Kleinmachnow  Brandenburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gabriele Attenberger' has 2 existing address(es)
   [0] COM IT BLG SUP 1
Hofmannstr. 51, München - lat:nil, lon:nil, needsGeocoding:true
   [1] COM IT BLG SUP 1

Hofmannstr. 51, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dietmar Kahl' has 2 existing address(es)
   [0] Dresdenerstr. 10a, Landshut - lat:48.5703569, lon:12.2142746, needsGeocoding:false
   [1] Am Tucherpark 1, Munich - lat:48.1531158, lon:11.5970345, needsGeocoding:false
✅ PRESERVED geocoding: Dresdenerstr. 10a, Landshut → (48.5703569, 12.2142746), needsGeocoding=false
✅ PRESERVED geocoding: Am Tucherpark 1, Munich → (48.1531158, 11.5970345), needsGeocoding=false
🔍 Friend 'Patrick Bona' has 1 existing address(es)
   [0] Mozartallee 2 Viale Mozart, Brixen/Bressanone - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nicolaus Rössler' has 1 existing address(es)
   [0] Entenbachstr. 16, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Günter Boronowski' has 1 existing address(es)
   [0] Im Grund 14, Planegg bei München - lat:48.1003453, lon:11.4301958, needsGeocoding:false
✅ PRESERVED geocoding: Im Grund 14, Planegg bei München → (48.1003453, 11.4301958), needsGeocoding=false
🔍 Friend 'Trọng Võ' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andrew Payne' has 2 existing address(es)
   [0] Lichtstrasse 43 i, Köln - lat:nil, lon:nil, needsGeocoding:true
   [1] Schnurgasse 35, Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Gasser' has 2 existing address(es)
   [0] 
, Garching - lat:48.2511317, lon:11.6509667, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: 
, Garching → (48.2511317, 11.6509667), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Chiva Taffazoli' has 1 existing address(es)
   [0] , Valetta - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karl von Zwehl' has 1 existing address(es)
   [0] Habsburgerstr. 2/II, München - lat:48.1562049, lon:11.5781922, needsGeocoding:false
✅ PRESERVED geocoding: Habsburgerstr. 2/II, München → (48.1562049, 11.5781922), needsGeocoding=false
🔍 Friend 'Jörg Hartmann' has 1 existing address(es)
   [0] Rathausplatz 3-7, Bad Homburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernd Müller' has 1 existing address(es)
   [0] Rudolf-Diesel-Str. 12, Tuttlingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Peter Dalm' has 1 existing address(es)
   [0] , Pullach bei München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Champs Elysees

Metro Roosevelt, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Lauterbach' has 1 existing address(es)
   [0] , Nürnberg - lat:49.4544732, lon:11.0769372, needsGeocoding:false
✅ PRESERVED geocoding: , Nürnberg → (49.4544732, 11.0769372), needsGeocoding=false
🔍 Friend 'Christian Sill' has 1 existing address(es)
   [0] Schickardstrasse 32, Boeblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andrea Vestri' has 1 existing address(es)
   [0] St.-Cajetan-Str. 21, München - lat:48.1220516, lon:11.6016974, needsGeocoding:false
✅ PRESERVED geocoding: St.-Cajetan-Str. 21, München → (48.1220516, 11.6016974), needsGeocoding=false
🔍 Friend 'Balu Schmöller' has 1 existing address(es)
   [0] Langobardenstr. 6, München - lat:48.0918697, lon:11.5639981, needsGeocoding:false
✅ PRESERVED geocoding: Langobardenstr. 6, München → (48.0918697, 11.5639981), needsGeocoding=false
🔍 Friend 'Werner Löffler' has 1 existing address(es)
   [0] Schlehenweg 2, Bad Nauheim - lat:50.4029896, lon:8.7441713, needsGeocoding:false
✅ PRESERVED geocoding: Schlehenweg 2, Bad Nauheim → (50.4029896, 8.7441713), needsGeocoding=false
🔍 Friend 'Matúš Repka' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Kateřina Ludvíková' has 1 existing address(es)
   [0] Karlovo nám. 10, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Uli Schrempp' has 1 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München → (48.1882173, 11.58567), needsGeocoding=false
🔍 Friend 'Jens Horstmann' has 2 existing address(es)
   [0] Einsteinring 6, Dornach - lat:48.1483581, lon:11.6873357, needsGeocoding:false
   [1] Albert-Einstein-Str. 18, Neufahrn - lat:48.3074842, lon:11.6677704, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 6, Dornach → (48.1483581, 11.6873357), needsGeocoding=false
✅ PRESERVED geocoding: Albert-Einstein-Str. 18, Neufahrn → (48.3074842, 11.6677704), needsGeocoding=false
🔍 Friend 'Peter Hofschneider' has 1 existing address(es)
   [0] Nördl. Auffahrtsallee 65, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mia Tringale' has 1 existing address(es)
   [0] , Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Wirschmidt' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Sonnenstr. 25, München - lat:48.1353581, lon:11.5657501, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Sonnenstr. 25, München → (48.1353581, 11.5657501), needsGeocoding=false
🔍 Friend 'Nina Kohl' has 1 existing address(es)
   [0] Konrad-Zeltisstr 6b, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gerti Gründinger' has 1 existing address(es)
   [0] Fehwiesenstr. 112, München - lat:48.1249163, lon:11.6227981, needsGeocoding:false
✅ PRESERVED geocoding: Fehwiesenstr. 112, München → (48.1249163, 11.6227981), needsGeocoding=false
🔍 Friend 'Daniela Dusak' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Machi Anagnostopoulou' has 1 existing address(es)
   [0] Perikleous 12A, Syntagma Sg., Athens 10562 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Melanie Flunger' has 2 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
   [1] Frankfurter Ring 105a, Munich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Oettingenstr. 74, München - lat:48.1492714, lon:11.5950827, needsGeocoding:false
✅ PRESERVED geocoding: Oettingenstr. 74, München → (48.1492714, 11.5950827), needsGeocoding=false
🔍 Friend 'Jitka Schneeweissova' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Dušan Saiko' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Milad Maqsoodi' has 1 existing address(es)
   [0] Lindwurmstr. 5a, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Fuchs' has 1 existing address(es)
   [0] Weißenburger Platz 8, München - lat:48.1287198, lon:11.5967162, needsGeocoding:false
✅ PRESERVED geocoding: Weißenburger Platz 8, München → (48.1287198, 11.5967162), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rosenheimer Platz, München - lat:48.1306339, lon:11.5910188, needsGeocoding:false
✅ PRESERVED geocoding: Rosenheimer Platz, München → (48.1306339, 11.5910188), needsGeocoding=false
🔍 Friend 'Bernhard Netzer' has 1 existing address(es)
   [0] Neckartalstrasse 155, Stuttgart - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Petr Valach' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Anja Walter' has 1 existing address(es)
   [0] Allgäuer Straße 72, Reutte - lat:47.5002686, lon:10.7207708, needsGeocoding:false
✅ PRESERVED geocoding: Allgäuer Straße 72, Reutte → (47.5002686, 10.7207708), needsGeocoding=false
🔍 Friend 'Maximilian Greß' has 1 existing address(es)
   [0] Karl- Schmid- Str. 12, München - lat:48.133602, lon:11.6676128, needsGeocoding:false
✅ PRESERVED geocoding: Karl- Schmid- Str. 12, München → (48.133602, 11.6676128), needsGeocoding=false
🔍 Friend 'Marwan Bataineh' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Riesenfeldstr. 18, München - lat:48.1786889, lon:11.5645826, needsGeocoding:false
✅ PRESERVED geocoding: Riesenfeldstr. 18, München → (48.1786889, 11.5645826), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Utzschneiderstr. 6, München - lat:48.1339625, lon:11.5753568, needsGeocoding:false
✅ PRESERVED geocoding: Utzschneiderstr. 6, München → (48.1339625, 11.5753568), needsGeocoding=false
🔍 Friend 'Anja Schreiter' has 1 existing address(es)
   [0] Staudenrauchstr. 21,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Oliver Vossius' has 1 existing address(es)
   [0] Theatinerstraße 8/III (5 Höfe), München - lat:48.1399628, lon:11.5756427, needsGeocoding:false
✅ PRESERVED geocoding: Theatinerstraße 8/III (5 Höfe), München → (48.1399628, 11.5756427), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Westendstr. 179, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Rolf Lessing' has 2 existing address(es)
   [0] Deisenhofener Straße 16A, München - lat:48.114279, lon:11.5817262, needsGeocoding:false
   [1] Bretonischer Ring 3, Grasbrunn/Munich, Bavaria - lat:48.0998522, lon:11.7627457, needsGeocoding:false
✅ PRESERVED geocoding: Deisenhofener Straße 16A, München → (48.114279, 11.5817262), needsGeocoding=false
✅ PRESERVED geocoding: Bretonischer Ring 3, Grasbrunn/Munich, Bavaria → (48.0998522, 11.7627457), needsGeocoding=false
🔍 Friend 'Geraldine Ho' has 2 existing address(es)
   [0] 1 Benoi Place, Singapore - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Dorotheenstraße 65,

Mitte, Berlin - lat:52.5183829, lon:13.3865207, needsGeocoding:false
   [1] Dorotheenstraße 65,
Mitte, Berlin - lat:52.5183829, lon:13.3865207, needsGeocoding:false
✅ PRESERVED geocoding: Dorotheenstraße 65,

Mitte, Berlin → (52.5183829, 13.3865207), needsGeocoding=false
✅ PRESERVED geocoding: Dorotheenstraße 65,
Mitte, Berlin → (52.5183829, 13.3865207), needsGeocoding=false
🔍 Friend 'Caecilia Gemke' has 1 existing address(es)
   [0] Schickardstrasse 32, Boeblingen - lat:48.6780913, lon:8.9723357, needsGeocoding:false
✅ PRESERVED geocoding: Schickardstrasse 32, Boeblingen → (48.6780913, 8.9723357), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kaulbachstr. 48, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michal Perlik' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jan Dannenberg' has 1 existing address(es)
   [0] , Tegernsee - lat:47.7085783, lon:11.7570789, needsGeocoding:false
✅ PRESERVED geocoding: , Tegernsee → (47.7085783, 11.7570789), needsGeocoding=false
🔍 Friend 'Gregor Godbersen' has 1 existing address(es)
   [0] , München - lat:48.109359, lon:11.6925399, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.109359, 11.6925399), needsGeocoding=false
🔍 Friend 'Meike Leopold' has 1 existing address(es)
   [0] Konrad-Celtis-Straße 77, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heiko Leidorf' has 1 existing address(es)
   [0] 30, Pasir Panjang Road, #03-32 Mapletree Business City, 117440,  - lat:1.274815, lon:103.799111, needsGeocoding:false
✅ PRESERVED geocoding: 30, Pasir Panjang Road, #03-32 Mapletree Business City, 117440,  → (1.274815, 103.799111), needsGeocoding=false
🔍 Friend 'Martin Karmann' has 1 existing address(es)
   [0] Weltenburger Str. 4, München - lat:48.1406014, lon:11.6273952, needsGeocoding:false
✅ PRESERVED geocoding: Weltenburger Str. 4, München → (48.1406014, 11.6273952), needsGeocoding=false
🔍 Friend 'Luud Engels' has 1 existing address(es)
   [0] Damstraat 8, Roosendaal - lat:51.53156, lon:4.46209, needsGeocoding:false
✅ PRESERVED geocoding: Damstraat 8, Roosendaal → (51.53156, 4.46209), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Truong Sa street, DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Vítězná 5, Praha 5 - lat:50.0809531, lon:14.4072117, needsGeocoding:false
✅ PRESERVED geocoding: Vítězná 5, Praha 5 → (50.0809531, 14.4072117), needsGeocoding=false
🔍 Friend 'Arman Sharif' has 1 existing address(es)
   [0] 27 Anh Thong, Building 2
At Mango Pine, Da Nang - lat:16.0662743, lon:108.2310697, needsGeocoding:false
✅ PRESERVED geocoding: 27 Anh Thong, Building 2
At Mango Pine, Da Nang → (16.0662743, 108.2310697), needsGeocoding=false
🔍 Friend 'Hubert Haupt' has 1 existing address(es)
   [0] Gabriel-Max-Str. 19A, München - lat:48.0844964, lon:11.5517829, needsGeocoding:false
✅ PRESERVED geocoding: Gabriel-Max-Str. 19A, München → (48.0844964, 11.5517829), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Klenzestr. 62, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Held' has 1 existing address(es)
   [0] Geyerstr. 14, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Zara Valenti' has 1 existing address(es)
   [0] Steinstr. 24, München - lat:48.1329396, lon:11.5959335, needsGeocoding:false
✅ PRESERVED geocoding: Steinstr. 24, München → (48.1329396, 11.5959335), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hansastr. 44, München - lat:48.1315362, lon:11.5296058, needsGeocoding:false
✅ PRESERVED geocoding: Hansastr. 44, München → (48.1315362, 11.5296058), needsGeocoding=false
🔍 Friend 'Minh Lê' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nadine Gartner' has 1 existing address(es)
   [0] Spicherenstr. 12, München - lat:48.1309463, lon:11.6067297, needsGeocoding:false
✅ PRESERVED geocoding: Spicherenstr. 12, München → (48.1309463, 11.6067297), needsGeocoding=false
🔍 Friend 'Shermaine Sim' has 1 existing address(es)
   [0] 1 George Street #10-01, Singapore - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Trí Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Felix Sieghart' has 2 existing address(es)
   [0] Kidler 37, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Taunusstr.23, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Zahreddin' has 1 existing address(es)
   [0] Siegenburgerstr. 115, München - lat:48.1298819, lon:11.5179879, needsGeocoding:false
✅ PRESERVED geocoding: Siegenburgerstr. 115, München → (48.1298819, 11.5179879), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Mostecka 5, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Miki Saito' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Holländischer Brook 2, Hamburg - lat:53.545273, lon:9.9989324, needsGeocoding:false
✅ PRESERVED geocoding: Holländischer Brook 2, Hamburg → (53.545273, 9.9989324), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Via Cavouy 15, Roma - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Schwanenwik 30, Hamburg - lat:53.566744, lon:10.0167887, needsGeocoding:false
✅ PRESERVED geocoding: Schwanenwik 30, Hamburg → (53.566744, 10.0167887), needsGeocoding=false
🔍 Friend 'Werner Enders' has 1 existing address(es)
   [0] Eisnteinstr. 172, München - lat:48.1375563, lon:11.6229421, needsGeocoding:false
✅ PRESERVED geocoding: Eisnteinstr. 172, München → (48.1375563, 11.6229421), needsGeocoding=false
🔍 Friend 'Marco Günder' has 1 existing address(es)
   [0] , Wiesbaden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Schladming - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marko Graichen' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Christoph Wargitsch' has 1 existing address(es)
   [0] Ingolstädter Str. 92, Pfaffenhofen a.d. Ilm - lat:48.5421878, lon:11.5095522, needsGeocoding:false
✅ PRESERVED geocoding: Ingolstädter Str. 92, Pfaffenhofen a.d. Ilm → (48.5421878, 11.5095522), needsGeocoding=false
🔍 Friend 'Jochen Kopittke' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Josef Messner' has 1 existing address(es)
   [0] Meranerstraße - Via Merano 94a, Bolzano - lat:46.5060847, lon:11.2911089, needsGeocoding:false
✅ PRESERVED geocoding: Meranerstraße - Via Merano 94a, Bolzano → (46.5060847, 11.2911089), needsGeocoding=false
🔍 Friend 'Wolfgang Filser' has 2 existing address(es)
   [0] Schrammsweg 30, Hamburg - lat:nil, lon:nil, needsGeocoding:true
   [1] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Raphael Guggenmos' has 1 existing address(es)
   [0] Otl-Aicher-Straße 68, 80807 - lat:48.1840055, lon:11.5885879, needsGeocoding:false
✅ PRESERVED geocoding: Otl-Aicher-Straße 68, 80807 → (48.1840055, 11.5885879), needsGeocoding=false
🔍 Friend 'Pierluigi Emiliano' has 1 existing address(es)
   [0] Zeppelinstraße 2, Hallbergmoos - lat:48.3315696, lon:11.7363135, needsGeocoding:false
✅ PRESERVED geocoding: Zeppelinstraße 2, Hallbergmoos → (48.3315696, 11.7363135), needsGeocoding=false
🔍 Friend 'Dirk Bonsiepe' has 1 existing address(es)
   [0] Rheydter Straße 188, Mönchengladbach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bianca Knall' has 1 existing address(es)
   [0] Domstr. 10, Frankfurt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kazmairstraße 30, Munich - lat:48.1348567, lon:11.5413782, needsGeocoding:false
✅ PRESERVED geocoding: Kazmairstraße 30, Munich → (48.1348567, 11.5413782), needsGeocoding=false
🔍 Friend 'Hans Schmidt' has 1 existing address(es)
   [0] Kaskadenweg 70-82,, D-50226 Frechen - lat:50.9199041, lon:6.7920003, needsGeocoding:false
✅ PRESERVED geocoding: Kaskadenweg 70-82,, D-50226 Frechen → (50.9199041, 6.7920003), needsGeocoding=false
🔍 Friend 'Jan Prach' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Borivojova 53, Praha 3 - lat:50.0834191, lon:14.452588, needsGeocoding:false
✅ PRESERVED geocoding: Borivojova 53, Praha 3 → (50.0834191, 14.452588), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 126 Yen Bai, Hai Chau, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Ryckmanns' has 1 existing address(es)
   [0] Pariser Platz 4, München - lat:48.1282726, lon:11.599519, needsGeocoding:false
✅ PRESERVED geocoding: Pariser Platz 4, München → (48.1282726, 11.599519), needsGeocoding=false
🔍 Friend 'Markus Winkler' has 1 existing address(es)
   [0] , Stuttgart - lat:48.7752444, lon:9.177595, needsGeocoding:false
✅ PRESERVED geocoding: , Stuttgart → (48.7752444, 9.177595), needsGeocoding=false
🔍 Friend 'Irmgard Keldany' has 1 existing address(es)
   [0] , Zürich - lat:47.3717597, lon:8.5426102, needsGeocoding:false
✅ PRESERVED geocoding: , Zürich → (47.3717597, 8.5426102), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Burgstall 12, Mutters - lat:47.2270081, lon:11.3795513, needsGeocoding:false
✅ PRESERVED geocoding: Burgstall 12, Mutters → (47.2270081, 11.3795513), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Luzicka 20, Praha 2 - lat:50.0734244, lon:14.4447109, needsGeocoding:false
✅ PRESERVED geocoding: Luzicka 20, Praha 2 → (50.0734244, 14.4447109), needsGeocoding=false
🔍 Friend 'Andrew Kelly' has 1 existing address(es)
   [0] Ludwig-Duerr Strasse 6a, Icking - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martina Bodemann' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sona Sloncikova' has 2 existing address(es)
   [0] Pod Lázní 4, Praha 4 - lat:50.0583515, lon:14.4422429, needsGeocoding:false
   [1] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: Pod Lázní 4, Praha 4 → (50.0583515, 14.4422429), needsGeocoding=false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Gerhard Weger' has 1 existing address(es)
   [0] Meraner Str. 8, Innsbruck - lat:47.2648706, lon:11.3966871, needsGeocoding:false
✅ PRESERVED geocoding: Meraner Str. 8, Innsbruck → (47.2648706, 11.3966871), needsGeocoding=false
🔍 Friend 'Joel Bousquet' has 2 existing address(es)
   [0] Reitmorstr. 21
Ecke Liebigstr., München - lat:48.1404387, lon:11.5925483, needsGeocoding:false
   [1] Reitmorstr. 21

Ecke Liebigstr., München - lat:48.1404387, lon:11.5925483, needsGeocoding:false
✅ PRESERVED geocoding: Reitmorstr. 21
Ecke Liebigstr., München → (48.1404387, 11.5925483), needsGeocoding=false
✅ PRESERVED geocoding: Reitmorstr. 21

Ecke Liebigstr., München → (48.1404387, 11.5925483), needsGeocoding=false
🔍 Friend 'Familie Hoffmann' has 1 existing address(es)
   [0] Alfred-Pongratz-Weg 6, München - lat:48.0955735, lon:11.6372919, needsGeocoding:false
✅ PRESERVED geocoding: Alfred-Pongratz-Weg 6, München → (48.0955735, 11.6372919), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 6, Av Bosquet, Paris 7eme - lat:48.8607594, lon:2.3022938, needsGeocoding:false
✅ PRESERVED geocoding: 6, Av Bosquet, Paris 7eme → (48.8607594, 2.3022938), needsGeocoding=false
🔍 Friend 'Norbert Horvath' has 1 existing address(es)
   [0] , Toronto - lat:43.6516053, lon:-79.3831254, needsGeocoding:false
✅ PRESERVED geocoding: , Toronto → (43.6516053, -79.3831254), needsGeocoding=false
🔍 Friend 'André Ortloff' has 1 existing address(es)
   [0] Intershop Tower, Jena - lat:36.3118834, lon:30.1607071, needsGeocoding:false
✅ PRESERVED geocoding: Intershop Tower, Jena → (36.3118834, 30.1607071), needsGeocoding=false
🔍 Friend 'Anna Italiano' has 1 existing address(es)
   [0] Arnulfstr. 59, Munich - lat:48.1456472, lon:11.5379184, needsGeocoding:false
✅ PRESERVED geocoding: Arnulfstr. 59, Munich → (48.1456472, 11.5379184), needsGeocoding=false
🔍 Friend 'Andi (Stewardess) ' has 1 existing address(es)
   [0] Fasanenstr. 56, Unterhaching 82008 - lat:48.0735495, lon:11.6090185, needsGeocoding:false
✅ PRESERVED geocoding: Fasanenstr. 56, Unterhaching 82008 → (48.0735495, 11.6090185), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ralf Kliemann' has 1 existing address(es)
   [0] Barmbecker Str. 12, Hamburg - lat:53.5832169, lon:10.0199039, needsGeocoding:false
✅ PRESERVED geocoding: Barmbecker Str. 12, Hamburg → (53.5832169, 10.0199039), needsGeocoding=false
🔍 Friend 'Elena Mitchenko' has 1 existing address(es)
   [0] Rybna 24, Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Wolfram Kriesing' has 1 existing address(es)
   [0] Richard-Strauß-Str. 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eric Lorentz' has 1 existing address(es)
   [0] , Grenoble - lat:45.1870781, lon:5.7306849, needsGeocoding:false
✅ PRESERVED geocoding: , Grenoble → (45.1870781, 5.7306849), needsGeocoding=false
🔍 Friend 'Rainer Schulten' has 2 existing address(es)
   [0] Cermakova 7

App 4, 2. Stock, 12000  Praha 2 - lat:nil, lon:nil, needsGeocoding:true
   [1] Cermakova 7
App 4, 2. Stock, 12000  Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Elsässer Straße 23, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Lutze' has 1 existing address(es)
   [0] Schmied-Kochel-Strasse 6, München - lat:48.1221842, lon:11.5462473, needsGeocoding:false
✅ PRESERVED geocoding: Schmied-Kochel-Strasse 6, München → (48.1221842, 11.5462473), needsGeocoding=false
🔍 Friend 'Michel ' has 1 existing address(es)
   [0] , Hue - lat:16.4637144, lon:107.5908438, needsGeocoding:false
✅ PRESERVED geocoding: , Hue → (16.4637144, 107.5908438), needsGeocoding=false
🔍 Friend 'Bettina & Jürgen Lochner' has 2 existing address(es)
   [0] Pforzheimerstr. 240, Stuttgart - Weilimdorf - lat:48.81476, lon:9.1260106, needsGeocoding:false
   [1] Senefelderstr. 24, Stuttgart - lat:48.7723912, lon:9.163092, needsGeocoding:false
✅ PRESERVED geocoding: Pforzheimerstr. 240, Stuttgart - Weilimdorf → (48.81476, 9.1260106), needsGeocoding=false
✅ PRESERVED geocoding: Senefelderstr. 24, Stuttgart → (48.7723912, 9.163092), needsGeocoding=false
🔍 Friend 'Hưng Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Schwandt' has 1 existing address(es)
   [0] Matthias-Brueggen-Str. 148, Köln - lat:50.9870412, lon:6.8830182, needsGeocoding:false
✅ PRESERVED geocoding: Matthias-Brueggen-Str. 148, Köln → (50.9870412, 6.8830182), needsGeocoding=false
🔍 Friend 'Oliver Langer' has 2 existing address(es)
   [0] Am neuen Teich 7, Arenburg - lat:53.6666965, lon:10.2199039, needsGeocoding:false
   [1] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: Am neuen Teich 7, Arenburg → (53.6666965, 10.2199039), needsGeocoding=false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend ' Hakverdi' has 1 existing address(es)
   [0] Görestr. 31, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Duong Hoang' has 1 existing address(es)
   [0] , Hanoi - lat:21.028382, lon:105.853734, needsGeocoding:false
✅ PRESERVED geocoding: , Hanoi → (21.028382, 105.853734), needsGeocoding=false
🔍 Friend 'Michaela Balousová' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Filip Rachunek' has 1 existing address(es)
   [0] U posty 8, Praha 8 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Zangl' has 1 existing address(es)
   [0] 1,2 An Thuong 33, Da Nang - lat:16.0499843, lon:108.2480323, needsGeocoding:false
✅ PRESERVED geocoding: 1,2 An Thuong 33, Da Nang → (16.0499843, 108.2480323), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schellingstr. 56, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christof Korth' has 1 existing address(es)
   [0] Lützenkirchenstr.5a, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hélène Grandsire' has 1 existing address(es)
   [0] Am Blumengarten 27, 81547 - lat:48.0979454, lon:11.5773736, needsGeocoding:false
✅ PRESERVED geocoding: Am Blumengarten 27, 81547 → (48.0979454, 11.5773736), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Záběhlická, Praha 10 - lat:50.056228195993484, lon:14.477614270059757, needsGeocoding:false
✅ PRESERVED geocoding: Záběhlická, Praha 10 → (50.056228195993484, 14.477614270059757), needsGeocoding=false
🔍 Friend 'Hai Duong' has 1 existing address(es)
   [0] 161 Le Van si, DaNang - lat:16.0221271, lon:108.25143, needsGeocoding:false
✅ PRESERVED geocoding: 161 Le Van si, DaNang → (16.0221271, 108.25143), needsGeocoding=false
🔍 Friend 'Kira Hartmann' has 1 existing address(es)
   [0] Bavariaring 34, München - lat:48.1289414, lon:11.553011, needsGeocoding:false
✅ PRESERVED geocoding: Bavariaring 34, München → (48.1289414, 11.553011), needsGeocoding=false
🔍 Friend 'Antoine De La Mardière' has 2 existing address(es)
   [0] 53- 55 Hoang Van Thu St., Hai Chau District - lat:nil, lon:nil, needsGeocoding:true
   [1] 6 Tran Nhan Tong St, Tho Quang Ward - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefan Paulke' has 2 existing address(es)
   [0] Emil-Geis-Str. 9, München - lat:48.104016, lon:11.5440527, needsGeocoding:false
   [1] Fuggerstr. 7, Diessen - lat:47.9813311, lon:10.9970589, needsGeocoding:false
✅ PRESERVED geocoding: Emil-Geis-Str. 9, München → (48.104016, 11.5440527), needsGeocoding=false
✅ PRESERVED geocoding: Fuggerstr. 7, Diessen → (47.9813311, 10.9970589), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kreittmayerstr. 13a, München - lat:48.1509068, lon:11.5556635, needsGeocoding:false
✅ PRESERVED geocoding: Kreittmayerstr. 13a, München → (48.1509068, 11.5556635), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Leopoldstrasse 72, München - lat:48.1602947, lon:11.5862174, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstrasse 72, München → (48.1602947, 11.5862174), needsGeocoding=false
🔍 Friend 'Michele Nicolosi' has 2 existing address(es)
   [0] Wehntalerstraße 54, Dielsdorf - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sabine Dresen' has 1 existing address(es)
   [0] Blutenburgstr. 98, München - lat:48.1501364, lon:11.5395621, needsGeocoding:false
✅ PRESERVED geocoding: Blutenburgstr. 98, München → (48.1501364, 11.5395621), needsGeocoding=false
🔍 Friend 'Libor Kotouc' has 2 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
   [1] Mezilesi 2056, Praha 9 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heinz Robens' has 1 existing address(es)
   [0] Freischützstr. 106, München 81927 - lat:48.1707694, lon:11.6445043, needsGeocoding:false
✅ PRESERVED geocoding: Freischützstr. 106, München 81927 → (48.1707694, 11.6445043), needsGeocoding=false
🔍 Friend 'Hương Kpa' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sandra Holzberger' has 1 existing address(es)
   [0] Michael-Huber-Weg 3,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jan Pruner' has 2 existing address(es)
   [0] Spojovací 377
250 90 Jirny, Praha-Východ - lat:50.1154797, lon:14.7037864, needsGeocoding:false
   [1] Spojovací 377

250 90 Jirny, Praha-Východ - lat:50.1154797, lon:14.7037864, needsGeocoding:false
✅ PRESERVED geocoding: Spojovací 377
250 90 Jirny, Praha-Východ → (50.1154797, 14.7037864), needsGeocoding=false
✅ PRESERVED geocoding: Spojovací 377

250 90 Jirny, Praha-Východ → (50.1154797, 14.7037864), needsGeocoding=false
🔍 Friend 'Christine & Patrick Praxmarer' has 1 existing address(es)
   [0] Stadle 566, St Anton am Arlberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Clelia Teissier' has 1 existing address(es)
   [0] , Paris - lat:48.8567879, lon:2.3510768, needsGeocoding:false
✅ PRESERVED geocoding: , Paris → (48.8567879, 2.3510768), needsGeocoding=false
🔍 Friend 'Ludwig (Lucky) Eigl' has 1 existing address(es)
   [0] Dr. Walter von Miller-Str. 32, München - lat:48.0934127, lon:11.6504665, needsGeocoding:false
✅ PRESERVED geocoding: Dr. Walter von Miller-Str. 32, München → (48.0934127, 11.6504665), needsGeocoding=false
🔍 Friend 'Christian Ehlermann' has 1 existing address(es)
   [0] Arnulfstr. 59, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Leonrodstr. 20, München - lat:48.1534861, lon:11.5365275, needsGeocoding:false
✅ PRESERVED geocoding: Leonrodstr. 20, München → (48.1534861, 11.5365275), needsGeocoding=false
🔍 Friend 'Bettina Lamghari' has 1 existing address(es)
   [0] Schwanthalerstr. 127, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Gassl' has 1 existing address(es)
   [0] Goldmarkstr. 83, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Innere Wiener Str. 48, München - lat:48.1340393, lon:11.5964707, needsGeocoding:false
✅ PRESERVED geocoding: Innere Wiener Str. 48, München → (48.1340393, 11.5964707), needsGeocoding=false
🔍 Friend 'Delphine Simon' has 1 existing address(es)
   [0] , Kyreinstr. 13 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Haider' has 1 existing address(es)
   [0] Hedwig-Dransfeld-Allee 28, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heiko Grasse' has 1 existing address(es)
   [0] Wilhelm-Humser-Str. 18a, Grünwald bei München - lat:48.0398924, lon:11.5356591, needsGeocoding:false
✅ PRESERVED geocoding: Wilhelm-Humser-Str. 18a, Grünwald bei München → (48.0398924, 11.5356591), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Sonnenstraße 2, Feldkirchen-Riem bei München - lat:48.147929, lon:11.7352956, needsGeocoding:false
✅ PRESERVED geocoding: Sonnenstraße 2, Feldkirchen-Riem bei München → (48.147929, 11.7352956), needsGeocoding=false
🔍 Friend 'Christian Weber' has 1 existing address(es)
   [0] Feldstr. 11, Rottach-Egern - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Spandolf' has 2 existing address(es)
   [0] Frankfurter Ring 35
Ecke Schleißheimer Str., München - lat:48.1880266, lon:11.5742044, needsGeocoding:false
   [1] Frankfurter Ring 35

Ecke Schleißheimer Str., München - lat:48.1880266, lon:11.5742044, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 35
Ecke Schleißheimer Str., München → (48.1880266, 11.5742044), needsGeocoding=false
✅ PRESERVED geocoding: Frankfurter Ring 35

Ecke Schleißheimer Str., München → (48.1880266, 11.5742044), needsGeocoding=false
🔍 Friend 'Georg ' has 1 existing address(es)
   [0] , Tauglboden - lat:47.6629127, lon:13.2387081, needsGeocoding:false
✅ PRESERVED geocoding: , Tauglboden → (47.6629127, 13.2387081), needsGeocoding=false
🔍 Friend 'Hanna / Dennis Fiedler / Stötzel' has 1 existing address(es)
   [0] Sprunerstr 8a, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 33, rue St Andre-des-Arts, Paris - lat:48.8532526, lon:2.3417933, needsGeocoding:false
✅ PRESERVED geocoding: 33, rue St Andre-des-Arts, Paris → (48.8532526, 2.3417933), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schützenstraße 5, München - lat:48.1396243, lon:11.5629483, needsGeocoding:false
✅ PRESERVED geocoding: Schützenstraße 5, München → (48.1396243, 11.5629483), needsGeocoding=false
🔍 Friend 'Willy & Sigi Schwind' has 1 existing address(es)
   [0] Scharitzerstr. 39, Linz - lat:48.2971176, lon:14.2984284, needsGeocoding:false
✅ PRESERVED geocoding: Scharitzerstr. 39, Linz → (48.2971176, 14.2984284), needsGeocoding=false
🔍 Friend 'Alex Cuva' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Klemens Richter' has 1 existing address(es)
   [0] Groffstr. 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Joerg Hesske' has 1 existing address(es)
   [0] Freisinger Str. 9, München - lat:48.2893675, lon:11.5845747, needsGeocoding:false
✅ PRESERVED geocoding: Freisinger Str. 9, München → (48.2893675, 11.5845747), needsGeocoding=false
🔍 Friend 'Judith Jansen' has 1 existing address(es)
   [0] Hofmannstr. 51, München - lat:48.0959172, lon:11.5280425, needsGeocoding:false
✅ PRESERVED geocoding: Hofmannstr. 51, München → (48.0959172, 11.5280425), needsGeocoding=false
🔍 Friend 'Miriam Horstbrink' has 1 existing address(es)
   [0] Im Großen Vorwerk 27, Herford - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christoph Peters' has 2 existing address(es)
   [0] DC Tower, Unit 501, 5th Floor, 111D Ly Chinh Thang St.,
Ward 7, Dist. 3, HCMC - lat:nil, lon:nil, needsGeocoding:true
   [1] North Star Building, Suite 501, 5th Floor, 4 Da Tuong, Hanoi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Oliver Hartl' has 1 existing address(es)
   [0] Arnulfstr. 50, München - lat:48.1428916, lon:11.5525499, needsGeocoding:false
✅ PRESERVED geocoding: Arnulfstr. 50, München → (48.1428916, 11.5525499), needsGeocoding=false
🔍 Friend 'Francoise Pertuisot' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jürgen Meinelt' has 1 existing address(es)
   [0] Stefan-George-Ring 6, München - lat:48.1406317, lon:11.6494805, needsGeocoding:false
✅ PRESERVED geocoding: Stefan-George-Ring 6, München → (48.1406317, 11.6494805), needsGeocoding=false
🔍 Friend 'Marcus Hantschel' has 2 existing address(es)
   [0] Kahlenbergerstrasse 61/5, Wien - lat:nil, lon:nil, needsGeocoding:true
   [1] Döblinger Hauptstrasse 60/10, Wien - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Graef' has 2 existing address(es)
   [0] Krumbacherstr. 9a, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Poppenbütteler Chaussee 53, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Yvonne Hickethier' has 1 existing address(es)
   [0] Polkostr. 40, München - lat:48.1607656, lon:11.4486435, needsGeocoding:false
✅ PRESERVED geocoding: Polkostr. 40, München → (48.1607656, 11.4486435), needsGeocoding=false
🔍 Friend 'Sebastian Dahm' has 1 existing address(es)
   [0] 30 Pasir Panjang Road, Singapore - lat:1.274815, lon:103.799111, needsGeocoding:false
✅ PRESERVED geocoding: 30 Pasir Panjang Road, Singapore → (1.274815, 103.799111), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Eggenfeldenerstr. 94, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Edouard DANEL' has 1 existing address(es)
   [0] 94-96 rue de Paris, BOULOGNE BILLANCOURT - lat:48.8410057, lon:2.2412279, needsGeocoding:false
✅ PRESERVED geocoding: 94-96 rue de Paris, BOULOGNE BILLANCOURT → (48.8410057, 2.2412279), needsGeocoding=false
🔍 Friend 'Kathrin Bruchmann' has 2 existing address(es)
   [0] 20, Avenue Appia, Geneve 27 - lat:46.2329548, lon:6.1346412, needsGeocoding:false
   [1] Rue du Vidollet 27

4. Stock, Geneve - lat:46.216982, lon:6.136487, needsGeocoding:false
✅ PRESERVED geocoding: 20, Avenue Appia, Geneve 27 → (46.2329548, 6.1346412), needsGeocoding=false
✅ PRESERVED geocoding: Rue du Vidollet 27

4. Stock, Geneve → (46.216982, 6.136487), needsGeocoding=false
🔍 Friend 'Katharina Orth' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Wolf und Amélie van Lengerich' has 1 existing address(es)
   [0] Im Soratfeld 2, Lichtenau - lat:51.6126648, lon:8.8880408, needsGeocoding:false
✅ PRESERVED geocoding: Im Soratfeld 2, Lichtenau → (51.6126648, 8.8880408), needsGeocoding=false
🔍 Friend 'Richard Wilhelm' has 1 existing address(es)
   [0] Schulze-Delitzsch-Straße 28, Stuttgart - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karl-Wilhelm Schick' has 1 existing address(es)
   [0] Kurfürstenstr. 7, München - lat:48.153834, lon:11.5761699, needsGeocoding:false
✅ PRESERVED geocoding: Kurfürstenstr. 7, München → (48.153834, 11.5761699), needsGeocoding=false
🔍 Friend 'Jhonny ' has 1 existing address(es)
   [0] , Innsbruck - lat:47.265633, lon:11.3942118, needsGeocoding:false
✅ PRESERVED geocoding: , Innsbruck → (47.265633, 11.3942118), needsGeocoding=false
🔍 Friend 'Thomas Gotschall' has 1 existing address(es)
   [0] Isarstraße 3, Baierbrunn - lat:48.0275617, lon:11.4937774, needsGeocoding:false
✅ PRESERVED geocoding: Isarstraße 3, Baierbrunn → (48.0275617, 11.4937774), needsGeocoding=false
🔍 Friend 'Ferdinand Kumminger' has 1 existing address(es)
   [0] Bahnhofstr. 9, Teisendorf - lat:47.8503615, lon:12.8275188, needsGeocoding:false
✅ PRESERVED geocoding: Bahnhofstr. 9, Teisendorf → (47.8503615, 12.8275188), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hackenstraße 6-8, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Yannick Luxembourg' has 1 existing address(es)
   [0] Wesndonkstr. 7, München - lat:48.1650036, lon:11.6283573, needsGeocoding:false
✅ PRESERVED geocoding: Wesndonkstr. 7, München → (48.1650036, 11.6283573), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Balanstr. 23, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Engels' has 1 existing address(es)
   [0] , Guangzhou - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Detlef Engelbrecht' has 1 existing address(es)
   [0] Millerntorplatz 1, Hamburg - lat:53.5503539, lon:9.9681311, needsGeocoding:false
✅ PRESERVED geocoding: Millerntorplatz 1, Hamburg → (53.5503539, 9.9681311), needsGeocoding=false
🔍 Friend 'Tomáš Petr' has 2 existing address(es)
   [0] U Klikovky 21, Praha 5 - lat:nil, lon:nil, needsGeocoding:true
   [1] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hellend Nasution' has 1 existing address(es)
   [0] , FRankfurt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Cédric Chavy' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 30/7 Tran Phu Street, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Quốc Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Thomas Böhme' has 2 existing address(es)
   [0] Am Falkenberg 103, Berlin - lat:52.4137712, lon:13.5626554, needsGeocoding:false
   [1] Volmerstrasse 9b, Berlin - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Am Falkenberg 103, Berlin → (52.4137712, 13.5626554), needsGeocoding=false
🔍 Friend 'Hana Exlerová' has 1 existing address(es)
   [0] Narodni trida 9, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephen Rommel' has 1 existing address(es)
   [0] Herrenberger Strasse 140, Boeblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Sommerstr. 39, München-Giesing - lat:48.1191828, lon:11.5715236, needsGeocoding:false
✅ PRESERVED geocoding: Sommerstr. 39, München-Giesing → (48.1191828, 11.5715236), needsGeocoding=false
🔍 Friend 'Hagen Fisbeck' has 3 existing address(es)
   [0] , Düsseldorf - lat:51.316335, lon:6.7558187, needsGeocoding:false
   [1] Am Mühlenkamp 13b, Düsseldorf - lat:51.3132544, lon:6.7474741, needsGeocoding:false
   [2] Am Mühlenkamp 13b, Düsseldorf - lat:51.3132544, lon:6.7474741, needsGeocoding:false
✅ PRESERVED geocoding: , Düsseldorf → (51.316335, 6.7558187), needsGeocoding=false
✅ PRESERVED geocoding: Am Mühlenkamp 13b, Düsseldorf → (51.3132544, 6.7474741), needsGeocoding=false
✅ PRESERVED geocoding: Am Mühlenkamp 13b, Düsseldorf → (51.3132544, 6.7474741), needsGeocoding=false
🔍 Friend 'Denniz Kenber' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Petr Silhanek' has 1 existing address(es)
   [0] Lipova 72, Modletice - lat:49.9721952, lon:14.6142933, needsGeocoding:false
✅ PRESERVED geocoding: Lipova 72, Modletice → (49.9721952, 14.6142933), needsGeocoding=false
🔍 Friend ' Kossu' has 1 existing address(es)
   [0] Flurstr. 8, München - lat:48.1337276, lon:11.6066201, needsGeocoding:false
✅ PRESERVED geocoding: Flurstr. 8, München → (48.1337276, 11.6066201), needsGeocoding=false
🔍 Friend 'Petr Novotnik' has 1 existing address(es)
   [0] Chodska 7, Karlovy Vary - lat:50.2344738, lon:12.8838702, needsGeocoding:false
✅ PRESERVED geocoding: Chodska 7, Karlovy Vary → (50.2344738, 12.8838702), needsGeocoding=false
🔍 Friend 'Oliver Thum' has 1 existing address(es)
   [0] Maximilianstr. 14, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ovidiu Bretan' has 1 existing address(es)
   [0] Kriegerstr. 4a, Germering - lat:48.1261246, lon:11.3651923, needsGeocoding:false
✅ PRESERVED geocoding: Kriegerstr. 4a, Germering → (48.1261246, 11.3651923), needsGeocoding=false
🔍 Friend 'Michael Ripke' has 1 existing address(es)
   [0] Domagkstraße 34, München - lat:48.1827548, lon:11.5964654, needsGeocoding:false
✅ PRESERVED geocoding: Domagkstraße 34, München → (48.1827548, 11.5964654), needsGeocoding=false
🔍 Friend 'Jörg Krumbiegel' has 1 existing address(es)
   [0] Brauerstraße 48, Karlruhe - lat:48.9996995, lon:8.3856923, needsGeocoding:false
✅ PRESERVED geocoding: Brauerstraße 48, Karlruhe → (48.9996995, 8.3856923), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Jeremiasova 1127/5, Praha - Stodulky - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Manfred Wulfert' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Annemarie DAgostino' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jiri Felbab' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Erwin Hanslik' has 1 existing address(es)
   [0] U Prasne brany 1, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dietmar Wyhs' has 1 existing address(es)
   [0] Kreuzbühelgasse 7, Landeck - lat:47.1410555, lon:10.5698225, needsGeocoding:false
✅ PRESERVED geocoding: Kreuzbühelgasse 7, Landeck → (47.1410555, 10.5698225), needsGeocoding=false
🔍 Friend 'Claudia Steiner' has 1 existing address(es)
   [0] Tulpenstr. 3, Eggstätt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Steffen Dockhorn' has 1 existing address(es)
   [0] , Böblingen - lat:48.6852716, lon:9.0094477, needsGeocoding:false
✅ PRESERVED geocoding: , Böblingen → (48.6852716, 9.0094477), needsGeocoding=false
🔍 Friend 'Martin Christa' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mohammad Bonakdar' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Sang Huỳnh' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heiko Erhardt' has 1 existing address(es)
   [0] Frankfurter Ring 133A, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Carsten-Rehder-Str. 71, Hamburg - lat:53.5445283, lon:9.9465773, needsGeocoding:false
✅ PRESERVED geocoding: Carsten-Rehder-Str. 71, Hamburg → (53.5445283, 9.9465773), needsGeocoding=false
🔍 Friend 'Trinh Tran' has 1 existing address(es)
   [0] 159 Đ. Võ Nguyên Giáp, Thảo Điền, Quận 2, Hồ Chí Minh - lat:10.8216935, lon:106.8311384, needsGeocoding:false
✅ PRESERVED geocoding: 159 Đ. Võ Nguyên Giáp, Thảo Điền, Quận 2, Hồ Chí Minh → (10.8216935, 106.8311384), needsGeocoding=false
🔍 Friend 'Klaus Peter Hartmann' has 1 existing address(es)
   [0] Mühldorferstr. 25, München - lat:48.1272339, lon:11.6141894, needsGeocoding:false
✅ PRESERVED geocoding: Mühldorferstr. 25, München → (48.1272339, 11.6141894), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Jägerweg 14, Marquartstein - lat:47.7655788, lon:12.4399948, needsGeocoding:false
✅ PRESERVED geocoding: Jägerweg 14, Marquartstein → (47.7655788, 12.4399948), needsGeocoding=false
🔍 Friend 'Emmanuelle Enard' has 1 existing address(es)
   [0] 28, rue Casimir Perrier, Vizille - lat:45.0764106, lon:5.7720577, needsGeocoding:false
✅ PRESERVED geocoding: 28, rue Casimir Perrier, Vizille → (45.0764106, 5.7720577), needsGeocoding=false
🔍 Friend 'Christian Voss' has 1 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München → (48.1882173, 11.58567), needsGeocoding=false
🔍 Friend 'Rolf Roeßing' has 2 existing address(es)
   [0] Wiesenstr. 45, Kempen - lat:51.359851, lon:6.4167563, needsGeocoding:false
   [1] , Köln - lat:50.9375229, lon:6.95948, needsGeocoding:false
✅ PRESERVED geocoding: Wiesenstr. 45, Kempen → (51.359851, 6.4167563), needsGeocoding=false
✅ PRESERVED geocoding: , Köln → (50.9375229, 6.95948), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Christoph Mann' has 1 existing address(es)
   [0] Thurn-und-Taxis-Platz 6, Frankfurt a.M. - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefan Lipowsky' has 2 existing address(es)
   [0] Waldstr. 8, Gröbenzell - lat:48.2041451, lon:11.3714944, needsGeocoding:false
   [1] Robert-Bürkle-Str. 1, Ismaning - lat:48.2286631, lon:11.6858909, needsGeocoding:false
✅ PRESERVED geocoding: Waldstr. 8, Gröbenzell → (48.2041451, 11.3714944), needsGeocoding=false
✅ PRESERVED geocoding: Robert-Bürkle-Str. 1, Ismaning → (48.2286631, 11.6858909), needsGeocoding=false
🔍 Friend ' Stummer/Moayedi' has 1 existing address(es)
   [0] Nassauische Str. 59, Berlin - lat:52.4921708, lon:13.3266827, needsGeocoding:false
✅ PRESERVED geocoding: Nassauische Str. 59, Berlin → (52.4921708, 13.3266827), needsGeocoding=false
🔍 Friend 'King Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Reutte - lat:47.4891445, lon:10.7183374, needsGeocoding:false
✅ PRESERVED geocoding: , Reutte → (47.4891445, 10.7183374), needsGeocoding=false
🔍 Friend 'Jörg Spamer' has 1 existing address(es)
   [0] , Frankfurt am Main - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Atila Kesenek' has 1 existing address(es)
   [0] Humboldtstrasse 32, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Quang Ngô' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Vogelgesang' has 1 existing address(es)
   [0] , Rosenheimerstr. 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Cihelna 2b, Praha - lat:50.0880301, lon:14.4100441, needsGeocoding:false
✅ PRESERVED geocoding: Cihelna 2b, Praha → (50.0880301, 14.4100441), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Fürstenfeldbruck - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Zupancic' has 1 existing address(es)
   [0] Osterwaldstr. 65a, München - lat:48.1701636, lon:11.6028434, needsGeocoding:false
✅ PRESERVED geocoding: Osterwaldstr. 65a, München → (48.1701636, 11.6028434), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Vinohradska 149

(inside Palac Flora), Praha 3-Zizkov - lat:50.0779409, lon:14.4604988, needsGeocoding:false
   [1] Vinohradska 149
(inside Palac Flora), Praha 3-Zizkov - lat:50.0779409, lon:14.4604988, needsGeocoding:false
✅ PRESERVED geocoding: Vinohradska 149

(inside Palac Flora), Praha 3-Zizkov → (50.0779409, 14.4604988), needsGeocoding=false
✅ PRESERVED geocoding: Vinohradska 149
(inside Palac Flora), Praha 3-Zizkov → (50.0779409, 14.4604988), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Nymphenburgerstr. 25, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Maike Buhr' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Phillip Bellé' has 1 existing address(es)
   [0] Rohmederstr. 19a, Münche - lat:48.181902, lon:11.6088598, needsGeocoding:false
✅ PRESERVED geocoding: Rohmederstr. 19a, Münche → (48.181902, 11.6088598), needsGeocoding=false
🔍 Friend 'Jean-Jacques Marcel' has 1 existing address(es)
   [0] Karlsplatz 25, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Theresienstr. 40, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anne-Francoise & Christian Gasparo & Grab' has 1 existing address(es)
   [0] Kantonstr. 39b, Nottwil - lat:47.14002, lon:8.127108, needsGeocoding:false
✅ PRESERVED geocoding: Kantonstr. 39b, Nottwil → (47.14002, 8.127108), needsGeocoding=false
🔍 Friend 'Bernd Thome' has 1 existing address(es)
   [0] Zamdorfer Strasse 100, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Koch' has 1 existing address(es)
   [0] Odeonsplatz 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Loan Ngo' has 1 existing address(es)
   [0] 35 Co Giang Street, Phuoc Ninh Ward, Da Nang - lat:16.0616083, lon:108.221664, needsGeocoding:false
✅ PRESERVED geocoding: 35 Co Giang Street, Phuoc Ninh Ward, Da Nang → (16.0616083, 108.221664), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] U Radnice 8, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Susanne Neumann' has 1 existing address(es)
   [0] Vaclavske namesti 40, Praha 1 - lat:50.0814894, lon:14.4266672, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavske namesti 40, Praha 1 → (50.0814894, 14.4266672), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Lazenska 7, Praha 1 - Mala Strana - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hae-Kyung Birkhofer' has 1 existing address(es)
   [0] Innere Wiener Str. 11a, München - lat:48.1337282, lon:11.5938026, needsGeocoding:false
✅ PRESERVED geocoding: Innere Wiener Str. 11a, München → (48.1337282, 11.5938026), needsGeocoding=false
🔍 Friend ' GC Guttenburg' has 1 existing address(es)
   [0] Guttenburg 3, Kraiburg - lat:48.1949039, lon:12.4722024, needsGeocoding:false
✅ PRESERVED geocoding: Guttenburg 3, Kraiburg → (48.1949039, 12.4722024), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Heßstr. 15 (Ecke Luisenstr.), München - lat:48.1514279, lon:11.5671979, needsGeocoding:false
✅ PRESERVED geocoding: Heßstr. 15 (Ecke Luisenstr.), München → (48.1514279, 11.5671979), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Lothringer Straße 7, München Haidhausen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Brunner' has 1 existing address(es)
   [0] Bahnhofstr. 1, Zürich - lat:47.367327, lon:8.539875, needsGeocoding:false
✅ PRESERVED geocoding: Bahnhofstr. 1, Zürich → (47.367327, 8.539875), needsGeocoding=false
🔍 Friend 'Mirka ' has 1 existing address(es)
   [0] Italska 13, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Brendel' has 1 existing address(es)
   [0] Golden Tower, 9th Floor,
6 Nguyen Thi Minh Khai, Ho Chi Minh City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Barry Wester' has 1 existing address(es)
   [0] Berglesweg 7, Diedorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dirk Pfeiffer' has 1 existing address(es)
   [0] Tal 24, Munich - lat:48.1357873, lon:11.579558, needsGeocoding:false
✅ PRESERVED geocoding: Tal 24, Munich → (48.1357873, 11.579558), needsGeocoding=false
🔍 Friend 'Thorsten Ecke' has 1 existing address(es)
   [0] Königsplatz, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Armin Amon' has 1 existing address(es)
   [0] Schellingstr.26, München - lat:48.1501415, lon:11.5769654, needsGeocoding:false
✅ PRESERVED geocoding: Schellingstr.26, München → (48.1501415, 11.5769654), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Karlstr. 27, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Frank Püttmann' has 1 existing address(es)
   [0] Am Schlautbach 113, Havixbeck - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ralf Rodenhauser' has 1 existing address(es)
   [0] Cosimastr. 298, München - lat:48.1769359, lon:11.6329342, needsGeocoding:false
✅ PRESERVED geocoding: Cosimastr. 298, München → (48.1769359, 11.6329342), needsGeocoding=false
🔍 Friend 'Elke Heymann' has 1 existing address(es)
   [0] , Aschheim - lat:48.1746294, lon:11.7200547, needsGeocoding:false
✅ PRESERVED geocoding: , Aschheim → (48.1746294, 11.7200547), needsGeocoding=false
🔍 Friend 'Dietrich Pahl' has 1 existing address(es)
   [0] bernhard-nocht-straße 113, Hamburg - lat:53.5475767, lon:9.9676666, needsGeocoding:false
✅ PRESERVED geocoding: bernhard-nocht-straße 113, Hamburg → (53.5475767, 9.9676666), needsGeocoding=false
🔍 Friend 'Alexander Weiss' has 2 existing address(es)
   [0] Höllriegelskreuther Weg 5, Baierbrunn - lat:48.0340297, lon:11.5004033, needsGeocoding:false
   [1] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: Höllriegelskreuther Weg 5, Baierbrunn → (48.0340297, 11.5004033), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Eva-Maria Brnabic' has 1 existing address(es)
   [0] Leopoldstr 59, München - lat:48.1614845, lon:11.5857464, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr 59, München → (48.1614845, 11.5857464), needsGeocoding=false
🔍 Friend 'Harris Hatzis' has 2 existing address(es)
   [0] 41 Posidinos Ave.

157 61 P. Faliro, Athens - lat:nil, lon:nil, needsGeocoding:true
   [1] 41 Posidinos Ave.
157 61 P. Faliro, Athens - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Teissier' has 1 existing address(es)
   [0] Le Talèfre
143 Chemin des Saubérands, Chamonix-Montblanc - lat:45.9250999, lon:6.8767837, needsGeocoding:false
✅ PRESERVED geocoding: Le Talèfre
143 Chemin des Saubérands, Chamonix-Montblanc → (45.9250999, 6.8767837), needsGeocoding=false
🔍 Friend 'Nicola Pascher' has 2 existing address(es)
   [0] Hauptstr. 46, Neubiberg 85579 - lat:48.0750217, lon:11.6694527, needsGeocoding:false
   [1] Frankfurter Ring 105a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
✅ PRESERVED geocoding: Hauptstr. 46, Neubiberg 85579 → (48.0750217, 11.6694527), needsGeocoding=false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München → (48.1882173, 11.58567), needsGeocoding=false
🔍 Friend 'Wolfgang Schneider' has 1 existing address(es)
   [0] Promenadeplatz 7, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Weißenburgerplatz 2, München - lat:48.1280763, lon:11.5961193, needsGeocoding:false
✅ PRESERVED geocoding: Weißenburgerplatz 2, München → (48.1280763, 11.5961193), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Dlouha 33, Praha 1 - lat:50.0906934, lon:14.4258813, needsGeocoding:false
✅ PRESERVED geocoding: Dlouha 33, Praha 1 → (50.0906934, 14.4258813), needsGeocoding=false
🔍 Friend 'Arman Muno' has 1 existing address(es)
   [0] Trziste 13, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hilda Müller-Seydlitz' has 1 existing address(es)
   [0] Josefstr. 8a, Deisenhofen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andy & Vicky Schlademan' has 1 existing address(es)
   [0] Am Fischertor 4, Augsburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Vinh Đoàn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Petr Skokan' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Trineke Diephuis' has 1 existing address(es)
   [0] , Schneckenbergerstr. 11 - lat:48.13721, lon:11.6040641, needsGeocoding:false
✅ PRESERVED geocoding: , Schneckenbergerstr. 11 → (48.13721, 11.6040641), needsGeocoding=false
🔍 Friend 'Manuel Singenstreu' has 1 existing address(es)
   [0] Am Seebach 9, Dorfen  Bayern - lat:48.2730248, lon:12.1224127, needsGeocoding:false
✅ PRESERVED geocoding: Am Seebach 9, Dorfen  Bayern → (48.2730248, 12.1224127), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 49, rue Berger, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Service Center Kassel

Wilhelmshöher Allee 254, Kassel - lat:51.3136376, lon:9.4473111, needsGeocoding:false
   [1] Service Center Kassel
Wilhelmshöher Allee 254, Kassel - lat:51.3136376, lon:9.4473111, needsGeocoding:false
✅ PRESERVED geocoding: Service Center Kassel

Wilhelmshöher Allee 254, Kassel → (51.3136376, 9.4473111), needsGeocoding=false
✅ PRESERVED geocoding: Service Center Kassel
Wilhelmshöher Allee 254, Kassel → (51.3136376, 9.4473111), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Königinstr. 34, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Richard Schwind' has 1 existing address(es)
   [0] Achleiten 2, Puchenau/Linz - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Vân Chu' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Bui Ngoc Vinh' has 3 existing address(es)
   [0] 84 Duy Tan, Cau Giay, Hanoi - lat:21.0334454, lon:105.806715, needsGeocoding:false
   [1] 02 Quang Trung, Hai Chau, Da Nang - lat:16.0753295, lon:108.2223472, needsGeocoding:false
   [2] 4F Shinagawa Cbnter Building Takonawa 3-23-17, Minato-ku,  - lat:36.8188986, lon:140.0950411, needsGeocoding:false
✅ PRESERVED geocoding: 84 Duy Tan, Cau Giay, Hanoi → (21.0334454, 105.806715), needsGeocoding=false
✅ PRESERVED geocoding: 02 Quang Trung, Hai Chau, Da Nang → (16.0753295, 108.2223472), needsGeocoding=false
✅ PRESERVED geocoding: 4F Shinagawa Cbnter Building Takonawa 3-23-17, Minato-ku,  → (36.8188986, 140.0950411), needsGeocoding=false
🔍 Friend 'Jens Maser' has 2 existing address(es)
   [0] Stolberger Straße 76, Köln - lat:nil, lon:nil, needsGeocoding:true
   [1] , Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Klaus Frobenius' has 1 existing address(es)
   [0] Marienplatz 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Cornelius Stockmair' has 1 existing address(es)
   [0] Rüdesheimer Strasse 11, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eric Schwinge' has 2 existing address(es)
   [0] Tal 34, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Arabellahaus, App. 248 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Malcolm Cämmerer' has 1 existing address(es)
   [0] Hermann-Löns-Str 11, Leipzig - lat:51.3308906, lon:12.4390408, needsGeocoding:false
✅ PRESERVED geocoding: Hermann-Löns-Str 11, Leipzig → (51.3308906, 12.4390408), needsGeocoding=false
🔍 Friend ' Essler-Klein' has 2 existing address(es)
   [0] Privat Mattseestr. 2a, München - lat:48.1053944, lon:11.6708184, needsGeocoding:false
   [1] Bavariaring 20, München - lat:48.1332779, lon:11.5538844, needsGeocoding:false
✅ PRESERVED geocoding: Privat Mattseestr. 2a, München → (48.1053944, 11.6708184), needsGeocoding=false
✅ PRESERVED geocoding: Bavariaring 20, München → (48.1332779, 11.5538844), needsGeocoding=false
🔍 Friend 'Matthias Postel' has 1 existing address(es)
   [0] Weidenallee 10c, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Linus Huttner' has 1 existing address(es)
   [0] Wöttiwiestr. 2, Winterberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ludger Vogt' has 2 existing address(es)
   [0] Intershop Tower
25th floor, Jena - lat:nil, lon:nil, needsGeocoding:true
   [1] Intershop Tower

25th floor, Jena - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ulrike Hug' has 1 existing address(es)
   [0] Konrad-Celtis-Strasse 77, München - lat:48.1106745, lon:11.5252519, needsGeocoding:false
✅ PRESERVED geocoding: Konrad-Celtis-Strasse 77, München → (48.1106745, 11.5252519), needsGeocoding=false
🔍 Friend 'Juan Fragoso' has 1 existing address(es)
   [0] Kraepelinstr. 55a, München - lat:48.174421, lon:11.5742881, needsGeocoding:false
✅ PRESERVED geocoding: Kraepelinstr. 55a, München → (48.174421, 11.5742881), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 9 Trần Phú, Thạch Thang, Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martin Gartner' has 1 existing address(es)
   [0] Franz Fischer-Str 31, Innsbruck - lat:47.2583257, lon:11.3905018, needsGeocoding:false
✅ PRESERVED geocoding: Franz Fischer-Str 31, Innsbruck → (47.2583257, 11.3905018), needsGeocoding=false
🔍 Friend 'Sonja Kumpermond' has 1 existing address(es)
   [0] Ruhestr. 11, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hiroki Tomioka' has 1 existing address(es)
   [0] Indochina Riverside, Bach Dang, Da Nang - lat:16.070810788393082, lon:108.22511150433334, needsGeocoding:false
✅ PRESERVED geocoding: Indochina Riverside, Bach Dang, Da Nang → (16.070810788393082, 108.22511150433334), needsGeocoding=false
🔍 Friend 'Christin Paulsen' has 1 existing address(es)
   [0] Admiralitätstr. 75, Hamburg - lat:53.5489941, lon:9.9849979, needsGeocoding:false
✅ PRESERVED geocoding: Admiralitätstr. 75, Hamburg → (53.5489941, 9.9849979), needsGeocoding=false
🔍 Friend 'Ursula Koblich' has 1 existing address(es)
   [0] Widenmayerstr. 37, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jesper Wiklund' has 1 existing address(es)
   [0] Linprunstrasse 16, Munchen - lat:48.1496173, lon:11.5551904, needsGeocoding:false
✅ PRESERVED geocoding: Linprunstrasse 16, Munchen → (48.1496173, 11.5551904), needsGeocoding=false
🔍 Friend 'Sascha & Anusch Milosavljevic' has 2 existing address(es)
   [0] Böhmerwaldstr. 59, Ismaning 85737 - lat:nil, lon:nil, needsGeocoding:true
   [1] Böhmerwaldstr. 59, Ismaning 85737 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Uwe Samer' has 1 existing address(es)
   [0] Wamslerstr. 8, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Fiona Kral' has 1 existing address(es)
   [0] Erbeerweg 4, Stuttgart 70619 - lat:48.7521947, lon:9.2162037, needsGeocoding:false
✅ PRESERVED geocoding: Erbeerweg 4, Stuttgart 70619 → (48.7521947, 9.2162037), needsGeocoding=false
🔍 Friend 'Eltern Hinrichs' has 2 existing address(es)
   [0] Maria-Ward-Str. 18, München - lat:48.1629473, lon:11.5067135, needsGeocoding:false
   [1] Sonnenmoosstr. 28, Rottach-Egern - lat:47.6852763, lon:11.7756509, needsGeocoding:false
✅ PRESERVED geocoding: Maria-Ward-Str. 18, München → (48.1629473, 11.5067135), needsGeocoding=false
✅ PRESERVED geocoding: Sonnenmoosstr. 28, Rottach-Egern → (47.6852763, 11.7756509), needsGeocoding=false
🔍 Friend 'Stefan Oberacher' has 1 existing address(es)
   [0] Tumblingerstr. 32, München 80337 - lat:48.1256999, lon:11.5571845, needsGeocoding:false
✅ PRESERVED geocoding: Tumblingerstr. 32, München 80337 → (48.1256999, 11.5571845), needsGeocoding=false
🔍 Friend 'Teresa Gessert' has 1 existing address(es)
   [0] Wackersbergerstrasse 60, München - lat:48.1160614, lon:11.5430555, needsGeocoding:false
✅ PRESERVED geocoding: Wackersbergerstrasse 60, München → (48.1160614, 11.5430555), needsGeocoding=false
🔍 Friend 'Harry Hung' has 1 existing address(es)
   [0] 453-455 Hoang Dieu Street, Da Nang - lat:16.0533392, lon:108.2176301, needsGeocoding:false
✅ PRESERVED geocoding: 453-455 Hoang Dieu Street, Da Nang → (16.0533392, 108.2176301), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Karlstraße 10, München - lat:48.1429156, lon:11.5675747, needsGeocoding:false
✅ PRESERVED geocoding: Karlstraße 10, München → (48.1429156, 11.5675747), needsGeocoding=false
🔍 Friend 'Klaus & Sigrid Hilgenfeld' has 2 existing address(es)
   [0] Conjunto Optimist n° 89

Hacienda Dos Mares, La Mange del Mar Menor, Murcia - lat:37.7648917, lon:-0.8303415, needsGeocoding:false
   [1] Conjunto Optimist n° 89
Hacienda Dos Mares, La Mange del Mar Menor, Murcia - lat:37.7648917, lon:-0.8303415, needsGeocoding:false
✅ PRESERVED geocoding: Conjunto Optimist n° 89

Hacienda Dos Mares, La Mange del Mar Menor, Murcia → (37.7648917, -0.8303415), needsGeocoding=false
✅ PRESERVED geocoding: Conjunto Optimist n° 89
Hacienda Dos Mares, La Mange del Mar Menor, Murcia → (37.7648917, -0.8303415), needsGeocoding=false
🔍 Friend 'Michael Amamoo' has 2 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
   [1] RotkreuzStr 58B, Erding, Bayern - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Vormschlag' has 1 existing address(es)
   [0] Sendlingerstr. 28, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephan Bals' has 1 existing address(es)
   [0] Feringastr. 12B, Unterföhring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kampl 656, Neustift - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 102 Nguyen Thai Hoc Street, Hoi An - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Fabian Hoppe' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jean-Baptiste Marcé' has 1 existing address(es)
   [0] 8 rue Racine, Rueil Malmaison - lat:48.8686351, lon:2.1969678, needsGeocoding:false
✅ PRESERVED geocoding: 8 rue Racine, Rueil Malmaison → (48.8686351, 2.1969678), needsGeocoding=false
🔍 Friend 'Andreas Walter' has 2 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
   [1] Georg Brauchle-Ring 50, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Franz-Heinrich Budde' has 1 existing address(es)
   [0] Franz-Kleine-Straße 13, Salzkotten - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Sing' has 1 existing address(es)
   [0] Max-Planck-Str. 3, Dornach b. München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Leopoldstr. neben McDonalds, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Nordendstr 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marius Hoffmann' has 1 existing address(es)
   [0] Leopoldstraße 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Birgit Gansen-Müller' has 1 existing address(es)
   [0] Kastanienweg 41, Mechernich - lat:50.5972763, lon:6.6612562, needsGeocoding:false
✅ PRESERVED geocoding: Kastanienweg 41, Mechernich → (50.5972763, 6.6612562), needsGeocoding=false
🔍 Friend 'Vroni Wäninger-Hardt' has 1 existing address(es)
   [0] Klenzestraße 79, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Đức Đặng' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Hardy Schlör' has 2 existing address(es)
   [0] Lilienstr. 2
(Eingang Zeppelinstr.), München - lat:48.1309525, lon:11.5874629, needsGeocoding:false
   [1] Lilienstr. 2

(Eingang Zeppelinstr.), München - lat:48.1309525, lon:11.5874629, needsGeocoding:false
✅ PRESERVED geocoding: Lilienstr. 2
(Eingang Zeppelinstr.), München → (48.1309525, 11.5874629), needsGeocoding=false
✅ PRESERVED geocoding: Lilienstr. 2

(Eingang Zeppelinstr.), München → (48.1309525, 11.5874629), needsGeocoding=false
🔍 Friend 'Bettina Carr-Allinson' has 2 existing address(es)
   [0] , Frankfurt am Main - lat:50.1251766, lon:8.6864649, needsGeocoding:false
   [1] Richard Wagner Str 9a, Frankfurt - lat:50.1293026, lon:8.6854217, needsGeocoding:false
✅ PRESERVED geocoding: , Frankfurt am Main → (50.1251766, 8.6864649), needsGeocoding=false
✅ PRESERVED geocoding: Richard Wagner Str 9a, Frankfurt → (50.1293026, 8.6854217), needsGeocoding=false
🔍 Friend 'Amy Flecher' has 1 existing address(es)
   [0] Unterstrogn 16, Bockhorn - lat:48.3267785, lon:11.9765649, needsGeocoding:false
✅ PRESERVED geocoding: Unterstrogn 16, Bockhorn → (48.3267785, 11.9765649), needsGeocoding=false
🔍 Friend ' Etemi' has 1 existing address(es)
   [0] Richard-Strauss-Str., München - lat:48.1455569, lon:11.6158796, needsGeocoding:false
✅ PRESERVED geocoding: Richard-Strauss-Str., München → (48.1455569, 11.6158796), needsGeocoding=false
🔍 Friend 'Elisabeth Englisch' has 2 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
   [1] Sternwartstr. 43, Wien - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Amalienstr. 42, München - lat:48.1489259, lon:11.5777808, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Amalienstr. 42, München → (48.1489259, 11.5777808), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Sedanstr. 9, München - lat:48.1305725, lon:11.5975545, needsGeocoding:false
✅ PRESERVED geocoding: Sedanstr. 9, München → (48.1305725, 11.5975545), needsGeocoding=false
🔍 Friend 'Joerg Dietmann' has 1 existing address(es)
   [0] Westerbachstraße 32, Kronberg - lat:50.1726276, lon:8.5272198, needsGeocoding:false
✅ PRESERVED geocoding: Westerbachstraße 32, Kronberg → (50.1726276, 8.5272198), needsGeocoding=false
🔍 Friend 'Tobias Seitz' has 1 existing address(es)
   [0] Von Kleist Str. 3, Kolbermoor - lat:47.8527268, lon:12.0618974, needsGeocoding:false
✅ PRESERVED geocoding: Von Kleist Str. 3, Kolbermoor → (47.8527268, 12.0618974), needsGeocoding=false
🔍 Friend 'Otmar & Simone Jehle' has 1 existing address(es)
   [0] , St. Jakob bei StAnton - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ali Jelveh' has 1 existing address(es)
   [0] Lerchenstrasse 28a, Hamburg - lat:49.3189412, lon:7.351153, needsGeocoding:false
✅ PRESERVED geocoding: Lerchenstrasse 28a, Hamburg → (49.3189412, 7.351153), needsGeocoding=false
🔍 Friend 'Jean-Patrick Donzey' has 1 existing address(es)
   [0] Freischützstr. 110 (12. Stock), München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kilian Körner' has 2 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
   [1] Warngauerstr. 57, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Vlašská 19, Praha 1 - lat:50.0872876, lon:14.3980285, needsGeocoding:false
✅ PRESERVED geocoding: Vlašská 19, Praha 1 → (50.0872876, 14.3980285), needsGeocoding=false
🔍 Friend 'Dennis Poetsch' has 1 existing address(es)
   [0] Maffeistr. 4, München - lat:48.1396368, lon:11.5752368, needsGeocoding:false
✅ PRESERVED geocoding: Maffeistr. 4, München → (48.1396368, 11.5752368), needsGeocoding=false
🔍 Friend 'Justine Wessier' has 1 existing address(es)
   [0] , Grenoble - lat:45.1870781, lon:5.7306849, needsGeocoding:false
✅ PRESERVED geocoding: , Grenoble → (45.1870781, 5.7306849), needsGeocoding=false
🔍 Friend 'Klaus Eberhardt' has 1 existing address(es)
   [0] Inselkammerstr. 4, München-Unterhaching - lat:48.0552122, lon:11.6076061, needsGeocoding:false
✅ PRESERVED geocoding: Inselkammerstr. 4, München-Unterhaching → (48.0552122, 11.6076061), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Mostecká 7/281, Praha 1 - Malá Strana - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 65 Trung Nu Vuong Street, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hamarz Mehmanesh' has 2 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
   [1] Truchthari Anger 66, München - lat:48.1276654, lon:11.679276, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München → (48.1882173, 11.58567), needsGeocoding=false
✅ PRESERVED geocoding: Truchthari Anger 66, München → (48.1276654, 11.679276), needsGeocoding=false
🔍 Friend 'Doreen Wagner' has 1 existing address(es)
   [0] Haidenau Platz, München - lat:48.13358786641756, lon:11.611817826209144, needsGeocoding:false
✅ PRESERVED geocoding: Haidenau Platz, München → (48.13358786641756, 11.611817826209144), needsGeocoding=false
🔍 Friend 'Maria-Christina Schuricke' has 1 existing address(es)
   [0] Wörthstr. 24, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'André Harnisch' has 1 existing address(es)
   [0] Neumarkt 2, Leipzig - lat:51.3395671, lon:12.3764004, needsGeocoding:false
✅ PRESERVED geocoding: Neumarkt 2, Leipzig → (51.3395671, 12.3764004), needsGeocoding=false
🔍 Friend 'Roland Meier' has 1 existing address(es)
   [0] Weilheimstr. 19b, München - lat:48.160447, lon:11.5815443, needsGeocoding:false
✅ PRESERVED geocoding: Weilheimstr. 19b, München → (48.160447, 11.5815443), needsGeocoding=false
🔍 Friend 'Élise Iozzino' has 1 existing address(es)
   [0] 15 Av. Ginette Marois, Taussat - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jana Macháčková' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Klara Gregor' has 1 existing address(es)
   [0] Rosenheimerstr. 79, München - lat:48.1276698, lon:11.5957961, needsGeocoding:false
✅ PRESERVED geocoding: Rosenheimerstr. 79, München → (48.1276698, 11.5957961), needsGeocoding=false
🔍 Friend 'Lars Petrak' has 1 existing address(es)
   [0] Klausenbergweg 24, Koblenz - lat:50.3589309, lon:7.6177711, needsGeocoding:false
✅ PRESERVED geocoding: Klausenbergweg 24, Koblenz → (50.3589309, 7.6177711), needsGeocoding=false
🔍 Friend 'Michael Hubrich' has 1 existing address(es)
   [0] Nymphenburger Strasse 86, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 04 Bach Lang Street, Danang - lat:16.0811083, lon:108.2235569, needsGeocoding:false
✅ PRESERVED geocoding: 04 Bach Lang Street, Danang → (16.0811083, 108.2235569), needsGeocoding=false
🔍 Friend 'Andrea Mikova' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Erich Langer' has 1 existing address(es)
   [0] , Kiefersfelden - lat:47.6151546, lon:12.1883181, needsGeocoding:false
✅ PRESERVED geocoding: , Kiefersfelden → (47.6151546, 12.1883181), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Sendlingerstr. 46, München - lat:48.1347791, lon:11.5688023, needsGeocoding:false
✅ PRESERVED geocoding: Sendlingerstr. 46, München → (48.1347791, 11.5688023), needsGeocoding=false
🔍 Friend 'Nina Gholizadeh' has 1 existing address(es)
   [0] , Nürnberg - lat:49.4544732, lon:11.0769372, needsGeocoding:false
✅ PRESERVED geocoding: , Nürnberg → (49.4544732, 11.0769372), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schellingstr. 24, München - lat:48.1501473, lon:11.5771315, needsGeocoding:false
✅ PRESERVED geocoding: Schellingstr. 24, München → (48.1501473, 11.5771315), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 277 Cua Dai Road, Hoi An, Quang Nam - lat:15.8837779, lon:108.3478396, needsGeocoding:false
✅ PRESERVED geocoding: 277 Cua Dai Road, Hoi An, Quang Nam → (15.8837779, 108.3478396), needsGeocoding=false
🔍 Friend 'Heribert Ley' has 1 existing address(es)
   [0] Humboldtstr. 6, Aschheim/ Dornach - lat:48.1509525, lon:11.6846437, needsGeocoding:false
✅ PRESERVED geocoding: Humboldtstr. 6, Aschheim/ Dornach → (48.1509525, 11.6846437), needsGeocoding=false
🔍 Friend 'Rơ Võ' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Evita Pfeiffer' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Stefan Schick' has 1 existing address(es)
   [0] Konrad-Zuse-Str. 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Kraft' has 1 existing address(es)
   [0] 83 Pall Mall, Sixth Floor, London - lat:51.5059496, lon:-0.1354823, needsGeocoding:false
✅ PRESERVED geocoding: 83 Pall Mall, Sixth Floor, London → (51.5059496, -0.1354823), needsGeocoding=false
🔍 Friend 'Berhard Steege' has 1 existing address(es)
   [0] Briennerstr. 20, München - lat:48.1441369, lon:11.5722172, needsGeocoding:false
✅ PRESERVED geocoding: Briennerstr. 20, München → (48.1441369, 11.5722172), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 3 Street, Phu My An, Hoa Hai Ward, Ngu Hanh Son District, DaNang City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kurt & Martina Denzinger' has 1 existing address(es)
   [0] Josef Winter Platz 2, Steinberg Marklkofen - lat:48.5729151, lon:12.5781918, needsGeocoding:false
✅ PRESERVED geocoding: Josef Winter Platz 2, Steinberg Marklkofen → (48.5729151, 12.5781918), needsGeocoding=false
🔍 Friend 'Sebastian Berger' has 1 existing address(es)
   [0] Zugspitzstr. 1, Pullach b. München - lat:48.0430072, lon:11.5105927, needsGeocoding:false
✅ PRESERVED geocoding: Zugspitzstr. 1, Pullach b. München → (48.0430072, 11.5105927), needsGeocoding=false
🔍 Friend 'Markus Gastinger' has 1 existing address(es)
   [0] Leinthalerstrasse 24, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jonathan Chua' has 1 existing address(es)
   [0] , Singapore - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Vinh Lữ' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Jitka Zichova' has 1 existing address(es)
   [0] Pod Zahorskem 4, Plzeň - lat:49.7587748, lon:13.372492, needsGeocoding:false
✅ PRESERVED geocoding: Pod Zahorskem 4, Plzeň → (49.7587748, 13.372492), needsGeocoding=false
🔍 Friend 'Roland Morizet' has 1 existing address(es)
   [0] Kodanska 46, 101 00 Praha 10 - lat:50.069565, lon:14.4636643, needsGeocoding:false
✅ PRESERVED geocoding: Kodanska 46, 101 00 Praha 10 → (50.069565, 14.4636643), needsGeocoding=false
🔍 Friend 'Margret Rutsch' has 1 existing address(es)
   [0] Spicherenstr. 12, München - lat:48.1309463, lon:11.6067297, needsGeocoding:false
✅ PRESERVED geocoding: Spicherenstr. 12, München → (48.1309463, 11.6067297), needsGeocoding=false
🔍 Friend 'Anndorte Braker' has 1 existing address(es)
   [0] Spicherenstr. 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anh Nguyen' has 1 existing address(es)
   [0] 203 Tran Phu, Da Nang - lat:16.0652555, lon:108.2236513, needsGeocoding:false
✅ PRESERVED geocoding: 203 Tran Phu, Da Nang → (16.0652555, 108.2236513), needsGeocoding=false
🔍 Friend 'Andreas Pfluger' has 1 existing address(es)
   [0] Rotkreuzstr. 7, Utting am Ammersee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' GC Gut Thailing' has 1 existing address(es)
   [0] Thailing 4, Steinhöring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marc Schaeffler' has 2 existing address(es)
   [0] ,  - lat:48.7719628, lon:11.4383042, needsGeocoding:false
   [1] Destouchesstr. 68, München - lat:48.1654195, lon:11.5711572, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (48.7719628, 11.4383042), needsGeocoding=false
✅ PRESERVED geocoding: Destouchesstr. 68, München → (48.1654195, 11.5711572), needsGeocoding=false
🔍 Friend 'Wilhelm Meyer' has 1 existing address(es)
   [0] , Saigon / HCMC - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon / HCMC → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Klaus Dotzler' has 1 existing address(es)
   [0] Robert-Bosch-Str. 21-23, Garching - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Siedlung 196, Flirsch bei St Anton - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heinz Heubach' has 1 existing address(es)
   [0] Otto-Hanh-Ring 6, München - lat:48.0915911, lon:11.649046, needsGeocoding:false
✅ PRESERVED geocoding: Otto-Hanh-Ring 6, München → (48.0915911, 11.649046), needsGeocoding=false
🔍 Friend 'Hans & Gerda Hannich' has 1 existing address(es)
   [0] Adam-Berg-Str. 115b, München - lat:48.1089315, lon:11.6237887, needsGeocoding:false
✅ PRESERVED geocoding: Adam-Berg-Str. 115b, München → (48.1089315, 11.6237887), needsGeocoding=false
🔍 Friend 'Thomas Buhe' has 1 existing address(es)
   [0] Neumarkt 2, Leipzig - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Wolfgang Büscher' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Markus & Thomas Hartinger' has 1 existing address(es)
   [0] Jestelstr. 5, München - lat:48.1765098, lon:11.4694788, needsGeocoding:false
✅ PRESERVED geocoding: Jestelstr. 5, München → (48.1765098, 11.4694788), needsGeocoding=false
🔍 Friend 'Jana Alfery' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:50.0814894, lon:14.4266672, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavske Namesti 40, Praha 1 → (50.0814894, 14.4266672), needsGeocoding=false
🔍 Friend 'Gottfried (Friedl) Schimmer' has 1 existing address(es)
   [0] Erkweg 9, München - lat:48.1572128, lon:11.637927, needsGeocoding:false
✅ PRESERVED geocoding: Erkweg 9, München → (48.1572128, 11.637927), needsGeocoding=false
🔍 Friend ' Müller-Seydlitz' has 1 existing address(es)
   [0] Geirerweg 20., Soprabolzano - lat:46.5334499, lon:11.4096549, needsGeocoding:false
✅ PRESERVED geocoding: Geirerweg 20., Soprabolzano → (46.5334499, 11.4096549), needsGeocoding=false
🔍 Friend 'Salka Ebenhan' has 1 existing address(es)
   [0] Promenadeplatz 7, München - lat:48.1397092, lon:11.573047, needsGeocoding:false
✅ PRESERVED geocoding: Promenadeplatz 7, München → (48.1397092, 11.573047), needsGeocoding=false
🔍 Friend 'Hans-Martin Adorf' has 1 existing address(es)
   [0] Karl-Schwarzschild-Str. 2, Garching b. Muenchen - lat:48.2600749, lon:11.6710539, needsGeocoding:false
✅ PRESERVED geocoding: Karl-Schwarzschild-Str. 2, Garching b. Muenchen → (48.2600749, 11.6710539), needsGeocoding=false
🔍 Friend 'Thelema LTD' has 1 existing address(es)
   [0] P.O.Box 2234, Stellenbosch 7601 - lat:-34.0155, lon:22.49162, needsGeocoding:false
✅ PRESERVED geocoding: P.O.Box 2234, Stellenbosch 7601 → (-34.0155, 22.49162), needsGeocoding=false
🔍 Friend 'Peter Frieske' has 1 existing address(es)
   [0] 333 Chuong Duong, Ngu Hanh Son, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Elisabeth Schuller' has 1 existing address(es)
   [0] Dr. Natterergasse 2-4/8, 1020 Wien - lat:48.2117175, lon:16.4213972, needsGeocoding:false
✅ PRESERVED geocoding: Dr. Natterergasse 2-4/8, 1020 Wien → (48.2117175, 16.4213972), needsGeocoding=false
🔍 Friend 'Karl Bawiedemann' has 1 existing address(es)
   [0] Schellingstr. 129, München - lat:48.1538163, lon:11.5628957, needsGeocoding:false
✅ PRESERVED geocoding: Schellingstr. 129, München → (48.1538163, 11.5628957), needsGeocoding=false
🔍 Friend 'Patrick Bodtländer' has 2 existing address(es)
   [0] , Muenchen - lat:48.1379879, lon:11.575182, needsGeocoding:false
   [1] ,  - lat:48.7719628, lon:11.4383042, needsGeocoding:false
✅ PRESERVED geocoding: , Muenchen → (48.1379879, 11.575182), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (48.7719628, 11.4383042), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Arco am Gardasee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kurt + Edith Schwingenschlögel' has 1 existing address(es)
   [0] keine Straße, Salzburg-Eugendorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Singer' has 1 existing address(es)
   [0] Innungsstrasse 9 (Vaenser Heide II), Buchholz - lat:53.3519267, lon:9.8692068, needsGeocoding:false
✅ PRESERVED geocoding: Innungsstrasse 9 (Vaenser Heide II), Buchholz → (53.3519267, 9.8692068), needsGeocoding=false
🔍 Friend 'Eran Schwartz' has 1 existing address(es)
   [0] 133 Even Gvirol Strees, Tel Aviv - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Rolf Pollmeier' has 1 existing address(es)
   [0] Landsbergerstr.155, München - lat:48.1398638, lon:11.5257714, needsGeocoding:false
✅ PRESERVED geocoding: Landsbergerstr.155, München → (48.1398638, 11.5257714), needsGeocoding=false
🔍 Friend 'Hải Huỳnh' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Meyne' has 1 existing address(es)
   [0] Stefanusstrasse 4, Gräfelfing bei München - lat:48.1160712, lon:11.4357626, needsGeocoding:false
✅ PRESERVED geocoding: Stefanusstrasse 4, Gräfelfing bei München → (48.1160712, 11.4357626), needsGeocoding=false
🔍 Friend 'Waltraud Fritsche' has 1 existing address(es)
   [0] P.O. Box 20706, Windhoek - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Ismaningerstr. 136, München - lat:48.1487947, lon:11.606378, needsGeocoding:false
✅ PRESERVED geocoding: Ismaningerstr. 136, München → (48.1487947, 11.606378), needsGeocoding=false
🔍 Friend 'Dirk Limburg' has 1 existing address(es)
   [0] Holzhofstr. 6, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Rumfordstr. 17, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tjip Sugijoto' has 1 existing address(es)
   [0] 650 Townsend Street
Suite 285, San Francisco - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'David Born' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Patrick Haendly' has 2 existing address(es)
   [0] Isarstraße 3, Baierbrunn - lat:48.0275617, lon:11.4937774, needsGeocoding:false
   [1] Geigerstraße 10, Gräfelfing - lat:48.1200651, lon:11.419452, needsGeocoding:false
✅ PRESERVED geocoding: Isarstraße 3, Baierbrunn → (48.0275617, 11.4937774), needsGeocoding=false
✅ PRESERVED geocoding: Geigerstraße 10, Gräfelfing → (48.1200651, 11.419452), needsGeocoding=false
🔍 Friend 'Christian Weiland' has 1 existing address(es)
   [0] , Wien - lat:48.2195335, lon:16.3784883, needsGeocoding:false
✅ PRESERVED geocoding: , Wien → (48.2195335, 16.3784883), needsGeocoding=false
🔍 Friend 'Matthias Voigt' has 1 existing address(es)
   [0] Novalisstraße 20, München - lat:48.114743, lon:11.5242467, needsGeocoding:false
✅ PRESERVED geocoding: Novalisstraße 20, München → (48.114743, 11.5242467), needsGeocoding=false
🔍 Friend 'Etienne Fourquet' has 1 existing address(es)
   [0] 10 rue des Dahlias, Lyon - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Benjamin Weinheimer' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Maximilian Schlicht' has 1 existing address(es)
   [0] Hofmannstr. 9, München - lat:48.1009729, lon:11.5297123, needsGeocoding:false
✅ PRESERVED geocoding: Hofmannstr. 9, München → (48.1009729, 11.5297123), needsGeocoding=false
🔍 Friend 'Michael Senft' has 1 existing address(es)
   [0] Gronsdorferstr 3-5, Haar bei München - lat:48.1104075, lon:11.7239238, needsGeocoding:false
✅ PRESERVED geocoding: Gronsdorferstr 3-5, Haar bei München → (48.1104075, 11.7239238), needsGeocoding=false
🔍 Friend 'Bernhard Wobig' has 1 existing address(es)
   [0] Stuckstr. 11, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nadine Baltot' has 1 existing address(es)
   [0] , Berlin - lat:52.5187416, lon:13.4080224, needsGeocoding:false
✅ PRESERVED geocoding: , Berlin → (52.5187416, 13.4080224), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , StAnton - lat:47.1263569, lon:10.2612921, needsGeocoding:false
✅ PRESERVED geocoding: , StAnton → (47.1263569, 10.2612921), needsGeocoding=false
🔍 Friend 'Tai Tran' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ludwig Rase' has 1 existing address(es)
   [0] Richard-Strausss-Str. 49, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jörg Jungwirth' has 1 existing address(es)
   [0] Ruffinialle 26c, Gräfelfing - lat:48.1157723, lon:11.4211632, needsGeocoding:false
✅ PRESERVED geocoding: Ruffinialle 26c, Gräfelfing → (48.1157723, 11.4211632), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Gotzinger Str. 8-12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Norbert Wessel' has 1 existing address(es)
   [0] , Sankt Augustin - lat:50.7775239, lon:7.1854042, needsGeocoding:false
✅ PRESERVED geocoding: , Sankt Augustin → (50.7775239, 7.1854042), needsGeocoding=false
🔍 Friend 'Christian Barthels' has 1 existing address(es)
   [0] Dingolfinger Str. 2, München - lat:48.1316824, lon:11.614351, needsGeocoding:false
✅ PRESERVED geocoding: Dingolfinger Str. 2, München → (48.1316824, 11.614351), needsGeocoding=false
🔍 Friend 'Brigitte Häckel' has 1 existing address(es)
   [0] Dachauerstr. 243, München 80637 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Murf' has 1 existing address(es)
   [0] , Berchtesgaden - lat:47.6287355, lon:13.0029803, needsGeocoding:false
✅ PRESERVED geocoding: , Berchtesgaden → (47.6287355, 13.0029803), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Einsteinstr. 50, München 81675 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Einsteinstraße 113, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Daniel Schustermann' has 1 existing address(es)
   [0] Ingolstädter Str. 40, München - lat:48.1893309, lon:11.5853579, needsGeocoding:false
✅ PRESERVED geocoding: Ingolstädter Str. 40, München → (48.1893309, 11.5853579), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Na rozdílu 1, p.p. 6, 160 05 Praha 6 - Vokovice - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Monica Rehkopf' has 1 existing address(es)
   [0] Rechliner Straße, Manching - lat:48.70766317458103, lon:11.51618047133658, needsGeocoding:false
✅ PRESERVED geocoding: Rechliner Straße, Manching → (48.70766317458103, 11.51618047133658), needsGeocoding=false
🔍 Friend 'Stefan Aufischer' has 1 existing address(es)
   [0] Haider Straße 40, Ansfelden - lat:48.2108025, lon:14.2788457, needsGeocoding:false
✅ PRESERVED geocoding: Haider Straße 40, Ansfelden → (48.2108025, 14.2788457), needsGeocoding=false
🔍 Friend 'Karl Lautner' has 1 existing address(es)
   [0] Erlenweg 25, Egmating - lat:48.0084429, lon:11.7885816, needsGeocoding:false
✅ PRESERVED geocoding: Erlenweg 25, Egmating → (48.0084429, 11.7885816), needsGeocoding=false
🔍 Friend 'Roberto Melzi' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Roxana Delgado' has 1 existing address(es)
   [0] c/o Frau Middelman

Calle Padilla 82, 5d, Madrid - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernhard Mayer' has 1 existing address(es)
   [0] Sonnenalle 1, Kirchheim-Heimstetten - lat:48.1576674, lon:11.7588873, needsGeocoding:false
✅ PRESERVED geocoding: Sonnenalle 1, Kirchheim-Heimstetten → (48.1576674, 11.7588873), needsGeocoding=false
🔍 Friend 'Michael Poppe' has 1 existing address(es)
   [0] Frankfurter Ring 251, München - lat:48.186675, lon:11.6079379, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 251, München → (48.186675, 11.6079379), needsGeocoding=false
🔍 Friend 'Philipp Ostermaier' has 1 existing address(es)
   [0] Marsstr. 9, Aschheim bei München - lat:48.174638, lon:11.719219, needsGeocoding:false
✅ PRESERVED geocoding: Marsstr. 9, Aschheim bei München → (48.174638, 11.719219), needsGeocoding=false
🔍 Friend 'Eva-Maria Mayer' has 2 existing address(es)
   [0] Weihenstephaner Straße 7, München - lat:48.1313133, lon:11.6233276, needsGeocoding:false
   [1] Bergmannstrasse 62, München - lat:48.1326407, lon:11.5363258, needsGeocoding:false
✅ PRESERVED geocoding: Weihenstephaner Straße 7, München → (48.1313133, 11.6233276), needsGeocoding=false
✅ PRESERVED geocoding: Bergmannstrasse 62, München → (48.1326407, 11.5363258), needsGeocoding=false
🔍 Friend 'Max Putz' has 1 existing address(es)
   [0] , Grafing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mauritz von Reden' has 1 existing address(es)
   [0] Adenauerallee 4, Hannover - lat:52.3811115, lon:9.7663784, needsGeocoding:false
✅ PRESERVED geocoding: Adenauerallee 4, Hannover → (52.3811115, 9.7663784), needsGeocoding=false
🔍 Friend 'Detlev Legler' has 1 existing address(es)
   [0] Brixener Str. 8, Augsburg - lat:48.379588, lon:10.933425, needsGeocoding:false
✅ PRESERVED geocoding: Brixener Str. 8, Augsburg → (48.379588, 10.933425), needsGeocoding=false
🔍 Friend 'Norbert Dreier' has 1 existing address(es)
   [0] Theodor-Heuss-Allee 20

Raum/Room B.029, Bremen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mark Huber' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 30, Dornach → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend 'Daniel Brodkorb' has 2 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Adams-Lehmann-Str. 65, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Philline Freikowski' has 1 existing address(es)
   [0] Nobelring 3, Frankfurt am Main - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Manfred Flick' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Birgit Kratzsch' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 30, Dornach → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend 'Jean-Pierre Clerice' has 1 existing address(es)
   [0] , Milano - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephanie Schatz' has 1 existing address(es)
   [0] Maxfeldstr. 5, Nürnberg - lat:49.4597474, lon:11.0824851, needsGeocoding:false
✅ PRESERVED geocoding: Maxfeldstr. 5, Nürnberg → (49.4597474, 11.0824851), needsGeocoding=false
🔍 Friend 'Uwe Erdmann' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nöbl ' has 1 existing address(es)
   [0] Stadleweg Nr. 26, St.Anton am Arlberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Lipova 15, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Priscilla Pagnotta' has 1 existing address(es)
   [0] Riesstraße 25, München - lat:48.1800348, lon:11.5356639, needsGeocoding:false
✅ PRESERVED geocoding: Riesstraße 25, München → (48.1800348, 11.5356639), needsGeocoding=false
🔍 Friend 'Thomas Gonser' has 1 existing address(es)
   [0] An der Trift 65, Dreieich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Steffen Herfurth' has 1 existing address(es)
   [0] Prannerstr 8, München - lat:48.1414485, lon:11.5728173, needsGeocoding:false
✅ PRESERVED geocoding: Prannerstr 8, München → (48.1414485, 11.5728173), needsGeocoding=false
🔍 Friend 'Thomas Sigl' has 1 existing address(es)
   [0] Bankgasse 9, Nürnberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Markus Schmahl' has 1 existing address(es)
   [0] , Leipzig - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Janine Schwuchow' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend ' Roller' has 1 existing address(es)
   [0] Humboldtstraße 16, Stuttgart - lat:48.7663012, lon:9.164633, needsGeocoding:false
✅ PRESERVED geocoding: Humboldtstraße 16, Stuttgart → (48.7663012, 9.164633), needsGeocoding=false
🔍 Friend 'Matthias Keilich' has 1 existing address(es)
   [0] Lehmweg 31, Hamburg - lat:53.582281, lon:9.9795677, needsGeocoding:false
✅ PRESERVED geocoding: Lehmweg 31, Hamburg → (53.582281, 9.9795677), needsGeocoding=false
🔍 Friend 'Tomas Bajus' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Axel Amthor' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Pierre Joye' has 1 existing address(es)
   [0] , Saigon - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Thức Anh' has 1 existing address(es)
   [0] 48 An Thuong 3, Da Nang - lat:16.0476813, lon:108.2441909, needsGeocoding:false
✅ PRESERVED geocoding: 48 An Thuong 3, Da Nang → (16.0476813, 108.2441909), needsGeocoding=false
🔍 Friend 'Pano Merianos' has 1 existing address(es)
   [0] Kastanienallee 12, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Klaus März' has 1 existing address(es)
   [0] Flurstrasse 32, Zürich - lat:47.386233, lon:8.496036, needsGeocoding:false
✅ PRESERVED geocoding: Flurstrasse 32, Zürich → (47.386233, 8.496036), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Mühlbauerstr. 36, München - lat:48.1421534, lon:11.6140663, needsGeocoding:false
✅ PRESERVED geocoding: Mühlbauerstr. 36, München → (48.1421534, 11.6140663), needsGeocoding=false
🔍 Friend 'Hannes Sauter' has 1 existing address(es)
   [0] Riedbach 8, Mutters - lat:47.2155076, lon:11.3765617, needsGeocoding:false
✅ PRESERVED geocoding: Riedbach 8, Mutters → (47.2155076, 11.3765617), needsGeocoding=false
🔍 Friend 'Stefan Meier' has 1 existing address(es)
   [0] Karl-Schmidstr. 12, München - lat:48.133602, lon:11.6676128, needsGeocoding:false
✅ PRESERVED geocoding: Karl-Schmidstr. 12, München → (48.133602, 11.6676128), needsGeocoding=false
🔍 Friend 'Mama Paatz' has 1 existing address(es)
   [0] Hohenzollernstr. 81, München 80796 - lat:48.1606882, lon:11.5706998, needsGeocoding:false
✅ PRESERVED geocoding: Hohenzollernstr. 81, München 80796 → (48.1606882, 11.5706998), needsGeocoding=false
🔍 Friend 'Simin Javadieh' has 3 existing address(es)
   [0] c/o Talat Sabagh
Döllingerstr. 5, München - lat:nil, lon:nil, needsGeocoding:true
   [1] c/o Talat Sabagh

Döllingerstr. 5, München - lat:nil, lon:nil, needsGeocoding:true
   [2] Rote-Kreuz-Straße 8, Ismaning - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dennis Greiffenberg' has 1 existing address(es)
   [0] , Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'My Linh ' has 1 existing address(es)
   [0] 05 An Thuong 4, My An Ward, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kleiner Kielort 8, Hamburg - lat:53.571546, lon:9.9758395, needsGeocoding:false
✅ PRESERVED geocoding: Kleiner Kielort 8, Hamburg → (53.571546, 9.9758395), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Georg-Brauchle-Ring 91, München - lat:48.1758404, lon:11.5246028, needsGeocoding:false
✅ PRESERVED geocoding: Georg-Brauchle-Ring 91, München → (48.1758404, 11.5246028), needsGeocoding=false
🔍 Friend 'Hans Hellmuth' has 1 existing address(es)
   [0] Vorstandgebäude, Kern B

Zimmer 513,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Maria-Theresien-Str. 18, Innsbruck - lat:47.2657273, lon:11.3938512, needsGeocoding:false
✅ PRESERVED geocoding: Maria-Theresien-Str. 18, Innsbruck → (47.2657273, 11.3938512), needsGeocoding=false
🔍 Friend 'Jens Münch' has 1 existing address(es)
   [0] Am Wassermann 25, Köln - lat:50.951016, lon:6.8749152, needsGeocoding:false
✅ PRESERVED geocoding: Am Wassermann 25, Köln → (50.951016, 6.8749152), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Erding - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Barbato Manu & Cécile' has 1 existing address(es)
   [0] bât B 8 r Charles Tartari, Grenoble - lat:45.1866095, lon:5.7293818, needsGeocoding:false
✅ PRESERVED geocoding: bât B 8 r Charles Tartari, Grenoble → (45.1866095, 5.7293818), needsGeocoding=false
🔍 Friend 'Klaus Sigl' has 1 existing address(es)
   [0] Körnerstr. 2, München - lat:48.125519, lon:11.5693771, needsGeocoding:false
✅ PRESERVED geocoding: Körnerstr. 2, München → (48.125519, 11.5693771), needsGeocoding=false
🔍 Friend 'Sabrina Stuefer' has 1 existing address(es)
   [0] Alte Mendelstr. 34/a, Bozen/Bolzano - lat:46.5001589, lon:11.3382791, needsGeocoding:false
✅ PRESERVED geocoding: Alte Mendelstr. 34/a, Bozen/Bolzano → (46.5001589, 11.3382791), needsGeocoding=false
🔍 Friend 'Susanne Seibert' has 1 existing address(es)
   [0] Sophienstr. 6, München - lat:48.1424336, lon:11.5658526, needsGeocoding:false
✅ PRESERVED geocoding: Sophienstr. 6, München → (48.1424336, 11.5658526), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Koněvova 13, Praha 3 -Žižkov - lat:50.0915329, lon:14.4736958, needsGeocoding:false
✅ PRESERVED geocoding: Koněvova 13, Praha 3 -Žižkov → (50.0915329, 14.4736958), needsGeocoding=false
🔍 Friend 'Andreas Faß' has 1 existing address(es)
   [0] Sichelstr. 18b, TRier - lat:49.7579959, lon:6.645805, needsGeocoding:false
✅ PRESERVED geocoding: Sichelstr. 18b, TRier → (49.7579959, 6.645805), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Pariser Str. 20, München - lat:48.1267067, lon:11.5978868, needsGeocoding:false
✅ PRESERVED geocoding: Pariser Str. 20, München → (48.1267067, 11.5978868), needsGeocoding=false
🔍 Friend 'Barbara & Wulf Schönberg' has 1 existing address(es)
   [0] Drachenfelsstr. 15, Bonn - Bad Godesberg - lat:50.6783789, lon:7.1479995, needsGeocoding:false
✅ PRESERVED geocoding: Drachenfelsstr. 15, Bonn - Bad Godesberg → (50.6783789, 7.1479995), needsGeocoding=false
🔍 Friend 'Hans-Christian Riese' has 1 existing address(es)
   [0] Landwehrstr. 39, München - lat:48.1362218, lon:11.5596757, needsGeocoding:false
✅ PRESERVED geocoding: Landwehrstr. 39, München → (48.1362218, 11.5596757), needsGeocoding=false
🔍 Friend 'Peter Paulsmeier' has 1 existing address(es)
   [0] Brienner Str. 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gesecke Wex' has 1 existing address(es)
   [0] Steinheilstr., München - lat:48.149622282312244, lon:11.564783579983084, needsGeocoding:false
✅ PRESERVED geocoding: Steinheilstr., München → (48.149622282312244, 11.564783579983084), needsGeocoding=false
🔍 Friend 'Frederic Widenfels' has 1 existing address(es)
   [0] , StPaul de Vence - lat:46.8880811, lon:6.0800533, needsGeocoding:false
✅ PRESERVED geocoding: , StPaul de Vence → (46.8880811, 6.0800533), needsGeocoding=false
🔍 Friend 'Mona Dannenberg' has 1 existing address(es)
   [0] Kellerheisstraße 16, Tegernsee - lat:47.7007102, lon:11.7701998, needsGeocoding:false
✅ PRESERVED geocoding: Kellerheisstraße 16, Tegernsee → (47.7007102, 11.7701998), needsGeocoding=false
🔍 Friend 'Lâm Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Renato Sinitean' has 2 existing address(es)
   [0] 410 Park Ave, NY, NY 10022 - lat:40.7602725, lon:-73.9722284, needsGeocoding:false
   [1] 330 Broome 3F, New York, New York 10002 - lat:40.7193895, lon:-73.9937178, needsGeocoding:false
✅ PRESERVED geocoding: 410 Park Ave, NY, NY 10022 → (40.7602725, -73.9722284), needsGeocoding=false
✅ PRESERVED geocoding: 330 Broome 3F, New York, New York 10002 → (40.7193895, -73.9937178), needsGeocoding=false
🔍 Friend 'Simone Gandhi' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Konstantin Corsten' has 1 existing address(es)
   [0] Theresienstr. 60, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Paul Weinig' has 1 existing address(es)
   [0] K31/2 Le Hong Phong, Da Nang - lat:16.0639551, lon:108.221461, needsGeocoding:false
✅ PRESERVED geocoding: K31/2 Le Hong Phong, Da Nang → (16.0639551, 108.221461), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Karl-Schmid-Str. 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jens Viere' has 1 existing address(es)
   [0] Oskar-von-Miller-Ring 35, München - lat:48.1459297, lon:11.5770112, needsGeocoding:false
✅ PRESERVED geocoding: Oskar-von-Miller-Ring 35, München → (48.1459297, 11.5770112), needsGeocoding=false
🔍 Friend 'Paul Kastner' has 1 existing address(es)
   [0] Westendstraße 161, München - lat:48.1372725, lon:11.5284036, needsGeocoding:false
✅ PRESERVED geocoding: Westendstraße 161, München → (48.1372725, 11.5284036), needsGeocoding=false
🔍 Friend 'Michael Obster' has 1 existing address(es)
   [0] Landshuter Allee 12, München - lat:48.1484534, lon:11.5373018, needsGeocoding:false
✅ PRESERVED geocoding: Landshuter Allee 12, München → (48.1484534, 11.5373018), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Theresienstr. 93
Ecke Schleißheimer Str., München - lat:nil, lon:nil, needsGeocoding:true
   [1] Theresienstr. 93

Ecke Schleißheimer Str., München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Sonnenhausen 2, Glonn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hans Scheithauer, Dr.' has 1 existing address(es)
   [0] Isartorplatz 6, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] ,  - lat:36.7974298, lon:10.1817691, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (36.7974298, 10.1817691), needsGeocoding=false
🔍 Friend 'Axel Zörkendorfer' has 1 existing address(es)
   [0] Gollierstr. 70, München 80339 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Antje Ritzer' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Andrea Veicht' has 2 existing address(es)
   [0] Breisacher Str. 14

Rückgebäude, München 81667 - lat:nil, lon:nil, needsGeocoding:true
   [1] Breisacher Str. 14
Rückgebäude, München 81667 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernd & Dani Rütgers' has 1 existing address(es)
   [0] Weinheimer Str. 93, Weinheim - lat:49.5344821, lon:8.664755, needsGeocoding:false
✅ PRESERVED geocoding: Weinheimer Str. 93, Weinheim → (49.5344821, 8.664755), needsGeocoding=false
🔍 Friend 'Carole Mueller-Widmer' has 1 existing address(es)
   [0] , Bern - lat:46.9485497, lon:7.4523938, needsGeocoding:false
✅ PRESERVED geocoding: , Bern → (46.9485497, 7.4523938), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Baaderstr. 28, München - lat:48.1318345, lon:11.5794569, needsGeocoding:false
✅ PRESERVED geocoding: Baaderstr. 28, München → (48.1318345, 11.5794569), needsGeocoding=false
🔍 Friend 'Wulf Schönberg' has 1 existing address(es)
   [0] In der Raste 26, Bonn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Götzfried' has 1 existing address(es)
   [0] , Wiesbaden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bennet Polenz' has 1 existing address(es)
   [0] Bunsenstr. 5, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Caroline von Meister' has 1 existing address(es)
   [0] Graf-Seysselstrasse 2, Grünwald bei München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Mauritiuskirchplatz 3, Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , München-Schwabing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sascha Sambach' has 1 existing address(es)
   [0] Wilhelm-Geiler-Str. 5, Westerstede - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nguyên Võ' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Maria Theresien Str 53, Innsbruck - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mauro ' has 1 existing address(es)
   [0] via Avigna 39, Jenesien, Alto Adige - lat:46.5715934, lon:11.3232607, needsGeocoding:false
✅ PRESERVED geocoding: via Avigna 39, Jenesien, Alto Adige → (46.5715934, 11.3232607), needsGeocoding=false
🔍 Friend 'Gerhard Büsing' has 1 existing address(es)
   [0] Kleyerstr. 94, Frankfurt am Main - lat:50.0972649, lon:8.6294397, needsGeocoding:false
✅ PRESERVED geocoding: Kleyerstr. 94, Frankfurt am Main → (50.0972649, 8.6294397), needsGeocoding=false
🔍 Friend 'Markus Papenbrock' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Lee Broster' has 1 existing address(es)
   [0] U Pujcovny 8, Praha 1 - lat:50.0841659, lon:14.4313062, needsGeocoding:false
✅ PRESERVED geocoding: U Pujcovny 8, Praha 1 → (50.0841659, 14.4313062), needsGeocoding=false
🔍 Friend 'Christian Weber' has 1 existing address(es)
   [0] Am Seedeich 2, Cuxhaven - lat:53.8700492, lon:8.7048659, needsGeocoding:false
✅ PRESERVED geocoding: Am Seedeich 2, Cuxhaven → (53.8700492, 8.7048659), needsGeocoding=false
🔍 Friend 'Anna Yurienen Gallego' has 1 existing address(es)
   [0] , Strasbourg - lat:48.5907949, lon:7.7647622, needsGeocoding:false
✅ PRESERVED geocoding: , Strasbourg → (48.5907949, 7.7647622), needsGeocoding=false
🔍 Friend 'Christophe Ngo' has 1 existing address(es)
   [0] 295 Nguyễn Tất Thành, Floor 11, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Elisabeth Richter' has 1 existing address(es)
   [0] Stolberger Straße 88, Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Sternstr. 17, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Seitzstr. 13

(Eingang Christophstr.), München - lat:48.1410986, lon:11.5845742, needsGeocoding:false
   [1] Seitzstr. 13
(Eingang Christophstr.), München - lat:48.1410986, lon:11.5845742, needsGeocoding:false
✅ PRESERVED geocoding: Seitzstr. 13

(Eingang Christophstr.), München → (48.1410986, 11.5845742), needsGeocoding=false
✅ PRESERVED geocoding: Seitzstr. 13
(Eingang Christophstr.), München → (48.1410986, 11.5845742), needsGeocoding=false
🔍 Friend ' Zehetmair' has 1 existing address(es)
   [0] Leitzach 5, Miesbach - lat:47.7800722, lon:11.8762943, needsGeocoding:false
✅ PRESERVED geocoding: Leitzach 5, Miesbach → (47.7800722, 11.8762943), needsGeocoding=false
🔍 Friend 'Amélie Eise' has 1 existing address(es)
   [0] Elsässerstr. 32, München - lat:48.1296366, lon:11.604901, needsGeocoding:false
✅ PRESERVED geocoding: Elsässerstr. 32, München → (48.1296366, 11.604901), needsGeocoding=false
🔍 Friend 'Steffen & Eva Weber' has 2 existing address(es)
   [0] Jakob-Hagenbucher-Strasse 10c., München - lat:48.1830963, lon:11.5120064, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Jakob-Hagenbucher-Strasse 10c., München → (48.1830963, 11.5120064), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Ramses Stummer' has 1 existing address(es)
   [0] Pohlstr. 64, Berlin - lat:52.5014441, lon:13.3619737, needsGeocoding:false
✅ PRESERVED geocoding: Pohlstr. 64, Berlin → (52.5014441, 13.3619737), needsGeocoding=false
🔍 Friend 'Phương Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Carola Hubert' has 1 existing address(es)
   [0] Prinzregentenstr. 151, München - lat:48.1382883, lon:11.6181959, needsGeocoding:false
✅ PRESERVED geocoding: Prinzregentenstr. 151, München → (48.1382883, 11.6181959), needsGeocoding=false
🔍 Friend 'Sabine Frank' has 1 existing address(es)
   [0] Rosenheimerstrasse 30, München - lat:48.1308152, lon:11.5900544, needsGeocoding:false
✅ PRESERVED geocoding: Rosenheimerstrasse 30, München → (48.1308152, 11.5900544), needsGeocoding=false
🔍 Friend 'Michael Nürnberger' has 2 existing address(es)
   [0] Zamdorfer Straße 120, Munich - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Elisabethstraße 12, München - lat:48.1582873, lon:11.5722202, needsGeocoding:false
✅ PRESERVED geocoding: Elisabethstraße 12, München → (48.1582873, 11.5722202), needsGeocoding=false
🔍 Friend 'Yann Brun' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Phia & Piedro Brambilla' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Weberstr. 2, Rottenburg-Baisingen - lat:48.5056899, lon:8.7721196, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Weberstr. 2, Rottenburg-Baisingen → (48.5056899, 8.7721196), needsGeocoding=false
🔍 Friend 'Andrea Hempel' has 1 existing address(es)
   [0] Baunsbergstr. 14, Kassel - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Emanuel André' has 1 existing address(es)
   [0] , Düsseldorf - lat:51.2258634, lon:6.7722986, needsGeocoding:false
✅ PRESERVED geocoding: , Düsseldorf → (51.2258634, 6.7722986), needsGeocoding=false
🔍 Friend 'Birgit Greiffenberg' has 1 existing address(es)
   [0] Frankfurter Ring 105 a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105 a, München → (48.1882173, 11.58567), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Bayerstr. 21, Muenchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Lancon' has 1 existing address(es)
   [0] Firstalmweg 4, Grünwald b. München 82031 - lat:48.0323471, lon:11.5239891, needsGeocoding:false
✅ PRESERVED geocoding: Firstalmweg 4, Grünwald b. München 82031 → (48.0323471, 11.5239891), needsGeocoding=false
🔍 Friend 'Bernd Seibel' has 1 existing address(es)
   [0] Denningerstr. 15, München - lat:48.1492917, lon:11.6156632, needsGeocoding:false
✅ PRESERVED geocoding: Denningerstr. 15, München → (48.1492917, 11.6156632), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Lottumstr. 9/10, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Philippe Dreiling' has 1 existing address(es)
   [0] Schönstr. 43, München - lat:48.1079386, lon:11.5655747, needsGeocoding:false
✅ PRESERVED geocoding: Schönstr. 43, München → (48.1079386, 11.5655747), needsGeocoding=false
🔍 Friend 'Rainer Ashauer' has 1 existing address(es)
   [0] Neumarkter Straße 28, 81673 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kathrin Zahn (ex-Kleefeldt)' has 1 existing address(es)
   [0] Leopoldstr. 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kirchholzweg 2, Traunreut - lat:47.9614075, lon:12.6130876, needsGeocoding:false
✅ PRESERVED geocoding: Kirchholzweg 2, Traunreut → (47.9614075, 12.6130876), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Bräuhausgasse 8, Erding - lat:48.3071703, lon:11.9083901, needsGeocoding:false
✅ PRESERVED geocoding: Bräuhausgasse 8, Erding → (48.3071703, 11.9083901), needsGeocoding=false
🔍 Friend 'Katie Butler' has 1 existing address(es)
   [0] 28517 Restwell Road, Eugene - lat:43.9946845, lon:-123.2170518, needsGeocoding:false
✅ PRESERVED geocoding: 28517 Restwell Road, Eugene → (43.9946845, -123.2170518), needsGeocoding=false
🔍 Friend 'Kurt Gallenberger' has 2 existing address(es)
   [0] Sonnering,  - lat:nil, lon:nil, needsGeocoding:true
   [1] Frankfurter Ring, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Aruna Singhvi' has 1 existing address(es)
   [0] Soukenická 7, Praha 1 - lat:50.0910031, lon:14.4287069, needsGeocoding:false
✅ PRESERVED geocoding: Soukenická 7, Praha 1 → (50.0910031, 14.4287069), needsGeocoding=false
🔍 Friend 'Wolfgang Glock' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Minh ' has 1 existing address(es)
   [0] Ocean Villa/The Dunes,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Raja Moorthy' has 1 existing address(es)
   [0] Linprunstrasse 16, Munich - lat:48.1496173, lon:11.5551904, needsGeocoding:false
✅ PRESERVED geocoding: Linprunstrasse 16, Munich → (48.1496173, 11.5551904), needsGeocoding=false
🔍 Friend 'Monique Vuillemin' has 1 existing address(es)
   [0] 1, Impasse du Pré au Moine, Veyrier-du-Lac - lat:45.8755409, lon:6.1779688, needsGeocoding:false
✅ PRESERVED geocoding: 1, Impasse du Pré au Moine, Veyrier-du-Lac → (45.8755409, 6.1779688), needsGeocoding=false
🔍 Friend 'Philipp Holzinger' has 1 existing address(es)
   [0] , Saigon / HCMC - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Steve Boxley' has 1 existing address(es)
   [0] , London - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Vaclavske namesti 29, Praha - lat:50.0819254, lon:14.427328, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavske namesti 29, Praha → (50.0819254, 14.427328), needsGeocoding=false
🔍 Friend 'Stephan Bernatek' has 1 existing address(es)
   [0] Hewlett-Packard-Str. 1, Bad Homburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Aida Dia' has 1 existing address(es)
   [0] Große Elbstraße. 279, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mani Gharib' has 1 existing address(es)
   [0] Quai de Grenelle

Rue Robert de Flers 4-8 Tours Avant-Seine, Paris 15° - lat:48.851673261128944, lon:2.284866851852596, needsGeocoding:false
✅ PRESERVED geocoding: Quai de Grenelle

Rue Robert de Flers 4-8 Tours Avant-Seine, Paris 15° → (48.851673261128944, 2.284866851852596), needsGeocoding=false
🔍 Friend 'Eva Munz' has 1 existing address(es)
   [0] Landlstr. 6, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Thurner' has 1 existing address(es)
   [0] Rosenheimer Straße 145 h, München - lat:48.1220423, lon:11.6066192, needsGeocoding:false
✅ PRESERVED geocoding: Rosenheimer Straße 145 h, München → (48.1220423, 11.6066192), needsGeocoding=false
🔍 Friend 'Vivian Haag' has 1 existing address(es)
   [0] Neustaetterstr. 2
(Klingel: Frischat / Haag), Neuhausen/ München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martin Hink' has 1 existing address(es)
   [0] Leibnizstr.2, Böblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Indro Celia' has 1 existing address(es)
   [0] Nordstr. 15, Zürich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Wiedeking' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Henkestrasse 91, Erlangen - lat:49.5943805, lon:11.0187162, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Henkestrasse 91, Erlangen → (49.5943805, 11.0187162), needsGeocoding=false
🔍 Friend 'Derek Mills' has 1 existing address(es)
   [0] Winchester House

1 Great Winchester Stree, London EC2N 2DB - lat:51.5162097, lon:-0.0852077, needsGeocoding:false
✅ PRESERVED geocoding: Winchester House

1 Great Winchester Stree, London EC2N 2DB → (51.5162097, -0.0852077), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] U Sluncové 618, Praha 8 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ludwig Brünnig' has 1 existing address(es)
   [0] Aidenbachstr. 42, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexia Chovanec' has 1 existing address(es)
   [0] , Salzburg - lat:47.804451, lon:13.0439421, needsGeocoding:false
✅ PRESERVED geocoding: , Salzburg → (47.804451, 13.0439421), needsGeocoding=false
🔍 Friend 'Ara Einy' has 1 existing address(es)
   [0] Zeppelinstr. 73, München - lat:48.1301557, lon:11.586388, needsGeocoding:false
✅ PRESERVED geocoding: Zeppelinstr. 73, München → (48.1301557, 11.586388), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Mathildenstr. 3, München - lat:48.1347479, lon:11.5636471, needsGeocoding:false
✅ PRESERVED geocoding: Mathildenstr. 3, München → (48.1347479, 11.5636471), needsGeocoding=false
🔍 Friend 'Katrin, Mama von Valetta Schneider' has 1 existing address(es)
   [0] Weissenburger Str. 44,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Pod Bruskou 7, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Roy Minh' has 1 existing address(es)
   [0] , Hanoi - lat:21.028382, lon:105.853734, needsGeocoding:false
✅ PRESERVED geocoding: , Hanoi → (21.028382, 105.853734), needsGeocoding=false
🔍 Friend 'Tiên Đặng' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stéphanie & Patrick Vincent' has 2 existing address(es)
   [0] Hugo-Von-Hoffmannsthal-Str. 10

Nähe Arabellapark

gegenüber Hausenstein-Gymn., München - lat:48.1510223, lon:11.6273347, needsGeocoding:false
   [1] Hugo-Von-Hoffmannsthal-Str. 10

Nähe Arabellapark

ngegenüber Hausenstein-Gymn., München - lat:48.1510223, lon:11.6273347, needsGeocoding:false
✅ PRESERVED geocoding: Hugo-Von-Hoffmannsthal-Str. 10

Nähe Arabellapark

gegenüber Hausenstein-Gymn., München → (48.1510223, 11.6273347), needsGeocoding=false
✅ PRESERVED geocoding: Hugo-Von-Hoffmannsthal-Str. 10

Nähe Arabellapark

ngegenüber Hausenstein-Gymn., München → (48.1510223, 11.6273347), needsGeocoding=false
🔍 Friend 'Le Huong ' has 1 existing address(es)
   [0] 98 Nguyen Van Cu, Hoi An - lat:15.8937217, lon:108.3169768, needsGeocoding:false
✅ PRESERVED geocoding: 98 Nguyen Van Cu, Hoi An → (15.8937217, 108.3169768), needsGeocoding=false
🔍 Friend 'Laurent Stein' has 1 existing address(es)
   [0] Agnesstr. 61, München - lat:48.1583517, lon:11.5612055, needsGeocoding:false
✅ PRESERVED geocoding: Agnesstr. 61, München → (48.1583517, 11.5612055), needsGeocoding=false
🔍 Friend 'Bettina Beaufayt' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anna Landers' has 1 existing address(es)
   [0] 5395 SW Elm Ave, Beaverton OR - lat:45.4809673, lon:-122.7768294, needsGeocoding:false
✅ PRESERVED geocoding: 5395 SW Elm Ave, Beaverton OR → (45.4809673, -122.7768294), needsGeocoding=false
🔍 Friend 'Beach Arena' has 1 existing address(es)
   [0] Föhringer Ring 5, München - lat:48.1863975, lon:11.6130467, needsGeocoding:false
✅ PRESERVED geocoding: Föhringer Ring 5, München → (48.1863975, 11.6130467), needsGeocoding=false
🔍 Friend 'Richter ' has 1 existing address(es)
   [0] Martin-Empl-Ring 8, 812829 München-Riem - lat:48.139609, lon:11.6815269, needsGeocoding:false
✅ PRESERVED geocoding: Martin-Empl-Ring 8, 812829 München-Riem → (48.139609, 11.6815269), needsGeocoding=false
🔍 Friend 'Miriam & Reni Horstbrink' has 1 existing address(es)
   [0] Im Großen Vorwerk 27, Herford - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Sutten 32, Rottach-Egern - lat:47.6558932, lon:11.8315486, needsGeocoding:false
✅ PRESERVED geocoding: Sutten 32, Rottach-Egern → (47.6558932, 11.8315486), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Wörthstraße 7, München - lat:48.1317699, lon:11.5987997, needsGeocoding:false
✅ PRESERVED geocoding: Wörthstraße 7, München → (48.1317699, 11.5987997), needsGeocoding=false
🔍 Friend 'Dan Lam Mai Nguyen' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kellerstr. 32, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Philip Bousquet' has 1 existing address(es)
   [0] Rablstr. 37, München - lat:48.1272913, lon:11.592755, needsGeocoding:false
✅ PRESERVED geocoding: Rablstr. 37, München → (48.1272913, 11.592755), needsGeocoding=false
🔍 Friend 'Ralf Warthmann' has 1 existing address(es)
   [0] , Stuttgart - lat:48.7752444, lon:9.177595, needsGeocoding:false
✅ PRESERVED geocoding: , Stuttgart → (48.7752444, 9.177595), needsGeocoding=false
🔍 Friend 'Annette Jasper' has 1 existing address(es)
   [0] Karlsplatz 6, München - lat:48.1397205, lon:11.5664545, needsGeocoding:false
✅ PRESERVED geocoding: Karlsplatz 6, München → (48.1397205, 11.5664545), needsGeocoding=false
🔍 Friend 'Haik Schumacher' has 2 existing address(es)
   [0] Hanselmannstr. 28, München - lat:48.1797955, lon:11.5657201, needsGeocoding:false
   [1] Einsteinring 30, Muenchen - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: Hanselmannstr. 28, München → (48.1797955, 11.5657201), needsGeocoding=false
✅ PRESERVED geocoding: Einsteinring 30, Muenchen → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend 'Stephane Lavaud' has 1 existing address(es)
   [0] 2 rue d'estienne d'orves, Cachan - lat:48.7918647, lon:2.3219096, needsGeocoding:false
✅ PRESERVED geocoding: 2 rue d'estienne d'orves, Cachan → (48.7918647, 2.3219096), needsGeocoding=false
🔍 Friend 'Nick Walker' has 1 existing address(es)
   [0] Inselkammerstrasse 5, Unterhaching - lat:48.0557598, lon:11.6083576, needsGeocoding:false
✅ PRESERVED geocoding: Inselkammerstrasse 5, Unterhaching → (48.0557598, 11.6083576), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Steinstr. 42, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jost Elliesen' has 2 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
   [1] Ahmserstr. 4, Bad Salzuflen - lat:52.0655106, lon:8.6823687, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
✅ PRESERVED geocoding: Ahmserstr. 4, Bad Salzuflen → (52.0655106, 8.6823687), needsGeocoding=false
🔍 Friend 'Khanh Huynh' has 1 existing address(es)
   [0] , Hanoi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Binh Phan' has 1 existing address(es)
   [0] 47 Hoa Minh 14, Danang - lat:16.0805086, lon:108.1598971, needsGeocoding:false
✅ PRESERVED geocoding: 47 Hoa Minh 14, Danang → (16.0805086, 108.1598971), needsGeocoding=false
🔍 Friend 'Sabine & Klaus Holberg' has 1 existing address(es)
   [0] Sonnabendstr. 16, Wuppertal - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Innerwaldstraße 26, Sölden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephan Wiesener' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Marstallplatz 3, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Maria-Einsiedel Str. 2, München - lat:48.100092, lon:11.546092, needsGeocoding:false
✅ PRESERVED geocoding: Maria-Einsiedel Str. 2, München → (48.100092, 11.546092), needsGeocoding=false
🔍 Friend 'Marcus Goedsche' has 1 existing address(es)
   [0] Einsteinstr. 172, München - lat:48.1375563, lon:11.6229421, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinstr. 172, München → (48.1375563, 11.6229421), needsGeocoding=false
🔍 Friend 'Brigitte Driskel' has 1 existing address(es)
   [0] Ottostr. 69, Ottobrunn 85521 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Homayoun Mehmaneche' has 2 existing address(es)
   [0] Eichenstr. 21, München - lat:48.1185184, lon:11.4764149, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Eichenstr. 21, München → (48.1185184, 11.4764149), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Felix Schepers' has 1 existing address(es)
   [0] , Berlin - lat:52.5187416, lon:13.4080224, needsGeocoding:false
✅ PRESERVED geocoding: , Berlin → (52.5187416, 13.4080224), needsGeocoding=false
🔍 Friend 'Zupancic Barbara' has 2 existing address(es)
   [0] Tucholskystr. 63, Frankfurt am Main - lat:50.0929416, lon:8.6875388, needsGeocoding:false
   [1] Kaiserstr. 29, Frankfurt aM - lat:50.1097779, lon:8.6736243, needsGeocoding:false
✅ PRESERVED geocoding: Tucholskystr. 63, Frankfurt am Main → (50.0929416, 8.6875388), needsGeocoding=false
✅ PRESERVED geocoding: Kaiserstr. 29, Frankfurt aM → (50.1097779, 8.6736243), needsGeocoding=false
🔍 Friend 'Erich Fischer' has 1 existing address(es)
   [0] Hildegardstr. 26, Unterschleißheim 85716 - lat:48.2723298, lon:11.589403, needsGeocoding:false
✅ PRESERVED geocoding: Hildegardstr. 26, Unterschleißheim 85716 → (48.2723298, 11.589403), needsGeocoding=false
🔍 Friend 'Eckhard Budde' has 1 existing address(es)
   [0] Fürstenaustr. 7, Herford - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karin Beittel' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Angelika Blauth' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Lehmann ' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Heidi & Stefan Knorr-Gulde' has 1 existing address(es)
   [0] Frankenstr. 65, Bliesheim (Erfstadt) - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Muriel Rathje' has 2 existing address(es)
   [0] Otto-Hahn-Ring 6, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Hiltenspergerstr. 28, München - lat:48.1597647, lon:11.5670399, needsGeocoding:false
✅ PRESERVED geocoding: Hiltenspergerstr. 28, München → (48.1597647, 11.5670399), needsGeocoding=false
🔍 Friend 'Michaela Mohri' has 1 existing address(es)
   [0] Stefan George Ring 2, München - lat:48.1406544, lon:11.6489525, needsGeocoding:false
✅ PRESERVED geocoding: Stefan George Ring 2, München → (48.1406544, 11.6489525), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] St.-Anna Platz 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Grosse Bleichen 21, Hamburg - lat:53.552742, lon:9.9893758, needsGeocoding:false
✅ PRESERVED geocoding: Grosse Bleichen 21, Hamburg → (53.552742, 9.9893758), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Vsehrdova 16, Praha 1 - lat:50.0832085, lon:14.4054194, needsGeocoding:false
✅ PRESERVED geocoding: Vsehrdova 16, Praha 1 → (50.0832085, 14.4054194), needsGeocoding=false
🔍 Friend 'Trung Lâm' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Denis Werner' has 1 existing address(es)
   [0] Adams-Lehmann-Str. 44, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Pariserstr. 19, München - lat:48.1275795, lon:11.5985684, needsGeocoding:false
✅ PRESERVED geocoding: Pariserstr. 19, München → (48.1275795, 11.5985684), needsGeocoding=false
🔍 Friend 'Carsten Lehnen' has 2 existing address(es)
   [0] Schildergasse 113-117, Köln - lat:50.9363876, lon:6.94962, needsGeocoding:false
   [1] Spicherenstr. 12, München - lat:48.1309463, lon:11.6067297, needsGeocoding:false
✅ PRESERVED geocoding: Schildergasse 113-117, Köln → (50.9363876, 6.94962), needsGeocoding=false
✅ PRESERVED geocoding: Spicherenstr. 12, München → (48.1309463, 11.6067297), needsGeocoding=false
🔍 Friend 'Gerd Wriedt' has 1 existing address(es)
   [0] Reuterweg 44, Frankfurt am Main - lat:50.1192937, lon:8.6710161, needsGeocoding:false
✅ PRESERVED geocoding: Reuterweg 44, Frankfurt am Main → (50.1192937, 8.6710161), needsGeocoding=false
🔍 Friend 'Thomas Schlauch' has 1 existing address(es)
   [0] Hauptstr. 166, Stuttgart - lat:48.7314386, lon:9.0930472, needsGeocoding:false
✅ PRESERVED geocoding: Hauptstr. 166, Stuttgart → (48.7314386, 9.0930472), needsGeocoding=false
🔍 Friend 'Jana Kozlíková' has 2 existing address(es)
   [0] Charles Square Center, 4. patro

Karlovo nám. 10, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
   [1] Charles Square Center, 4. patro
Karlovo nám. 10, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Eggenberger' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Uwe Spettnagel' has 1 existing address(es)
   [0] , Münchern - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , Münchern → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Florian Brüggemann' has 1 existing address(es)
   [0] , Verden - lat:52.9220675, lon:9.2287333, needsGeocoding:false
✅ PRESERVED geocoding: , Verden → (52.9220675, 9.2287333), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Zamdorferstr. 86, München 80677 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'David Stupnanek' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Menkel' has 2 existing address(es)
   [0] Anzingerstr. 1, München - lat:48.1212119, lon:11.6065926, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Anzingerstr. 1, München → (48.1212119, 11.6065926), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Fraunhoferstr. 8, Penzberg - lat:47.7488993, lon:11.3836097, needsGeocoding:false
✅ PRESERVED geocoding: Fraunhoferstr. 8, Penzberg → (47.7488993, 11.3836097), needsGeocoding=false
🔍 Friend 'Zdeněk Schneider' has 1 existing address(es)
   [0] Holečkova 117, Praha 5 - lat:50.0717893, lon:14.3858539, needsGeocoding:false
✅ PRESERVED geocoding: Holečkova 117, Praha 5 → (50.0717893, 14.3858539), needsGeocoding=false
🔍 Friend 'Marie Desarmien' has 1 existing address(es)
   [0] Delpstr. 37,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Zentralländerstr. 30, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Franz Nussbaum' has 1 existing address(es)
   [0] Gartenstr. 44, 6240 Königstein - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Hall' has 1 existing address(es)
   [0] Shires Barn

Stantonbury Park Offices 

Office No. 01908 328 000

Wolverton Road, North Milton Keynes - lat:52.0713734, lon:-0.7720741, needsGeocoding:false
✅ PRESERVED geocoding: Shires Barn

Stantonbury Park Offices 

Office No. 01908 328 000

Wolverton Road, North Milton Keynes → (52.0713734, -0.7720741), needsGeocoding=false
🔍 Friend 'Stepan Bechynsky' has 2 existing address(es)
   [0] Vyskocilova 1461/2a, Praha 4 - lat:nil, lon:nil, needsGeocoding:true
   [1] K Palecku 26, Praha 9 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marion Hennig' has 1 existing address(es)
   [0] , Düsseldorf - lat:51.2258634, lon:6.7722986, needsGeocoding:false
✅ PRESERVED geocoding: , Düsseldorf → (51.2258634, 6.7722986), needsGeocoding=false
🔍 Friend 'Ulrich Kuratli' has 1 existing address(es)
   [0] Wohlerstrasse 2, Boswil - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Keith Gruen' has 1 existing address(es)
   [0] Landwehrstr. 60, München - lat:48.1365117, lon:11.5552444, needsGeocoding:false
✅ PRESERVED geocoding: Landwehrstr. 60, München → (48.1365117, 11.5552444), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Barer- Ecke Theresienstraße, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anh Vũ' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jacob Edelbo Lauritzen' has 1 existing address(es)
   [0] , Aalborg - lat:57.0466647, lon:9.9195393, needsGeocoding:false
✅ PRESERVED geocoding: , Aalborg → (57.0466647, 9.9195393), needsGeocoding=false
🔍 Friend 'Dominic Meinardi' has 1 existing address(es)
   [0] 22/12 Tran Quang Khai Street, Ninh Kieu Dist., Can Tho City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Willi Mannheims' has 1 existing address(es)
   [0] Graf-Adolf-Str. 18, Düsseldorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jörn Ehrsam' has 1 existing address(es)
   [0] Gustav-Heinemann-Ring 212, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernhard Ritzer' has 1 existing address(es)
   [0] ,  - lat:52.637082, lon:5.6735911, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (52.637082, 5.6735911), needsGeocoding=false
🔍 Friend 'Sak Hutar' has 1 existing address(es)
   [0] , Bangkok - lat:13.7537858, lon:100.4985251, needsGeocoding:false
✅ PRESERVED geocoding: , Bangkok → (13.7537858, 100.4985251), needsGeocoding=false
🔍 Friend 'Gertraud & Andreas Sauter' has 1 existing address(es)
   [0] Kreith 18, Mutters - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Conny Schopper' has 1 existing address(es)
   [0] Schönstr. 73, München 81534 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kay Schmidt' has 2 existing address(es)
   [0] Gohrenstr. 4, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Max-Lebsche-Platz 31, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andrea Schmieden' has 1 existing address(es)
   [0] Wörthstr. 24, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ulrike Gebhard' has 1 existing address(es)
   [0] Nördliche Münchner Str. 43, München - Grünwald - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Mühlweg 2, Kastellbell/Tschars Nähe Meran - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Yves & Sonja Damblemont' has 1 existing address(es)
   [0] 102 Avenue Victor Hugo, Dijon - lat:47.331875, lon:5.0202234, needsGeocoding:false
✅ PRESERVED geocoding: 102 Avenue Victor Hugo, Dijon → (47.331875, 5.0202234), needsGeocoding=false
🔍 Friend 'Magalie Cochard' has 1 existing address(es)
   [0] 21 rue des Chaux, Francheville - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ting Wang' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Lufthansa City Center Business Plus

Bahnhofstrasse 26, Deisenhofen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karl-Friedrich Mutzhas' has 1 existing address(es)
   [0] Leopoldstr. 110, München - lat:48.1658863, lon:11.5866466, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 110, München → (48.1658863, 11.5866466), needsGeocoding=false
🔍 Friend 'Frank Giesler' has 1 existing address(es)
   [0] Atlantic Haus - Zirkusweg 1, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'King ' has 1 existing address(es)
   [0] Georg-Brauchle-Ring 91, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Georgenstr. 144, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Maxi Zirm' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dirk Baumgärtel' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sabrina Hamann' has 1 existing address(es)
   [0] , Bremerhaven - lat:53.541519, lon:8.5811372, needsGeocoding:false
✅ PRESERVED geocoding: , Bremerhaven → (53.541519, 8.5811372), needsGeocoding=false
🔍 Friend 'Martin Nagler' has 1 existing address(es)
   [0] Hauptstr. 9, Schnaittenbach - lat:49.5478813, lon:12.0004689, needsGeocoding:false
✅ PRESERVED geocoding: Hauptstr. 9, Schnaittenbach → (49.5478813, 12.0004689), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rheinstraße 20, München - lat:48.1672983, lon:11.5809524, needsGeocoding:false
✅ PRESERVED geocoding: Rheinstraße 20, München → (48.1672983, 11.5809524), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 29 Ngo Gia Tur, DaNang - lat:16.0701615, lon:108.217136, needsGeocoding:false
✅ PRESERVED geocoding: 29 Ngo Gia Tur, DaNang → (16.0701615, 108.217136), needsGeocoding=false
🔍 Friend 'Rüdiger ' has 1 existing address(es)
   [0] Brunnstr. 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jochen Dost' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Janet Schaufler' has 1 existing address(es)
   [0] Pinderpark 4, Zirndorf - lat:49.4407578, lon:10.9483748, needsGeocoding:false
✅ PRESERVED geocoding: Pinderpark 4, Zirndorf → (49.4407578, 10.9483748), needsGeocoding=false
🔍 Friend 'Sylvie Gamichon-Bulla' has 1 existing address(es)
   [0] Ungsteiner Straße 50, Munich - lat:48.1105989, lon:11.5972219, needsGeocoding:false
✅ PRESERVED geocoding: Ungsteiner Straße 50, Munich → (48.1105989, 11.5972219), needsGeocoding=false
🔍 Friend 'Marlene Foerster/Schweiger' has 1 existing address(es)
   [0] Hahnstr. 37c, Frankfurt a.M. - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Thomas Ritzer' has 1 existing address(es)
   [0] , Reutte - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Klaus Krüger' has 1 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München → (48.1882173, 11.58567), needsGeocoding=false
🔍 Friend 'Doreen Gräbner' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Elena Vavilchenkova' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nathalie Huguet' has 1 existing address(es)
   [0] Oberviechtacher Str. 28, München 81549 - lat:48.0912124, lon:11.6069028, needsGeocoding:false
✅ PRESERVED geocoding: Oberviechtacher Str. 28, München 81549 → (48.0912124, 11.6069028), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Urfeld 15,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Werner Büdel' has 1 existing address(es)
   [0] Berlinerstr. 95, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephan Gellrich' has 1 existing address(es)
   [0] Langertr. 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Paul Silhavi' has 1 existing address(es)
   [0] Cermakova 7, Praha 2 - lat:50.0712247, lon:14.4414245, needsGeocoding:false
✅ PRESERVED geocoding: Cermakova 7, Praha 2 → (50.0712247, 14.4414245), needsGeocoding=false
🔍 Friend 'Robert Klinger' has 1 existing address(es)
   [0] , Salzburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'David Evans' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rablstr. 37, München - Haidhausen - lat:48.1272913, lon:11.592755, needsGeocoding:false
✅ PRESERVED geocoding: Rablstr. 37, München - Haidhausen → (48.1272913, 11.592755), needsGeocoding=false
🔍 Friend 'Summer Smith' has 1 existing address(es)
   [0] Linprunstrasse 16, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hilmar Saller' has 1 existing address(es)
   [0] 150 Route du Nant D'Avril, Meyrin - lat:46.227563, lon:6.05826, needsGeocoding:false
✅ PRESERVED geocoding: 150 Route du Nant D'Avril, Meyrin → (46.227563, 6.05826), needsGeocoding=false
🔍 Friend 'Josef Vermach' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tim Ossenfort' has 1 existing address(es)
   [0] Große Elbstraße 279a, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Emmeram von Braun' has 1 existing address(es)
   [0] Ludwigstr. 7, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hartmuth Rampitsch' has 1 existing address(es)
   [0] Kirchplatz 5b, Pullach - lat:48.0564931, lon:11.5229987, needsGeocoding:false
✅ PRESERVED geocoding: Kirchplatz 5b, Pullach → (48.0564931, 11.5229987), needsGeocoding=false
🔍 Friend 'Ullrich Lammert' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Peter Bruha' has 1 existing address(es)
   [0] Sperberstr. 28, Bruckmühl - lat:47.8748599, lon:11.9438551, needsGeocoding:false
✅ PRESERVED geocoding: Sperberstr. 28, Bruckmühl → (47.8748599, 11.9438551), needsGeocoding=false
🔍 Friend 'Guido Hannich' has 1 existing address(es)
   [0] Könneritzstr. 45, Leipzig - lat:51.3252228, lon:12.344678, needsGeocoding:false
✅ PRESERVED geocoding: Könneritzstr. 45, Leipzig → (51.3252228, 12.344678), needsGeocoding=false
🔍 Friend 'Peter Ihm' has 2 existing address(es)
   [0] Richard-Strauss-Str. 45, München - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Nerudova 27, Praha 1 - Malá Strana - lat:50.0884417, lon:14.3988537, needsGeocoding:false
✅ PRESERVED geocoding: Nerudova 27, Praha 1 - Malá Strana → (50.0884417, 14.3988537), needsGeocoding=false
🔍 Friend 'Magali Tringale' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Christian Winkler' has 1 existing address(es)
   [0] Theodorstr. 9, Nürnberg - lat:49.4533485, lon:11.0895715, needsGeocoding:false
✅ PRESERVED geocoding: Theodorstr. 9, Nürnberg → (49.4533485, 11.0895715), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Friedenheimer Straße 59a, München - lat:48.1377462, lon:11.5102951, needsGeocoding:false
✅ PRESERVED geocoding: Friedenheimer Straße 59a, München → (48.1377462, 11.5102951), needsGeocoding=false
🔍 Friend 'Karin Heck' has 1 existing address(es)
   [0] Fußbergstraße 1, Gauting - lat:48.0722598, lon:11.3872278, needsGeocoding:false
✅ PRESERVED geocoding: Fußbergstraße 1, Gauting → (48.0722598, 11.3872278), needsGeocoding=false
🔍 Friend 'Olaf Nedorn' has 1 existing address(es)
   [0] Theodor-Althoff-Str. 2, Essen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ton Laarhoven' has 1 existing address(es)
   [0] Arena Boulevard 129-133, Amsterdam Zui-Oost - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Gründling' has 1 existing address(es)
   [0] Spicherenstr. 12,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Luisa Braker' has 1 existing address(es)
   [0] Preysingstr. 69, München - lat:48.1325266, lon:11.5993169, needsGeocoding:false
✅ PRESERVED geocoding: Preysingstr. 69, München → (48.1325266, 11.5993169), needsGeocoding=false
🔍 Friend 'Sabine Gandenberger' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexander Gösswein' has 1 existing address(es)
   [0] Unterer Anger 3, München - lat:48.1330375, lon:11.5711773, needsGeocoding:false
✅ PRESERVED geocoding: Unterer Anger 3, München → (48.1330375, 11.5711773), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Wroclaw / Breslau - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Floria Hauck' has 1 existing address(es)
   [0] Wittelsbacherstr.16A, Neubiberg - lat:48.0781725, lon:11.6653252, needsGeocoding:false
✅ PRESERVED geocoding: Wittelsbacherstr.16A, Neubiberg → (48.0781725, 11.6653252), needsGeocoding=false
🔍 Friend 'Alessandro Manfron' has 2 existing address(es)
   [0] Paradeplatz 8, Zürich - lat:nil, lon:nil, needsGeocoding:true
   [1] Freischützgasse 10, Zürich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Maier' has 2 existing address(es)
   [0] Christoph-Prost-Str. 16, 1409, München - lat:48.1839178, lon:11.6111085, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Christoph-Prost-Str. 16, 1409, München → (48.1839178, 11.6111085), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schleißheimer Str. 142a, München - lat:48.160719, lon:11.5638741, needsGeocoding:false
✅ PRESERVED geocoding: Schleißheimer Str. 142a, München → (48.160719, 11.5638741), needsGeocoding=false
🔍 Friend 'Emanuelle, Vanessa Belohradsky' has 1 existing address(es)
   [0] Wolfskehlstr. 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Marktstr. 40, Brixlegg - lat:47.427689, lon:11.8771577, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Marktstr. 40, Brixlegg → (47.427689, 11.8771577), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hans-Sachs-Str. 9, München - lat:48.1296367, lon:11.5701351, needsGeocoding:false
✅ PRESERVED geocoding: Hans-Sachs-Str. 9, München → (48.1296367, 11.5701351), needsGeocoding=false
🔍 Friend 'Andreas Stockmann' has 1 existing address(es)
   [0] Kapellenstraße 5, Ampfing - lat:48.2519049, lon:12.3995109, needsGeocoding:false
✅ PRESERVED geocoding: Kapellenstraße 5, Ampfing → (48.2519049, 12.3995109), needsGeocoding=false
🔍 Friend 'Daniel Voegeli' has 1 existing address(es)
   [0] Stefan-George-Ring 2, München - lat:48.1406544, lon:11.6489525, needsGeocoding:false
✅ PRESERVED geocoding: Stefan-George-Ring 2, München → (48.1406544, 11.6489525), needsGeocoding=false
🔍 Friend 'Andrew Lacy' has 2 existing address(es)
   [0] Weltenburger Strasse 4, München - lat:48.1406014, lon:11.6273952, needsGeocoding:false
   [1] Innere Wiener Strasse 44, München - lat:48.133957, lon:11.5958867, needsGeocoding:false
✅ PRESERVED geocoding: Weltenburger Strasse 4, München → (48.1406014, 11.6273952), needsGeocoding=false
✅ PRESERVED geocoding: Innere Wiener Strasse 44, München → (48.133957, 11.5958867), needsGeocoding=false
🔍 Friend 'Vincent Leconte' has 1 existing address(es)
   [0] , Grenoble - lat:45.1870781, lon:5.7306849, needsGeocoding:false
✅ PRESERVED geocoding: , Grenoble → (45.1870781, 5.7306849), needsGeocoding=false
🔍 Friend 'Peter Seidel' has 1 existing address(es)
   [0] Dall’Armistr 24, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Roland Jäger' has 1 existing address(es)
   [0] Am Priel 13, Rott am Inn - lat:47.9841923, lon:12.1331256, needsGeocoding:false
✅ PRESERVED geocoding: Am Priel 13, Rott am Inn → (47.9841923, 12.1331256), needsGeocoding=false
🔍 Friend 'Christiane Von Kutzschenbach' has 1 existing address(es)
   [0] Hubertusstr. 3, München - lat:48.1543694, lon:11.5197377, needsGeocoding:false
✅ PRESERVED geocoding: Hubertusstr. 3, München → (48.1543694, 11.5197377), needsGeocoding=false
🔍 Friend 'Michael White' has 1 existing address(es)
   [0] Vaclavska 12, Prague 2 - lat:50.0742398, lon:14.4176992, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavska 12, Prague 2 → (50.0742398, 14.4176992), needsGeocoding=false
🔍 Friend 'Leyla & Kamran Salmassinia' has 1 existing address(es)
   [0] Erhardtstr.3, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eduard Benes' has 1 existing address(es)
   [0] Na Rozcesti 6, Praha 9 - lat:50.1045649, lon:14.4849013, needsGeocoding:false
✅ PRESERVED geocoding: Na Rozcesti 6, Praha 9 → (50.1045649, 14.4849013), needsGeocoding=false
🔍 Friend 'Danielle An' has 1 existing address(es)
   [0] 12 Tai Koo Wan Road, Tai Koo Shing Island - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'René Lindhorst' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ninoslav Cakarovski' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Penzel Andreas' has 1 existing address(es)
   [0] Aidenbachstr. 52, München - lat:48.0971417, lon:11.5232178, needsGeocoding:false
✅ PRESERVED geocoding: Aidenbachstr. 52, München → (48.0971417, 11.5232178), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Eric-Jean Biron' has 1 existing address(es)
   [0] , DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 216 Bach Dang Street, Danang - lat:16.064972, lon:108.2240912, needsGeocoding:false
✅ PRESERVED geocoding: 216 Bach Dang Street, Danang → (16.064972, 108.2240912), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Cours Napoleon

(Arcades du Louvre)

93 rue de Rivoli, Paris - lat:48.8616179, lon:2.3364942, needsGeocoding:false
✅ PRESERVED geocoding: Cours Napoleon

(Arcades du Louvre)

93 rue de Rivoli, Paris → (48.8616179, 2.3364942), needsGeocoding=false
🔍 Friend 'Martin Wolf' has 1 existing address(es)
   [0] Heiliggeiststr. 3, Innsbruck - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jason Thorne' has 2 existing address(es)
   [0] Wimbledon Bridge House

1 Hartfield Road, Wimbledon, London SW19 3RU - lat:51.4200272, lon:-0.2068051, needsGeocoding:false
   [1] Wimbledon Bridge House
1 Hartfield Road, Wimbledon, London SW19 3RU - lat:51.4200272, lon:-0.2068051, needsGeocoding:false
✅ PRESERVED geocoding: Wimbledon Bridge House

1 Hartfield Road, Wimbledon, London SW19 3RU → (51.4200272, -0.2068051), needsGeocoding=false
✅ PRESERVED geocoding: Wimbledon Bridge House
1 Hartfield Road, Wimbledon, London SW19 3RU → (51.4200272, -0.2068051), needsGeocoding=false
🔍 Friend 'Mehran Khosrow-Shahi' has 1 existing address(es)
   [0] Schlierseestr.14, München - lat:48.1164938, lon:11.5926655, needsGeocoding:false
✅ PRESERVED geocoding: Schlierseestr.14, München → (48.1164938, 11.5926655), needsGeocoding=false
🔍 Friend 'Axel von Campe' has 1 existing address(es)
   [0] Haidenauplatz 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Museumstr. 26, Innsbruck - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Libuše Čálková' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:50.0814894, lon:14.4266672, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavske Namesti 40, Praha 1 → (50.0814894, 14.4266672), needsGeocoding=false
🔍 Friend 'Dieter Bäumler' has 1 existing address(es)
   [0] Walrabstr. 5, Tagmersheim 86704 - lat:48.8200466, lon:10.971256, needsGeocoding:false
✅ PRESERVED geocoding: Walrabstr. 5, Tagmersheim 86704 → (48.8200466, 10.971256), needsGeocoding=false
🔍 Friend 'Philipp Schlabs' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Stella' has 1 existing address(es)
   [0] Dr. Yikmunda Wintra 376/5, Praha 6 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Klenzestr. 32, München-Isarvorstadt - lat:48.1310735, lon:11.5747268, needsGeocoding:false
✅ PRESERVED geocoding: Klenzestr. 32, München-Isarvorstadt → (48.1310735, 11.5747268), needsGeocoding=false
🔍 Friend 'Luis Miranda' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Erwin Jakob' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Gaelle Deparcevaux' has 2 existing address(es)
   [0] Arabellastr. 4, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Landsberger Strasse 223, Munich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andrew Thomason' has 1 existing address(es)
   [0] KlaraStr, 19, München - lat:48.1462363, lon:11.5410871, needsGeocoding:false
✅ PRESERVED geocoding: KlaraStr, 19, München → (48.1462363, 11.5410871), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] K Vltavě 1114/36, Praha 4 - Modřany - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ruth Betz' has 1 existing address(es)
   [0] , Hamburg - lat:49.3180654, lon:7.3318035, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (49.3180654, 7.3318035), needsGeocoding=false
🔍 Friend 'Andreas Siegel' has 1 existing address(es)
   [0] 33 Le Duan, D1, Ho Chi Minh - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 4A-4B Bao Khanh lane, Hang Trong, Hoan Kiem, Hanoi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Steffi Neumann' has 1 existing address(es)
   [0] Josef-Sommer-Str. 7, Grünwald 82031 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Milady Horakove 54, Praha - lat:50.1000861, lon:14.4257378, needsGeocoding:false
✅ PRESERVED geocoding: Milady Horakove 54, Praha → (50.1000861, 14.4257378), needsGeocoding=false
🔍 Friend 'Michael Schädle' has 1 existing address(es)
   [0] Felsenrainstrasse 82, Zürich - lat:47.419762, lon:8.5394865, needsGeocoding:false
✅ PRESERVED geocoding: Felsenrainstrasse 82, Zürich → (47.419762, 8.5394865), needsGeocoding=false
🔍 Friend 'Karsten Klepzig' has 1 existing address(es)
   [0] Neumarkt 2, Leipzig - lat:51.3395671, lon:12.3764004, needsGeocoding:false
✅ PRESERVED geocoding: Neumarkt 2, Leipzig → (51.3395671, 12.3764004), needsGeocoding=false
🔍 Friend 'Lukas Pörnbacher' has 1 existing address(es)
   [0] Galileo Galilei 6, Bruneck | Brunico - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Guido Biermann' has 1 existing address(es)
   [0] Am Oberfeld 3, München - lat:48.1441551, lon:11.6837878, needsGeocoding:false
✅ PRESERVED geocoding: Am Oberfeld 3, München → (48.1441551, 11.6837878), needsGeocoding=false
🔍 Friend 'Oliver Schmidt' has 2 existing address(es)
   [0] , Nürnberg - lat:49.4544732, lon:11.0769372, needsGeocoding:false
   [1] Na Rovnosti 5, Praha 3 - lat:50.0876071, lon:14.4859813, needsGeocoding:false
✅ PRESERVED geocoding: , Nürnberg → (49.4544732, 11.0769372), needsGeocoding=false
✅ PRESERVED geocoding: Na Rovnosti 5, Praha 3 → (50.0876071, 14.4859813), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Schützenstrasse 11
(Im Hotel Excelsior), München - lat:48.139751, lon:11.562112, needsGeocoding:false
   [1] Schützenstrasse 11

(Im Hotel Excelsior), München - lat:48.139751, lon:11.562112, needsGeocoding:false
✅ PRESERVED geocoding: Schützenstrasse 11
(Im Hotel Excelsior), München → (48.139751, 11.562112), needsGeocoding=false
✅ PRESERVED geocoding: Schützenstrasse 11

(Im Hotel Excelsior), München → (48.139751, 11.562112), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Breisacher Str. 22, München - lat:48.1305884, lon:11.6057456, needsGeocoding:false
✅ PRESERVED geocoding: Breisacher Str. 22, München → (48.1305884, 11.6057456), needsGeocoding=false
🔍 Friend 'Jan Ledeboer' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 
Wiener Platz, München - lat:48.13437509059665, lon:11.595771204675753, needsGeocoding:false
✅ PRESERVED geocoding: 
Wiener Platz, München → (48.13437509059665, 11.595771204675753), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schraudolphstr. 24, München - lat:48.153104, lon:11.5731898, needsGeocoding:false
✅ PRESERVED geocoding: Schraudolphstr. 24, München → (48.153104, 11.5731898), needsGeocoding=false
🔍 Friend 'Martin Schimmelpfennig' has 1 existing address(es)
   [0] Schillerstr. 4-12, Weiden - lat:49.674481, lon:12.1564151, needsGeocoding:false
✅ PRESERVED geocoding: Schillerstr. 4-12, Weiden → (49.674481, 12.1564151), needsGeocoding=false
🔍 Friend 'Franz-Joseph & Danièle Höfler' has 1 existing address(es)
   [0] Mozartring 6, Baldham b. München 85598 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Fischbach' has 1 existing address(es)
   [0] Birkrinnstr. 3, Holzkirchen 83607 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gisela Petropoulo' has 1 existing address(es)
   [0] Anatolis 85, Athen - lat:37.9590188, lon:23.7442692, needsGeocoding:false
✅ PRESERVED geocoding: Anatolis 85, Athen → (37.9590188, 23.7442692), needsGeocoding=false
🔍 Friend 'Thomas Kollmansperger' has 1 existing address(es)
   [0] Meglingerstr. 19, München - lat:48.0923897, lon:11.5069767, needsGeocoding:false
✅ PRESERVED geocoding: Meglingerstr. 19, München → (48.0923897, 11.5069767), needsGeocoding=false
🔍 Friend 'Alexandra Specht' has 1 existing address(es)
   [0] , Erlangen - lat:49.5907616, lon:11.0063275, needsGeocoding:false
✅ PRESERVED geocoding: , Erlangen → (49.5907616, 11.0063275), needsGeocoding=false
🔍 Friend 'Norbert Danneberg' has 2 existing address(es)
   [0] Ludwigstrass 7, München - lat:48.1447871, lon:11.5782074, needsGeocoding:false
   [1] Weyprechtstr. 23, München 80937 - lat:48.2054842, lon:11.5656272, needsGeocoding:false
✅ PRESERVED geocoding: Ludwigstrass 7, München → (48.1447871, 11.5782074), needsGeocoding=false
✅ PRESERVED geocoding: Weyprechtstr. 23, München 80937 → (48.2054842, 11.5656272), needsGeocoding=false
🔍 Friend 'Jari Kirvesoja' has 1 existing address(es)
   [0] ,  - lat:64.017562, lon:26.6235334, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (64.017562, 26.6235334), needsGeocoding=false
🔍 Friend 'Joseph Glöckl' has 1 existing address(es)
   [0] Ammerseestr. 6, Kirchheim b. München 85551 - lat:48.1581863, lon:11.7520235, needsGeocoding:false
✅ PRESERVED geocoding: Ammerseestr. 6, Kirchheim b. München 85551 → (48.1581863, 11.7520235), needsGeocoding=false
🔍 Friend 'Dirk Bothe' has 1 existing address(es)
   [0] Aupoint 3, Bergheim - lat:47.8639285, lon:13.0107376, needsGeocoding:false
✅ PRESERVED geocoding: Aupoint 3, Bergheim → (47.8639285, 13.0107376), needsGeocoding=false
🔍 Friend 'Martin Pickert' has 1 existing address(es)
   [0] Maximilianstr. 21 / III, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Goethestr. 51, München - lat:48.1333259, lon:11.5589058, needsGeocoding:false
✅ PRESERVED geocoding: Goethestr. 51, München → (48.1333259, 11.5589058), needsGeocoding=false
🔍 Friend 'Silvia Teissier' has 1 existing address(es)
   [0] , Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 150 Bach Dang Street, Da Nang - lat:16.0669826, lon:108.2248106, needsGeocoding:false
✅ PRESERVED geocoding: 150 Bach Dang Street, Da Nang → (16.0669826, 108.2248106), needsGeocoding=false
🔍 Friend 'Dort-Jan Boxtel, van' has 1 existing address(es)
   [0] , Amsterdam - lat:52.36532, lon:4.89784, needsGeocoding:false
✅ PRESERVED geocoding: , Amsterdam → (52.36532, 4.89784), needsGeocoding=false
🔍 Friend 'Eric Schulze' has 1 existing address(es)
   [0] , Leipzig - lat:51.337296, lon:12.3761666, needsGeocoding:false
✅ PRESERVED geocoding: , Leipzig → (51.337296, 12.3761666), needsGeocoding=false
🔍 Friend 'Stefan Rother' has 1 existing address(es)
   [0] Fahnenbergplatz 1, Freiburg im Breisgau - lat:47.9983167, lon:7.8488885, needsGeocoding:false
✅ PRESERVED geocoding: Fahnenbergplatz 1, Freiburg im Breisgau → (47.9983167, 7.8488885), needsGeocoding=false
🔍 Friend 'Vanessa Greger' has 1 existing address(es)
   [0] Oskar-von-Miller-Ring 35, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefanie Halmbacher' has 1 existing address(es)
   [0] Wörthstr. 51, München - lat:48.1289311, lon:11.6029908, needsGeocoding:false
✅ PRESERVED geocoding: Wörthstr. 51, München → (48.1289311, 11.6029908), needsGeocoding=false
🔍 Friend 'Hans & Vera Volckens' has 1 existing address(es)
   [0] Frundsbergstr. 18, Straßlach - lat:48.0125592, lon:11.5100746, needsGeocoding:false
✅ PRESERVED geocoding: Frundsbergstr. 18, Straßlach → (48.0125592, 11.5100746), needsGeocoding=false
🔍 Friend 'Henri Funke' has 1 existing address(es)
   [0] , Berlin - lat:52.5187416, lon:13.4080224, needsGeocoding:false
✅ PRESERVED geocoding: , Berlin → (52.5187416, 13.4080224), needsGeocoding=false
🔍 Friend 'Heinrich Spies' has 1 existing address(es)
   [0] Otto-Hahn-Ring 6, München - lat:48.0915911, lon:11.649046, needsGeocoding:false
✅ PRESERVED geocoding: Otto-Hahn-Ring 6, München → (48.0915911, 11.649046), needsGeocoding=false
🔍 Friend 'Caroline Schneider' has 2 existing address(es)
   [0] Sapporobogen 6-8, München - lat:48.1683278, lon:11.5370636, needsGeocoding:false
   [1] , München - lat:48.1623774, lon:11.536392, needsGeocoding:false
✅ PRESERVED geocoding: Sapporobogen 6-8, München → (48.1683278, 11.5370636), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1623774, 11.536392), needsGeocoding=false
🔍 Friend 'Micaela Radola' has 2 existing address(es)
   [0] Schwanthalerstraße 102, München - lat:48.1377497, lon:11.5500891, needsGeocoding:false
   [1] Ettaler Str. 17, Neuried - lat:48.0901976, lon:11.4577071, needsGeocoding:false
✅ PRESERVED geocoding: Schwanthalerstraße 102, München → (48.1377497, 11.5500891), needsGeocoding=false
✅ PRESERVED geocoding: Ettaler Str. 17, Neuried → (48.0901976, 11.4577071), needsGeocoding=false
🔍 Friend 'Stefan Reiter' has 1 existing address(es)
   [0] Bahnhofstr. 9, Traunstein - lat:47.8691562, lon:12.6445462, needsGeocoding:false
✅ PRESERVED geocoding: Bahnhofstr. 9, Traunstein → (47.8691562, 12.6445462), needsGeocoding=false
🔍 Friend 'Charlotte Jacquemin' has 1 existing address(es)
   [0] , Saigon - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Roland Kläs' has 2 existing address(es)
   [0] Marstallplatz 1, München - lat:48.1408438, lon:11.5811391, needsGeocoding:false
   [1] Zwinglistraße 37, St. Gallen - lat:47.424696, lon:9.367054, needsGeocoding:false
✅ PRESERVED geocoding: Marstallplatz 1, München → (48.1408438, 11.5811391), needsGeocoding=false
✅ PRESERVED geocoding: Zwinglistraße 37, St. Gallen → (47.424696, 9.367054), needsGeocoding=false
🔍 Friend 'Brigitte Stuckart' has 1 existing address(es)
   [0] Aidenbachstr. 42, München - lat:48.0978631, lon:11.5227716, needsGeocoding:false
✅ PRESERVED geocoding: Aidenbachstr. 42, München → (48.0978631, 11.5227716), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Vojtěšská 14, Praha 1 - lat:50.0789227, lon:14.4153392, needsGeocoding:false
✅ PRESERVED geocoding: Vojtěšská 14, Praha 1 → (50.0789227, 14.4153392), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Fisching bei Waging am See - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Rene Ruppert' has 1 existing address(es)
   [0] Office 1307, 10th Floor, Pacific Place, 83 Ly Thuong Kiet, Tran Hung Dao Ward, Hoan Kiem District, Hanoi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alena Puklová' has 1 existing address(es)
   [0] Václavské náměstí 40, Praha 1 - lat:50.0814894, lon:14.4266672, needsGeocoding:false
✅ PRESERVED geocoding: Václavské náměstí 40, Praha 1 → (50.0814894, 14.4266672), needsGeocoding=false
🔍 Friend 'Nam Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Gregor & Claudia Wittmann' has 1 existing address(es)
   [0] Pariserstr. 13, München - lat:48.126928, lon:11.5976454, needsGeocoding:false
✅ PRESERVED geocoding: Pariserstr. 13, München → (48.126928, 11.5976454), needsGeocoding=false
🔍 Friend 'Alex Ryndziewicz' has 1 existing address(es)
   [0] Karel Piquelaan 84, Deinze - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Wörthstr., München - lat:48.13096075540845, lon:11.599749035098593, needsGeocoding:false
✅ PRESERVED geocoding: Wörthstr., München → (48.13096075540845, 11.599749035098593), needsGeocoding=false
🔍 Friend 'Melanie Schwarz' has 1 existing address(es)
   [0] Leopoldstr. 21, München - lat:48.1574943, lon:11.5841496, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 21, München → (48.1574943, 11.5841496), needsGeocoding=false
🔍 Friend 'Michaela Pastorová' has 1 existing address(es)
   [0] Vinohradská 184, Praha 3 - lat:50.0780978, lon:14.4719157, needsGeocoding:false
✅ PRESERVED geocoding: Vinohradská 184, Praha 3 → (50.0780978, 14.4719157), needsGeocoding=false
🔍 Friend 'Trung Nguyen' has 1 existing address(es)
   [0] 125-127 Ba Trieu Street, Hai Ba Trung District - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Seebach' has 1 existing address(es)
   [0] Maximilianstraße 30, München. - lat:48.1383835, lon:11.582851, needsGeocoding:false
✅ PRESERVED geocoding: Maximilianstraße 30, München. → (48.1383835, 11.582851), needsGeocoding=false
🔍 Friend 'Manuela Krategl' has 1 existing address(es)
   [0] Hohenzollernstr. 93, München - lat:48.1610275, lon:11.5690863, needsGeocoding:false
✅ PRESERVED geocoding: Hohenzollernstr. 93, München → (48.1610275, 11.5690863), needsGeocoding=false
🔍 Friend 'Helga Stora' has 1 existing address(es)
   [0] Aribostr. 11, Gräfelfing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marc Philipp Gösswein' has 2 existing address(es)
   [0] Gabelsbergerstr. 83, München - lat:48.1494455, lon:11.5609312, needsGeocoding:false
   [1] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: Gabelsbergerstr. 83, München → (48.1494455, 11.5609312), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Karin Beer' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Victor Anton' has 1 existing address(es)
   [0] , Wien - lat:48.2195335, lon:16.3784883, needsGeocoding:false
✅ PRESERVED geocoding: , Wien → (48.2195335, 16.3784883), needsGeocoding=false
🔍 Friend 'Frantisek Malý' has 1 existing address(es)
   [0] Cermakova 4, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Rybná 693/20, Prague - lat:50.089994, lon:14.4260983, needsGeocoding:false
✅ PRESERVED geocoding: Rybná 693/20, Prague → (50.089994, 14.4260983), needsGeocoding=false
🔍 Friend 'Michael Neitzke' has 1 existing address(es)
   [0] Berliner Tor 7, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Yasmin Yasseri' has 1 existing address(es)
   [0] , Türkenstr. 10 - lat:52.554505, lon:13.3493884, needsGeocoding:false
✅ PRESERVED geocoding: , Türkenstr. 10 → (52.554505, 13.3493884), needsGeocoding=false
🔍 Friend 'Phil O'Driscoll' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexandra Born' has 1 existing address(es)
   [0] , Pullach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martin Cullen' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Chris Harvey' has 1 existing address(es)
   [0] 466/4 Le Quang Dinh, Ward 11, Binh Thanh District, phường 11, Bình Thạnh, Ho Chi Minh City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Haug' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Matthias Martin' has 1 existing address(es)
   [0] Kleyerstrasse 94, Frankfurt, Hessen - lat:50.0972649, lon:8.6294397, needsGeocoding:false
✅ PRESERVED geocoding: Kleyerstrasse 94, Frankfurt, Hessen → (50.0972649, 8.6294397), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Bolker 30, Düsseldorf Altstadt - lat:51.2262838, lon:6.7741215, needsGeocoding:false
✅ PRESERVED geocoding: Bolker 30, Düsseldorf Altstadt → (51.2262838, 6.7741215), needsGeocoding=false
🔍 Friend 'Familie Bruchmann' has 1 existing address(es)
   [0] Conollystr. 33, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jean-Hervé Gigot' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Chí Nguyễn' has 1 existing address(es)
   [0] 12A Floor, LADECO Building, 266 Doi Can, Ba Dinh, Hanoi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sieglinde Brichta' has 1 existing address(es)
   [0] Leopoldstr. 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Patrick Pfister' has 1 existing address(es)
   [0] Brauerstrasse 60, Zürich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eckard & Evita Pfeiffer' has 1 existing address(es)
   [0] One Central Park West 25D, NY - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michele Fiordoliva' has 1 existing address(es)
   [0] Sedanstr. 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Josef Füchsel' has 1 existing address(es)
   [0] Königinstr. 26, München - lat:48.1531723, lon:11.5877187, needsGeocoding:false
✅ PRESERVED geocoding: Königinstr. 26, München → (48.1531723, 11.5877187), needsGeocoding=false
🔍 Friend 'Rüdiger Ackermann' has 1 existing address(es)
   [0] 25 International Business Park
German Centre, #04-113, Singapore - lat:1.324865, lon:103.746554, needsGeocoding:false
✅ PRESERVED geocoding: 25 International Business Park
German Centre, #04-113, Singapore → (1.324865, 103.746554), needsGeocoding=false
🔍 Friend 'Jens Trinh' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Annette Wutschka' has 1 existing address(es)
   [0] Landwehrstr. 37/RGB, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Veichtlbauer' has 1 existing address(es)
   [0] Reichenhaller Straße 10B, Salzburg - lat:47.7988325, lon:13.0348451, needsGeocoding:false
✅ PRESERVED geocoding: Reichenhaller Straße 10B, Salzburg → (47.7988325, 13.0348451), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Prinzessinnenstraße 19-20, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Wolfgang Blonck' has 1 existing address(es)
   [0] Winthirstr. 10a, München 80639 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heinz Scheinig' has 1 existing address(es)
   [0] Hertergrube 8, Anzing - lat:48.1459598, lon:11.8579467, needsGeocoding:false
✅ PRESERVED geocoding: Hertergrube 8, Anzing → (48.1459598, 11.8579467), needsGeocoding=false
🔍 Friend 'Norbert Demps' has 1 existing address(es)
   [0] Stefan George Ring 20-14, München - lat:48.1427507, lon:11.6495329, needsGeocoding:false
✅ PRESERVED geocoding: Stefan George Ring 20-14, München → (48.1427507, 11.6495329), needsGeocoding=false
🔍 Friend 'Andrea Kveder' has 1 existing address(es)
   [0] Riedweg 41, Straßlach bei Grünwald - lat:48.011856, lon:11.5224778, needsGeocoding:false
✅ PRESERVED geocoding: Riedweg 41, Straßlach bei Grünwald → (48.011856, 11.5224778), needsGeocoding=false
🔍 Friend 'Michel Bidet' has 2 existing address(es)
   [0] Les Olivičres, Montbrison sur Lez - lat:44.4429249, lon:5.0170156, needsGeocoding:false
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Les Olivičres, Montbrison sur Lez → (44.4429249, 5.0170156), needsGeocoding=false
🔍 Friend 'Alexander Viermetz' has 1 existing address(es)
   [0] Longinusstr. 1, München - lat:48.1661596, lon:11.4635036, needsGeocoding:false
✅ PRESERVED geocoding: Longinusstr. 1, München → (48.1661596, 11.4635036), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rue des Alpes 23, Geneve - lat:46.209933, lon:6.14486, needsGeocoding:false
✅ PRESERVED geocoding: Rue des Alpes 23, Geneve → (46.209933, 6.14486), needsGeocoding=false
🔍 Friend 'Dũng Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Peter Berg' has 1 existing address(es)
   [0] Zeil 65, Frankfurt am Main - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Zuzana Slosarčíková' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Cédric Le Bel' has 1 existing address(es)
   [0] , Lyon - lat:45.7673556, lon:4.834088, needsGeocoding:false
✅ PRESERVED geocoding: , Lyon → (45.7673556, 4.834088), needsGeocoding=false
🔍 Friend 'Jiri Barton' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Rainer Rönnebeck' has 2 existing address(es)
   [0] Kartäuserstrasse 49, Freiburg - lat:47.9918041, lon:7.8613185, needsGeocoding:false
   [1] Leonhard-Moll-Bogen 10, München - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Kartäuserstrasse 49, Freiburg → (47.9918041, 7.8613185), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rumfordstr. 1, München - Glockenbachviertel - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Fock' has 1 existing address(es)
   [0] Nymphenburger Straße 86, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hoa Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Cecile Pefourque (Tischner)' has 1 existing address(es)
   [0] 5 Place Arago, Toulouse - lat:43.6148776, lon:1.4572797, needsGeocoding:false
✅ PRESERVED geocoding: 5 Place Arago, Toulouse → (43.6148776, 1.4572797), needsGeocoding=false
🔍 Friend 'Fred Sonnenberg' has 1 existing address(es)
   [0] Herzogspitalstr. 10, München - lat:48.1378027, lon:11.5682345, needsGeocoding:false
✅ PRESERVED geocoding: Herzogspitalstr. 10, München → (48.1378027, 11.5682345), needsGeocoding=false
🔍 Friend 'Wolfgang Denkhaus' has 1 existing address(es)
   [0] Oskar-von-Miller-Ring 35, München - lat:48.1459297, lon:11.5770112, needsGeocoding:false
✅ PRESERVED geocoding: Oskar-von-Miller-Ring 35, München → (48.1459297, 11.5770112), needsGeocoding=false
🔍 Friend 'Max Wölfl' has 1 existing address(es)
   [0] Josefastr. 2, Unterschleißheim - lat:48.2709654, lon:11.5851584, needsGeocoding:false
✅ PRESERVED geocoding: Josefastr. 2, Unterschleißheim → (48.2709654, 11.5851584), needsGeocoding=false
🔍 Friend 'Nadya Ramzi' has 1 existing address(es)
   [0] Sendlingerstr. 42, München - lat:48.1349098, lon:11.5690233, needsGeocoding:false
✅ PRESERVED geocoding: Sendlingerstr. 42, München → (48.1349098, 11.5690233), needsGeocoding=false
🔍 Friend 'Imam Arslan' has 1 existing address(es)
   [0] Alsässerstr. 32, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Olaf Terhorst' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Quang Nhat Tran' has 1 existing address(es)
   [0] 200 Nguyen Cong Tru, Dalat - lat:11.9566168, lon:108.4349985, needsGeocoding:false
✅ PRESERVED geocoding: 200 Nguyen Cong Tru, Dalat → (11.9566168, 108.4349985), needsGeocoding=false
🔍 Friend 'Shashank Jindal' has 1 existing address(es)
   [0] Nymphenburger Str. 86, München - lat:48.1504933, lon:11.5468907, needsGeocoding:false
✅ PRESERVED geocoding: Nymphenburger Str. 86, München → (48.1504933, 11.5468907), needsGeocoding=false
🔍 Friend 'Duong Nguyen' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Rodrigue Gil' has 1 existing address(es)
   [0] Orleanst. 43, München - lat:48.1273525, lon:11.6021555, needsGeocoding:false
✅ PRESERVED geocoding: Orleanst. 43, München → (48.1273525, 11.6021555), needsGeocoding=false
🔍 Friend ' Roithmaier' has 1 existing address(es)
   [0] Max-Planck-Str. 7, München - lat:48.1355923, lon:11.5974058, needsGeocoding:false
✅ PRESERVED geocoding: Max-Planck-Str. 7, München → (48.1355923, 11.5974058), needsGeocoding=false
🔍 Friend 'Graham Logan' has 1 existing address(es)
   [0] 18 Almond Gardens, Perth - lat:56.3970429, lon:-3.4824941, needsGeocoding:false
✅ PRESERVED geocoding: 18 Almond Gardens, Perth → (56.3970429, -3.4824941), needsGeocoding=false
🔍 Friend 'Elisa Vo' has 1 existing address(es)
   [0] , Ho Chi Minh City/Saigon - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Ho Chi Minh City/Saigon → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 3, Rue d'Agier, Grenoble - lat:45.1925384, lon:5.7281222, needsGeocoding:false
✅ PRESERVED geocoding: 3, Rue d'Agier, Grenoble → (45.1925384, 5.7281222), needsGeocoding=false
🔍 Friend 'Martin Mohler' has 1 existing address(es)
   [0] Hohestrasse 100, Oberwil - lat:47.522591, lon:7.555221, needsGeocoding:false
✅ PRESERVED geocoding: Hohestrasse 100, Oberwil → (47.522591, 7.555221), needsGeocoding=false
🔍 Friend 'Eric Weigl' has 1 existing address(es)
   [0] Betastraße 13a, Unterföhring - lat:48.1861963, lon:11.6548109, needsGeocoding:false
✅ PRESERVED geocoding: Betastraße 13a, Unterföhring → (48.1861963, 11.6548109), needsGeocoding=false
🔍 Friend 'Fred Weber-Liel' has 1 existing address(es)
   [0] Weimarische Str. 42-43, Erfurt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andrej ' has 1 existing address(es)
   [0] Sumavska 10, Praha 2 - lat:50.0737313, lon:14.4440973, needsGeocoding:false
✅ PRESERVED geocoding: Sumavska 10, Praha 2 → (50.0737313, 14.4440973), needsGeocoding=false
🔍 Friend 'Bernhard Eichinger' has 1 existing address(es)
   [0] Zentnerstr. 20, München - lat:48.1564503, lon:11.5639607, needsGeocoding:false
✅ PRESERVED geocoding: Zentnerstr. 20, München → (48.1564503, 11.5639607), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Media Works Munich
Rosenheimstr. 145h, München - lat:48.1220423, lon:11.6066192, needsGeocoding:false
   [1] Media Works Munich

Rosenheimstr. 145h, München - lat:48.1220423, lon:11.6066192, needsGeocoding:false
✅ PRESERVED geocoding: Media Works Munich
Rosenheimstr. 145h, München → (48.1220423, 11.6066192), needsGeocoding=false
✅ PRESERVED geocoding: Media Works Munich

Rosenheimstr. 145h, München → (48.1220423, 11.6066192), needsGeocoding=false
🔍 Friend 'Alain Pauchet' has 1 existing address(es)
   [0] 23 rue d'Anjou, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hana Červenková' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Malešická ulice 655/59c, Praha 10 - Malešice - lat:50.0868402, lon:14.4962237, needsGeocoding:false
✅ PRESERVED geocoding: Malešická ulice 655/59c, Praha 10 - Malešice → (50.0868402, 14.4962237), needsGeocoding=false
🔍 Friend 'Daniel Schechter' has 1 existing address(es)
   [0] , Hanoi - lat:21.028382, lon:105.853734, needsGeocoding:false
✅ PRESERVED geocoding: , Hanoi → (21.028382, 105.853734), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schellingstr. 62, München - lat:48.1514794, lon:11.5721899, needsGeocoding:false
✅ PRESERVED geocoding: Schellingstr. 62, München → (48.1514794, 11.5721899), needsGeocoding=false
🔍 Friend 'Nagesh SVS' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 30, Dornach → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend 'Carlo Torti' has 1 existing address(es)
   [0] Maximilianstr. 58, München - lat:48.1369342, lon:11.5887097, needsGeocoding:false
✅ PRESERVED geocoding: Maximilianstr. 58, München → (48.1369342, 11.5887097), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Melantrichova 20, Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Kimmling' has 1 existing address(es)
   [0] Klenzestr. 1-3, Ismaning - lat:48.2184481, lon:11.66352, needsGeocoding:false
✅ PRESERVED geocoding: Klenzestr. 1-3, Ismaning → (48.2184481, 11.66352), needsGeocoding=false
🔍 Friend 'Andreas Olsson' has 2 existing address(es)
   [0] 2155 Bay Ridge Avenue, Brooklyn, NY 11204 - lat:nil, lon:nil, needsGeocoding:true
   [1] 2155 Bay Ridge Ave., Brooklyn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 122/11 Quang Trung Street, Da Nang - lat:16.0742766, lon:108.2170108, needsGeocoding:false
✅ PRESERVED geocoding: 122/11 Quang Trung Street, Da Nang → (16.0742766, 108.2170108), needsGeocoding=false
🔍 Friend ' Maiberger' has 1 existing address(es)
   [0] Blütenstr. 20, München - lat:48.1522118, lon:11.5744182, needsGeocoding:false
✅ PRESERVED geocoding: Blütenstr. 20, München → (48.1522118, 11.5744182), needsGeocoding=false
🔍 Friend 'Sandra Strübel' has 2 existing address(es)
   [0] Hippmannstr. 3, München - lat:48.1543064, lon:11.5075716, needsGeocoding:false
   [1] Landsbergerstr. 155, München - lat:48.1398638, lon:11.5257714, needsGeocoding:false
✅ PRESERVED geocoding: Hippmannstr. 3, München → (48.1543064, 11.5075716), needsGeocoding=false
✅ PRESERVED geocoding: Landsbergerstr. 155, München → (48.1398638, 11.5257714), needsGeocoding=false
🔍 Friend 'Thierry Huret' has 1 existing address(es)
   [0] 4 Battery Road 25,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Cathrine Sander' has 1 existing address(es)
   [0] Sturystrasse, 2,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Muriel Pitrat' has 1 existing address(es)
   [0] Max-Weber-Platz 11, München - lat:48.1351869, lon:11.5980792, needsGeocoding:false
✅ PRESERVED geocoding: Max-Weber-Platz 11, München → (48.1351869, 11.5980792), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Heßstr. 90, München - lat:48.1535679, lon:11.5605431, needsGeocoding:false
✅ PRESERVED geocoding: Heßstr. 90, München → (48.1535679, 11.5605431), needsGeocoding=false
🔍 Friend 'Barbara Heidenreich' has 1 existing address(es)
   [0] Schlösslihalde 15k, Luzern - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Dollinger' has 2 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
   [1] Taunusstr.23, München - lat:48.1892227, lon:11.5778615, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
✅ PRESERVED geocoding: Taunusstr.23, München → (48.1892227, 11.5778615), needsGeocoding=false
🔍 Friend 'Andreas Leidig' has 1 existing address(es)
   [0] Edisonstraße 2, Bretten - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jens Damm' has 1 existing address(es)
   [0] Leonrodstr. 33, München - lat:48.1546757, lon:11.5380956, needsGeocoding:false
✅ PRESERVED geocoding: Leonrodstr. 33, München → (48.1546757, 11.5380956), needsGeocoding=false
🔍 Friend 'Patrik Kudlac' has 1 existing address(es)
   [0] Smeralova 16, Praha 7 - lat:50.1012982, lon:14.4224553, needsGeocoding:false
✅ PRESERVED geocoding: Smeralova 16, Praha 7 → (50.1012982, 14.4224553), needsGeocoding=false
🔍 Friend 'Gordon Cardiff' has 1 existing address(es)
   [0] Valencia 266 3, 1, Barcelona - lat:41.3922471, lon:2.1631229, needsGeocoding:false
✅ PRESERVED geocoding: Valencia 266 3, 1, Barcelona → (41.3922471, 2.1631229), needsGeocoding=false
🔍 Friend 'Ralf Brauwers' has 1 existing address(es)
   [0] , Berlin - lat:52.5187416, lon:13.4080224, needsGeocoding:false
✅ PRESERVED geocoding: , Berlin → (52.5187416, 13.4080224), needsGeocoding=false
🔍 Friend 'Anne & Klaus Viermetz' has 1 existing address(es)
   [0] Mainaustr. 42, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jürgen Richter' has 1 existing address(es)
   [0] Martin-Empl-Ring 8, 812829 München-Riem - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Maria Caparros' has 1 existing address(es)
   [0] Landshuter Allee 12-14, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gini & Ricardo Bressani' has 1 existing address(es)
   [0] , Triest - lat:45.6499074, lon:13.7659604, needsGeocoding:false
✅ PRESERVED geocoding: , Triest → (45.6499074, 13.7659604), needsGeocoding=false
🔍 Friend 'Horst Strobel' has 1 existing address(es)
   [0] Leopoldstr. 256, München - lat:48.1840965, lon:11.5859699, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 256, München → (48.1840965, 11.5859699), needsGeocoding=false
🔍 Friend ' GC Straßlach' has 1 existing address(es)
   [0] Tölzer Straße, Straßlach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jette Böckem' has 1 existing address(es)
   [0] Clemensstr. 68 RGB, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Rösler' has 1 existing address(es)
   [0] Weißenburgerstr. 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Julia Willrodt' has 1 existing address(es)
   [0] Regerstr. 9,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Pstrossova 29, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 39 nguyễn giãn thanh,p15, Ho Chi Minh City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Isabella Hagg' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christin Schäfer' has 1 existing address(es)
   [0] Eiselenweg 8, Berlin - lat:52.4529917, lon:13.5634304, needsGeocoding:false
✅ PRESERVED geocoding: Eiselenweg 8, Berlin → (52.4529917, 13.5634304), needsGeocoding=false
🔍 Friend 'Nora Dzuriakova' has 1 existing address(es)
   [0] Hennerova 226/9,, Praha 5 - lat:50.0719835, lon:14.3501485, needsGeocoding:false
✅ PRESERVED geocoding: Hennerova 226/9,, Praha 5 → (50.0719835, 14.3501485), needsGeocoding=false
🔍 Friend 'Andrea Christ' has 1 existing address(es)
   [0] , Lüsen - lat:46.7456694, lon:11.7619665, needsGeocoding:false
✅ PRESERVED geocoding: , Lüsen → (46.7456694, 11.7619665), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Zenettistr. 25, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Voß' has 1 existing address(es)
   [0] Jülicher Str. 191, Aachen - lat:50.7850206, lon:6.1081381, needsGeocoding:false
✅ PRESERVED geocoding: Jülicher Str. 191, Aachen → (50.7850206, 6.1081381), needsGeocoding=false
🔍 Friend 'Irmgard & Peter Schrey' has 1 existing address(es)
   [0] Pocksteinerstr. 24, Waidhofen/Ybbs - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Markus Stummer' has 1 existing address(es)
   [0] Pohlstr. 64, Berlin - lat:52.5014441, lon:13.3619737, needsGeocoding:false
✅ PRESERVED geocoding: Pohlstr. 64, Berlin → (52.5014441, 13.3619737), needsGeocoding=false
🔍 Friend 'Alessa Stauch' has 1 existing address(es)
   [0] Nymphenburger Straße 86, München - lat:48.1504933, lon:11.5468907, needsGeocoding:false
✅ PRESERVED geocoding: Nymphenburger Straße 86, München → (48.1504933, 11.5468907), needsGeocoding=false
🔍 Friend 'Vittorio Sanvito' has 1 existing address(es)
   [0] , Milano - lat:45.4671753, lon:9.1896644, needsGeocoding:false
✅ PRESERVED geocoding: , Milano → (45.4671753, 9.1896644), needsGeocoding=false
🔍 Friend 'Giancarlo Telesca' has 1 existing address(es)
   [0] Auerfeldstr. 26, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Melanie Gebler' has 1 existing address(es)
   [0] Halserspitzstr. 29, München 81673 - lat:48.1245485, lon:11.638376, needsGeocoding:false
✅ PRESERVED geocoding: Halserspitzstr. 29, München 81673 → (48.1245485, 11.638376), needsGeocoding=false
🔍 Friend 'Ricky Asti' has 1 existing address(es)
   [0] Parkstraße 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Zlatina Deggendorfer' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Johann Westermayer' has 1 existing address(es)
   [0] Abt. IP-BB-EM

Geb. LP 49 D

Johannes Hess Str. 24, Burghausen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Isabelle Ruhrmann' has 1 existing address(es)
   [0] Laplacestr. 2

(Eltern), München - lat:48.1471078, lon:11.6048992, needsGeocoding:false
✅ PRESERVED geocoding: Laplacestr. 2

(Eltern), München → (48.1471078, 11.6048992), needsGeocoding=false
🔍 Friend 'Silvie Koprivova' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bob Taylor' has 1 existing address(es)
   [0] , Aschheim b. München - lat:48.1746294, lon:11.7200547, needsGeocoding:false
✅ PRESERVED geocoding: , Aschheim b. München → (48.1746294, 11.7200547), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Gyßlingstr. 15, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Fayçal Salmi' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Daniel Alvarez' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Vaclavske nam. 26, Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Leo Veicht' has 1 existing address(es)
   [0] Siegertsbrunnerweg 5, Aying - lat:47.9732194, lon:11.7767417, needsGeocoding:false
✅ PRESERVED geocoding: Siegertsbrunnerweg 5, Aying → (47.9732194, 11.7767417), needsGeocoding=false
🔍 Friend 'Niayish Anwari' has 1 existing address(es)
   [0] Johanneskirchnerstr 107, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Robert Marz' has 1 existing address(es)
   [0] Berglesweg 2a, Diedorf - lat:48.3513853, lon:10.7820844, needsGeocoding:false
✅ PRESERVED geocoding: Berglesweg 2a, Diedorf → (48.3513853, 10.7820844), needsGeocoding=false
🔍 Friend 'Philip Heusler' has 1 existing address(es)
   [0] Keferstr. 35a, München - lat:48.1636433, lon:11.5948459, needsGeocoding:false
✅ PRESERVED geocoding: Keferstr. 35a, München → (48.1636433, 11.5948459), needsGeocoding=false
🔍 Friend 'Stephan Schnellinger' has 1 existing address(es)
   [0] , Böblingen - lat:48.6852716, lon:9.0094477, needsGeocoding:false
✅ PRESERVED geocoding: , Böblingen → (48.6852716, 9.0094477), needsGeocoding=false
🔍 Friend 'Arne Zierow' has 1 existing address(es)
   [0] Nordmarkstr. 4, Wenningstedt (Sylt) - lat:54.8635376, lon:9.051475, needsGeocoding:false
✅ PRESERVED geocoding: Nordmarkstr. 4, Wenningstedt (Sylt) → (54.8635376, 9.051475), needsGeocoding=false
🔍 Friend 'Boris Wiederholt' has 1 existing address(es)
   [0] Richard-Str. Str. 55, München 81677 - lat:48.145271, lon:11.6154246, needsGeocoding:false
✅ PRESERVED geocoding: Richard-Str. Str. 55, München 81677 → (48.145271, 11.6154246), needsGeocoding=false
🔍 Friend 'Hannelore Gartner' has 1 existing address(es)
   [0] Richard-Strauss-Str 49, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kirill Engelmann' has 1 existing address(es)
   [0] Oskar-von-Miller-Ring 35, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Laetitia Brun' has 1 existing address(es)
   [0] Reisingerst 5, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jutta Oldemeier' has 1 existing address(es)
   [0] Postfach 1120, Melte - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Daniel Janda' has 1 existing address(es)
   [0] Schwerinstr. 68, Düsseldorf  Nordrhein-Westfalen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gérald Attia' has 1 existing address(es)
   [0] 221 bis, boulevard Jean Jaurčs, Boulogne Cedex - lat:48.831492, lon:2.2450778, needsGeocoding:false
✅ PRESERVED geocoding: 221 bis, boulevard Jean Jaurčs, Boulogne Cedex → (48.831492, 2.2450778), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] V Jame 7, Praha 1 - lat:50.0799546, lon:14.4254674, needsGeocoding:false
✅ PRESERVED geocoding: V Jame 7, Praha 1 → (50.0799546, 14.4254674), needsGeocoding=false
🔍 Friend 'Sven Kruchem' has 1 existing address(es)
   [0] FFWL10 Wilhelm-Leuschner-Straße 10, Frankfurt am Main - lat:50.1069964, lon:8.6721682, needsGeocoding:false
✅ PRESERVED geocoding: FFWL10 Wilhelm-Leuschner-Straße 10, Frankfurt am Main → (50.1069964, 8.6721682), needsGeocoding=false
🔍 Friend 'Joachim Weiss' has 1 existing address(es)
   [0] , Böblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anissa Nasser' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Heimo Brejcha' has 1 existing address(es)
   [0] Norbert-Wallnerweg 10, Telfs - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Khánh Lê' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Gunnar Rohde' has 1 existing address(es)
   [0] Am Kupferbach 4a, Glonn - lat:47.9858649, lon:11.8690197, needsGeocoding:false
✅ PRESERVED geocoding: Am Kupferbach 4a, Glonn → (47.9858649, 11.8690197), needsGeocoding=false
🔍 Friend 'Michael von Hirschfeld' has 2 existing address(es)
   [0] Zum Morgenland 3, Eyendorf - lat:53.2053712, lon:10.1632227, needsGeocoding:false
   [1] Heuberg 1, Hamburg - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Zum Morgenland 3, Eyendorf → (53.2053712, 10.1632227), needsGeocoding=false
🔍 Friend 'Thomas Mayer' has 1 existing address(es)
   [0] Rotebühlstraße 121, Stuttgart - lat:48.7707971, lon:9.1594878, needsGeocoding:false
✅ PRESERVED geocoding: Rotebühlstraße 121, Stuttgart → (48.7707971, 9.1594878), needsGeocoding=false
🔍 Friend 'Fariborz Abedinpour' has 1 existing address(es)
   [0] Schönfeldstr. 13, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Etienne Fourquet' has 1 existing address(es)
   [0] 18 Impasse de Chartre, Massy - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Konrad Ahlmeyer' has 1 existing address(es)
   [0] , Hoi An - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Aine Hagenbucher' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anni & Schorsch Huber' has 1 existing address(es)
   [0] Römerstr. 9, Seebruck a. Chiemsee - lat:47.9329632, lon:12.4765637, needsGeocoding:false
✅ PRESERVED geocoding: Römerstr. 9, Seebruck a. Chiemsee → (47.9329632, 12.4765637), needsGeocoding=false
🔍 Friend 'Jan Kreutzberg' has 1 existing address(es)
   [0] Kluckstr. 38, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tamara Buschek' has 1 existing address(es)
   [0] Rudolfstr. 65a, Graz - lat:47.0737069, lon:15.4769844, needsGeocoding:false
✅ PRESERVED geocoding: Rudolfstr. 65a, Graz → (47.0737069, 15.4769844), needsGeocoding=false
🔍 Friend 'Andriy Ageyev' has 1 existing address(es)
   [0] Letenske Namesti 4, 17000 Praha 7 - lat:50.1005349, lon:14.4235589, needsGeocoding:false
✅ PRESERVED geocoding: Letenske Namesti 4, 17000 Praha 7 → (50.1005349, 14.4235589), needsGeocoding=false
🔍 Friend ' Hantschel' has 1 existing address(es)
   [0] Roseggerstr. 5, Grossenzersdorf - lat:48.1985965, lon:16.5470771, needsGeocoding:false
✅ PRESERVED geocoding: Roseggerstr. 5, Grossenzersdorf → (48.1985965, 16.5470771), needsGeocoding=false
🔍 Friend 'Katja Hofmann' has 1 existing address(es)
   [0] Spicherenstr. 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andrea Lisá' has 1 existing address(es)
   [0] Namesti Churchilla 4, Praha 3 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Oliver Hugo' has 1 existing address(es)
   [0] Institute for Manufacturing Mill Lane, Cambridge - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefan Keller' has 1 existing address(es)
   [0] Thomas-Mann-Str 16-20, Nürnberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sebastian Bauer' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 8/12, rue Boissy d'Anglas, Paris - lat:48.8681375, lon:2.3214824, needsGeocoding:false
✅ PRESERVED geocoding: 8/12, rue Boissy d'Anglas, Paris → (48.8681375, 2.3214824), needsGeocoding=false
🔍 Friend 'Jasmin Klann' has 1 existing address(es)
   [0] Stolberger Straße 88, Köln - lat:50.9421149, lon:6.9049621, needsGeocoding:false
✅ PRESERVED geocoding: Stolberger Straße 88, Köln → (50.9421149, 6.9049621), needsGeocoding=false
🔍 Friend 'Ines & Tobi Jakobs' has 1 existing address(es)
   [0] Alexandre-Flemingstr. 5, Martinsried - lat:48.1038153, lon:11.4511876, needsGeocoding:false
✅ PRESERVED geocoding: Alexandre-Flemingstr. 5, Martinsried → (48.1038153, 11.4511876), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hastalska 752/14, Prague 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anita Hagenbucher' has 1 existing address(es)
   [0] Eininger Str. 54, München 80993 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Belfortstr. 14, München-Haidhausen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexander Kotov' has 1 existing address(es)
   [0] , Martinsried - lat:48.1088733, lon:11.4519553, needsGeocoding:false
✅ PRESERVED geocoding: , Martinsried → (48.1088733, 11.4519553), needsGeocoding=false
🔍 Friend 'Mike McGuffie' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Corinna Tscherpel' has 1 existing address(es)
   [0] Hohenstaufenring  30-32, Köln - lat:50.9314838, lon:6.9408915, needsGeocoding:false
✅ PRESERVED geocoding: Hohenstaufenring  30-32, Köln → (50.9314838, 6.9408915), needsGeocoding=false
🔍 Friend 'Frank Kohmann' has 1 existing address(es)
   [0] Agnesstr. 61, München - lat:48.1583517, lon:11.5612055, needsGeocoding:false
✅ PRESERVED geocoding: Agnesstr. 61, München → (48.1583517, 11.5612055), needsGeocoding=false
🔍 Friend 'Christl & Aki Hansen' has 1 existing address(es)
   [0] Unterer Hamscheberg 22, Herford - lat:52.1264673, lon:8.7084324, needsGeocoding:false
✅ PRESERVED geocoding: Unterer Hamscheberg 22, Herford → (52.1264673, 8.7084324), needsGeocoding=false
🔍 Friend 'Till Gartner' has 2 existing address(es)
   [0] Taunusstr. 23, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Spicherenstr. 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Benny Schaich' has 1 existing address(es)
   [0] Matthias-Brueggen-Strasse 148, Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Brigitte Speicher' has 1 existing address(es)
   [0] , Tiefenbach - lat:48.502895, lon:12.0997206, needsGeocoding:false
✅ PRESERVED geocoding: , Tiefenbach → (48.502895, 12.0997206), needsGeocoding=false
🔍 Friend 'Peter Lischke' has 1 existing address(es)
   [0] Hastalske nam. 2, Praha 1 - Stare Mesto - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Truong Vu' has 1 existing address(es)
   [0] 31 Tran Phu Street, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Georg Kremer' has 1 existing address(es)
   [0] Mies-van-der-Rohe-Str. 8, München - lat:48.1767463, lon:11.5923142, needsGeocoding:false
✅ PRESERVED geocoding: Mies-van-der-Rohe-Str. 8, München → (48.1767463, 11.5923142), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hansastr. 5, München - lat:48.1358219, lon:11.5259569, needsGeocoding:false
✅ PRESERVED geocoding: Hansastr. 5, München → (48.1358219, 11.5259569), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Köpenicker Straße 92, Berlin - lat:52.5117666, lon:13.4137685, needsGeocoding:false
✅ PRESERVED geocoding: Köpenicker Straße 92, Berlin → (52.5117666, 13.4137685), needsGeocoding=false
🔍 Friend 'Diane & Chris Lever' has 1 existing address(es)
   [0] 135 Giannini Hall # 3312, Berkeley - lat:38.0089377, lon:-122.094862, needsGeocoding:false
✅ PRESERVED geocoding: 135 Giannini Hall # 3312, Berkeley → (38.0089377, -122.094862), needsGeocoding=false
🔍 Friend 'Eduard Ganoczy' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Peter Duesing' has 1 existing address(es)
   [0] Rosenheimer Str. 139, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kurt Mueller' has 1 existing address(es)
   [0] Maffei Strasse 3, Munich - lat:48.1394504, lon:11.5748652, needsGeocoding:false
✅ PRESERVED geocoding: Maffei Strasse 3, Munich → (48.1394504, 11.5748652), needsGeocoding=false
🔍 Friend 'Nils T. Kohle' has 1 existing address(es)
   [0] Alsterchaussee 38, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Susanne Kienow-Wimmer' has 1 existing address(es)
   [0] Georg-Brauchle-Ring 23-25, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Münchner Str., Unterhaching bei München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dirk Bergemann' has 1 existing address(es)
   [0] , Jena - lat:50.927937, lon:11.5869686, needsGeocoding:false
✅ PRESERVED geocoding: , Jena → (50.927937, 11.5869686), needsGeocoding=false
🔍 Friend 'Tamara Schopper' has 1 existing address(es)
   [0] Corneliusstr. 40, München - lat:48.1299149, lon:11.5782692, needsGeocoding:false
✅ PRESERVED geocoding: Corneliusstr. 40, München → (48.1299149, 11.5782692), needsGeocoding=false
🔍 Friend 'Lili Gartner' has 1 existing address(es)
   [0] 6155 Fountain Valley School Road, Colorado Springs - lat:38.7438817, lon:-104.7095451, needsGeocoding:false
✅ PRESERVED geocoding: 6155 Fountain Valley School Road, Colorado Springs → (38.7438817, -104.7095451), needsGeocoding=false
🔍 Friend 'Thomas Trüb' has 1 existing address(es)
   [0] ℅ Ringier
Dufourstr. 23, Zurich - lat:47.363917, lon:8.547907, needsGeocoding:false
✅ PRESERVED geocoding: ℅ Ringier
Dufourstr. 23, Zurich → (47.363917, 8.547907), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kirchenstr., München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Wolfgang Huber' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Wolfgang Hering' has 1 existing address(es)
   [0] Lipowskystr 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jürgen Ludwig' has 1 existing address(es)
   [0] Inselkammerstr. 5, Unterhaching - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Hüffner' has 1 existing address(es)
   [0] Bahnhofstr. 95, Gräfelfing bei München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hậu Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Thomas Hasan' has 1 existing address(es)
   [0] Am Knie 16, Munich - lat:48.1446488, lon:11.4724493, needsGeocoding:false
✅ PRESERVED geocoding: Am Knie 16, Munich → (48.1446488, 11.4724493), needsGeocoding=false
🔍 Friend ' Henzinger' has 1 existing address(es)
   [0] , Salzburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'John MacLennan' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Timo Perschke' has 1 existing address(es)
   [0] Blomenburg 1 (Technologiezentrum), Selent - lat:54.2850658, lon:10.4319209, needsGeocoding:false
✅ PRESERVED geocoding: Blomenburg 1 (Technologiezentrum), Selent → (54.2850658, 10.4319209), needsGeocoding=false
🔍 Friend 'Kerstin Springer' has 2 existing address(es)
   [0] Horscheltstr. 4
(Nähe Nordbad), München - lat:48.1604683, lon:11.5658284, needsGeocoding:false
   [1] Horscheltstr. 4

(Nähe Nordbad), München - lat:48.1604683, lon:11.5658284, needsGeocoding:false
✅ PRESERVED geocoding: Horscheltstr. 4
(Nähe Nordbad), München → (48.1604683, 11.5658284), needsGeocoding=false
✅ PRESERVED geocoding: Horscheltstr. 4

(Nähe Nordbad), München → (48.1604683, 11.5658284), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Franziskanerstr. 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nadia Nasser' has 1 existing address(es)
   [0] , NY-City - lat:40.7129822, lon:-74.007205, needsGeocoding:false
✅ PRESERVED geocoding: , NY-City → (40.7129822, -74.007205), needsGeocoding=false
🔍 Friend 'Jens Krause' has 1 existing address(es)
   [0] Pestalozzistrasse 3, Zürich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Benoit Honorat' has 1 existing address(es)
   [0] hybris France SAS,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Joseph Held' has 1 existing address(es)
   [0] , Köln - lat:50.9375229, lon:6.95948, needsGeocoding:false
✅ PRESERVED geocoding: , Köln → (50.9375229, 6.95948), needsGeocoding=false
🔍 Friend 'Paul May' has 2 existing address(es)
   [0] Leopoldstraße 256, München - lat:48.1840965, lon:11.5859699, needsGeocoding:false
   [1] Rümannstr. 8, München - lat:48.1753503, lon:11.5740359, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstraße 256, München → (48.1840965, 11.5859699), needsGeocoding=false
✅ PRESERVED geocoding: Rümannstr. 8, München → (48.1753503, 11.5740359), needsGeocoding=false
🔍 Friend 'Christian Pflaum' has 1 existing address(es)
   [0] Baaderstraße 44, München - lat:48.1308666, lon:11.5784691, needsGeocoding:false
✅ PRESERVED geocoding: Baaderstraße 44, München → (48.1308666, 11.5784691), needsGeocoding=false
🔍 Friend 'Astrid Overbeck' has 1 existing address(es)
   [0] Adams-Lehmann-Str. 55, München - lat:48.1621836, lon:11.5595454, needsGeocoding:false
✅ PRESERVED geocoding: Adams-Lehmann-Str. 55, München → (48.1621836, 11.5595454), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 248 Tran Phu Street, DaNang - lat:16.0628719, lon:108.2232733, needsGeocoding:false
✅ PRESERVED geocoding: 248 Tran Phu Street, DaNang → (16.0628719, 108.2232733), needsGeocoding=false
🔍 Friend 'Hans Völk' has 1 existing address(es)
   [0] Frankfurter Ring, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexander Lewald' has 1 existing address(es)
   [0] Residenzstr. 3, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefan Müller' has 1 existing address(es)
   [0] Puchheimer Str. 32, München - lat:48.1827316, lon:11.5034468, needsGeocoding:false
✅ PRESERVED geocoding: Puchheimer Str. 32, München → (48.1827316, 11.5034468), needsGeocoding=false
🔍 Friend 'Sechter Vladimir' has 1 existing address(es)
   [0] Jugoslavska 1, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Oliver Axnick' has 2 existing address(es)
   [0] Rainstrasse 4, Egg b. Zürich - lat:47.296641, lon:8.691071, needsGeocoding:false
   [1] Javastr. 2 / Hegnau, Volketswil - lat:47.392986, lon:8.675334, needsGeocoding:false
✅ PRESERVED geocoding: Rainstrasse 4, Egg b. Zürich → (47.296641, 8.691071), needsGeocoding=false
✅ PRESERVED geocoding: Javastr. 2 / Hegnau, Volketswil → (47.392986, 8.675334), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Weltenburger Str. 6, München - lat:48.1410514, lon:11.6275305, needsGeocoding:false
✅ PRESERVED geocoding: Weltenburger Str. 6, München → (48.1410514, 11.6275305), needsGeocoding=false
🔍 Friend 'Douglas McMurray' has 1 existing address(es)
   [0] , Vancouver - lat:49.2604134, lon:-123.1139456, needsGeocoding:false
✅ PRESERVED geocoding: , Vancouver → (49.2604134, -123.1139456), needsGeocoding=false
🔍 Friend 'Mertens Marcus' has 1 existing address(es)
   [0] , Munich - lat:48.141047, lon:11.5012571, needsGeocoding:false
✅ PRESERVED geocoding: , Munich → (48.141047, 11.5012571), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Ledenitzen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernd Krause' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] ,  - lat:49.7247107, lon:15.3451304, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (49.7247107, 15.3451304), needsGeocoding=false
🔍 Friend 'Stefan Prechtl' has 1 existing address(es)
   [0] Heimstättenstr. 13, München - lat:48.1794938, lon:11.60813, needsGeocoding:false
✅ PRESERVED geocoding: Heimstättenstr. 13, München → (48.1794938, 11.60813), needsGeocoding=false
🔍 Friend 'Franco Cerreto' has 2 existing address(es)
   [0] , Berlin - lat:nil, lon:nil, needsGeocoding:true
   [1] Eisenbahnstraße 174, Werder (Havel) - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Celetna 6, Praha - lat:50.0871659, lon:14.4226861, needsGeocoding:false
✅ PRESERVED geocoding: Celetna 6, Praha → (50.0871659, 14.4226861), needsGeocoding=false
🔍 Friend 'Philip Debbas' has 1 existing address(es)
   [0] Breisacher Str. 10, München - lat:48.1301519, lon:11.6031611, needsGeocoding:false
✅ PRESERVED geocoding: Breisacher Str. 10, München → (48.1301519, 11.6031611), needsGeocoding=false
🔍 Friend 'Maria & Kathy Roussos' has 1 existing address(es)
   [0] Mouson 41, Kifissia Athen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Henry Hinrichs' has 1 existing address(es)
   [0] Hienlohestr. 26, Otterfing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sanam Moayedi-Stummer' has 1 existing address(es)
   [0] Quartier 205, Friedrichstr.68, Berlin - lat:52.5080816, lon:13.3898206, needsGeocoding:false
✅ PRESERVED geocoding: Quartier 205, Friedrichstr.68, Berlin → (52.5080816, 13.3898206), needsGeocoding=false
🔍 Friend ' Rehorn' has 1 existing address(es)
   [0] Karl-Schmid-Str. 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Petra Forssberg' has 2 existing address(es)
   [0] , Lidköping - lat:58.5022796, lon:13.1637002, needsGeocoding:false
   [1] , Schladming - lat:47.3919182, lon:13.6874166, needsGeocoding:false
✅ PRESERVED geocoding: , Lidköping → (58.5022796, 13.1637002), needsGeocoding=false
✅ PRESERVED geocoding: , Schladming → (47.3919182, 13.6874166), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Belgradstr. 27, München - lat:48.1632486, lon:11.5743499, needsGeocoding:false
✅ PRESERVED geocoding: Belgradstr. 27, München → (48.1632486, 11.5743499), needsGeocoding=false
🔍 Friend 'Matthias Ries' has 1 existing address(es)
   [0] , Wien - lat:48.2195335, lon:16.3784883, needsGeocoding:false
✅ PRESERVED geocoding: , Wien → (48.2195335, 16.3784883), needsGeocoding=false
🔍 Friend 'Andreas Kokot' has 1 existing address(es)
   [0] Schickardstr. 32, Böblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bahram Tajedini' has 1 existing address(es)
   [0] Leonrodstr. 46, München - lat:48.1562982, lon:11.5429423, needsGeocoding:false
✅ PRESERVED geocoding: Leonrodstr. 46, München → (48.1562982, 11.5429423), needsGeocoding=false
🔍 Friend 'Jakub Faryad' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Quyền Phan' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Erika Jakisch' has 1 existing address(es)
   [0] Aichacher Str. 38, München - lat:48.1061265, lon:11.51745, needsGeocoding:false
✅ PRESERVED geocoding: Aichacher Str. 38, München → (48.1061265, 11.51745), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Götheplatz / Waltherstr. 30, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Breisacherstraße 30, München (Haidhausen) - lat:48.1310972, lon:11.6065122, needsGeocoding:false
✅ PRESERVED geocoding: Breisacherstraße 30, München (Haidhausen) → (48.1310972, 11.6065122), needsGeocoding=false
🔍 Friend 'Corey Whelan' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Evi Zingraf' has 1 existing address(es)
   [0] Zentnerstrasse 11, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Leinauer' has 1 existing address(es)
   [0] Paul-Gerhardt-Alle 48, München - lat:48.153954, lon:11.4782007, needsGeocoding:false
✅ PRESERVED geocoding: Paul-Gerhardt-Alle 48, München → (48.153954, 11.4782007), needsGeocoding=false
🔍 Friend 'Danielle Höfler' has 1 existing address(es)
   [0] Bäckerzeile 3a, Wasserburg - lat:48.0624195, lon:12.2332993, needsGeocoding:false
✅ PRESERVED geocoding: Bäckerzeile 3a, Wasserburg → (48.0624195, 12.2332993), needsGeocoding=false
🔍 Friend 'Quynh ' has 1 existing address(es)
   [0] 121 Phan Tu Street, Da Nang - lat:16.0467421, lon:108.2470089, needsGeocoding:false
✅ PRESERVED geocoding: 121 Phan Tu Street, Da Nang → (16.0467421, 108.2470089), needsGeocoding=false
🔍 Friend 'Marco Ballack' has 1 existing address(es)
   [0] Untere Steinstr. 5, Hohenlinden - lat:48.153285, lon:11.9900992, needsGeocoding:false
✅ PRESERVED geocoding: Untere Steinstr. 5, Hohenlinden → (48.153285, 11.9900992), needsGeocoding=false
🔍 Friend 'Hoang Lien' has 1 existing address(es)
   [0] , Saigon / HCMC - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon / HCMC → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 96-98 Nguyễn Văn Linh, Da Nang - lat:16.0606371, lon:108.214945, needsGeocoding:false
✅ PRESERVED geocoding: 96-98 Nguyễn Văn Linh, Da Nang → (16.0606371, 108.214945), needsGeocoding=false
🔍 Friend 'Nguyen Binh' has 1 existing address(es)
   [0] 54, Nguyen Luong Bang,, DaNang - lat:16.0734154, lon:108.1499352, needsGeocoding:false
✅ PRESERVED geocoding: 54, Nguyen Luong Bang,, DaNang → (16.0734154, 108.1499352), needsGeocoding=false
🔍 Friend 'Beate Harr' has 2 existing address(es)
   [0] Höchlstr. 3, München - lat:48.145986, lon:11.6021627, needsGeocoding:false
   [1] Taunusstraße 23, München - lat:48.1892227, lon:11.5778615, needsGeocoding:false
✅ PRESERVED geocoding: Höchlstr. 3, München → (48.145986, 11.6021627), needsGeocoding=false
✅ PRESERVED geocoding: Taunusstraße 23, München → (48.1892227, 11.5778615), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Johanneskirchner Str. 146, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bloch ' has 1 existing address(es)
   [0] Fürstenrieder Allee 194, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Schwanenwik 38, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Zwerger' has 2 existing address(es)
   [0] Hultschinerstr. 8, München - lat:48.1370539, lon:11.6353939, needsGeocoding:false
   [1] Johann-Clanze-Str 95, München - lat:48.1123296, lon:11.5218362, needsGeocoding:false
✅ PRESERVED geocoding: Hultschinerstr. 8, München → (48.1370539, 11.6353939), needsGeocoding=false
✅ PRESERVED geocoding: Johann-Clanze-Str 95, München → (48.1123296, 11.5218362), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Postfach 3270, Hof - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Magg' has 1 existing address(es)
   [0] Brixenerstr. 8, Augsburg - lat:48.379588, lon:10.933425, needsGeocoding:false
✅ PRESERVED geocoding: Brixenerstr. 8, Augsburg → (48.379588, 10.933425), needsGeocoding=false
🔍 Friend 'Peter Hall' has 1 existing address(es)
   [0] , Brisbane - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Leopoldstr. 25, München - lat:48.1579334, lon:11.5843804, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 25, München → (48.1579334, 11.5843804), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Ruffinistr., München/Nymphenburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Henry Goettler' has 2 existing address(es)
   [0] Intershop Tower
19th floor, Jena - lat:36.3118834, lon:30.1607071, needsGeocoding:false
   [1] Intershop Tower

19th floor, Jena - lat:36.3118834, lon:30.1607071, needsGeocoding:false
✅ PRESERVED geocoding: Intershop Tower
19th floor, Jena → (36.3118834, 30.1607071), needsGeocoding=false
✅ PRESERVED geocoding: Intershop Tower

19th floor, Jena → (36.3118834, 30.1607071), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Frankfurter Ring 35, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael George' has 1 existing address(es)
   [0] Knorrstr. 139, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alfred Häusler' has 1 existing address(es)
   [0] Hohenlohestr. 27, München - lat:48.1660308, lon:11.5320777, needsGeocoding:false
✅ PRESERVED geocoding: Hohenlohestr. 27, München → (48.1660308, 11.5320777), needsGeocoding=false
🔍 Friend 'Marcel Faber' has 1 existing address(es)
   [0] Hochstiftsweg 25, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] 256 rue St Honore
75001 Paris,  - lat:nil, lon:nil, needsGeocoding:true
   [1] 256 rue St Honore

75001 Paris,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jürgen Lochner' has 1 existing address(es)
   [0] Porscheplatz 1, Stuttgart-Zuffenhausen - lat:48.835331, lon:9.1525909, needsGeocoding:false
✅ PRESERVED geocoding: Porscheplatz 1, Stuttgart-Zuffenhausen → (48.835331, 9.1525909), needsGeocoding=false
🔍 Friend 'Ralf-Martin Tauer' has 2 existing address(es)
   [0] 4, rue des Pyrénées, Castelmaurou - lat:nil, lon:nil, needsGeocoding:true
   [1] 4, rue des Pyrénées, Castelmaurou - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karl Groß' has 1 existing address(es)
   [0] Landsbergerstr. 428, München - lat:48.1457447, lon:11.4750077, needsGeocoding:false
✅ PRESERVED geocoding: Landsbergerstr. 428, München → (48.1457447, 11.4750077), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Freinberg 74, Freinberg - lat:48.5593943, lon:13.5205811, needsGeocoding:false
✅ PRESERVED geocoding: Freinberg 74, Freinberg → (48.5593943, 13.5205811), needsGeocoding=false
🔍 Friend 'Klaus-Peter Bruns' has 1 existing address(es)
   [0] Karl-Hammerschmid-Str. 44, Aschheim - lat:48.1504602, lon:11.6831209, needsGeocoding:false
✅ PRESERVED geocoding: Karl-Hammerschmid-Str. 44, Aschheim → (48.1504602, 11.6831209), needsGeocoding=false
🔍 Friend 'Pesaro Martinozzi' has 1 existing address(es)
   [0] 97 Viale Della Vittoria, Pesaro - lat:43.9105314, lon:12.9175922, needsGeocoding:false
✅ PRESERVED geocoding: 97 Viale Della Vittoria, Pesaro → (43.9105314, 12.9175922), needsGeocoding=false
🔍 Friend 'Horst Kühn' has 1 existing address(es)
   [0] Tangstedter Landstr. 6, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Monika Teslinski' has 1 existing address(es)
   [0] Südallee 1, München Flughafen - lat:48.3502983, lon:11.7740055, needsGeocoding:false
✅ PRESERVED geocoding: Südallee 1, München Flughafen → (48.3502983, 11.7740055), needsGeocoding=false
🔍 Friend 'Günter Heiß' has 1 existing address(es)
   [0] Agnesstr. 61, München - lat:48.1583517, lon:11.5612055, needsGeocoding:false
✅ PRESERVED geocoding: Agnesstr. 61, München → (48.1583517, 11.5612055), needsGeocoding=false
🔍 Friend ' Shirvani' has 2 existing address(es)
   [0] chez Dj. Gharib
Domaine du Loup, Immeuble Verdon, Entrée E11° - lat:nil, lon:nil, needsGeocoding:true
   [1] chez Dj. Gharib

Domaine du Loup, Immeuble Verdon, Entrée E11° - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Morad Khosrow Shahi' has 1 existing address(es)
   [0] Adlzreiterstr. 15, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Annecy-Meythet - lat:45.9158361, lon:6.0916847, needsGeocoding:false
✅ PRESERVED geocoding: , Annecy-Meythet → (45.9158361, 6.0916847), needsGeocoding=false
🔍 Friend 'Christoph Koos' has 1 existing address(es)
   [0] Gotenstr. 156, Bonn - lat:50.6967385, lon:7.1448343, needsGeocoding:false
✅ PRESERVED geocoding: Gotenstr. 156, Bonn → (50.6967385, 7.1448343), needsGeocoding=false
🔍 Friend 'Hanno Wendt' has 1 existing address(es)
   [0] Schanzenstr. 6-20, Köln - lat:50.9665551, lon:7.0100341, needsGeocoding:false
✅ PRESERVED geocoding: Schanzenstr. 6-20, Köln → (50.9665551, 7.0100341), needsGeocoding=false
🔍 Friend 'Nhạc Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Silvia Reul' has 1 existing address(es)
   [0] Denningerstr. 34, München - lat:48.1489405, lon:11.6134226, needsGeocoding:false
✅ PRESERVED geocoding: Denningerstr. 34, München → (48.1489405, 11.6134226), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hans Mielich Str. 2, München - lat:48.1160861, lon:11.5698731, needsGeocoding:false
✅ PRESERVED geocoding: Hans Mielich Str. 2, München → (48.1160861, 11.5698731), needsGeocoding=false
🔍 Friend ' Hillerin' has 1 existing address(es)
   [0] Richard-Strauss-Str. 49, München - lat:48.14461, lon:11.6153144, needsGeocoding:false
✅ PRESERVED geocoding: Richard-Strauss-Str. 49, München → (48.14461, 11.6153144), needsGeocoding=false
🔍 Friend 'Thomas Frank' has 1 existing address(es)
   [0] Am Eisbach 5, München - lat:48.1553054, lon:11.6007248, needsGeocoding:false
✅ PRESERVED geocoding: Am Eisbach 5, München → (48.1553054, 11.6007248), needsGeocoding=false
🔍 Friend 'Max Gastinger' has 1 existing address(es)
   [0] Zugspitzstr. 14

1. Stock

Nähe Ostfriedhof, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Markus Thuere' has 1 existing address(es)
   [0] , Saigon / Ho Chi Minh - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon / Ho Chi Minh → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Marian Haus' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Johannes Fabian' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Pavel Hrdina' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Frank Kneschke' has 1 existing address(es)
   [0] Holländischer Brook 2, Hamburg - lat:53.545273, lon:9.9989324, needsGeocoding:false
✅ PRESERVED geocoding: Holländischer Brook 2, Hamburg → (53.545273, 9.9989324), needsGeocoding=false
🔍 Friend 'Gertrud Rossa (ehem. Muensch)' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Barbara Deelen, van' has 1 existing address(es)
   [0] Kathi-Kobus Str. 20, München - lat:48.1597985, lon:11.5579581, needsGeocoding:false
✅ PRESERVED geocoding: Kathi-Kobus Str. 20, München → (48.1597985, 11.5579581), needsGeocoding=false
🔍 Friend 'Dirk Bangel' has 2 existing address(es)
   [0] Dachauer Strasse 651, Munich - lat:48.2114716, lon:11.4826571, needsGeocoding:false
   [1] Ernsbergerstrasse 17, Munich - lat:48.1486004, lon:11.4558091, needsGeocoding:false
✅ PRESERVED geocoding: Dachauer Strasse 651, Munich → (48.2114716, 11.4826571), needsGeocoding=false
✅ PRESERVED geocoding: Ernsbergerstrasse 17, Munich → (48.1486004, 11.4558091), needsGeocoding=false
🔍 Friend ' Pradler' has 1 existing address(es)
   [0] Münchner Str. 34, Garching - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ellen Schmidt' has 1 existing address(es)
   [0] Schinkelstr. 32, München - lat:48.172635, lon:11.5910966, needsGeocoding:false
✅ PRESERVED geocoding: Schinkelstr. 32, München → (48.172635, 11.5910966), needsGeocoding=false
🔍 Friend 'Holm Egidy, von' has 1 existing address(es)
   [0] Zur Deutschen Einheit 11, München - lat:48.150864, lon:11.6430168, needsGeocoding:false
✅ PRESERVED geocoding: Zur Deutschen Einheit 11, München → (48.150864, 11.6430168), needsGeocoding=false
🔍 Friend 'Jana Dolanova' has 1 existing address(es)
   [0] Dukelských Hrdinu 12, Praha 7 - lat:50.0991391, lon:14.4334503, needsGeocoding:false
✅ PRESERVED geocoding: Dukelských Hrdinu 12, Praha 7 → (50.0991391, 14.4334503), needsGeocoding=false
🔍 Friend 'Marcus Warnke' has 1 existing address(es)
   [0] Colonnaden 15, Hamburg - lat:53.5556085, lon:9.9904259, needsGeocoding:false
✅ PRESERVED geocoding: Colonnaden 15, Hamburg → (53.5556085, 9.9904259), needsGeocoding=false
🔍 Friend 'Torsten Aé' has 1 existing address(es)
   [0] Tulpenweg 4, Hallbergmoos - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nguyet Bui' has 1 existing address(es)
   [0] , Hanoi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christopher G. Große' has 1 existing address(es)
   [0] Calmbergstraße 7, Augsburg - lat:48.3563857, lon:10.888558, needsGeocoding:false
✅ PRESERVED geocoding: Calmbergstraße 7, Augsburg → (48.3563857, 10.888558), needsGeocoding=false
🔍 Friend 'Susanne Weinzierl' has 1 existing address(es)
   [0] Marsstr. 40, München - lat:48.1444864, lon:11.5552242, needsGeocoding:false
✅ PRESERVED geocoding: Marsstr. 40, München → (48.1444864, 11.5552242), needsGeocoding=false
🔍 Friend 'Sophie Gryc' has 1 existing address(es)
   [0] Corneliusstr. 15, München - lat:48.1314548, lon:11.5766815, needsGeocoding:false
✅ PRESERVED geocoding: Corneliusstr. 15, München → (48.1314548, 11.5766815), needsGeocoding=false
🔍 Friend 'Thierry Deyber' has 1 existing address(es)
   [0] , Freiburg (Breisgau) - lat:47.9959352, lon:7.8492835, needsGeocoding:false
✅ PRESERVED geocoding: , Freiburg (Breisgau) → (47.9959352, 7.8492835), needsGeocoding=false
🔍 Friend 'Jan Schlüter' has 1 existing address(es)
   [0] Sarenweg 44,  - lat:53.6884343, lon:10.1149545, needsGeocoding:false
✅ PRESERVED geocoding: Sarenweg 44,  → (53.6884343, 10.1149545), needsGeocoding=false
🔍 Friend 'Walter Hübler' has 2 existing address(es)
   [0] Konrad-Adenauer-Allee 30, Regensburg - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kathleen Schillig' has 1 existing address(es)
   [0] Pickhuben 5, Hamburg - lat:53.5441123, lon:9.9940391, needsGeocoding:false
✅ PRESERVED geocoding: Pickhuben 5, Hamburg → (53.5441123, 9.9940391), needsGeocoding=false
🔍 Friend 'Karin Stephan' has 1 existing address(es)
   [0] , Prien am Chiemsee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anna Pierini' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Monica Blumenberg' has 1 existing address(es)
   [0] Schleißheimerstr. 260 V, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Lenbachplatz 8/I, München - lat:48.1401654, lon:11.5676845, needsGeocoding:false
✅ PRESERVED geocoding: Lenbachplatz 8/I, München → (48.1401654, 11.5676845), needsGeocoding=false
🔍 Friend 'Bernd Adleff' has 1 existing address(es)
   [0] Saegmuehlstr.27, Olching - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Herr Schacht' has 1 existing address(es)
   [0] Ismaninger Strasse 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Vu Nguyen' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Hans-Uwe Jürgensen' has 1 existing address(es)
   [0] Weinbergstr. 3, 6309 Rockenberg 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Georg Illert' has 1 existing address(es)
   [0] Hewlett-Packard-Str. 1/1, Herrenberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Lucie Vorlíčková' has 1 existing address(es)
   [0] Jungmannova 31, PRAHA 1 - lat:50.0824786, lon:14.4221298, needsGeocoding:false
✅ PRESERVED geocoding: Jungmannova 31, PRAHA 1 → (50.0824786, 14.4221298), needsGeocoding=false
🔍 Friend 'Patrick Ohl' has 1 existing address(es)
   [0] Klenzestr. 71, München - lat:48.1283434, lon:11.5709786, needsGeocoding:false
✅ PRESERVED geocoding: Klenzestr. 71, München → (48.1283434, 11.5709786), needsGeocoding=false
🔍 Friend 'Rüdiger Hartung' has 1 existing address(es)
   [0] Dammtorstraße 30, Hamburg - lat:53.5563753, lon:9.9882751, needsGeocoding:false
✅ PRESERVED geocoding: Dammtorstraße 30, Hamburg → (53.5563753, 9.9882751), needsGeocoding=false
🔍 Friend 'Konrad Seebauer' has 1 existing address(es)
   [0] Ernst-Heinkel-Str.4, Straubing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jennifer & Jerôme Bulté' has 2 existing address(es)
   [0] 125, bd. du General Koenig
(Escaliers B), Neuilly sur Seine - lat:48.8780468, lon:2.2485981, needsGeocoding:false
   [1] 125, bd. du General Koenig

(Escaliers B), Neuilly sur Seine - lat:48.8780468, lon:2.2485981, needsGeocoding:false
✅ PRESERVED geocoding: 125, bd. du General Koenig
(Escaliers B), Neuilly sur Seine → (48.8780468, 2.2485981), needsGeocoding=false
✅ PRESERVED geocoding: 125, bd. du General Koenig

(Escaliers B), Neuilly sur Seine → (48.8780468, 2.2485981), needsGeocoding=false
🔍 Friend 'Norry Volk' has 1 existing address(es)
   [0] Dorfstr. 4, Faistenhaar - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Holger Lörz' has 1 existing address(es)
   [0] , Stuttgart - lat:48.7752444, lon:9.177595, needsGeocoding:false
✅ PRESERVED geocoding: , Stuttgart → (48.7752444, 9.177595), needsGeocoding=false
🔍 Friend 'Ernst-E. Wellhöner' has 2 existing address(es)
   [0] 38, avenue du Bourg, Agay - lat:nil, lon:nil, needsGeocoding:true
   [1] Trostberger Str. 22a, Altötting - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Isabellastr. 47, München - lat:48.1601496, lon:11.57285, needsGeocoding:false
✅ PRESERVED geocoding: Isabellastr. 47, München → (48.1601496, 11.57285), needsGeocoding=false
🔍 Friend 'Walter Simon' has 1 existing address(es)
   [0] Gartenstr. 10a, Grasbrunn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ansgar Klevorn' has 1 existing address(es)
   [0] Landsberger Strasse 428, München - lat:48.1457447, lon:11.4750077, needsGeocoding:false
✅ PRESERVED geocoding: Landsberger Strasse 428, München → (48.1457447, 11.4750077), needsGeocoding=false
🔍 Friend 'Michael Sölter' has 1 existing address(es)
   [0] P.O.Box 28 61 56, Bremen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Guido Rieniz' has 1 existing address(es)
   [0] Belfortstr. 8, Rgb II. OG, München - lat:48.1297267, lon:11.6037266, needsGeocoding:false
✅ PRESERVED geocoding: Belfortstr. 8, Rgb II. OG, München → (48.1297267, 11.6037266), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , StAnton am Arlberg - lat:47.1263569, lon:10.2612921, needsGeocoding:false
✅ PRESERVED geocoding: , StAnton am Arlberg → (47.1263569, 10.2612921), needsGeocoding=false
🔍 Friend 'Piotrek Peizol' has 1 existing address(es)
   [0] , Lipa - lat:50.6853501, lon:22.0646076, needsGeocoding:false
✅ PRESERVED geocoding: , Lipa → (50.6853501, 22.0646076), needsGeocoding=false
🔍 Friend 'Steven Pannell' has 2 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
   [1] Eichenweg 4 rg., Unterfohring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Amblard' has 1 existing address(es)
   [0] 30 Pasir Panjang Road, #03-32, Mapletree Business City, Singapore - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anne Poloscheck' has 1 existing address(es)
   [0] , Solothurn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Julia Hellmerichs' has 1 existing address(es)
   [0] Sophienstrasse 1, München - lat:48.1413239, lon:11.5664173, needsGeocoding:false
✅ PRESERVED geocoding: Sophienstrasse 1, München → (48.1413239, 11.5664173), needsGeocoding=false
🔍 Friend 'Ansgar Mayer' has 1 existing address(es)
   [0] Christoph-Probst-Weg 29, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Rodolphe Beaugeard' has 1 existing address(es)
   [0] Bavariastrasse. 1A, München - lat:48.1264457, lon:11.5472991, needsGeocoding:false
✅ PRESERVED geocoding: Bavariastrasse. 1A, München → (48.1264457, 11.5472991), needsGeocoding=false
🔍 Friend 'Emanuel Kurlandczyk' has 1 existing address(es)
   [0] Damaschkestr. 4a, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'V. Kamargakis' has 1 existing address(es)
   [0] Belgradstr. 157, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Jakubska 2

Staré Mesto, Praha 1 - lat:50.0880775, lon:14.4248079, needsGeocoding:false
   [1] Jakubska 2
Staré Mesto, Praha 1 - lat:50.0880775, lon:14.4248079, needsGeocoding:false
✅ PRESERVED geocoding: Jakubska 2

Staré Mesto, Praha 1 → (50.0880775, 14.4248079), needsGeocoding=false
✅ PRESERVED geocoding: Jakubska 2
Staré Mesto, Praha 1 → (50.0880775, 14.4248079), needsGeocoding=false
🔍 Friend 'Thomas Josefczack' has 1 existing address(es)
   [0] Gräfstr. 42, München - lat:48.1427249, lon:11.4671199, needsGeocoding:false
✅ PRESERVED geocoding: Gräfstr. 42, München → (48.1427249, 11.4671199), needsGeocoding=false
🔍 Friend 'Eva Tavernova' has 1 existing address(es)
   [0] Dr. Yikmunda Wintra 376/5, Praha 6 - lat:50.1009758, lon:14.4042629, needsGeocoding:false
✅ PRESERVED geocoding: Dr. Yikmunda Wintra 376/5, Praha 6 → (50.1009758, 14.4042629), needsGeocoding=false
🔍 Friend 'Elisa ' has 1 existing address(es)
   [0] Viale P. Mascagni 84, Pesaro - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sean Monks' has 1 existing address(es)
   [0] Tegernseer Landstrasse 138, München - lat:48.1110775, lon:11.5768261, needsGeocoding:false
✅ PRESERVED geocoding: Tegernseer Landstrasse 138, München → (48.1110775, 11.5768261), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 16, Rue Linois, Paris - lat:48.8484219, lon:2.2827207, needsGeocoding:false
✅ PRESERVED geocoding: 16, Rue Linois, Paris → (48.8484219, 2.2827207), needsGeocoding=false
🔍 Friend 'Thomas Forschbach' has 1 existing address(es)
   [0] Benesisstr. 23, Köln - lat:50.9365951, lon:6.9422795, needsGeocoding:false
✅ PRESERVED geocoding: Benesisstr. 23, Köln → (50.9365951, 6.9422795), needsGeocoding=false
🔍 Friend 'Stefan Bossert' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christina Barth' has 1 existing address(es)
   [0] Zweibrückenstr. 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nguyễn Nhung' has 1 existing address(es)
   [0] 38 Yen Bai, Hai Chau Dist, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gunnar Hannich' has 1 existing address(es)
   [0] Schneckestr. 17, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ralf (Eddy) Walter' has 2 existing address(es)
   [0] Lily-Braun-Weg 19, München - lat:48.1645425, lon:11.5458779, needsGeocoding:false
   [1] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: Lily-Braun-Weg 19, München → (48.1645425, 11.5458779), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Frank Lenzer' has 1 existing address(es)
   [0] Heidemannstrasse 170, München - lat:48.1989962, lon:11.6075198, needsGeocoding:false
✅ PRESERVED geocoding: Heidemannstrasse 170, München → (48.1989962, 11.6075198), needsGeocoding=false
🔍 Friend 'Antje & Tom Ritzer' has 1 existing address(es)
   [0] Dr Anna-Dengel-Weg 14, Reutte - lat:47.4991518, lon:10.7256281, needsGeocoding:false
✅ PRESERVED geocoding: Dr Anna-Dengel-Weg 14, Reutte → (47.4991518, 10.7256281), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Praha 5 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christine Wiederer' has 1 existing address(es)
   [0] , Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Daniela Schmiedecke' has 1 existing address(es)
   [0] Weißenburger Platz 8, München - lat:48.1287198, lon:11.5967162, needsGeocoding:false
✅ PRESERVED geocoding: Weißenburger Platz 8, München → (48.1287198, 11.5967162), needsGeocoding=false
🔍 Friend 'Ben Schupp' has 1 existing address(es)
   [0] Neugasse 95, Zürich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gerhard Stummer' has 1 existing address(es)
   [0] , Linz - lat:48.3103747, lon:14.2824754, needsGeocoding:false
✅ PRESERVED geocoding: , Linz → (48.3103747, 14.2824754), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rablstr. 37, München - Haidhausen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Leon Müller' has 1 existing address(es)
   [0] Adalbertsteinweg 181, Aachen - lat:50.7734928, lon:6.1104128, needsGeocoding:false
✅ PRESERVED geocoding: Adalbertsteinweg 181, Aachen → (50.7734928, 6.1104128), needsGeocoding=false
🔍 Friend 'Anni Walkner' has 1 existing address(es)
   [0] Unterlehen-Bauer
Lehenweg 71, St. Koloman - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matias Geronimo' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Monte Nugent' has 1 existing address(es)
   [0] Einsteinring 30, Dornach - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinring 30, Dornach → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend 'Marko Walde' has 1 existing address(es)
   [0] Somerset Chancellor Court, Floor 5th,
21 - 23 Nguyen Thi Minh Khai St., Dist. 1, HCMC - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Bruchmann' has 3 existing address(es)
   [0] Hardenbergstr.24, München - lat:48.178943, lon:11.5252713, needsGeocoding:false
   [1] Neumarkter Str. 80, München - lat:48.1308991, lon:11.628569, needsGeocoding:false
   [2] Straßbergerstraße Str.38,  - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Hardenbergstr.24, München → (48.178943, 11.5252713), needsGeocoding=false
✅ PRESERVED geocoding: Neumarkter Str. 80, München → (48.1308991, 11.628569), needsGeocoding=false
🔍 Friend 'Christoph Spalinger' has 1 existing address(es)
   [0] Martin-Luther-Ring 2, Baldham - lat:48.09697, lon:11.7788906, needsGeocoding:false
✅ PRESERVED geocoding: Martin-Luther-Ring 2, Baldham → (48.09697, 11.7788906), needsGeocoding=false
🔍 Friend 'Lucie Bidet' has 1 existing address(es)
   [0] ,  - lat:46.2636145, lon:2.1787414, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (46.2636145, 2.1787414), needsGeocoding=false
🔍 Friend ' Parent of Emma, Green Shoots 2016' has 1 existing address(es)
   [0] House 1. Street 1. Phuc Loc Vien. Quan Son Tra, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Cermakova 1231/4, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anja Schmidt' has 1 existing address(es)
   [0] , Seebruck - lat:47.9322027, lon:12.4789644, needsGeocoding:false
✅ PRESERVED geocoding: , Seebruck → (47.9322027, 12.4789644), needsGeocoding=false
🔍 Friend 'Nina Sattler' has 1 existing address(es)
   [0] Janackovo Nabrezi 25, Praha 5 - lat:50.0765832, lon:14.4082909, needsGeocoding:false
✅ PRESERVED geocoding: Janackovo Nabrezi 25, Praha 5 → (50.0765832, 14.4082909), needsGeocoding=false
🔍 Friend 'Ansgar Weiss' has 1 existing address(es)
   [0] Wilhelmstr. 8, Regensburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Yiakovec' has 1 existing address(es)
   [0] Lipová 72, Modletice - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Husova 23, Praha 1 - lat:50.0863068, lon:14.4177252, needsGeocoding:false
✅ PRESERVED geocoding: Husova 23, Praha 1 → (50.0863068, 14.4177252), needsGeocoding=false
🔍 Friend ' Spiegel' has 1 existing address(es)
   [0] Dollmannstr. 11, München - lat:48.1201315, lon:11.5778378, needsGeocoding:false
✅ PRESERVED geocoding: Dollmannstr. 11, München → (48.1201315, 11.5778378), needsGeocoding=false
🔍 Friend 'Carlton Purdie' has 1 existing address(es)
   [0] 84-24 118th Street, Kew Gardens, New York 11415 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Volkmar Kutz' has 1 existing address(es)
   [0] Hansastr. 24, München - lat:48.1332273, lon:11.5273641, needsGeocoding:false
✅ PRESERVED geocoding: Hansastr. 24, München → (48.1332273, 11.5273641), needsGeocoding=false
🔍 Friend ' Brutscher' has 1 existing address(es)
   [0] Gebäude 74 B

4. Stock

Raum 445, Ottobrunn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andrea Goldbrunner' has 2 existing address(es)
   [0] Breisacher Str. 14

Rückgebäude, München 81667 - lat:nil, lon:nil, needsGeocoding:true
   [1] Breisacher Str. 14
Rückgebäude, München 81667 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Elmar Dutt' has 1 existing address(es)
   [0] 43D/8 Ha Van Hue Street, Ward 9, Phu Nhuan District, Ho Chi Minh City - lat:10.8023851, lon:106.6760031, needsGeocoding:false
✅ PRESERVED geocoding: 43D/8 Ha Van Hue Street, Ward 9, Phu Nhuan District, Ho Chi Minh City → (10.8023851, 106.6760031), needsGeocoding=false
🔍 Friend 'Martina Neureiter' has 1 existing address(es)
   [0] Tauglstrasse 15, St. Koloman - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michel Domberger' has 1 existing address(es)
   [0] Maximilianstr. 8, München - lat:48.1390185, lon:11.5795879, needsGeocoding:false
✅ PRESERVED geocoding: Maximilianstr. 8, München → (48.1390185, 11.5795879), needsGeocoding=false
🔍 Friend ' Maier' has 1 existing address(es)
   [0] , Hausham - lat:47.7524787, lon:11.8373814, needsGeocoding:false
✅ PRESERVED geocoding: , Hausham → (47.7524787, 11.8373814), needsGeocoding=false
🔍 Friend 'Dominique Prislin' has 1 existing address(es)
   [0] Freihammerstr. 1, Gräfelfing - lat:48.1215552, lon:11.4250279, needsGeocoding:false
✅ PRESERVED geocoding: Freihammerstr. 1, Gräfelfing → (48.1215552, 11.4250279), needsGeocoding=false
🔍 Friend 'Khánh Lý' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Ralf Kohl' has 2 existing address(es)
   [0] Gustav-Heinemann-Ring 123, München - Neuperlach - lat:48.0882886, lon:11.642866, needsGeocoding:false
   [1] Franziskanerstr. 9, München - lat:48.1277202, lon:11.5936156, needsGeocoding:false
✅ PRESERVED geocoding: Gustav-Heinemann-Ring 123, München - Neuperlach → (48.0882886, 11.642866), needsGeocoding=false
✅ PRESERVED geocoding: Franziskanerstr. 9, München → (48.1277202, 11.5936156), needsGeocoding=false
🔍 Friend 'Frantisek Brabec' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Eckhard Geuther' has 1 existing address(es)
   [0] Barlachstr. 26, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Rablstr. 10, Munich - lat:48.1276211, lon:11.5895201, needsGeocoding:false
✅ PRESERVED geocoding: Rablstr. 10, Munich → (48.1276211, 11.5895201), needsGeocoding=false
🔍 Friend 'Florian & Christian Dieckmann' has 1 existing address(es)
   [0] Kidlerstr. 10, München - lat:48.1210241, lon:11.5421432, needsGeocoding:false
✅ PRESERVED geocoding: Kidlerstr. 10, München → (48.1210241, 11.5421432), needsGeocoding=false
🔍 Friend 'Nguyện Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 84 Cao Xuan Duc, Hai Chau, DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ursula Biederer' has 1 existing address(es)
   [0] Am Perlacher Forst 186, München - lat:48.0871338, lon:11.5671803, needsGeocoding:false
✅ PRESERVED geocoding: Am Perlacher Forst 186, München → (48.0871338, 11.5671803), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Škrétová 12/590, Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Na Kampe 8b, Praha 1 - lat:50.0873811, lon:14.4093084, needsGeocoding:false
✅ PRESERVED geocoding: Na Kampe 8b, Praha 1 → (50.0873811, 14.4093084), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Fettstr. 2, Hamburg - lat:53.5664904, lon:9.9637423, needsGeocoding:false
✅ PRESERVED geocoding: Fettstr. 2, Hamburg → (53.5664904, 9.9637423), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Balanstr. 33, München - lat:48.1255611, lon:11.5959337, needsGeocoding:false
✅ PRESERVED geocoding: Balanstr. 33, München → (48.1255611, 11.5959337), needsGeocoding=false
🔍 Friend 'Michela Gess' has 1 existing address(es)
   [0] Reifenstühlstr. 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Krzystof Drzewi' has 1 existing address(es)
   [0] Metzgerstr. 4, München - lat:48.1327603, lon:11.5972678, needsGeocoding:false
✅ PRESERVED geocoding: Metzgerstr. 4, München → (48.1327603, 11.5972678), needsGeocoding=false
🔍 Friend 'Erika Fuchs' has 1 existing address(es)
   [0] Fischeraustr. 57/73, Graz - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Olaf Grüger' has 2 existing address(es)
   [0] , Unterhaching - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Corneliusstrasse 2, München - lat:48.1326052, lon:11.5744583, needsGeocoding:false
✅ PRESERVED geocoding: Corneliusstrasse 2, München → (48.1326052, 11.5744583), needsGeocoding=false
🔍 Friend 'Muhammad Tariq Khan' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Charlotte, Stephanie & Mikaël Herrault' has 1 existing address(es)
   [0] Weinbauernstr. 12, München - lat:48.1143237, lon:11.5772781, needsGeocoding:false
✅ PRESERVED geocoding: Weinbauernstr. 12, München → (48.1143237, 11.5772781), needsGeocoding=false
🔍 Friend 'Sascha Pfeiffer' has 1 existing address(es)
   [0] Nextower, 31st floor 
Thurn-und-Taxis-Platz 6, Frankfurt - lat:50.115467, lon:8.6803523, needsGeocoding:false
✅ PRESERVED geocoding: Nextower, 31st floor 
Thurn-und-Taxis-Platz 6, Frankfurt → (50.115467, 8.6803523), needsGeocoding=false
🔍 Friend 'Sascha Kasper' has 1 existing address(es)
   [0] Gregor Mendel-Straße 58, Wien - lat:48.2381976, lon:16.3380914, needsGeocoding:false
✅ PRESERVED geocoding: Gregor Mendel-Straße 58, Wien → (48.2381976, 16.3380914), needsGeocoding=false
🔍 Friend 'William Reichert' has 1 existing address(es)
   [0] Lesnaya Street, 5, Moscow - lat:55.77440684020651, lon:37.59923473130546, needsGeocoding:false
✅ PRESERVED geocoding: Lesnaya Street, 5, Moscow → (55.77440684020651, 37.59923473130546), needsGeocoding=false
🔍 Friend 'Alex Galbory' has 2 existing address(es)
   [0] Reporter Boulevard

Medienallee 7, Unterföhring - lat:nil, lon:nil, needsGeocoding:true
   [1] Reporter Boulevard
Medienallee 7, Unterföhring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Peter Dikant' has 2 existing address(es)
   [0] Michael-Huber-Weg 20, München - lat:48.131952, lon:11.6076325, needsGeocoding:false
   [1] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: Michael-Huber-Weg 20, München → (48.131952, 11.6076325), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Jochen Munz' has 2 existing address(es)
   [0] Ganzenmüllerstr. 24b, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Landsberger Str. 155, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ewa Peziol' has 1 existing address(es)
   [0] Von Der Pfordten Str 16, München-Laim - lat:48.1413772, lon:11.4963092, needsGeocoding:false
✅ PRESERVED geocoding: Von Der Pfordten Str 16, München-Laim → (48.1413772, 11.4963092), needsGeocoding=false
🔍 Friend 'Kai Kruse' has 1 existing address(es)
   [0] Briennerstr. 40, Zimmer H122, 1. Stock - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hansi Stelzer' has 1 existing address(es)
   [0] Otto-Hahn-Strasse 14, Dornach bei München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sandrine Dieval' has 1 existing address(es)
   [0] Herderstr. 15, München 80639 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marc Zajicek' has 2 existing address(es)
   [0] Neue Weyerstr. 6, Köln - lat:nil, lon:nil, needsGeocoding:true
   [1] Von-Einem-Str. 1, Essen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mike Darabos' has 2 existing address(es)
   [0] Mainzer Landstr. 46, Frankfurt - lat:50.1114187, lon:8.6646855, needsGeocoding:false
   [1] Baumgartenstr. 6/2, Salach - lat:48.6971597, lon:9.7460756, needsGeocoding:false
✅ PRESERVED geocoding: Mainzer Landstr. 46, Frankfurt → (50.1114187, 8.6646855), needsGeocoding=false
✅ PRESERVED geocoding: Baumgartenstr. 6/2, Salach → (48.6971597, 9.7460756), needsGeocoding=false
🔍 Friend 'Nina Osterfeld' has 1 existing address(es)
   [0] Meineckestr. 54, Düsseldorf - lat:51.2535272, lon:6.7695096, needsGeocoding:false
✅ PRESERVED geocoding: Meineckestr. 54, Düsseldorf → (51.2535272, 6.7695096), needsGeocoding=false
🔍 Friend 'Susanne Werner' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Ganghoferstraße 29, München - lat:48.1326729, lon:11.5405581, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Ganghoferstraße 29, München → (48.1326729, 11.5405581), needsGeocoding=false
🔍 Friend 'Roland Fesenmayr' has 1 existing address(es)
   [0] Bertoldstr. 48, Freiburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Phuong Nguyen' has 1 existing address(es)
   [0] , Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dragan Spirov' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Tuấn Ngô' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Nini & Helge Maerholz' has 1 existing address(es)
   [0] Sollnhofenerstr. 4, Lochhausen bei München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Paul & Karin Beittel' has 1 existing address(es)
   [0] Kienaderweg 15, Bergkirchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Carl Fryxell' has 1 existing address(es)
   [0] St.-Cajetan-Str. 1, München - lat:48.121845, lon:11.5994041, needsGeocoding:false
✅ PRESERVED geocoding: St.-Cajetan-Str. 1, München → (48.121845, 11.5994041), needsGeocoding=false
🔍 Friend 'Jörg Heinlein' has 1 existing address(es)
   [0] , Höhenkirchen - lat:53.916384, lon:11.3048047, needsGeocoding:false
✅ PRESERVED geocoding: , Höhenkirchen → (53.916384, 11.3048047), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Türkenstr. 83, München - lat:48.1524694, lon:11.5771307, needsGeocoding:false
✅ PRESERVED geocoding: Türkenstr. 83, München → (48.1524694, 11.5771307), needsGeocoding=false
🔍 Friend 'Andreas Brenk' has 1 existing address(es)
   [0] , Waldbronn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gerd Teufel' has 1 existing address(es)
   [0] 1 Nguyễn Văn Linh
Dương Nam, DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Wilhelm-Leuschner-Str. 32, Frankfurt - lat:50.1053721, lon:8.6690767, needsGeocoding:false
✅ PRESERVED geocoding: Wilhelm-Leuschner-Str. 32, Frankfurt → (50.1053721, 8.6690767), needsGeocoding=false
🔍 Friend 'Jiri Mara' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Dimitry Polivaev' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Dirk Jandura' has 1 existing address(es)
   [0] 105 Wigmore Street, London W1U 1QY - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Peter Puxbaumer' has 1 existing address(es)
   [0] Room 0440, Dornach - lat:48.1537497, lon:11.691066, needsGeocoding:false
✅ PRESERVED geocoding: Room 0440, Dornach → (48.1537497, 11.691066), needsGeocoding=false
🔍 Friend 'Pawel Guz' has 1 existing address(es)
   [0] ul. Pruszkowska 17, Warsaw - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Steiner' has 1 existing address(es)
   [0] Wiaschtmoos 473, Wildschönau - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kuglerstr 17, München - lat:48.1368627, lon:11.6050327, needsGeocoding:false
✅ PRESERVED geocoding: Kuglerstr 17, München → (48.1368627, 11.6050327), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Dürnbräugasse 1
Tal 21, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Dürnbräugasse 1

Tal 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ina Hasse' has 1 existing address(es)
   [0] Vollmannstr. 36, München 81927 - lat:48.1517315, lon:11.6291191, needsGeocoding:false
✅ PRESERVED geocoding: Vollmannstr. 36, München 81927 → (48.1517315, 11.6291191), needsGeocoding=false
🔍 Friend ' Milachowski, Dr.' has 1 existing address(es)
   [0] Innere Wienerstr. 8,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 4, Tran Quoc Toan, Hoi An - lat:15.8827355, lon:108.3470651, needsGeocoding:false
✅ PRESERVED geocoding: 4, Tran Quoc Toan, Hoi An → (15.8827355, 108.3470651), needsGeocoding=false
🔍 Friend 'Mueller-Adnane Nadia' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Zwinger Ecke Rumfordstr
ggüber Rincon, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gerhard Mühlbauer' has 1 existing address(es)
   [0] Dreimühlenstr. 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'David Cavin' has 1 existing address(es)
   [0] Avenue de Rhodanie 40, Lausanne - lat:46.513415, lon:6.6129783, needsGeocoding:false
✅ PRESERVED geocoding: Avenue de Rhodanie 40, Lausanne → (46.513415, 6.6129783), needsGeocoding=false
🔍 Friend 'Andreas Bauer' has 1 existing address(es)
   [0] Münsterstr. 248, Düsseldorf - lat:51.2491155, lon:6.7981627, needsGeocoding:false
✅ PRESERVED geocoding: Münsterstr. 248, Düsseldorf → (51.2491155, 6.7981627), needsGeocoding=false
🔍 Friend 'Quy Hoang' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Boucher' has 1 existing address(es)
   [0] 31, rue G. Destry, Gerompont Brabant - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Yvonne Heiß' has 1 existing address(es)
   [0] Clemenstr. 83, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Frank Carr-Allinson' has 1 existing address(es)
   [0] Kaiserplatz, Frankfurt / Main - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Henrik Voss' has 1 existing address(es)
   [0] Saarbrücker Strasse 24/D, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Lucas Witoslawski' has 1 existing address(es)
   [0] Sanbancho KS Bldg. 5F, 2-4 Sanbancho
Chiyoda-ku, Tokyo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gisela Naß' has 1 existing address(es)
   [0] Preysingstraße 105, Munich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alex Hezareh' has 1 existing address(es)
   [0] Mangfallstr 24, München Neubiberg - lat:48.0798558, lon:11.6540438, needsGeocoding:false
✅ PRESERVED geocoding: Mangfallstr 24, München Neubiberg → (48.0798558, 11.6540438), needsGeocoding=false
🔍 Friend 'Marcus Olk' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Brigitte Absmeier' has 1 existing address(es)
   [0] , Taufkirchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jan Krüger' has 1 existing address(es)
   [0] Expo Plaza 3, Hannover - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dietrich Witzleben, von' has 1 existing address(es)
   [0] Nordendstrasse 10, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Betz' has 2 existing address(es)
   [0] Eichenstraße 43, Hamburg - lat:48.7796869, lon:10.6891123, needsGeocoding:false
   [1] , Hamburg - lat:49.3180654, lon:7.3318035, needsGeocoding:false
✅ PRESERVED geocoding: Eichenstraße 43, Hamburg → (48.7796869, 10.6891123), needsGeocoding=false
✅ PRESERVED geocoding: , Hamburg → (49.3180654, 7.3318035), needsGeocoding=false
🔍 Friend 'Paul & Andreas Amgwerd & Zimmermann' has 1 existing address(es)
   [0] Bohlinger Dorfstr. 48, Singen-Bohlingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christa Prohaska' has 1 existing address(es)
   [0] Spicherenstr. 12, München - lat:48.1309463, lon:11.6067297, needsGeocoding:false
✅ PRESERVED geocoding: Spicherenstr. 12, München → (48.1309463, 11.6067297), needsGeocoding=false
🔍 Friend 'Michael & Fréderic Dumitrescu & Claude' has 1 existing address(es)
   [0] Ober-Eschbacherstr. 93a, Bad Homburg 61352 - lat:50.2156212, lon:8.6526375, needsGeocoding:false
✅ PRESERVED geocoding: Ober-Eschbacherstr. 93a, Bad Homburg 61352 → (50.2156212, 8.6526375), needsGeocoding=false
🔍 Friend 'Sascha Menges' has 2 existing address(es)
   [0] Hans-Lorenser-Straße 40, Ulm - lat:48.3564721, lon:9.9472803, needsGeocoding:false
   [1] Fischergasse 37, Ulm - lat:48.3952324, lon:9.9911546, needsGeocoding:false
✅ PRESERVED geocoding: Hans-Lorenser-Straße 40, Ulm → (48.3564721, 9.9472803), needsGeocoding=false
✅ PRESERVED geocoding: Fischergasse 37, Ulm → (48.3952324, 9.9911546), needsGeocoding=false
🔍 Friend 'Sally Shazali' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Katharina Streck' has 1 existing address(es)
   [0] Leopoldstr. 59, München - lat:48.1614845, lon:11.5857464, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 59, München → (48.1614845, 11.5857464), needsGeocoding=false
🔍 Friend 'Marian Schikora' has 1 existing address(es)
   [0] Margaretha-Ley-Ring 10, Aschheim bei München - lat:48.1488223, lon:11.6800995, needsGeocoding:false
✅ PRESERVED geocoding: Margaretha-Ley-Ring 10, Aschheim bei München → (48.1488223, 11.6800995), needsGeocoding=false
🔍 Friend 'Inge & Siegfried Schmidt' has 1 existing address(es)
   [0] Urbanstr. 15, München 81371 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gritt ' has 1 existing address(es)
   [0] Johann-Clanze-Str. 14, München - lat:48.1129411, lon:11.5350995, needsGeocoding:false
✅ PRESERVED geocoding: Johann-Clanze-Str. 14, München → (48.1129411, 11.5350995), needsGeocoding=false
🔍 Friend 'Svenja Schmitz' has 1 existing address(es)
   [0] Markt 45, Aachen - lat:50.7767878, lon:6.0838239, needsGeocoding:false
✅ PRESERVED geocoding: Markt 45, Aachen → (50.7767878, 6.0838239), needsGeocoding=false
🔍 Friend ' Enders' has 1 existing address(es)
   [0] Arnulfstr., Muenchen - lat:48.1500292, lon:11.520297, needsGeocoding:false
✅ PRESERVED geocoding: Arnulfstr., Muenchen → (48.1500292, 11.520297), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rosbachstr. 34, Kaprun - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Jeremenkova 106, Praha 4 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Isabelle Eschbach' has 1 existing address(es)
   [0] 67 Chemin Pioch de Bailles, Montferrier - lat:43.6645289, lon:3.857277, needsGeocoding:false
✅ PRESERVED geocoding: 67 Chemin Pioch de Bailles, Montferrier → (43.6645289, 3.857277), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 02-04 An Thuong Street 1, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Innere Wiener Str.

Neben Wiener Platz Cafe, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Türkenstr. 57, München - lat:48.1508937, lon:11.5761369, needsGeocoding:false
✅ PRESERVED geocoding: Türkenstr. 57, München → (48.1508937, 11.5761369), needsGeocoding=false
🔍 Friend 'Antoine Larmanjat' has 1 existing address(es)
   [0] Issy les Moulineaux, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Fränzi & Günther Schrader' has 2 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
   [1] Heimstättenstraße 19, Gräfelfing bei München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Yvonne Rasi' has 1 existing address(es)
   [0] Stationsstr. 51, Zürich - lat:47.371277, lon:8.517351, needsGeocoding:false
✅ PRESERVED geocoding: Stationsstr. 51, Zürich → (47.371277, 8.517351), needsGeocoding=false
🔍 Friend 'Susanne Englram' has 1 existing address(es)
   [0] Maffeistr. 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Hasenstab' has 1 existing address(es)
   [0] , Palma de Mallorca - lat:39.5565732, lon:2.6338962, needsGeocoding:false
✅ PRESERVED geocoding: , Palma de Mallorca → (39.5565732, 2.6338962), needsGeocoding=false
🔍 Friend 'Walter Ritsch' has 1 existing address(es)
   [0] Altenmarktgasse 32, Brixen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andy Schlademan' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Florian Umbreit' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Narodni Trida 22, Praha 1 - lat:50.0821004, lon:14.4187251, needsGeocoding:false
✅ PRESERVED geocoding: Narodni Trida 22, Praha 1 → (50.0821004, 14.4187251), needsGeocoding=false
🔍 Friend 'Kim Phung' has 1 existing address(es)
   [0] 40, Ave Morizet, Boulogne-Billancourt, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Boltzmannstr. 3, Garching b. München - lat:48.2625501, lon:11.6679666, needsGeocoding:false
✅ PRESERVED geocoding: Boltzmannstr. 3, Garching b. München → (48.2625501, 11.6679666), needsGeocoding=false
🔍 Friend 'Luigi Recca' has 1 existing address(es)
   [0] , Den Hague - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sylvie Para' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Julia ' has 1 existing address(es)
   [0] Leopoldstr. 87, München - lat:48.1639833, lon:11.5860232, needsGeocoding:false
✅ PRESERVED geocoding: Leopoldstr. 87, München → (48.1639833, 11.5860232), needsGeocoding=false
🔍 Friend 'Rahel Purschke' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Michael Blabst' has 1 existing address(es)
   [0] Görzerstr. 171, München - lat:48.098211, lon:11.610278, needsGeocoding:false
✅ PRESERVED geocoding: Görzerstr. 171, München → (48.098211, 11.610278), needsGeocoding=false
🔍 Friend 'Martin Backschat' has 1 existing address(es)
   [0] Frankfurter Ring 105a, München, Bayern - lat:48.1882173, lon:11.58567, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München, Bayern → (48.1882173, 11.58567), needsGeocoding=false
🔍 Friend 'Patrick Illinger' has 1 existing address(es)
   [0] Sendlinger Straße 8, München - lat:48.1361521, lon:11.5718928, needsGeocoding:false
✅ PRESERVED geocoding: Sendlinger Straße 8, München → (48.1361521, 11.5718928), needsGeocoding=false
🔍 Friend 'Anh Mai' has 1 existing address(es)
   [0] 12A Floor, LADECO Building, 266 Doi Can, Ba Dinh, Ha Noi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Haran S' has 1 existing address(es)
   [0] 30 Pasir Panjang Road, Singapore - lat:1.274815, lon:103.799111, needsGeocoding:false
✅ PRESERVED geocoding: 30 Pasir Panjang Road, Singapore → (1.274815, 103.799111), needsGeocoding=false
🔍 Friend 'Waldemar Jantz' has 1 existing address(es)
   [0] Kardinal-Faulhaber-Straße 10, München - lat:48.1406043, lon:11.5746254, needsGeocoding:false
✅ PRESERVED geocoding: Kardinal-Faulhaber-Straße 10, München → (48.1406043, 11.5746254), needsGeocoding=false
🔍 Friend 'Jörg Amelunxen' has 1 existing address(es)
   [0] , Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Küntzel' has 1 existing address(es)
   [0] Denisstraße 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jens Ruebbert' has 1 existing address(es)
   [0] 79 Robinson Road #20-01, Singapore - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gildas Fourny' has 1 existing address(es)
   [0] , Hoi An - lat:15.8798452, lon:108.3287753, needsGeocoding:false
✅ PRESERVED geocoding: , Hoi An → (15.8798452, 108.3287753), needsGeocoding=false
🔍 Friend 'Lakatos Robert' has 1 existing address(es)
   [0] Glücksburger Strasse 74a, München - lat:48.1606765, lon:11.662775, needsGeocoding:false
✅ PRESERVED geocoding: Glücksburger Strasse 74a, München → (48.1606765, 11.662775), needsGeocoding=false
🔍 Friend 'Steffi & Andrea Wiedmaier & Buccioni' has 1 existing address(es)
   [0] Via Del Capitano 15a, Rufina - lat:43.827862, lon:11.494029, needsGeocoding:false
✅ PRESERVED geocoding: Via Del Capitano 15a, Rufina → (43.827862, 11.494029), needsGeocoding=false
🔍 Friend 'Sebastian Roehrich' has 1 existing address(es)
   [0] Nymphenburger str. 86, M - lat:48.1504933, lon:11.5468907, needsGeocoding:false
✅ PRESERVED geocoding: Nymphenburger str. 86, M → (48.1504933, 11.5468907), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Sendlinger Tor, München - lat:48.1329605, lon:11.5670482, needsGeocoding:false
✅ PRESERVED geocoding: Sendlinger Tor, München → (48.1329605, 11.5670482), needsGeocoding=false
🔍 Friend 'Paul Hauser' has 1 existing address(es)
   [0] Linthstrasse 53, Tuggen - lat:47.196474, lon:8.942903, needsGeocoding:false
✅ PRESERVED geocoding: Linthstrasse 53, Tuggen → (47.196474, 8.942903), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Dornacher Straße 3 D, Feldkirchen - lat:48.1505812, lon:11.7221817, needsGeocoding:false
✅ PRESERVED geocoding: Dornacher Straße 3 D, Feldkirchen → (48.1505812, 11.7221817), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Baumkirchner Str. 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Johnnie ' has 1 existing address(es)
   [0] , Stanstead - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karine Parent' has 1 existing address(es)
   [0] 5 rue de Chazelles, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nicola Götz' has 1 existing address(es)
   [0] Karlstr.54a, München - lat:48.1453621, lon:11.5591739, needsGeocoding:false
✅ PRESERVED geocoding: Karlstr.54a, München → (48.1453621, 11.5591739), needsGeocoding=false
🔍 Friend 'Shirvani Eltern' has 1 existing address(es)
   [0] Ostpreußenstr. 51, München 81927 - lat:48.152341, lon:11.6408262, needsGeocoding:false
✅ PRESERVED geocoding: Ostpreußenstr. 51, München 81927 → (48.152341, 11.6408262), needsGeocoding=false
🔍 Friend 'Tram Phan' has 1 existing address(es)
   [0] 3rd Floor, Indochina Riverside Tower, 74 Bach Dang St., DaNang - lat:16.1043633, lon:108.2583989, needsGeocoding:false
✅ PRESERVED geocoding: 3rd Floor, Indochina Riverside Tower, 74 Bach Dang St., DaNang → (16.1043633, 108.2583989), needsGeocoding=false
🔍 Friend 'Hubert Juranek' has 1 existing address(es)
   [0] Taimerhofstr. 33, München - lat:48.16640275201639, lon:11.63294712392351, needsGeocoding:false
✅ PRESERVED geocoding: Taimerhofstr. 33, München → (48.16640275201639, 11.63294712392351), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kapuzinerstr. 48, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Sonnenberg/Harr' has 1 existing address(es)
   [0] Höchlstraße 3, München - lat:48.145986, lon:11.6021627, needsGeocoding:false
✅ PRESERVED geocoding: Höchlstraße 3, München → (48.145986, 11.6021627), needsGeocoding=false
🔍 Friend 'Jacques Chambournier' has 1 existing address(es)
   [0] CS 70526, Aix-en-Provence Cedex 03 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sussan Rosenthal' has 1 existing address(es)
   [0] Waisemhausstr. 56, München - lat:48.1635281, lon:11.5292807, needsGeocoding:false
✅ PRESERVED geocoding: Waisemhausstr. 56, München → (48.1635281, 11.5292807), needsGeocoding=false
🔍 Friend 'Andrea Wattky Crestan' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Markus Frosch' has 1 existing address(es)
   [0] , Frankfurt/M. - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kai Vetter' has 2 existing address(es)
   [0] Hummelstrasse 17

Postfach, Frauenfeld - lat:47.564206, lon:8.882798, needsGeocoding:false
   [1] Hummelstrasse 17
Postfach, Frauenfeld - lat:47.564206, lon:8.882798, needsGeocoding:false
✅ PRESERVED geocoding: Hummelstrasse 17

Postfach, Frauenfeld → (47.564206, 8.882798), needsGeocoding=false
✅ PRESERVED geocoding: Hummelstrasse 17
Postfach, Frauenfeld → (47.564206, 8.882798), needsGeocoding=false
🔍 Friend 'Michael Frieß' has 2 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
   [1] Schleidenstr 4, Hamburg - lat:53.5830186, lon:10.0338638, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
✅ PRESERVED geocoding: Schleidenstr 4, Hamburg → (53.5830186, 10.0338638), needsGeocoding=false
🔍 Friend ' Prietz' has 1 existing address(es)
   [0] Hellerstr. 23, Radebeul - lat:51.0992931, lon:13.6874695, needsGeocoding:false
✅ PRESERVED geocoding: Hellerstr. 23, Radebeul → (51.0992931, 13.6874695), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hauptstraße 9-15, Schwendi - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Familie Duncker' has 1 existing address(es)
   [0] 1226 Gronwall Court, Los Altos - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Schellingstr. 63, München - lat:48.1512017, lon:11.5721682, needsGeocoding:false
✅ PRESERVED geocoding: Schellingstr. 63, München → (48.1512017, 11.5721682), needsGeocoding=false
🔍 Friend 'simon@bizfactory.tech ' has 1 existing address(es)
   [0] Kreittmayrstr. 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gesa Nina Hoffmann' has 2 existing address(es)
   [0] Elisenhof, Elisenstraße 3, München - lat:48.14141, lon:11.5623514, needsGeocoding:false
   [1] Birkerstraße 8, München - lat:48.148962, lon:11.540964, needsGeocoding:false
✅ PRESERVED geocoding: Elisenhof, Elisenstraße 3, München → (48.14141, 11.5623514), needsGeocoding=false
✅ PRESERVED geocoding: Birkerstraße 8, München → (48.148962, 11.540964), needsGeocoding=false
🔍 Friend 'Christine Maier' has 1 existing address(es)
   [0] Einsteinring 6, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Axel Marquardt' has 1 existing address(es)
   [0] Irschenerstr 2, Bernau - lat:47.8170831, lon:12.381469, needsGeocoding:false
✅ PRESERVED geocoding: Irschenerstr 2, Bernau → (47.8170831, 12.381469), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Tal 44, München - lat:48.1353121, lon:11.5810255, needsGeocoding:false
✅ PRESERVED geocoding: Tal 44, München → (48.1353121, 11.5810255), needsGeocoding=false
🔍 Friend 'Harald Schreiber' has 1 existing address(es)
   [0] Einsteinstr. 172, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Müller-Seydlitz' has 1 existing address(es)
   [0] Stolzingstr. 21, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hau Ha' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Khuê Lê' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Mag. Lanzerits' has 1 existing address(es)
   [0] Europaplatz 2-1-2
, Vienna - lat:48.1968496, lon:16.3377878, needsGeocoding:false
✅ PRESERVED geocoding: Europaplatz 2-1-2
, Vienna → (48.1968496, 16.3377878), needsGeocoding=false
🔍 Friend 'Harry Ritter' has 1 existing address(es)
   [0] Holbeinstr. 22, München  Bayern - lat:48.1421135, lon:11.6054734, needsGeocoding:false
✅ PRESERVED geocoding: Holbeinstr. 22, München  Bayern → (48.1421135, 11.6054734), needsGeocoding=false
🔍 Friend 'Wolfi Sauter' has 1 existing address(es)
   [0] Alserstrasse 32/14, Wien - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Georg-Kalb-Str. 3, Großhesselohe bei München - lat:48.0669783, lon:11.5397424, needsGeocoding:false
✅ PRESERVED geocoding: Georg-Kalb-Str. 3, Großhesselohe bei München → (48.0669783, 11.5397424), needsGeocoding=false
🔍 Friend 'Angela & Hans Konert' has 2 existing address(es)
   [0] Kurfürstendamm 42, Berlin - lat:52.5020985, lon:13.3209752, needsGeocoding:false
   [1] Wilhelm-Dieß-Weg 5a, München - lat:48.1556179, lon:11.6355678, needsGeocoding:false
✅ PRESERVED geocoding: Kurfürstendamm 42, Berlin → (52.5020985, 13.3209752), needsGeocoding=false
✅ PRESERVED geocoding: Wilhelm-Dieß-Weg 5a, München → (48.1556179, 11.6355678), needsGeocoding=false
🔍 Friend 'Nikos Papadimitropoulos' has 1 existing address(es)
   [0] Elefteriou Venizelou 35, Pirea - Athen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , StAnton - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marie Kall, Von der' has 1 existing address(es)
   [0] Herrenberger Strasse 140, Boeblingen - lat:48.6756852, lon:8.9767011, needsGeocoding:false
✅ PRESERVED geocoding: Herrenberger Strasse 140, Boeblingen → (48.6756852, 8.9767011), needsGeocoding=false
🔍 Friend 'Tarek Bischay' has 2 existing address(es)
   [0] Herrenberger Str 140, Böblingen - lat:nil, lon:nil, needsGeocoding:true
   [1] Kirchstr. 22-2, Gäufelden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nguyen My' has 1 existing address(es)
   [0] , Da Nang - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Da Nang → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Monika Nottebohm' has 1 existing address(es)
   [0] Bergstr. 124, Heidelberg - lat:49.4246498, lon:8.6912594, needsGeocoding:false
✅ PRESERVED geocoding: Bergstr. 124, Heidelberg → (49.4246498, 8.6912594), needsGeocoding=false
🔍 Friend 'Ralph Gutmann' has 1 existing address(es)
   [0] Einsteinstr. 127, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Schuster (Meunier) Agnes' has 1 existing address(es)
   [0] 242, chemin de Chartreuse, Saint-Ismier - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sascha Breite' has 1 existing address(es)
   [0] Tangstedter LandStr. 6, Hamburg - lat:53.6464005, lon:10.0135283, needsGeocoding:false
✅ PRESERVED geocoding: Tangstedter LandStr. 6, Hamburg → (53.6464005, 10.0135283), needsGeocoding=false
🔍 Friend 'Danilo Frasiak' has 1 existing address(es)
   [0] Am Brauhaus 5, Dresden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anemarie Foidl' has 2 existing address(es)
   [0] Angerer Alm

Kitzbühler Horn, St. Johann im Tirol - lat:nil, lon:nil, needsGeocoding:true
   [1] Angerer Alm
Kitzbühler Horn, St. Johann im Tirol - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Groß' has 1 existing address(es)
   [0] Rosenkavalierplatz 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nawida & Alessandro Martinozzi' has 1 existing address(es)
   [0] Keltenhof 7, München (Unterbibegr/Neubiberg) - lat:48.0845061, lon:11.6310475, needsGeocoding:false
✅ PRESERVED geocoding: Keltenhof 7, München (Unterbibegr/Neubiberg) → (48.0845061, 11.6310475), needsGeocoding=false
🔍 Friend 'Vincenzo Caiazzo' has 1 existing address(es)
   [0] Peralohstr. 22, München - lat:48.1036802, lon:11.6159042, needsGeocoding:false
✅ PRESERVED geocoding: Peralohstr. 22, München → (48.1036802, 11.6159042), needsGeocoding=false
🔍 Friend 'Charles-Etienne Gasparo, de' has 1 existing address(es)
   [0] F.X. Müllerstr. 14, Schmitten - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christoph Krachten' has 1 existing address(es)
   [0] Neue Weyerstr. 6, Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Weintraubengasse 15

Via Grappoli 15, Bolzano - lat:46.4989563, lon:11.3570024, needsGeocoding:false
   [1] Weintraubengasse 15
Via Grappoli 15, Bolzano - lat:46.4989563, lon:11.3570024, needsGeocoding:false
✅ PRESERVED geocoding: Weintraubengasse 15

Via Grappoli 15, Bolzano → (46.4989563, 11.3570024), needsGeocoding=false
✅ PRESERVED geocoding: Weintraubengasse 15
Via Grappoli 15, Bolzano → (46.4989563, 11.3570024), needsGeocoding=false
🔍 Friend 'Gerhard Weileder' has 2 existing address(es)
   [0] Elilandstr. 10, München - lat:48.1057837, lon:11.5766742, needsGeocoding:false
   [1] , Georg-Brauchle-Ring 25 - lat:48.1756584, lon:11.536445, needsGeocoding:false
✅ PRESERVED geocoding: Elilandstr. 10, München → (48.1057837, 11.5766742), needsGeocoding=false
✅ PRESERVED geocoding: , Georg-Brauchle-Ring 25 → (48.1756584, 11.536445), needsGeocoding=false
🔍 Friend ' Halbwirt' has 1 existing address(es)
   [0] Schumannstr. 4, München - lat:48.1407028, lon:11.6025934, needsGeocoding:false
✅ PRESERVED geocoding: Schumannstr. 4, München → (48.1407028, 11.6025934), needsGeocoding=false
🔍 Friend 'Andreas (Andi) Birkenfeld' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Ulf Glattkowski' has 1 existing address(es)
   [0] , Grömitz - lat:54.1498677, lon:10.9581583, needsGeocoding:false
✅ PRESERVED geocoding: , Grömitz → (54.1498677, 10.9581583), needsGeocoding=false
🔍 Friend 'Olivier Cavalin' has 1 existing address(es)
   [0] Einsteinstr. 119, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Wiebke Lang' has 1 existing address(es)
   [0] Reisingerstr. 14, München - lat:48.1306645, lon:11.5654416, needsGeocoding:false
✅ PRESERVED geocoding: Reisingerstr. 14, München → (48.1306645, 11.5654416), needsGeocoding=false
🔍 Friend 'Christina Kümpers' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Stefan Kiener' has 1 existing address(es)
   [0] , Muenchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Pariser Str. 34, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernd Maier' has 1 existing address(es)
   [0] Zettachring 2, Stuttgart - lat:48.7095054, lon:9.1697193, needsGeocoding:false
✅ PRESERVED geocoding: Zettachring 2, Stuttgart → (48.7095054, 9.1697193), needsGeocoding=false
🔍 Friend 'Piti Prislin' has 1 existing address(es)
   [0] Freihammerstr. 3, Gräfelfing - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karin Anger' has 1 existing address(es)
   [0] ,  - lat:46.2636145, lon:2.1787414, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (46.2636145, 2.1787414), needsGeocoding=false
🔍 Friend 'Marco Winkler' has 1 existing address(es)
   [0] E.ON-Platz 1, Düsseldorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nils Andre' has 1 existing address(es)
   [0] Wallstr. 24, Freiburg - lat:47.9918027, lon:7.8539124, needsGeocoding:false
✅ PRESERVED geocoding: Wallstr. 24, Freiburg → (47.9918027, 7.8539124), needsGeocoding=false
🔍 Friend 'Wiebke & Pier Lang / Emiliano' has 1 existing address(es)
   [0] Max-Halde-Str. 14, Unterschleißheim - lat:48.2752207, lon:11.5744712, needsGeocoding:false
✅ PRESERVED geocoding: Max-Halde-Str. 14, Unterschleißheim → (48.2752207, 11.5744712), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Isa Reigber' has 1 existing address(es)
   [0] Klugstr. 29, München - lat:48.1632387, lon:11.5241819, needsGeocoding:false
✅ PRESERVED geocoding: Klugstr. 29, München → (48.1632387, 11.5241819), needsGeocoding=false
🔍 Friend 'Carl Georg Dürschmidt' has 1 existing address(es)
   [0] Einsteinstr. 172, München - lat:48.1375563, lon:11.6229421, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinstr. 172, München → (48.1375563, 11.6229421), needsGeocoding=false
🔍 Friend 'Martin Niethen' has 1 existing address(es)
   [0] Münsterstr. 248, Düsseldorf - lat:51.2491155, lon:6.7981627, needsGeocoding:false
✅ PRESERVED geocoding: Münsterstr. 248, Düsseldorf → (51.2491155, 6.7981627), needsGeocoding=false
🔍 Friend 'Walter & Elfi Höllerer' has 1 existing address(es)
   [0] Mühldorfstr. 39, München - lat:48.1270572, lon:11.6163114, needsGeocoding:false
✅ PRESERVED geocoding: Mühldorfstr. 39, München → (48.1270572, 11.6163114), needsGeocoding=false
🔍 Friend 'Laury Nowack' has 1 existing address(es)
   [0] Luxemburger Str. 79-83, Hürth - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Bödeckerstr. 43, Hannover - lat:52.3848027, lon:9.7522039, needsGeocoding:false
✅ PRESERVED geocoding: Bödeckerstr. 43, Hannover → (52.3848027, 9.7522039), needsGeocoding=false
🔍 Friend 'Thanh Nguyen' has 1 existing address(es)
   [0] Echingerstr. 8B, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hans Hannich' has 1 existing address(es)
   [0] Karl-Theodor-Str. 69, Munich - lat:48.1667953, lon:11.576102, needsGeocoding:false
✅ PRESERVED geocoding: Karl-Theodor-Str. 69, Munich → (48.1667953, 11.576102), needsGeocoding=false
🔍 Friend 'Jan Thomas Matz' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anita Künnecke' has 1 existing address(es)
   [0] Weißenburger Platz 8, München - lat:48.1287198, lon:11.5967162, needsGeocoding:false
✅ PRESERVED geocoding: Weißenburger Platz 8, München → (48.1287198, 11.5967162), needsGeocoding=false
🔍 Friend 'Paul Gettel' has 1 existing address(es)
   [0] c/o Bruchon

Les Residences du Port Vauban

3 av. de la Liberation, Antibes - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Zabler' has 1 existing address(es)
   [0] , Mühlhausen - lat:48.4379996, lon:10.9291307, needsGeocoding:false
✅ PRESERVED geocoding: , Mühlhausen → (48.4379996, 10.9291307), needsGeocoding=false
🔍 Friend 'Michael Löffler' has 1 existing address(es)
   [0] Praterstr. 31, Wien A-1020 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Amirali Pourteymour' has 1 existing address(es)
   [0] P.O.Box 500099, Dubai - lat:25.2144654, lon:55.2766493, needsGeocoding:false
✅ PRESERVED geocoding: P.O.Box 500099, Dubai → (25.2144654, 55.2766493), needsGeocoding=false
🔍 Friend ' Rudniki' has 1 existing address(es)
   [0] Zugspitzstr. 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Achim Botz' has 1 existing address(es)
   [0] Nymphenburger Strasse 86, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Claudia Mohr-Calliet' has 1 existing address(es)
   [0] 26, Jalan kakatua, Singapore - lat:1.344612, lon:103.76624, needsGeocoding:false
✅ PRESERVED geocoding: 26, Jalan kakatua, Singapore → (1.344612, 103.76624), needsGeocoding=false
🔍 Friend 'Volker Donnermann' has 1 existing address(es)
   [0] , Wolfsburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Manfred Asam' has 1 existing address(es)
   [0] Residenzstr. 25, München - lat:48.1411092, lon:11.5772934, needsGeocoding:false
✅ PRESERVED geocoding: Residenzstr. 25, München → (48.1411092, 11.5772934), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kurgartenstrasse 26, Bad Hofgastein - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Susanne Debbas' has 1 existing address(es)
   [0] Breisacher Str. 10, München - lat:48.1301519, lon:11.6031611, needsGeocoding:false
✅ PRESERVED geocoding: Breisacher Str. 10, München → (48.1301519, 11.6031611), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Buttermelcherstr. 6, München - lat:48.132675, lon:11.5772168, needsGeocoding:false
✅ PRESERVED geocoding: Buttermelcherstr. 6, München → (48.132675, 11.5772168), needsGeocoding=false
🔍 Friend 'Telje Pasch' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Herzogstraße 81, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Namesti Miru 6, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Magdalena Piller' has 1 existing address(es)
   [0] Agnesstr. 61, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Rainer Collet' has 1 existing address(es)
   [0] Dingolfingerstr. 2, München - lat:48.1316824, lon:11.614351, needsGeocoding:false
✅ PRESERVED geocoding: Dingolfingerstr. 2, München → (48.1316824, 11.614351), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 8, rue de Bellechasse, Paris - lat:48.8596633, lon:2.3240947, needsGeocoding:false
✅ PRESERVED geocoding: 8, rue de Bellechasse, Paris → (48.8596633, 2.3240947), needsGeocoding=false
🔍 Friend ' Zannantonio' has 1 existing address(es)
   [0] Bahnhofstr. 1, Traunstein - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sandra Montanarella' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Alte Münchner Str 45, Unterföhring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Rainer Leidner' has 1 existing address(es)
   [0] Richard-Reitzner-Allee 8, München/Haar - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Trung Ngo' has 1 existing address(es)
   [0] 604 Nui Thanh Street, Da Nang - lat:16.030371, lon:108.2226391, needsGeocoding:false
✅ PRESERVED geocoding: 604 Nui Thanh Street, Da Nang → (16.030371, 108.2226391), needsGeocoding=false
🔍 Friend 'Thea Hetmanek' has 1 existing address(es)
   [0] Egerländerstrasse 45, Ismaning - lat:48.2195347, lon:11.6603581, needsGeocoding:false
✅ PRESERVED geocoding: Egerländerstrasse 45, Ismaning → (48.2195347, 11.6603581), needsGeocoding=false
🔍 Friend 'Oliver Rohrbach' has 1 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 6, Av Bosquet, Paris 7eme - lat:48.8607594, lon:2.3022938, needsGeocoding:false
✅ PRESERVED geocoding: 6, Av Bosquet, Paris 7eme → (48.8607594, 2.3022938), needsGeocoding=false
🔍 Friend 'Robin Parr' has 1 existing address(es)
   [0] Landsbergerstrasse 155, München - lat:48.1398638, lon:11.5257714, needsGeocoding:false
✅ PRESERVED geocoding: Landsbergerstrasse 155, München → (48.1398638, 11.5257714), needsGeocoding=false
🔍 Friend 'Harald Litzenburger' has 2 existing address(es)
   [0] Rosenheimer Platz 4, München - lat:48.1313557, lon:11.5884263, needsGeocoding:false
   [1] Holzhofstr. 6, München - lat:48.131752, lon:11.5930668, needsGeocoding:false
✅ PRESERVED geocoding: Rosenheimer Platz 4, München → (48.1313557, 11.5884263), needsGeocoding=false
✅ PRESERVED geocoding: Holzhofstr. 6, München → (48.131752, 11.5930668), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 34 An Thuong 1, Danang - lat:16.0492295, lon:108.2482771, needsGeocoding:false
✅ PRESERVED geocoding: 34 An Thuong 1, Danang → (16.0492295, 108.2482771), needsGeocoding=false
🔍 Friend 'Robert Zores' has 1 existing address(es)
   [0] Schanzenstr. 6-20, Köln - lat:50.9665551, lon:7.0100341, needsGeocoding:false
✅ PRESERVED geocoding: Schanzenstr. 6-20, Köln → (50.9665551, 7.0100341), needsGeocoding=false
🔍 Friend 'Karl-Otto Lang' has 1 existing address(es)
   [0] Brentanostr. 29, Wiesbaden - lat:50.0644523, lon:8.237967, needsGeocoding:false
✅ PRESERVED geocoding: Brentanostr. 29, Wiesbaden → (50.0644523, 8.237967), needsGeocoding=false
🔍 Friend 'Susana Diaz' has 1 existing address(es)
   [0] Konrad-Celtis-Str.77, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'David Richardson' has 1 existing address(es)
   [0] Skibo Castle, Dornoch Sutherland - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sabine Grumbrecht' has 2 existing address(es)
   [0] Arminiusstr. 7, München - lat:48.1153599, lon:11.5687013, needsGeocoding:false
   [1] Arminiusstr. 7, München - lat:48.1153599, lon:11.5687013, needsGeocoding:false
✅ PRESERVED geocoding: Arminiusstr. 7, München → (48.1153599, 11.5687013), needsGeocoding=false
✅ PRESERVED geocoding: Arminiusstr. 7, München → (48.1153599, 11.5687013), needsGeocoding=false
🔍 Friend 'Gregory Monks' has 1 existing address(es)
   [0] 110 Thatcher Drive, Winnipeg - lat:49.8146628, lon:-97.1477757, needsGeocoding:false
✅ PRESERVED geocoding: 110 Thatcher Drive, Winnipeg → (49.8146628, -97.1477757), needsGeocoding=false
🔍 Friend 'Bernhard Baumgartner' has 1 existing address(es)
   [0] Bretonischer Ring 4, Grasbrunn - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Gartner' has 1 existing address(es)
   [0] Herzogspitalstr. 10, München - lat:48.1378027, lon:11.5682345, needsGeocoding:false
✅ PRESERVED geocoding: Herzogspitalstr. 10, München → (48.1378027, 11.5682345), needsGeocoding=false
🔍 Friend 'Mutter Foitzik' has 1 existing address(es)
   [0] Elisabethstr. 41a, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Traugott Günther' has 1 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Camillo Bartoli-Bock' has 2 existing address(es)
   [0] Baaderstr. 50, München - lat:48.1299642, lon:11.5775215, needsGeocoding:false
   [1] Holbeinstr. 22, Munich - lat:48.1421135, lon:11.6054734, needsGeocoding:false
✅ PRESERVED geocoding: Baaderstr. 50, München → (48.1299642, 11.5775215), needsGeocoding=false
✅ PRESERVED geocoding: Holbeinstr. 22, Munich → (48.1421135, 11.6054734), needsGeocoding=false
🔍 Friend 'Thomas Brugger' has 2 existing address(es)
   [0] Reichenhaller Straße 10B, Salzburg - lat:nil, lon:nil, needsGeocoding:true
   [1] Baumbichlstraße 26, Salzburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Chong-Gu RA' has 2 existing address(es)
   [0] Seestr. 473, Zürich - lat:nil, lon:nil, needsGeocoding:true
   [1] Bäckerstr. 25, Zürich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Schellingstr. 35, München - lat:48.1504919, lon:11.5746332, needsGeocoding:false
✅ PRESERVED geocoding: Schellingstr. 35, München → (48.1504919, 11.5746332), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Kazmairstr. 58, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Laurence Lapopin' has 1 existing address(es)
   [0] Seemüllerstr. 7a, München - lat:48.0883287, lon:11.6109062, needsGeocoding:false
✅ PRESERVED geocoding: Seemüllerstr. 7a, München → (48.0883287, 11.6109062), needsGeocoding=false
🔍 Friend 'Philipp Hecht' has 1 existing address(es)
   [0] Linthstrasse 53, Tuggen - lat:47.196474, lon:8.942903, needsGeocoding:false
✅ PRESERVED geocoding: Linthstrasse 53, Tuggen → (47.196474, 8.942903), needsGeocoding=false
🔍 Friend 'Nicola Groß' has 1 existing address(es)
   [0] Theresienstr. 47a, München - lat:48.1500897, lon:11.5660079, needsGeocoding:false
✅ PRESERVED geocoding: Theresienstr. 47a, München → (48.1500897, 11.5660079), needsGeocoding=false
🔍 Friend 'Daniela Kapfhammer' has 1 existing address(es)
   [0] Schleißheimerstr. 303, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 24 TRAN HUNG DAO, Hoi An - lat:15.8799089, lon:108.3284071, needsGeocoding:false
✅ PRESERVED geocoding: 24 TRAN HUNG DAO, Hoi An → (15.8799089, 108.3284071), needsGeocoding=false
🔍 Friend 'Eva Ohl' has 1 existing address(es)
   [0] Oberweilbach 1, Hebertshausen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Perrott Quinn' has 1 existing address(es)
   [0] 120 Moorgate, London - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Florence Adam' has 1 existing address(es)
   [0] 94, rue du Général Leclerc, LA FERE - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Robert Kramreiter' has 1 existing address(es)
   [0] , Da nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karsten Bezuk' has 1 existing address(es)
   [0] Motorstrasse 56, München - lat:48.187716, lon:11.5607459, needsGeocoding:false
✅ PRESERVED geocoding: Motorstrasse 56, München → (48.187716, 11.5607459), needsGeocoding=false
🔍 Friend 'Hilde Ladner' has 1 existing address(es)
   [0] , StAnton - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nora Hermes' has 1 existing address(es)
   [0] , Leipzig - lat:51.337296, lon:12.3761666, needsGeocoding:false
✅ PRESERVED geocoding: , Leipzig → (51.337296, 12.3761666), needsGeocoding=false
🔍 Friend 'Andreas Gall' has 2 existing address(es)
   [0] Fraunhofer Str. 16, Planegg - lat:48.1106194, lon:11.4500406, needsGeocoding:false
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Fraunhofer Str. 16, Planegg → (48.1106194, 11.4500406), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Schönfeldstr. 22, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefanie Schumann' has 1 existing address(es)
   [0] Neumarkt 2, Leipzig - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Joerg Kissner' has 2 existing address(es)
   [0] Hewlett-Packard-Str. 1, Bad Homburg - lat:50.2116354, lon:8.6477765, needsGeocoding:false
   [1] Am unteren Dohlberg 3B, Büdingen - lat:50.2862355, lon:9.1181086, needsGeocoding:false
✅ PRESERVED geocoding: Hewlett-Packard-Str. 1, Bad Homburg → (50.2116354, 8.6477765), needsGeocoding=false
✅ PRESERVED geocoding: Am unteren Dohlberg 3B, Büdingen → (50.2862355, 9.1181086), needsGeocoding=false
🔍 Friend 'Seymour Duncker' has 2 existing address(es)
   [0] 1226 Gronwall Ct., Los Altos - lat:nil, lon:nil, needsGeocoding:true
   [1] 440 N Wolfe Road, Sunnyvale - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Kürschner' has 1 existing address(es)
   [0] Zeppelinstr. 32, Aschau - lat:48.1864456, lon:12.3762872, needsGeocoding:false
✅ PRESERVED geocoding: Zeppelinstr. 32, Aschau → (48.1864456, 12.3762872), needsGeocoding=false
🔍 Friend 'Carsten Buchberger' has 1 existing address(es)
   [0] Jarresstr. 20, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Glöckner' has 2 existing address(es)
   [0] Strazky 54, Usti nad Labem - lat:50.702876, lon:14.015564, needsGeocoding:false
   [1] Pristavní 285, Celákovice - lat:50.1707987, lon:14.7663978, needsGeocoding:false
✅ PRESERVED geocoding: Strazky 54, Usti nad Labem → (50.702876, 14.015564), needsGeocoding=false
✅ PRESERVED geocoding: Pristavní 285, Celákovice → (50.1707987, 14.7663978), needsGeocoding=false
🔍 Friend 'Hannelore Sessig' has 1 existing address(es)
   [0] Holzhofstr. 6, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dung Lê' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Cesar Flores' has 1 existing address(es)
   [0] Auenstr. 100, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Birkner' has 2 existing address(es)
   [0] Einsteinstr. 1

Direkt am Max-Weber-Platz, München - lat:48.1351497, lon:11.5975046, needsGeocoding:false
   [1] Einsteinstr. 1
Direkt am Max-Weber-Platz, München - lat:48.1351497, lon:11.5975046, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinstr. 1

Direkt am Max-Weber-Platz, München → (48.1351497, 11.5975046), needsGeocoding=false
✅ PRESERVED geocoding: Einsteinstr. 1
Direkt am Max-Weber-Platz, München → (48.1351497, 11.5975046), needsGeocoding=false
🔍 Friend 'Felix Zieglgänsberger' has 1 existing address(es)
   [0] Wilhelm-Dießweg 2, München - lat:48.1553895, lon:11.6371225, needsGeocoding:false
✅ PRESERVED geocoding: Wilhelm-Dießweg 2, München → (48.1553895, 11.6371225), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Berlepschstr. 3, München 81373 - lat:48.124243, lon:11.5423129, needsGeocoding:false
   [1] Ungsteinerstr. 50,  - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: Berlepschstr. 3, München 81373 → (48.124243, 11.5423129), needsGeocoding=false
🔍 Friend 'Lucka Silhanova' has 1 existing address(es)
   [0] Bellušova 1803/5, Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Pablo Guilisasti' has 1 existing address(es)
   [0] , Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stefanie Hildebrandt' has 1 existing address(es)
   [0] Zielstattstrasse 44, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Verena Singhal' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Promenadeplatz 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Peter Hans Hofschneider' has 1 existing address(es)
   [0] Nördl. Auffahrtsallee 65, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nicola Fritz' has 1 existing address(es)
   [0] Einsteinstrasse 1, München - lat:48.1359084, lon:11.5983855, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinstrasse 1, München → (48.1359084, 11.5983855), needsGeocoding=false
🔍 Friend 'Jan Havelka' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Michel Roubert' has 1 existing address(es)
   [0] Georg-Kerschensteiner-Str. 10, Ottobrunn 85521 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Heiko Haug' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Dr. Christopher Suazon' has 1 existing address(es)
   [0] 96-98 Nguyen Van Linh Street, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thorsten Keller' has 1 existing address(es)
   [0] Watzmannweg 18, Kissing - lat:48.2984122, lon:10.9695527, needsGeocoding:false
✅ PRESERVED geocoding: Watzmannweg 18, Kissing → (48.2984122, 10.9695527), needsGeocoding=false
🔍 Friend ' Berner' has 1 existing address(es)
   [0] Wörthstr. 30-34, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Frank Schellenberg' has 1 existing address(es)
   [0] 2nd Floor
Anna Building
Quang Trung Software City
Tan Chanh Hiep Ward, D. 12, Ho Chi Minh City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Lerchenstr. 28a / Eingang Schilleroper, Hamburg - lat:53.5573572, lon:9.9615711, needsGeocoding:false
✅ PRESERVED geocoding: Lerchenstr. 28a / Eingang Schilleroper, Hamburg → (53.5573572, 9.9615711), needsGeocoding=false
🔍 Friend 'Henk Kragt' has 3 existing address(es)
   [0] P.O. Box 12222
Hoojoordreef 15, Amsterdam-Zuidoost - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:52.637082, lon:5.6735911, needsGeocoding:false
   [2] P.O. Box 12222

Hoojoordreef 15, Amsterdam-Zuidoost - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: ,  → (52.637082, 5.6735911), needsGeocoding=false
🔍 Friend 'Alexandra Paatz' has 2 existing address(es)
   [0] Einsteinring 30, Dornach - lat:nil, lon:nil, needsGeocoding:true
   [1] Braystr. 22, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Lochhamer Schlag 10, Gräfelfing - lat:48.1209941, lon:11.450305, needsGeocoding:false
✅ PRESERVED geocoding: Lochhamer Schlag 10, Gräfelfing → (48.1209941, 11.450305), needsGeocoding=false
🔍 Friend 'Ludger Bornewasser' has 1 existing address(es)
   [0] Innere Wiener Str 13, München - lat:48.1338318, lon:11.5940682, needsGeocoding:false
✅ PRESERVED geocoding: Innere Wiener Str 13, München → (48.1338318, 11.5940682), needsGeocoding=false
🔍 Friend 'Michael Meng' has 1 existing address(es)
   [0] , Jena - lat:50.927937, lon:11.5869686, needsGeocoding:false
✅ PRESERVED geocoding: , Jena → (50.927937, 11.5869686), needsGeocoding=false
🔍 Friend 'Wolfgang Grüning' has 2 existing address(es)
   [0] Cinovec 288, Cinovec - lat:50.7293886, lon:13.7697905, needsGeocoding:false
   [1] Namesti 197, Liten - lat:49.894737, lon:14.139928, needsGeocoding:false
✅ PRESERVED geocoding: Cinovec 288, Cinovec → (50.7293886, 13.7697905), needsGeocoding=false
✅ PRESERVED geocoding: Namesti 197, Liten → (49.894737, 14.139928), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Lindberghstr. 20, München - lat:48.1902271, lon:11.6009254, needsGeocoding:false
✅ PRESERVED geocoding: Lindberghstr. 20, München → (48.1902271, 11.6009254), needsGeocoding=false
🔍 Friend 'Angelo Carlessi' has 1 existing address(es)
   [0] 150 Route du Nant D'Avril, Meyrin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marek Dorsic' has 1 existing address(es)
   [0] Rajcianska 6, Bratislava - lat:48.1389744, lon:17.2089545, needsGeocoding:false
✅ PRESERVED geocoding: Rajcianska 6, Bratislava → (48.1389744, 17.2089545), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Haz. Agr. VALLEBONA

Franco Melis

via di Grignano 30, Pontassieve FI - lat:43.810467, lon:11.4568213, needsGeocoding:false
✅ PRESERVED geocoding: Haz. Agr. VALLEBONA

Franco Melis

via di Grignano 30, Pontassieve FI → (43.810467, 11.4568213), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Stockacherstr. 9, Aubing, Lochhausen, Langwied - lat:48.150906, lon:11.4425723, needsGeocoding:false
✅ PRESERVED geocoding: Stockacherstr. 9, Aubing, Lochhausen, Langwied → (48.150906, 11.4425723), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 414 – 416 Cua Dai Road, Hoi An, Quang Nam province - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alex Lemke' has 1 existing address(es)
   [0] , Wedel b. Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dũng Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Christopher Esmarch' has 1 existing address(es)
   [0] Mathildenstrasse 5a, München - lat:48.1339447, lon:11.5638312, needsGeocoding:false
✅ PRESERVED geocoding: Mathildenstrasse 5a, München → (48.1339447, 11.5638312), needsGeocoding=false
🔍 Friend 'Hao Ta' has 1 existing address(es)
   [0] 18 Tống Phước Phổ, Da Nang - lat:16.0476504, lon:108.2219033, needsGeocoding:false
✅ PRESERVED geocoding: 18 Tống Phước Phổ, Da Nang → (16.0476504, 108.2219033), needsGeocoding=false
🔍 Friend ' Schenk' has 1 existing address(es)
   [0] , Schrunz - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Feichterweg, Rottach-Egern - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ina Lux' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Hohenstaufenring 30-32, Köln - lat:50.9314838, lon:6.9408915, needsGeocoding:false
✅ PRESERVED geocoding: Hohenstaufenring 30-32, Köln → (50.9314838, 6.9408915), needsGeocoding=false
🔍 Friend 'Max Kühne' has 1 existing address(es)
   [0] Agnesstr. 61, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Scharfenberger' has 1 existing address(es)
   [0] Industriestr. 3/3a, Ludwigshafen am Rhein - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Neuer Pferdemarkt 5, Hamburg - lat:53.556304, lon:9.963373, needsGeocoding:false
✅ PRESERVED geocoding: Neuer Pferdemarkt 5, Hamburg → (53.556304, 9.963373), needsGeocoding=false
🔍 Friend 'Katrin Leidner' has 3 existing address(es)
   [0] Frankfurter Ring 105a, München - lat:48.1882173, lon:11.58567, needsGeocoding:false
   [1] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
   [2] Taunusstraße 23, München - lat:48.1892227, lon:11.5778615, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 105a, München → (48.1882173, 11.58567), needsGeocoding=false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
✅ PRESERVED geocoding: Taunusstraße 23, München → (48.1892227, 11.5778615), needsGeocoding=false
🔍 Friend 'Ingo Bornkessel' has 1 existing address(es)
   [0] Heyestrasse 118, Düsseldorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Schellingstr. 46, München - lat:48.1508943, lon:11.5742768, needsGeocoding:false
✅ PRESERVED geocoding: Schellingstr. 46, München → (48.1508943, 11.5742768), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Praha 1 - lat:42.9404528, lon:21.1394533, needsGeocoding:false
✅ PRESERVED geocoding: , Praha 1 → (42.9404528, 21.1394533), needsGeocoding=false
🔍 Friend 'Lars Olsson' has 1 existing address(es)
   [0] Schiess, Muenchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 14 Hùng Vuong, Hai Chau 1, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Trogerstr. 25, München - lat:48.1411239, lon:11.6011942, needsGeocoding:false
✅ PRESERVED geocoding: Trogerstr. 25, München → (48.1411239, 11.6011942), needsGeocoding=false
🔍 Friend 'Ricky Asti' has 1 existing address(es)
   [0] Schwanthalerstraße 131, München - lat:48.1377334, lon:11.544115, needsGeocoding:false
✅ PRESERVED geocoding: Schwanthalerstraße 131, München → (48.1377334, 11.544115), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , New York - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Inge Goller' has 1 existing address(es)
   [0] Fritz-Meyer-Weg 22, München - lat:48.1714338, lon:11.6344939, needsGeocoding:false
✅ PRESERVED geocoding: Fritz-Meyer-Weg 22, München → (48.1714338, 11.6344939), needsGeocoding=false
🔍 Friend 'Rakia Gargouri' has 1 existing address(es)
   [0] Kronenweg 10, München - lat:48.1255948, lon:11.6582589, needsGeocoding:false
✅ PRESERVED geocoding: Kronenweg 10, München → (48.1255948, 11.6582589), needsGeocoding=false
🔍 Friend 'Christian Hageböck' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tommi Adleff' has 1 existing address(es)
   [0] Sägmühlstrasse 27, Olching - lat:48.2270074, lon:11.3523602, needsGeocoding:false
✅ PRESERVED geocoding: Sägmühlstrasse 27, Olching → (48.2270074, 11.3523602), needsGeocoding=false
🔍 Friend 'Michael Endres' has 1 existing address(es)
   [0] Weicherstr. 5, Aschaffenburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jörg Jokisch' has 1 existing address(es)
   [0] Billstr. 80, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Hofner' has 1 existing address(es)
   [0] Maximiliansplatz 22, München - lat:48.1411283, lon:11.5702482, needsGeocoding:false
✅ PRESERVED geocoding: Maximiliansplatz 22, München → (48.1411283, 11.5702482), needsGeocoding=false
🔍 Friend 'Clarissa Benz' has 1 existing address(es)
   [0] Neustadt 500, 84028 Landshut - lat:48.5349437, lon:12.1542012, needsGeocoding:false
✅ PRESERVED geocoding: Neustadt 500, 84028 Landshut → (48.5349437, 12.1542012), needsGeocoding=false
🔍 Friend 'Andrea, Dr Med Tuppert' has 1 existing address(es)
   [0] Richard Strauss Str. 75,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stéphanie Magny' has 1 existing address(es)
   [0] , DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Kirchenstr. 5, München - Haidhausen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
   [1] Dulpeckstr. 9, München - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Sven Massengeil' has 1 existing address(es)
   [0] Perlebergerstr. 28, Berlin - lat:52.5319271, lon:13.3490841, needsGeocoding:false
✅ PRESERVED geocoding: Perlebergerstr. 28, Berlin → (52.5319271, 13.3490841), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] U Zlaté studně 166/4, Prague 1 - lat:50.0906969, lon:14.4045183, needsGeocoding:false
✅ PRESERVED geocoding: U Zlaté studně 166/4, Prague 1 → (50.0906969, 14.4045183), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Zeppelinstr., München - lat:48.126047235394154, lon:11.581220987902244, needsGeocoding:false
✅ PRESERVED geocoding: Zeppelinstr., München → (48.126047235394154, 11.581220987902244), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Deutsches Haus
33 Lê Duẩn Boulevard
Bến Nghé
Quận 1, TP Hồ Chí Minh (Saigon) - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Angerer' has 1 existing address(es)
   [0] , Berchtesgaden - lat:47.6287355, lon:13.0029803, needsGeocoding:false
✅ PRESERVED geocoding: , Berchtesgaden → (47.6287355, 13.0029803), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Gehrden bei Hannover - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bernd Maihoefer' has 1 existing address(es)
   [0] Herrenberger Strasse 140, Boeblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Kellerer' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Orleantr. 27, München - lat:48.126768, lon:11.6004644, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Orleantr. 27, München → (48.126768, 11.6004644), needsGeocoding=false
🔍 Friend 'Willi Konrad Schaefer' has 1 existing address(es)
   [0] Schillerstr. 66, Heilbronn - lat:49.1436035, lon:9.23113, needsGeocoding:false
✅ PRESERVED geocoding: Schillerstr. 66, Heilbronn → (49.1436035, 9.23113), needsGeocoding=false
🔍 Friend 'Jürgen Dluzniewski' has 1 existing address(es)
   [0] , Berlin - lat:52.5187416, lon:13.4080224, needsGeocoding:false
✅ PRESERVED geocoding: , Berlin → (52.5187416, 13.4080224), needsGeocoding=false
🔍 Friend 'Bic ' has 1 existing address(es)
   [0] , Chiang Mai - lat:18.7881776, lon:98.9879745, needsGeocoding:false
✅ PRESERVED geocoding: , Chiang Mai → (18.7881776, 98.9879745), needsGeocoding=false
🔍 Friend 'Stefan Pfender' has 2 existing address(es)
   [0] Überreiterstrasse 10, München - lat:48.1661595, lon:11.4864272, needsGeocoding:false
   [1] Suessengutstr. 1a, München - lat:48.16625, lon:11.485856, needsGeocoding:false
✅ PRESERVED geocoding: Überreiterstrasse 10, München → (48.1661595, 11.4864272), needsGeocoding=false
✅ PRESERVED geocoding: Suessengutstr. 1a, München → (48.16625, 11.485856), needsGeocoding=false
🔍 Friend 'Dirk Hafels' has 2 existing address(es)
   [0] Oberländer Ufer 184, Köln - lat:50.9027113, lon:6.9817153, needsGeocoding:false
   [1] ,  - lat:51.503186, lon:7.4589402, needsGeocoding:false
✅ PRESERVED geocoding: Oberländer Ufer 184, Köln → (50.9027113, 6.9817153), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.503186, 7.4589402), needsGeocoding=false
🔍 Friend 'Jacques van Engelshoven' has 2 existing address(es)
   [0] Ooftstraat 9b, 3572 HR Utrecht - lat:nil, lon:nil, needsGeocoding:true
   [1] Kosterijland 46-E, 3981 AJ Bunnik - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andi Holz' has 1 existing address(es)
   [0] Mühlbauerstr., München - lat:48.13947290023575, lon:11.607264271754131, needsGeocoding:false
✅ PRESERVED geocoding: Mühlbauerstr., München → (48.13947290023575, 11.607264271754131), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Nerudova 40, Praha 1 - lat:50.0885564, lon:14.3979821, needsGeocoding:false
✅ PRESERVED geocoding: Nerudova 40, Praha 1 → (50.0885564, 14.3979821), needsGeocoding=false
🔍 Friend 'Emanuel & Anique André' has 1 existing address(es)
   [0] 36, Rue Pierre-Nicole, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephen Dixon' has 1 existing address(es)
   [0] 5 ave Raymond Chanas, Grenoble - lat:45.1557984, lon:5.739098, needsGeocoding:false
✅ PRESERVED geocoding: 5 ave Raymond Chanas, Grenoble → (45.1557984, 5.739098), needsGeocoding=false
🔍 Friend 'Kavita Aiyar' has 1 existing address(es)
   [0] Holzhofstr., München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Huguette & Felix Wintringer' has 1 existing address(es)
   [0] Avenue Huysmans 174, Bruxelles - lat:50.8106183, lon:4.3884944, needsGeocoding:false
✅ PRESERVED geocoding: Avenue Huysmans 174, Bruxelles → (50.8106183, 4.3884944), needsGeocoding=false
🔍 Friend 'Janina Huber' has 1 existing address(es)
   [0] Elisabethstrasse 57, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dennis Baasch' has 1 existing address(es)
   [0] DE Kiel, Kiel-Altenholz - lat:54.3861849, lon:10.130542, needsGeocoding:false
✅ PRESERVED geocoding: DE Kiel, Kiel-Altenholz → (54.3861849, 10.130542), needsGeocoding=false
🔍 Friend 'Simon Dahlman' has 1 existing address(es)
   [0] Kockumsgatan 5, Malmö - lat:55.5990339, lon:12.9969782, needsGeocoding:false
✅ PRESERVED geocoding: Kockumsgatan 5, Malmö → (55.5990339, 12.9969782), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Frauenstr.11, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Eva Remedios' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Jan Peterman' has 1 existing address(es)
   [0] Rita-Bardenhevestr. 19, Bremen - lat:53.0967844, lon:8.8410131, needsGeocoding:false
✅ PRESERVED geocoding: Rita-Bardenhevestr. 19, Bremen → (53.0967844, 8.8410131), needsGeocoding=false
🔍 Friend 'Le Nguyen' has 1 existing address(es)
   [0] TMA Tower, Quang Trung Software City, D12, HCMC - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Till ' has 1 existing address(es)
   [0] 185 Pham Ngu Lao, Saigon - lat:10.7688218, lon:106.6938204, needsGeocoding:false
✅ PRESERVED geocoding: 185 Pham Ngu Lao, Saigon → (10.7688218, 106.6938204), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Tumblingerstrasse 36
im Schlachthofviertel, München - lat:48.1254205, lon:11.5567994, needsGeocoding:false
   [1] Tumblingerstrasse 36

im Schlachthofviertel, München - lat:48.1254205, lon:11.5567994, needsGeocoding:false
✅ PRESERVED geocoding: Tumblingerstrasse 36
im Schlachthofviertel, München → (48.1254205, 11.5567994), needsGeocoding=false
✅ PRESERVED geocoding: Tumblingerstrasse 36

im Schlachthofviertel, München → (48.1254205, 11.5567994), needsGeocoding=false
🔍 Friend 'Hella Lefrank' has 1 existing address(es)
   [0] Titurelstr. 8, München - lat:48.1594802, lon:11.6191574, needsGeocoding:false
✅ PRESERVED geocoding: Titurelstr. 8, München → (48.1594802, 11.6191574), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Ganghoferstr. 50, München - lat:48.1322377, lon:11.539301, needsGeocoding:false
✅ PRESERVED geocoding: Ganghoferstr. 50, München → (48.1322377, 11.539301), needsGeocoding=false
🔍 Friend 'Martina & J. John' has 1 existing address(es)
   [0] Falknisstr. 3, Sargans - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Balanstr. 47, München - lat:48.1241282, lon:11.5970353, needsGeocoding:false
✅ PRESERVED geocoding: Balanstr. 47, München → (48.1241282, 11.5970353), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Jungmannovo Namesti 16, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Shane Bennett' has 1 existing address(es)
   [0] , 30 Berkeley Square - lat:51.5105197, lon:-0.14694, needsGeocoding:false
✅ PRESERVED geocoding: , 30 Berkeley Square → (51.5105197, -0.14694), needsGeocoding=false
🔍 Friend 'Jason Cahill' has 1 existing address(es)
   [0] Anglicka 26, Prague 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Konstantin Böhm' has 1 existing address(es)
   [0] Wiesentalstraﬂe 32, N¸rnberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Tal 13, München - lat:48.1363618, lon:11.579047, needsGeocoding:false
✅ PRESERVED geocoding: Tal 13, München → (48.1363618, 11.579047), needsGeocoding=false
🔍 Friend 'Lukas Beloch' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Greg Zemor' has 1 existing address(es)
   [0] 190 av. Jean Jaures, Paris - lat:48.8880702, lon:2.3912518, needsGeocoding:false
✅ PRESERVED geocoding: 190 av. Jean Jaures, Paris → (48.8880702, 2.3912518), needsGeocoding=false
🔍 Friend 'Tomas Kupka' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Martin Ahr' has 1 existing address(es)
   [0] Maximilianstr. 58, Munich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Maria-Corinna Hartwig' has 1 existing address(es)
   [0] c/o David Green

26 River Meads, Stanstead Abbotts SG12 8EE - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gloria Uribe' has 1 existing address(es)
   [0] Kravoglstr. 4, Salzburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Riccardo Piras' has 1 existing address(es)
   [0] Maximilianstraße,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Landsbergerstr. 382,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] Galgenbergstr. 13, Regensburg - lat:nil, lon:nil, needsGeocoding:true
   [1] Galgenbergstr. 13, Regensburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Kowalsik' has 1 existing address(es)
   [0] Tal 24, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hans Mehringer' has 1 existing address(es)
   [0] Rosenheimerstr. 52, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Toby Hoten' has 1 existing address(es)
   [0] , Cambridge - lat:52.2021717, lon:0.1248301, needsGeocoding:false
✅ PRESERVED geocoding: , Cambridge → (52.2021717, 0.1248301), needsGeocoding=false
🔍 Friend 'Knut Heckert' has 1 existing address(es)
   [0] Staudenrauchstr. 19, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Siroka 4, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Lutz Preußners' has 1 existing address(es)
   [0] Sillemstr. 79, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Trinh Hà' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Stefan Knorr-Gulde' has 1 existing address(es)
   [0] , Chieming - lat:47.8906212, lon:12.5369117, needsGeocoding:false
✅ PRESERVED geocoding: , Chieming → (47.8906212, 12.5369117), needsGeocoding=false
🔍 Friend 'Peter Barnes (aka Gess)' has 1 existing address(es)
   [0] 12 Arnold Mansions, London - lat:51.4863236, lon:-0.2085036, needsGeocoding:false
✅ PRESERVED geocoding: 12 Arnold Mansions, London → (51.4863236, -0.2085036), needsGeocoding=false
🔍 Friend 'Milena Baum' has 1 existing address(es)
   [0] Albanistr. 6, München - lat:48.1242069, lon:11.5768311, needsGeocoding:false
✅ PRESERVED geocoding: Albanistr. 6, München → (48.1242069, 11.5768311), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Flugplatz, Ampfing - lat:48.2561899, lon:12.4144352, needsGeocoding:false
✅ PRESERVED geocoding: Flugplatz, Ampfing → (48.2561899, 12.4144352), needsGeocoding=false
🔍 Friend 'Thao Thi Bich Nguyen' has 1 existing address(es)
   [0] 21 Hai Phong, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Daniel Estok' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Tereza Jakoubkova' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Jens Trapp' has 2 existing address(es)
   [0] Wohldorfer Damm 85d, Hamburg - lat:53.6792575, lon:10.1271399, needsGeocoding:false
   [1] ABC-Str 19, Hamburg - lat:53.5540319, lon:9.9862176, needsGeocoding:false
✅ PRESERVED geocoding: Wohldorfer Damm 85d, Hamburg → (53.6792575, 10.1271399), needsGeocoding=false
✅ PRESERVED geocoding: ABC-Str 19, Hamburg → (53.5540319, 9.9862176), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Aachener Strasse 23, Köln - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Marcel Knizek' has 1 existing address(es)
   [0] Lerchenauerstr. 124a, München - lat:48.184966, lon:11.5532604, needsGeocoding:false
✅ PRESERVED geocoding: Lerchenauerstr. 124a, München → (48.184966, 11.5532604), needsGeocoding=false
🔍 Friend 'Honza Moravec' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Altschaeffel Bernhard' has 1 existing address(es)
   [0] Ernst Heinkel Strasse 4, Straubing - lat:48.889086, lon:12.6218389, needsGeocoding:false
✅ PRESERVED geocoding: Ernst Heinkel Strasse 4, Straubing → (48.889086, 12.6218389), needsGeocoding=false
🔍 Friend 'Sabine Stimmer' has 1 existing address(es)
   [0] Ernst-Muehlendyck-Str. 1, Cologne - lat:50.8824658, lon:7.0576511, needsGeocoding:false
✅ PRESERVED geocoding: Ernst-Muehlendyck-Str. 1, Cologne → (50.8824658, 7.0576511), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] , Wiesbaden - lat:50.0821069, lon:8.241296, needsGeocoding:false
✅ PRESERVED geocoding: , Wiesbaden → (50.0821069, 8.241296), needsGeocoding=false
🔍 Friend 'Oliver Meyer' has 1 existing address(es)
   [0] Seestr 39, Prien a Chiemsee - lat:47.8584366, lon:12.3521091, needsGeocoding:false
✅ PRESERVED geocoding: Seestr 39, Prien a Chiemsee → (47.8584366, 12.3521091), needsGeocoding=false
🔍 Friend 'Johannes Bader' has 1 existing address(es)
   [0] Wolfratshauser Str. 193, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Benjamin Kirnich' has 1 existing address(es)
   [0] Erika-Mann-Straße 62, München - lat:48.1437347, lon:11.5362979, needsGeocoding:false
✅ PRESERVED geocoding: Erika-Mann-Straße 62, München → (48.1437347, 11.5362979), needsGeocoding=false
🔍 Friend 'Ladislava (Ladka) Svehlova, née Pokorna' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Maik Kosel' has 1 existing address(es)
   [0] Sedanstr. 8, München - lat:48.130479, lon:11.5971302, needsGeocoding:false
✅ PRESERVED geocoding: Sedanstr. 8, München → (48.130479, 11.5971302), needsGeocoding=false
🔍 Friend 'Bruno Kuratli' has 1 existing address(es)
   [0] Wohlerstrasse 2, Boswil - lat:47.3047856, lon:8.3117846, needsGeocoding:false
✅ PRESERVED geocoding: Wohlerstrasse 2, Boswil → (47.3047856, 8.3117846), needsGeocoding=false
🔍 Friend 'Phuoc Le' has 1 existing address(es)
   [0] Vo Nguyen Giap Street, Ngu Hanh Son District, DaNang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Udo / Sean Sigwalt' has 1 existing address(es)
   [0] Eichholzweg 1, Gilching - lat:48.1010061, lon:11.2985329, needsGeocoding:false
✅ PRESERVED geocoding: Eichholzweg 1, Gilching → (48.1010061, 11.2985329), needsGeocoding=false
🔍 Friend 'Eltern Gartner' has 1 existing address(es)
   [0] Richard-Strauß-Str. 49, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Susanna Klatt' has 1 existing address(es)
   [0] Klausnerstraße 30, Aschheim - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jan Čeřovsky' has 1 existing address(es)
   [0] Nad Zaverkou 9, Praha 6 - lat:50.0826998, lon:14.3803691, needsGeocoding:false
✅ PRESERVED geocoding: Nad Zaverkou 9, Praha 6 → (50.0826998, 14.3803691), needsGeocoding=false
🔍 Friend 'Reiffenstuel ' has 1 existing address(es)
   [0] Seestraße 67-69, Rottach-Egern - lat:47.6952643, lon:11.76091, needsGeocoding:false
✅ PRESERVED geocoding: Seestraße 67-69, Rottach-Egern → (47.6952643, 11.76091), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 3, Place de Breteuil, Paris - lat:48.8476959, lon:2.3124329, needsGeocoding:false
✅ PRESERVED geocoding: 3, Place de Breteuil, Paris → (48.8476959, 2.3124329), needsGeocoding=false
🔍 Friend 'Narinder Chauhan' has 2 existing address(es)
   [0] Dietlindenstr. 15, München - lat:48.165632, lon:11.5928331, needsGeocoding:false
   [1] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
✅ PRESERVED geocoding: Dietlindenstr. 15, München → (48.165632, 11.5928331), needsGeocoding=false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Hui-Ling Dua' has 1 existing address(es)
   [0] Mailstop CPDE-BIS

Hewlett-Packard GmbH 

nSchickardstrasse 32, Boeblingen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 10 Nguyễn Văn Linh, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Martin Kosut' has 1 existing address(es)
   [0] U Habrovky 11, Praha 4 - lat:50.0404551, lon:14.4472927, needsGeocoding:false
✅ PRESERVED geocoding: U Habrovky 11, Praha 4 → (50.0404551, 14.4472927), needsGeocoding=false
🔍 Friend 'Harit Khanna' has 1 existing address(es)
   [0] Frundsbergstrasse 4, Munich - lat:48.1544034, lon:11.5362473, needsGeocoding:false
✅ PRESERVED geocoding: Frundsbergstrasse 4, Munich → (48.1544034, 11.5362473), needsGeocoding=false
🔍 Friend 'Michael Vieider' has 1 existing address(es)
   [0] , Bozen/Bolzano - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Cornelius Patt' has 1 existing address(es)
   [0] Eichenweg 4, Rückgebäude, Unterföhring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Judith Wunschik' has 2 existing address(es)
   [0] Rennesstr. 24, Erlangen - lat:49.6008062, lon:11.0460342, needsGeocoding:false
   [1] Südwestpark 97, Nürnberg - lat:49.4273493, lon:11.0180549, needsGeocoding:false
✅ PRESERVED geocoding: Rennesstr. 24, Erlangen → (49.6008062, 11.0460342), needsGeocoding=false
✅ PRESERVED geocoding: Südwestpark 97, Nürnberg → (49.4273493, 11.0180549), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Milchstr. 10, München - lat:48.1311471, lon:11.5966833, needsGeocoding:false
✅ PRESERVED geocoding: Milchstr. 10, München → (48.1311471, 11.5966833), needsGeocoding=false
🔍 Friend 'Daniel Lopez' has 1 existing address(es)
   [0] Tang 5, Green Plaza
223 Tran Phu, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ralf Wessels' has 1 existing address(es)
   [0] Wichernstrasse 37, 48147 Münster - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Mai Dam' has 1 existing address(es)
   [0] 121 Phan Tu Street, Da Nang - lat:16.0467421, lon:108.2470089, needsGeocoding:false
✅ PRESERVED geocoding: 121 Phan Tu Street, Da Nang → (16.0467421, 108.2470089), needsGeocoding=false
🔍 Friend 'Hartwig Schneider' has 1 existing address(es)
   [0] Therese-Studer-Str. 17, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Manfred Wolff' has 1 existing address(es)
   [0] 1, Benoi Place, Singapore - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Hälbig' has 2 existing address(es)
   [0] Siemensstr. 19, Unterschleißheim - lat:48.2875192, lon:11.5712006, needsGeocoding:false
   [1] Kapellenfeldstr. 13, München - lat:48.0887837, lon:11.6145049, needsGeocoding:false
✅ PRESERVED geocoding: Siemensstr. 19, Unterschleißheim → (48.2875192, 11.5712006), needsGeocoding=false
✅ PRESERVED geocoding: Kapellenfeldstr. 13, München → (48.0887837, 11.6145049), needsGeocoding=false
🔍 Friend 'Mostafa Ebrahimi' has 2 existing address(es)
   [0] Robert-Bürkle-Str. 1, Ismaning - lat:nil, lon:nil, needsGeocoding:true
   [1] Bodmerstr. 3, Feldkirchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Vincent Teissier' has 1 existing address(es)
   [0] 77, bd de la République, La Garenne Colombes - lat:48.9070728, lon:2.2415735, needsGeocoding:false
✅ PRESERVED geocoding: 77, bd de la République, La Garenne Colombes → (48.9070728, 2.2415735), needsGeocoding=false
🔍 Friend 'Michaela Müller' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nina Böttinger' has 1 existing address(es)
   [0] , Ismaninger Str.  419 020 85 - lat:48.3942563, lon:11.7520775, needsGeocoding:false
✅ PRESERVED geocoding: , Ismaninger Str.  419 020 85 → (48.3942563, 11.7520775), needsGeocoding=false
🔍 Friend ' Sonnenberg & Harr' has 1 existing address(es)
   [0] Tauglboden 15, St. Koloman - lat:47.6638072, lon:13.2494477, needsGeocoding:false
✅ PRESERVED geocoding: Tauglboden 15, St. Koloman → (47.6638072, 13.2494477), needsGeocoding=false
🔍 Friend 'Johanna Scheffer' has 2 existing address(es)
   [0] Jakob Klar Straße 4, München - lat:nil, lon:nil, needsGeocoding:true
   [1] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Franziska Pott' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Liz Edlich' has 1 existing address(es)
   [0] 3130 Wilshire Blvd. Suite 390, Santa Monica, California - lat:34.0400222, lon:-118.4716647, needsGeocoding:false
✅ PRESERVED geocoding: 3130 Wilshire Blvd. Suite 390, Santa Monica, California → (34.0400222, -118.4716647), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Widenmayerstr. 2, München - lat:48.1379762, lon:11.5904868, needsGeocoding:false
✅ PRESERVED geocoding: Widenmayerstr. 2, München → (48.1379762, 11.5904868), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 30/57 Nguyen Cuu Van Binh Thanh District, Ho Chi Minh City - lat:10.7957899, lon:106.7071777, needsGeocoding:false
✅ PRESERVED geocoding: 30/57 Nguyen Cuu Van Binh Thanh District, Ho Chi Minh City → (10.7957899, 106.7071777), needsGeocoding=false
🔍 Friend 'Christian Schmidt' has 1 existing address(es)
   [0] Zettachring 2, Stuttgart - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Richard Stapley-Oh' has 1 existing address(es)
   [0] 10th Fl, Sunwah Tower
115 Nguyen Hue, Saigon / HCMC - lat:10.8452399, lon:106.8174461, needsGeocoding:false
✅ PRESERVED geocoding: 10th Fl, Sunwah Tower
115 Nguyen Hue, Saigon / HCMC → (10.8452399, 106.8174461), needsGeocoding=false
🔍 Friend ' ' has 2 existing address(es)
   [0] Ricni 1,
Kampa, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
   [1] Ricni 1,

Kampa, Praha 1 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Iveta Hodkova' has 1 existing address(es)
   [0] Vaclavske Namesti 40, Praha 1 - lat:50.0814894, lon:14.4266672, needsGeocoding:false
✅ PRESERVED geocoding: Vaclavske Namesti 40, Praha 1 → (50.0814894, 14.4266672), needsGeocoding=false
🔍 Friend 'Felix Meyner' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Diego Lettieri' has 1 existing address(es)
   [0] , Praha - lat:50.0940345, lon:14.4513463, needsGeocoding:false
✅ PRESERVED geocoding: , Praha → (50.0940345, 14.4513463), needsGeocoding=false
🔍 Friend 'Peter Niedermaier' has 1 existing address(es)
   [0] , Seebruck a. Chiemeee - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jinhee Jeong Cho' has 1 existing address(es)
   [0] 6 Le Quang Dao,  - lat:16.4622702, lon:107.6043801, needsGeocoding:false
✅ PRESERVED geocoding: 6 Le Quang Dao,  → (16.4622702, 107.6043801), needsGeocoding=false
🔍 Friend 'Dini and Sonny Ajmani' has 1 existing address(es)
   [0] 30 Delwick Lane, Short Hills - lat:40.730985, lon:-74.3183199, needsGeocoding:false
✅ PRESERVED geocoding: 30 Delwick Lane, Short Hills → (40.730985, -74.3183199), needsGeocoding=false
🔍 Friend 'Emmanuelle Morice' has 1 existing address(es)
   [0] 57 - 59, boulevard Malesherbes, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Aric Austin' has 1 existing address(es)
   [0] , Saigon - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Daniela Wolff' has 1 existing address(es)
   [0] HAuptstr. 16c, Inning - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Kandler' has 2 existing address(es)
   [0] Albanistr. 13, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Ringseisstr. 4, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jürgen Hang' has 2 existing address(es)
   [0] Siemens-Werke in Siemens-Allee

Gebäude 1750 (Einga, München - lat:nil, lon:nil, needsGeocoding:true
   [1] Siemens-Werke in Siemens-Allee
Gebäude 1750 (Einga, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Savitsstr. 
Stegmühlstr., München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jennifer Paul' has 1 existing address(es)
   [0] , Leipzig - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Franzl & Lotti Bergmaier' has 1 existing address(es)
   [0] Echinger Bergl, Greifenberg 86926 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Ditmar-Koel-Straße 1, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Steiner' has 2 existing address(es)
   [0] Waldstr. 12, Starnberg - lat:nil, lon:nil, needsGeocoding:true
   [1] Isartalstrasse 38, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hans Huber' has 1 existing address(es)
   [0] , Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christina & Martin Kümpers & Schiemann' has 1 existing address(es)
   [0] Falkenstein 30, Hamburg-Blankenese - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Spiess' has 1 existing address(es)
   [0] Waldschulstraße 61, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Josef Dopfer' has 1 existing address(es)
   [0] Wolfgangstr. 10, München - lat:48.1327497, lon:11.6006681, needsGeocoding:false
✅ PRESERVED geocoding: Wolfgangstr. 10, München → (48.1327497, 11.6006681), needsGeocoding=false
🔍 Friend 'Jim Wright' has 1 existing address(es)
   [0] , Praha - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Michael Schmidt' has 1 existing address(es)
   [0] Fahnenbergplatz 1, Freiburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Moritz Hammer' has 1 existing address(es)
   [0] Söder Mälarstrand 27B 6tr, Stockholm - lat:59.3206448, lon:18.0546567, needsGeocoding:false
✅ PRESERVED geocoding: Söder Mälarstrand 27B 6tr, Stockholm → (59.3206448, 18.0546567), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 27, rue Saint-André-des-Arts, Paris - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Cord-Dieter Neeman' has 1 existing address(es)
   [0] Emanuel-Leutze-Str. 4, Düsseldorf - lat:51.242697, lon:6.7389194, needsGeocoding:false
✅ PRESERVED geocoding: Emanuel-Leutze-Str. 4, Düsseldorf → (51.242697, 6.7389194), needsGeocoding=false
🔍 Friend 'Lilia Gargouri' has 2 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
   [1] Kronenweg 2, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] LKS, Hamburg - lat:nil, lon:nil, needsGeocoding:true
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
🔍 Friend 'Sibylle Schön' has 1 existing address(es)
   [0] Marbachstr. 9, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Matthias Nentwig' has 1 existing address(es)
   [0] Lange Wende 43, Soest - lat:51.5539475, lon:8.1397311, needsGeocoding:false
✅ PRESERVED geocoding: Lange Wende 43, Soest → (51.5539475, 8.1397311), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Blumenstr., München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sơn Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Stephane Suet' has 1 existing address(es)
   [0] 79/83 rue Baudin, Levallois-Perret - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sonja Hurler' has 1 existing address(es)
   [0] Kastenbauerstr.2, Muenchen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Maar Christian' has 1 existing address(es)
   [0] , Nürnberg - lat:49.4544732, lon:11.0769372, needsGeocoding:false
✅ PRESERVED geocoding: , Nürnberg → (49.4544732, 11.0769372), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Dreimühlenstraße 25, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Nymphenburger Str. 70, München - lat:48.1498902, lon:11.5483566, needsGeocoding:false
✅ PRESERVED geocoding: Nymphenburger Str. 70, München → (48.1498902, 11.5483566), needsGeocoding=false
🔍 Friend ' Bidet' has 1 existing address(es)
   [0] Les Olivières, Montbrison sur Lez - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thiện Nguyễn' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Moni Streibl' has 1 existing address(es)
   [0] , Theresienstr. - lat:48.1519152, lon:11.5614567, needsGeocoding:false
✅ PRESERVED geocoding: , Theresienstr. → (48.1519152, 11.5614567), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Wald 1, Chieming - lat:47.9421905, lon:12.5117434, needsGeocoding:false
✅ PRESERVED geocoding: Wald 1, Chieming → (47.9421905, 12.5117434), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Lyonerstr. 11, Frankfurt - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Markus Gaiser' has 1 existing address(es)
   [0] Albert-Roßhaupter-Str. 32, München - lat:48.1170538, lon:11.5340546, needsGeocoding:false
✅ PRESERVED geocoding: Albert-Roßhaupter-Str. 32, München → (48.1170538, 11.5340546), needsGeocoding=false
🔍 Friend 'Marcus Schürmann' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Jürgen Schwabe' has 1 existing address(es)
   [0] , Düsseldorf - lat:51.2258634, lon:6.7722986, needsGeocoding:false
✅ PRESERVED geocoding: , Düsseldorf → (51.2258634, 6.7722986), needsGeocoding=false
🔍 Friend 'Michael vom Sondern' has 1 existing address(es)
   [0] Deichstraße 48-50, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Parizska 10, Praha 1 - lat:50.0888421, lon:14.419967, needsGeocoding:false
✅ PRESERVED geocoding: Parizska 10, Praha 1 → (50.0888421, 14.419967), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Maximiliansplatz 9, München - lat:48.1431265, lon:11.5727404, needsGeocoding:false
✅ PRESERVED geocoding: Maximiliansplatz 9, München → (48.1431265, 11.5727404), needsGeocoding=false
🔍 Friend 'Frank Sattler' has 1 existing address(es)
   [0] Herrenberger Str. 140, Böblingen - lat:48.6756852, lon:8.9767011, needsGeocoding:false
✅ PRESERVED geocoding: Herrenberger Str. 140, Böblingen → (48.6756852, 8.9767011), needsGeocoding=false
🔍 Friend 'Andreas Hartleb' has 1 existing address(es)
   [0] Blankeneser Landstraße 79a, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Daniela Gross' has 1 existing address(es)
   [0] Landshuter Allee 12-14, München - lat:48.1484534, lon:11.5373018, needsGeocoding:false
✅ PRESERVED geocoding: Landshuter Allee 12-14, München → (48.1484534, 11.5373018), needsGeocoding=false
🔍 Friend 'Roman Straub' has 1 existing address(es)
   [0] Evropska 15, Prague - lat:50.0998598, lon:14.3898138, needsGeocoding:false
✅ PRESERVED geocoding: Evropska 15, Prague → (50.0998598, 14.3898138), needsGeocoding=false
🔍 Friend 'Pelle Niklasson' has 1 existing address(es)
   [0] , Hanoi - lat:21.028382, lon:105.853734, needsGeocoding:false
✅ PRESERVED geocoding: , Hanoi → (21.028382, 105.853734), needsGeocoding=false
🔍 Friend 'Dominic Tolle' has 1 existing address(es)
   [0] , Berlin - lat:52.5187416, lon:13.4080224, needsGeocoding:false
✅ PRESERVED geocoding: , Berlin → (52.5187416, 13.4080224), needsGeocoding=false
🔍 Friend 'Clemens Schmucki' has 1 existing address(es)
   [0] Börsenstr. 10, Zürich - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sebastian Engler' has 1 existing address(es)
   [0] Widenmayerstraße 32,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Sivananda Yoga Berlin' has 1 existing address(es)
   [0] Schmiljanstr. 24, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tuấn Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexandra Boskovicová' has 1 existing address(es)
   [0] Namesti Churchilla 4, Praha 3 - lat:50.0842545, lon:14.4411594, needsGeocoding:false
✅ PRESERVED geocoding: Namesti Churchilla 4, Praha 3 → (50.0842545, 14.4411594), needsGeocoding=false
🔍 Friend 'Evita & Eckard Pfeiffer' has 1 existing address(es)
   [0] Hubertusweg 93a, Grünwald - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Stubenvollstr. 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Katrin Naomi Maaß' has 1 existing address(es)
   [0] Habermehlstr. 17, Pfonheim - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Karen ' has 1 existing address(es)
   [0] , Colorado Springs - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Bodo Nibbe' has 1 existing address(es)
   [0] , Jochberg - lat:47.379661, lon:12.4175966, needsGeocoding:false
✅ PRESERVED geocoding: , Jochberg → (47.379661, 12.4175966), needsGeocoding=false
🔍 Friend 'Henry Schmidl' has 1 existing address(es)
   [0] , Hong Kong - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kerstin Jander' has 1 existing address(es)
   [0] Parkstr. 16, Wiesbaden - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Quỳnh Trần' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Ladislav Dedecek' has 1 existing address(es)
   [0] Klicperova 8, Praha 5 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Schrobenhausener Straße, Jetzendorf - lat:48.438409801557334, lon:11.417823665758723, needsGeocoding:false
✅ PRESERVED geocoding: Schrobenhausener Straße, Jetzendorf → (48.438409801557334, 11.417823665758723), needsGeocoding=false
🔍 Friend 'Thomas Schreiber' has 1 existing address(es)
   [0] Frankfurter Ring 193a, München - lat:48.187489, lon:11.6003362, needsGeocoding:false
✅ PRESERVED geocoding: Frankfurter Ring 193a, München → (48.187489, 11.6003362), needsGeocoding=false
🔍 Friend 'Bauer ' has 1 existing address(es)
   [0] Schneckenburgerstr. 22, München - lat:48.137137, lon:11.6060996, needsGeocoding:false
✅ PRESERVED geocoding: Schneckenburgerstr. 22, München → (48.137137, 11.6060996), needsGeocoding=false
🔍 Friend 'Famile Chomentowsky' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alon Gleibs' has 1 existing address(es)
   [0] Blumenstr 43, München - lat:48.1321035, lon:11.5687053, needsGeocoding:false
✅ PRESERVED geocoding: Blumenstr 43, München → (48.1321035, 11.5687053), needsGeocoding=false
🔍 Friend 'Klaus Schlumpberger' has 1 existing address(es)
   [0] Machtlfinger Str. 13, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Viet Huynh' has 1 existing address(es)
   [0] , Đà Nẵng - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] 7, Rue de France, Nice - lat:43.6965211, lon:7.2643299, needsGeocoding:false
✅ PRESERVED geocoding: 7, Rue de France, Nice → (43.6965211, 7.2643299), needsGeocoding=false
🔍 Friend 'Sascha Winter' has 1 existing address(es)
   [0] Wilhelm-Hetz-Str. 20, München - lat:48.1771504, lon:11.5870843, needsGeocoding:false
✅ PRESERVED geocoding: Wilhelm-Hetz-Str. 20, München → (48.1771504, 11.5870843), needsGeocoding=false
🔍 Friend 'Trí Phạm' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Benjamin O'Hear' has 1 existing address(es)
   [0] , Herrsching am Ammersee - lat:47.9987557, lon:11.1745144, needsGeocoding:false
✅ PRESERVED geocoding: , Herrsching am Ammersee → (47.9987557, 11.1745144), needsGeocoding=false
🔍 Friend 'Bernhard Uhl' has 1 existing address(es)
   [0] Gratlspitzstr. 37, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Freiheitsstr. 117, Bolzano/Gries - lat:46.5023643, lon:11.3348703, needsGeocoding:false
✅ PRESERVED geocoding: Freiheitsstr. 117, Bolzano/Gries → (46.5023643, 11.3348703), needsGeocoding=false
🔍 Friend 'Petr Kunc' has 1 existing address(es)
   [0] Italska 35, Praha 2 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ezekiel Olasehinde' has 1 existing address(es)
   [0] , Đà Nẵng - lat:16.0749177, lon:108.220633, needsGeocoding:false
✅ PRESERVED geocoding: , Đà Nẵng → (16.0749177, 108.220633), needsGeocoding=false
🔍 Friend 'Didier Ressouche' has 1 existing address(es)
   [0] , Grenoble - lat:45.1870781, lon:5.7306849, needsGeocoding:false
✅ PRESERVED geocoding: , Grenoble → (45.1870781, 5.7306849), needsGeocoding=false
🔍 Friend 'Antonio Steele' has 1 existing address(es)
   [0] Parkstraße 16, Wiesbaden - lat:50.0842585, lon:8.2552001, needsGeocoding:false
✅ PRESERVED geocoding: Parkstraße 16, Wiesbaden → (50.0842585, 8.2552001), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Rua Portas S. Antao, Lisboa - lat:38.7167568, lon:-9.140774, needsGeocoding:false
✅ PRESERVED geocoding: Rua Portas S. Antao, Lisboa → (38.7167568, -9.140774), needsGeocoding=false
🔍 Friend 'Steffi Uhl' has 1 existing address(es)
   [0] , Ulm - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Trang Hoang Thuy' has 1 existing address(es)
   [0] 80B, Le Duan, Room 203, Da nang - lat:16.0710503, lon:108.2175619, needsGeocoding:false
✅ PRESERVED geocoding: 80B, Le Duan, Room 203, Da nang → (16.0710503, 108.2175619), needsGeocoding=false
🔍 Friend 'Shaun Riordan' has 1 existing address(es)
   [0] Startbaan 16, Amstelveen - lat:52.2871188, lon:4.8459072, needsGeocoding:false
✅ PRESERVED geocoding: Startbaan 16, Amstelveen → (52.2871188, 4.8459072), needsGeocoding=false
🔍 Friend 'Victoire Gouyon' has 2 existing address(es)
   [0] 17, rue des Nouettes

Code 963B0, Paris 15° - lat:nil, lon:nil, needsGeocoding:true
   [1] 17, rue des Nouettes
Code 963B0, Paris 15° - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jon Oliver' has 2 existing address(es)
   [0] ,  - lat:51.2094391, lon:10.4573475, needsGeocoding:false
   [1] Einsteinring 30, Dornach - lat:48.1489795, lon:11.6865084, needsGeocoding:false
✅ PRESERVED geocoding: ,  → (51.2094391, 10.4573475), needsGeocoding=false
✅ PRESERVED geocoding: Einsteinring 30, Dornach → (48.1489795, 11.6865084), needsGeocoding=false
🔍 Friend 'Delphine Michallat' has 1 existing address(es)
   [0] , Grenoble - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hans-Jörg Thal' has 2 existing address(es)
   [0] Hasenweg 15, Baldham - lat:48.1048821, lon:11.794402, needsGeocoding:false
   [1] Otto-Hahn-Ring 6, München - lat:48.0915911, lon:11.649046, needsGeocoding:false
✅ PRESERVED geocoding: Hasenweg 15, Baldham → (48.1048821, 11.794402), needsGeocoding=false
✅ PRESERVED geocoding: Otto-Hahn-Ring 6, München → (48.0915911, 11.649046), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] Torstr. 164, Berlin - lat:52.528877, lon:13.3960403, needsGeocoding:false
✅ PRESERVED geocoding: Torstr. 164, Berlin → (52.528877, 13.3960403), needsGeocoding=false
🔍 Friend 'Bill Holden' has 1 existing address(es)
   [0] 1503 Stardust Way, Medford - lat:42.3378362, lon:-122.796122, needsGeocoding:false
✅ PRESERVED geocoding: 1503 Stardust Way, Medford → (42.3378362, -122.796122), needsGeocoding=false
🔍 Friend 'Hanna ' has 1 existing address(es)
   [0] 108 Ba Huyen Thanh Quan, Da Nang - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Foitzik' has 1 existing address(es)
   [0] Heßstr. 23 II, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Daniel Schaller' has 1 existing address(es)
   [0] Thomas-Mann-Straße 16-20, Nürnberg - lat:49.4097952, lon:11.130201, needsGeocoding:false
✅ PRESERVED geocoding: Thomas-Mann-Straße 16-20, Nürnberg → (49.4097952, 11.130201), needsGeocoding=false
🔍 Friend 'Francis Palero' has 1 existing address(es)
   [0] ,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thorsten Michels' has 1 existing address(es)
   [0] , Düsseldorf - lat:51.2258634, lon:6.7722986, needsGeocoding:false
✅ PRESERVED geocoding: , Düsseldorf → (51.2258634, 6.7722986), needsGeocoding=false
🔍 Friend 'Urs Dummermuth' has 2 existing address(es)
   [0] , Zürich - lat:47.3717597, lon:8.5426102, needsGeocoding:false
   [1] Europaallee 41, Zürich - lat:47.378793, lon:8.532019, needsGeocoding:false
✅ PRESERVED geocoding: , Zürich → (47.3717597, 8.5426102), needsGeocoding=false
✅ PRESERVED geocoding: Europaallee 41, Zürich → (47.378793, 8.532019), needsGeocoding=false
🔍 Friend 'Hans-Jürgen Kukemüller' has 1 existing address(es)
   [0] SE – T. 6157 – Haus 3; Raum 207, Berlin - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dr Med Berndt Birkner' has 1 existing address(es)
   [0] Einsteinstr. 1, München - lat:48.1359084, lon:11.5983855, needsGeocoding:false
✅ PRESERVED geocoding: Einsteinstr. 1, München → (48.1359084, 11.5983855), needsGeocoding=false
🔍 Friend 'Dr Florian Wittig' has 1 existing address(es)
   [0] Einsteinstr. 1, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' ' has 1 existing address(es)
   [0] Via Dal Bernina 2371, Poschiavo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Maximilian Suster' has 1 existing address(es)
   [0] , Düsseldorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jens Heber' has 1 existing address(es)
   [0] Strassbergerstr. 139, München - lat:48.184746, lon:11.5478905, needsGeocoding:false
✅ PRESERVED geocoding: Strassbergerstr. 139, München → (48.184746, 11.5478905), needsGeocoding=false
🔍 Friend 'Peter Fendt' has 1 existing address(es)
   [0] Innsbrucker Straße 7, Bad Reichenhall - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexander Plötzeneder' has 1 existing address(es)
   [0] , Bad Reichenhall - lat:47.7218462, lon:12.8764956, needsGeocoding:false
✅ PRESERVED geocoding: , Bad Reichenhall → (47.7218462, 12.8764956), needsGeocoding=false
🔍 Friend 'Michael Schider' has 1 existing address(es)
   [0] 
Tauglboden,  - lat:54.37214753683627, lon:10.982174554314192, needsGeocoding:false
✅ PRESERVED geocoding: 
Tauglboden,  → (54.37214753683627, 10.982174554314192), needsGeocoding=false
🔍 Friend 'Annamaria Leiste' has 1 existing address(es)
   [0] Harlachingerstr. 3, München - lat:48.1101862, lon:11.5732366, needsGeocoding:false
✅ PRESERVED geocoding: Harlachingerstr. 3, München → (48.1101862, 11.5732366), needsGeocoding=false
🔍 Friend 'Burak Kizilay' has 1 existing address(es)
   [0] Feringastr 10a
2. Stock, München Unterföhring - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Panayiotis ' has 1 existing address(es)
   [0] , Corfu - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Björn Eichstädt' has 1 existing address(es)
   [0] Schwanthlaerstr. 73, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Emanuel Braun' has 1 existing address(es)
   [0] Spicherenstr. 12, 81667 - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tim Philippi' has 1 existing address(es)
   [0] 25 International Business Park, Singapore - lat:1.324865, lon:103.746554, needsGeocoding:false
✅ PRESERVED geocoding: 25 International Business Park, Singapore → (1.324865, 103.746554), needsGeocoding=false
🔍 Friend 'Sven Vogel' has 1 existing address(es)
   [0] Werner-Von-Siemens-Ring 12, Grasbrunn - lat:48.1012799, lon:11.7583003, needsGeocoding:false
✅ PRESERVED geocoding: Werner-Von-Siemens-Ring 12, Grasbrunn → (48.1012799, 11.7583003), needsGeocoding=false
🔍 Friend ' ' has 1 existing address(es)
   [0] 180A Hai Ba Trung, Ho Chi Minh City - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Dimitris Asvestas' has 1 existing address(es)
   [0] , Kaminaki, Corfu - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Johanna Burger' has 1 existing address(es)
   [0] Spicherenstr 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Margret Asendorf' has 1 existing address(es)
   [0] Spicherenstr. 12, München - lat:48.1309463, lon:11.6067297, needsGeocoding:false
✅ PRESERVED geocoding: Spicherenstr. 12, München → (48.1309463, 11.6067297), needsGeocoding=false
🔍 Friend 'Rafael Botsch' has 1 existing address(es)
   [0] , Rosenheim - lat:47.8529299, lon:12.1292753, needsGeocoding:false
✅ PRESERVED geocoding: , Rosenheim → (47.8529299, 12.1292753), needsGeocoding=false
🔍 Friend 'John Vu' has 1 existing address(es)
   [0] , Hanoi - lat:21.028382, lon:105.853734, needsGeocoding:false
✅ PRESERVED geocoding: , Hanoi → (21.028382, 105.853734), needsGeocoding=false
🔍 Friend 'Frank Dirksen' has 1 existing address(es)
   [0] Prannerstr. 11, München - lat:48.1413007, lon:11.5721995, needsGeocoding:false
✅ PRESERVED geocoding: Prannerstr. 11, München → (48.1413007, 11.5721995), needsGeocoding=false
🔍 Friend 'Natascha ' has 1 existing address(es)
   [0] Jahnstr. 20,  - lat:49.4191187, lon:10.9732949, needsGeocoding:false
✅ PRESERVED geocoding: Jahnstr. 20,  → (49.4191187, 10.9732949), needsGeocoding=false
🔍 Friend 'Sarah Schubarth' has 1 existing address(es)
   [0] Taunusstraße 23, München - lat:48.1892227, lon:11.5778615, needsGeocoding:false
✅ PRESERVED geocoding: Taunusstraße 23, München → (48.1892227, 11.5778615), needsGeocoding=false
🔍 Friend 'David Taylor' has 1 existing address(es)
   [0] 1747 Steuart Street, Tiburon - lat:37.89680463943692, lon:-122.48347823325284, needsGeocoding:false
✅ PRESERVED geocoding: 1747 Steuart Street, Tiburon → (37.89680463943692, -122.48347823325284), needsGeocoding=false
🔍 Friend 'Hank Zakroff' has 1 existing address(es)
   [0] 1741 Kearny Street, San Rafael - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Anna Haro' has 1 existing address(es)
   [0] 1001  Leavenworth Street, Sausalito - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kate Bell' has 1 existing address(es)
   [0] 165 Davis Street, Hillsborough - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Daniel Higgins' has 1 existing address(es)
   [0] 332 Laguna Street, Corte Madera - lat:37.753343, lon:-122.244233, needsGeocoding:false
✅ PRESERVED geocoding: 332 Laguna Street, Corte Madera → (37.753343, -122.244233), needsGeocoding=false
🔍 Friend 'Winkler Petra' has 1 existing address(es)
   [0] Nordendstraße 49, München - lat:48.1592884, lon:11.5746035, needsGeocoding:false
✅ PRESERVED geocoding: Nordendstraße 49, München → (48.1592884, 11.5746035), needsGeocoding=false
🔍 Friend 'Martin Wachter' has 1 existing address(es)
   [0] Frechenweg 12, Bischofswiesen / Loips - lat:47.6599559, lon:12.9238919, needsGeocoding:false
✅ PRESERVED geocoding: Frechenweg 12, Bischofswiesen / Loips → (47.6599559, 12.9238919), needsGeocoding=false
🔍 Friend 'Axel Frhr. von dem Bussche' has 1 existing address(es)
   [0] Am Sandtorkai 41, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend ' Yarli' has 1 existing address(es)
   [0] Triebstrasse 11a,  - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Oliver Juncker' has 1 existing address(es)
   [0] Sonnenmoosstr. 26
Rottach-Egern
83700,  - lat:47.68505, lon:11.7752074, needsGeocoding:false
✅ PRESERVED geocoding: Sonnenmoosstr. 26
Rottach-Egern
83700,  → (47.68505, 11.7752074), needsGeocoding=false
🔍 Friend 'Helga Barth' has 1 existing address(es)
   [0] , Hanoi - lat:21.028382, lon:105.853734, needsGeocoding:false
✅ PRESERVED geocoding: , Hanoi → (21.028382, 105.853734), needsGeocoding=false
🔍 Friend 'Timo Stempfle' has 1 existing address(es)
   [0] Hochbrückenstr. 7, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Jena-Pierre Schober' has 1 existing address(es)
   [0] Hans-Bredow-Straße 60, Bremen - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Ulrich Zahner' has 1 existing address(es)
   [0] Südwestpark 92, Nürnberg - lat:49.4269313, lon:11.0175477, needsGeocoding:false
✅ PRESERVED geocoding: Südwestpark 92, Nürnberg → (49.4269313, 11.0175477), needsGeocoding=false
🔍 Friend 'Martin Tjan' has 1 existing address(es)
   [0] , Düsseldorf - lat:51.2258634, lon:6.7722986, needsGeocoding:false
✅ PRESERVED geocoding: , Düsseldorf → (51.2258634, 6.7722986), needsGeocoding=false
🔍 Friend 'Marcus Wittner' has 1 existing address(es)
   [0] , Saigon / Ho Chi Minh City - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon / Ho Chi Minh City → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Karina Edelmann' has 1 existing address(es)
   [0] Grassauerstr 25, Übersee - lat:47.817635, lon:12.4828853, needsGeocoding:false
✅ PRESERVED geocoding: Grassauerstr 25, Übersee → (47.817635, 12.4828853), needsGeocoding=false
🔍 Friend 'Maja Ingwersen' has 1 existing address(es)
   [0] 3 Janet Close, Constantia - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Justina Hönes-Becker' has 1 existing address(es)
   [0] Nymphenburgerstr 156, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Tuong Ngo' has 1 existing address(es)
   [0] , Saigon / Ho Chi Minh - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , Saigon / Ho Chi Minh → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Michael Mueller' has 1 existing address(es)
   [0] Shin-Kasumigaseki Building
3-3-2 Kasumigaseki, Chiyoda-ku, Tokyo 100-0013 - lat:35.6720892, lon:139.7486494, needsGeocoding:false
✅ PRESERVED geocoding: Shin-Kasumigaseki Building
3-3-2 Kasumigaseki, Chiyoda-ku, Tokyo 100-0013 → (35.6720892, 139.7486494), needsGeocoding=false
🔍 Friend 'Oliver Krug' has 1 existing address(es)
   [0] Hauptstr. 441, Schwalbach - lat:49.3097044, lon:6.8338821, needsGeocoding:false
✅ PRESERVED geocoding: Hauptstr. 441, Schwalbach → (49.3097044, 6.8338821), needsGeocoding=false
🔍 Friend 'Stefan Ewers' has 1 existing address(es)
   [0] 12/F, Deutsches Haus, 33 Le Duan, HCMC / Ho Chi Minh City / Saigon - lat:10.7822426, lon:106.7003651, needsGeocoding:false
✅ PRESERVED geocoding: 12/F, Deutsches Haus, 33 Le Duan, HCMC / Ho Chi Minh City / Saigon → (10.7822426, 106.7003651), needsGeocoding=false
🔍 Friend 'Nam Ho' has 1 existing address(es)
   [0] , HCMC / Saigon - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Felix Süllwold' has 1 existing address(es)
   [0] , HCMC / Saigon - lat:10.7765713, lon:106.7012093, needsGeocoding:false
✅ PRESERVED geocoding: , HCMC / Saigon → (10.7765713, 106.7012093), needsGeocoding=false
🔍 Friend 'Matthias Lang' has 1 existing address(es)
   [0] Stölln 1, Teisendorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Amelie Teissier' has 1 existing address(es)
   [0] Chemin de la treille 1, Ecublens - lat:46.514437, lon:6.557343, needsGeocoding:false
✅ PRESERVED geocoding: Chemin de la treille 1, Ecublens → (46.514437, 6.557343), needsGeocoding=false
🔍 Friend 'Oskar ' has 1 existing address(es)
   [0] Kiefersfeldenerstr. 12, München - lat:48.1174786, lon:11.529994, needsGeocoding:false
✅ PRESERVED geocoding: Kiefersfeldenerstr. 12, München → (48.1174786, 11.529994), needsGeocoding=false
🔍 Friend 'Fuchida Nao' has 1 existing address(es)
   [0] , Tokyo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Johannes Mohr' has 1 existing address(es)
   [0] Prannerstraße 10, München - lat:48.1415266, lon:11.5724276, needsGeocoding:false
✅ PRESERVED geocoding: Prannerstraße 10, München → (48.1415266, 11.5724276), needsGeocoding=false
🔍 Friend 'Michael Alte Brosthaus' has 1 existing address(es)
   [0] Blankeneser Hauptstr. 119, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Erich Cracium' has 1 existing address(es)
   [0] Briennerstr. 42, München - lat:48.1469226, lon:11.5619302, needsGeocoding:false
✅ PRESERVED geocoding: Briennerstr. 42, München → (48.1469226, 11.5619302), needsGeocoding=false
🔍 Friend 'Claudia Da Silva Hess' has 1 existing address(es)
   [0] , Lausanne - lat:46.52178, lon:6.6332494, needsGeocoding:false
✅ PRESERVED geocoding: , Lausanne → (46.52178, 6.6332494), needsGeocoding=false
🔍 Friend 'Makoto Shibata' has 1 existing address(es)
   [0] Chiyoda-ku, Tokyo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Kai Affenbach' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Norbert Aust' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Andreas Dressel' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Clemens Hillmer' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alexander Nagl' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Uwe Nebgen' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hans-Christian Stockfisch' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Lars Anke' has 1 existing address(es)
   [0] , Sinagpore - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Sarah Jaeger' has 1 existing address(es)
   [0] , Tokyo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Svenja Holst-Runge' has 1 existing address(es)
   [0] Wiexstr. 7, Hamburg - lat:53.5513117, lon:9.9836407, needsGeocoding:false
✅ PRESERVED geocoding: Wiexstr. 7, Hamburg → (53.5513117, 9.9836407), needsGeocoding=false
🔍 Friend 'Hans Schaefers' has 1 existing address(es)
   [0] , Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nikolaus Decken, Von Der' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Jan Bringezu' has 1 existing address(es)
   [0] Lutterothstr. 50, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Heins' has 1 existing address(es)
   [0] Präsident-Krahn-Str. 16/17, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Christian Kuehn' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Stephan Liesegang' has 1 existing address(es)
   [0] Präsident-Krahn-Str 16/17, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Moritz Schildt' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Martin Steinmeyer' has 1 existing address(es)
   [0] Heidenkampsweg 73, Hamburg - lat:53.547661, lon:10.0292207, needsGeocoding:false
✅ PRESERVED geocoding: Heidenkampsweg 73, Hamburg → (53.547661, 10.0292207), needsGeocoding=false
🔍 Friend 'Stafan Matz' has 1 existing address(es)
   [0] Wiexstr. 7, Hamburg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Nikolaus Boltze' has 1 existing address(es)
   [0] 2-3-1, Minatomirai, Nishi-ku, Yokohama - lat:35.4558559, lon:139.6331337, needsGeocoding:false
✅ PRESERVED geocoding: 2-3-1, Minatomirai, Nishi-ku, Yokohama → (35.4558559, 139.6331337), needsGeocoding=false
🔍 Friend 'Andrei Moroc' has 1 existing address(es)
   [0] , Hamburg - lat:53.5506117, lon:9.9927152, needsGeocoding:false
✅ PRESERVED geocoding: , Hamburg → (53.5506117, 9.9927152), needsGeocoding=false
🔍 Friend 'Daniel Gralki' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Daniel Gruener' has 1 existing address(es)
   [0] , Tokyo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thang Dang' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Susanne Schierok' has 1 existing address(es)
   [0] , München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hiroshi Iwamura' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Ken Motoda' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Nguyen Ky' has 1 existing address(es)
   [0] , Tokyo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Josef Griesenböck' has 1 existing address(es)
   [0] Moosbacherstr 24, Grasssu - lat:47.7833731, lon:12.4502852, needsGeocoding:false
✅ PRESERVED geocoding: Moosbacherstr 24, Grasssu → (47.7833731, 12.4502852), needsGeocoding=false
🔍 Friend 'Veronika Traublinger' has 1 existing address(es)
   [0] , München - lat:48.1379879, lon:11.575182, needsGeocoding:false
✅ PRESERVED geocoding: , München → (48.1379879, 11.575182), needsGeocoding=false
🔍 Friend 'Carsten Quitter' has 1 existing address(es)
   [0] , Krailling - lat:48.0967847, lon:11.4112365, needsGeocoding:false
✅ PRESERVED geocoding: , Krailling → (48.0967847, 11.4112365), needsGeocoding=false
🔍 Friend 'Enrico Breu' has 1 existing address(es)
   [0] Kardinal-Faulhaber-Straße 12, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Gisela Karrer-Lippert' has 1 existing address(es)
   [0] Von-der-Tann-Str. 5, München - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Alex Plasa' has 1 existing address(es)
   [0] Seestrasse 97, Thalwil - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Thomas Awiszus' has 1 existing address(es)
   [0] Vorsetzen 54, Hamburg - lat:53.5448383, lon:9.9755308, needsGeocoding:false
✅ PRESERVED geocoding: Vorsetzen 54, Hamburg → (53.5448383, 9.9755308), needsGeocoding=false
🔍 Friend 'Bertram Kawlath' has 1 existing address(es)
   [0] , Nürnberg - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Erik Eschen' has 1 existing address(es)
   [0] , Hanau - lat:50.1323642, lon:8.9170865, needsGeocoding:false
✅ PRESERVED geocoding: , Hanau → (50.1323642, 8.9170865), needsGeocoding=false
🔍 Friend 'Alexia Trevisan Soares' has 1 existing address(es)
   [0] , Köln - lat:50.9375229, lon:6.95948, needsGeocoding:false
✅ PRESERVED geocoding: , Köln → (50.9375229, 6.95948), needsGeocoding=false
🔍 Friend 'Ilham Habibie' has 1 existing address(es)
   [0] , Jakarta - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Hiromi Hara' has 1 existing address(es)
   [0] MITSUI & Co Building, 1-2-1 Otemachi, Chiyoda-ku, Tokyo - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Peter Löffelhardt' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Fabrizio Micalizzi' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Edison Bako' has 1 existing address(es)
   [0] , Jakarta - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Petra Sigmund' has 1 existing address(es)
   [0] , Tokyo - lat:35.689506, lon:139.6917, needsGeocoding:false
✅ PRESERVED geocoding: , Tokyo → (35.689506, 139.6917), needsGeocoding=false
🔍 Friend 'Manuel Jank' has 2 existing address(es)
   [0] , Schwandorf - lat:nil, lon:nil, needsGeocoding:true
   [1] , Schwandorf - lat:nil, lon:nil, needsGeocoding:true
🔍 Friend 'Beate Annas' has 1 existing address(es)
   [0] Emser Platz 5, Berlin - lat:52.4923772, lon:13.3189091, needsGeocoding:false
✅ PRESERVED geocoding: Emser Platz 5, Berlin → (52.4923772, 13.3189091), needsGeocoding=false
CoreData: debug: WAL checkpoint: Database did checkpoint. Log size: 1965 checkpointed: 1965
📍 Starting geocoding queue: 1136 address(es) to process
🗺️ Geocoding:  
   Address: Lufthansa City Center Business Plus

Bahnhofstrasse 26, Deisenhofen, 82032, Deutschland
   Queue: 1135 remaining | Success: 0 | Failed: 0
❌ FAILED:  
   Address: Lufthansa City Center Business Plus

Bahnhofstrasse 26, Deisenhofen, 82032, Deutschland
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1135 remaining | Success: 0 | Failed: 1
🗺️ Geocoding: Thomas Peisl
   Address: - Bitte auswählen -
   Queue: 1134 remaining | Success: 0 | Failed: 1
❌ FAILED: Thomas Peisl
   Address: - Bitte auswählen -
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1134 remaining | Success: 0 | Failed: 2
🗺️ Geocoding: Max Gastinger
   Address: Zugspitzstr. 14

1. Stock

Nähe Ostfriedhof, München, Germany
   Queue: 1133 remaining | Success: 0 | Failed: 2
❌ FAILED: Max Gastinger
   Address: Zugspitzstr. 14

1. Stock

Nähe Ostfriedhof, München, Germany
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1133 remaining | Success: 0 | Failed: 3
🗺️ Geocoding: Andrea, Dr Med Tuppert
   Address: Richard Strauss Str. 75, Vietnam
   Queue: 1132 remaining | Success: 0 | Failed: 3
❌ FAILED: Andrea, Dr Med Tuppert
   Address: Richard Strauss Str. 75, Vietnam
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1132 remaining | Success: 0 | Failed: 4
🗺️ Geocoding: Sassa Katsaros
   Address: Nawiakstr. 22, München, Deutschland
   Queue: 1131 remaining | Success: 0 | Failed: 4
❌ FAILED: Sassa Katsaros
   Address: Nawiakstr. 22, München, Deutschland
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1131 remaining | Success: 0 | Failed: 5
🗺️ Geocoding: Stafan Matz
   Address: Wiexstr. 7, Hamburg, Japan
   Queue: 1130 remaining | Success: 0 | Failed: 5
❌ FAILED: Stafan Matz
   Address: Wiexstr. 7, Hamburg, Japan
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1130 remaining | Success: 0 | Failed: 6
🗺️ Geocoding: Hannelore Gartner
   Address: Richard-Strauss-Str 49, München, 80677, Germany
   Queue: 1129 remaining | Success: 0 | Failed: 6
❌ FAILED: Hannelore Gartner
   Address: Richard-Strauss-Str 49, München, 80677, Germany
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1129 remaining | Success: 0 | Failed: 7
🗺️ Geocoding:  
   Address: Cermakova 1231/4, Praha 2, 120 00, Germany
   Queue: 1128 remaining | Success: 0 | Failed: 7
❌ FAILED:  
   Address: Cermakova 1231/4, Praha 2, 120 00, Germany
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1128 remaining | Success: 0 | Failed: 8
🗺️ Geocoding:  
   Address: LKS, Hamburg, 22289, Germany
   Queue: 1127 remaining | Success: 0 | Failed: 8
❌ FAILED:  
   Address: LKS, Hamburg, 22289, Germany
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1127 remaining | Success: 0 | Failed: 9
🗺️ Geocoding:  
   Address: Champs Elysees

Metro Roosevelt, Paris, France
   Queue: 1126 remaining | Success: 0 | Failed: 9
❌ FAILED:  
   Address: Champs Elysees

Metro Roosevelt, Paris, France
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1126 remaining | Success: 0 | Failed: 10
🗺️ Geocoding: Klaus Wallner
   Address: Gut Keferloh, Keferloh 1b, Grasbrunn b. München, 85630, Deutschland
   Queue: 1125 remaining | Success: 0 | Failed: 10
❌ FAILED: Klaus Wallner
   Address: Gut Keferloh, Keferloh 1b, Grasbrunn b. München, 85630, Deutschland
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1125 remaining | Success: 0 | Failed: 11
🗺️ Geocoding: Peter Niedermaier
   Address: Seebruck a. Chiemeee
   Queue: 1124 remaining | Success: 0 | Failed: 11
❌ FAILED: Peter Niedermaier
   Address: Seebruck a. Chiemeee
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1124 remaining | Success: 0 | Failed: 12
🗺️ Geocoding: Muriel Rathje
   Address: Otto-Hahn-Ring 6, München, 81373, Germany
   Queue: 1123 remaining | Success: 0 | Failed: 12
❌ FAILED: Muriel Rathje
   Address: Otto-Hahn-Ring 6, München, 81373, Germany
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1123 remaining | Success: 0 | Failed: 13
🗺️ Geocoding: Jürgen Hang
   Address: Siemens-Werke in Siemens-Allee

Gebäude 1750 (Einga, München, Germany
   Queue: 1122 remaining | Success: 0 | Failed: 13
❌ FAILED: Jürgen Hang
   Address: Siemens-Werke in Siemens-Allee

Gebäude 1750 (Einga, München, Germany
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1122 remaining | Success: 0 | Failed: 14
🗺️ Geocoding: Jürgen Hang
   Address: Siemens-Werke in Siemens-Allee
Gebäude 1750 (Einga, München, Germany
   Queue: 1121 remaining | Success: 0 | Failed: 14
❌ FAILED: Jürgen Hang
   Address: Siemens-Werke in Siemens-Allee
Gebäude 1750 (Einga, München, Germany
   Error: The operation couldn’t be completed. (MKErrorDomain error 4.)
   Queue: 1121 remaining | Success: 0 | Failed: 15