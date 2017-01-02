class PositionModel
{
    
    public static func cityList() -> [String]
    {
        return ["Adana", "Adıyaman", "Afyonkarahisar", "Ağrı", "Amasya",
                "Ankara", "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl",
                "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli",
                "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep",
                "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "Mersin", "İstanbul",
                "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli",
                "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla",
                "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt",
                "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa",
                "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman",
                "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova",
                "Karabük", "Kilis", "Osmaniye", "Düzce"]
    }
    
    public static func townList(city: String) -> [String]
    {
        if(city == "Adana")
        {
            return ["Merkez", "Aladağ", "Çukurova", "Ceyhan", "Feke", "İmamoğlu", "Karaisalı", "Karataş", "Kozan", "Pozantı", "Saimbeyli", "Seyhan", "Tufanbeyli", "Yumurtalık", "Yüreğir", "Sarıçam"]
        }
            
        else if(city == "Adıyaman")
        {
            return ["Merkez", "Besni", "Çelikhan", "Gerger", "Gölbaşı", "Kahta", "Samsat", "Sincik", "Tut"]
        }
            
        else if(city == "Afyonkarahisar")
        {
            return ["Merkez", "Başmakçı", "Bayat", "Bolvadin", "Çay", "Çobanlar", "Dazkırı", "Dinar", "Emirdağ", "Evciler", "Hocalar", "İhsaniye", "İscehisar", "Kızılören", "Sandıklı", "Sinanpaşa", "Sultandağı", "Şuhut"]
        }
            
        else if(city == "Ağrı")
        {
            return ["Merkez", "Diyadin", "Doğubeyazit", "Eleşkirt", "Hamur", "Patnos", "Taşlıçay", "Tutak"]
        }
            
        else if(city == "Amasya")
        {
            return ["Merkez", "Göynücek", "Gümüşhacıköy", "Hamamözü", "Merzifon", "Suluova", "Taşova"]
        }
            
        else if(city == "Ankara")
        {
            return ["Merkez", "Akyurt", "Altındağ", "Ayaş", "Bala", "Beypazarı", "Çamlıdere", "Çankaya", "Çubuk", "Elmadağ", "Etimesgut", "Evren", "Gölbaşı", "Güdül", "Haymana", "Kalecik", "Kazan", "Keçiören", "Kızılcahamam", "Mamak", "Nallıhan", "Polatlı", "Pusaklar", "Sincan", "Şereflikoçhisar", "Yenimahalle"]
        }
            
        else if(city == "Antalya")
        {
            return ["Merkez", "Akseki", "Aksu", "Alanya", "Demre", "Döşemealtı", "Elmalı", "Finike", "Gazipaşa", "Gündoğmuş", "İbradı", "Kaş", "Kemer", "Kepez", "Konyaaltı", "Korkuteli", "Kumluca", "Manavgat", "Muratpaşa", "Serik"]

        }
            
        else if(city == "Artvin")
        {
            return ["Merkez", "Ardanuç", "Arhavi", "Borçka", "Çakmakkaya", "Hopa", "Murgul", "Şavşat", "Yusufeli"]
        }
            
        else if(city == "Aydın")
        {
            return ["Merkez", "Bozdoğan", "Buharkent", "Çine", "Didim", "Efeler", "Germencik", "İncirliova", "Karacasu", "Karpuzlu", "Koçarlı", "Köşk", "Kuşadası", "Kuyucak", "Nazilli", "Ortaklar", "Söke", "Sultanhisar", "Yenipazar"]
        }
            
        else if(city == "Balıkesir")
        {
            return ["Merkez", "Akçay", "Altınoluk", "Altınova", "Ayvalık", "Balya", "Bandırma", "Bigadiç", "Burhaniye", "Dursunbey", "Edremit", "Erdek", "Gömeç", "Gönen", "Havran", "İvrindi", "Kepsut", "Manyas", "Marmara", "Savaştepe", "Sındırgı", "Susurluk", "Şamlı"]
        }
        
        else if(city == "Bilecik")
        {
            return ["Merkez", "Bozüyük", "Gölpazarı", "İnhisar", "Osmaneli", "Pazaryeri", "Söğüt", "Yenipazar"]
        }
           
        else if(city == "Bingöl")
        {
            return ["Merkez", "Adaklı", "Genç", "Karlıova", "Kığı", "Solhan", "Yayladere", "Yedisu"]
        }
            
        else if(city == "Bitlis")
        {
            return ["Merkez", "Adilcevaz", "Ahlat", "Güroymak", "Hizan", "Mutki", "Tatvan"]
        }
        
        else if(city == "Bolu")
        {
            return ["Merkez", "Akçakoca", "Cumaova", "Çilimli", "Dörtdivan", "Düzce", "Gerede", "Gölyaka", "Göynük", "Gümüşova", "Kıbrıscık", "Mengen", "Mudurnu", "Seben", "Yeniçağa", "Yığılca"]
        }
            
        else if(city == "Burdur")
        {
            return ["Merkez", "Ağlasun", "Altınyayla", "Bucak", "Çavdır", "Çeltikçi", "Gölhisar", "Karamanlı", "Kemer", "Tefenni", "Yeşilova"]
        }
         
        else if(city == "Bursa")
        {
            return ["Merkez", "Büyükorhan", "Gemlik", "Görükle", "Gürsu", "Harmancık", "İnegöl", "İznik", "Karacabey", "Keles", "Kestel", "Mudanya", "Mustafakemalpaşa", "Nilüfer", "Orhaneli", "Orhangazi", "Osmangazi", "Yenişehir", "Yıldırım"]
        }
            
        else if(city == "Çanakkale")
        {
            return ["Merkez", "Ayvacık", "Bayramiç", "Biga", "Bozcaada", "Çan", "Eceabat", "Ezine", "Gelibolu", "Gökçeada", "İntepe", "Lapseki", "Yenice"]
        }
            
        else if(city == "Çankırı")
        {
            return ["Merkez", "Atkaracalar", "Bayramören", "Çerkeş", "Eldivan", "Ilgaz", "Kızılırmak", "Korgun", "Kurşunlu", "Orta", "Ovacık", "Şabanözü", "Yapraklı"]
        }
            
        else if(city == "Çorum")
        {
            return ["Merkez", "Alaca", "Bayat", "Boğazkale", "Dodurga", "İskilip", "Kargı", "Laçin", "Mecitözü", "Oğuzlar", "Ortaköy", "Osmancık", "Sungurlu", "Uğurludağ"]
        }
            
        else if(city == "Denizli")
        {
            return ["Merkez", "Acıpayam", "Babadağ", "Baklan", "Bekilli", "Beyağaç", "Bozkurt", "Buldan", "Çal", "Çameli", "Çardak", "Çivril", "Güney", "Honaz", "Kale", "Merkezefendi", "Pamukkale", "Sarayköy", "Serinhisar", "Tavas"]
        }
            
        else if(city == "Diyarbakır")
        {
            return ["Merkez", "Bağlar", "Bismil", "Çermik", "Çınar", "Çüngüş", "Dicle", "Eğil", "Ergani", "Hani", "Hazro", "Kayapınar", "Kocaköy", "Kulp", "Lice", "Silvan", "Sur", "Yenişehir"]
        }
            
        else if(city == "Edirne")
        {
            return ["Merkez", "Enez", "Havsa", "İpsala", "Keşan", "Lalapaşa", "Meriç", "Süloğlu", "Uzunköprü"]
        }
            
        else if(city == "Elazığ")
        {
            return ["Merkez", "Ağın", "Alacakaya", "Arıcak", "Baskil", "Karakoçan", "Keban", "Kovancılar", "Maden", "Palu", "Sivrice"]
        }
            
        else if(city == "Erzincan")
        {
            return ["Merkez", "Çayırlı", "İliç", "Kemah", "Kemaliye", "Otlukbeli", "Refahiye", "Tercan", "Üzümlü"]
        }
            
        else if(city == "Erzurum")
        {
            return ["Merkez", "Aşkale", "Aziziye", "Çat", "Hınıs", "Horasan", "İspir", "Karaçoban", "Karayazı", "Köprüköy", "Narman", "Oltu", "Olur", "Palandöken", "Pasinler", "Pazaryolu", "Şenkaya", "Tekman", "Tortum", "Uzundere", "Yakutiye"]
        }
        
        else if(city == "Eskişehir")
        {
            return ["Merkez", "Alpu", "Beylikova", "Çifteler", "Günyüzü", "Han", "İnönü", "Mahmudiye", "Mihalgazi", "Mihalıççık", "Odunpazarı", "Sarıcakaya", "Seyitgazi", "Sivrihisar", "Tepebaşı"]
        }
            
        else if(city == "Gaziantep")
        {
            return ["Merkez", "Araban", "Başpınar", "İshaliye", "Karkamış", "Nizip", "Nurdağı", "Oğuzeli", "Şahinbey", "Şehitkamil", "Yavuzeli"]
        }
            
        else if(city == "Giresun")
        {
            return ["Merkez", "Alucra", "Bulancak", "Çamoluk", "Çanakçı", "Dereli", "Doğankent", "Espiye", "Eynesil", "Görele", "Güce", "Keşap", "Piraziz", "Şebinkarahisar", "Tirebolu", "Yağlıdere"]
        }
            
        else if(city == "Gümüşhane")
        {
            return ["Merkez", "Kelkit", "Köse", "Kürtün", "Şiran", "Torul"]
        }
            
        else if(city == "Hakkari")
        {
            return ["Merkez", "Çukurca", "Esendere", "Şemdilli", "Yüksekova"]
        }
            
        else if(city == "Hatay")
        {
            return ["Antakya", "Altınözü", "Arsuz", "Belen", "Defne", "Dörtyol", "Erzin", "Hassa", "İskenderun", "Kırıkhan", "Kumlu", "Payas", "Reyhanlı", "Samandağı", "Yayladağı"]
        }
            
        else if(city == "İskenderun")
        {
            return ["Merkez", "Aksu", "Atabey", "Eğirdir", "Gelendost", "Gönen", "Keçiborlu", "Senirkent", "Sütçüler", "Şarkıkaraağaç", "Uluborlu", "Yalvaç", "Yenişarbademli"]
        }
            
        else if(city == "Mersin")
        {
            return ["Merkez", "Akdeniz", "Anamur", "Aydıncık", "Bozyazı", "Çamlıyayla", "Erdemli", "Gülnar", "Mezitli", "Mut", "Silifke", "Tarsus", "Toroslar", "Yenişehir"]
        }
            
        else if(city == "İstanbul")
        {
            return ["Anadolu", "Avrupa", "Adalar", "Arnavutköy", "Ataşehir", "Avcılar", "Bağcılar", "Bahçelievler", "Bakırköy", "Başakşehir", "Bayrampaşa", "Beşiktaş", "Beykoz", "Beylikdüzü", "Beyoğlu", "Büyükçekmece", "Çatalca", "Çekmeköy", "Esenler", "Esenyurt", "Eyüp", "Fatih", "Gaziosmanpaşa", "Güngören", "Kadıköy", "Kağıthane", "Kartal", "Küçükçekmece", "Maltepe", "Pendik", "Sancaktepe", "Sarıyer", "Silivri", "Sultanbeyli", "Sultangazi", "Şile", "Şişli", "Tuzla", "Ümraniye", "Üsküdar", "Zeytinburnu"]
        }
            
        else if(city == "İzmir")
        {
            return ["Merkez", "Aliağa", "Balçova", "Bayındır", "Bayraklı", "Bergama", "Beydağ", "Bornova", "Buca", "Çeşme", "Çiğli", "Dikili", "Foça", "Gaziemir", "Güzelbahçe", "Karabağlar", "Karaburun", "Karşıyaka", "Kemalpaşa", "Kınık", "Kiraz", "Konak", "Menderes", "Menemen", "Narlıdere", "Ödemiş", "Seferhisar", "Selçuk", "Tire", "Torbalı", "Urla"]
        }
            
        else if(city == "Kars")
        {
            return ["Merkez", "Akyaka", "Arpaçay", "Digor", "Kağızman", "Sarıkamış", "Selim", "Susuz"]
        }
            
        else if(city == "Kastamonu")
        {
            return ["Merkez", "Abana", "Ağlı", "Araç", "Azdavay", "Bozkurt", "Cide", "Çatalzeytin", "Daday", "Devrekani", "Doğanyurt", "Hanönü", "İhsangazi", "İnebolu", "Küre", "Pınarbaşı", "Seydiler", "Şenpazar", "Taşköprü", "Tosya"]
        }
            
        else if(city == "Kayseri")
        {
            return ["Merkez", "Akkışla", "Bünyan", "Develi", "Felahiye", "Hacılar", "İncesu", "Kocasinan", "Melikgazi", "Özvatan", "Pınarbaşı", "Sarıoğlan", "Sarız", "Talas", "Tomarza", "Yaylalı", "Yeşilhisar"]
        }
            
        else if(city == "Kırklareli")
        {
            return ["Merkez", "Alpullu", "Babaeski", "Demirköy", "Kofçaz", "Lüleburgaz", "Pehlivanköy", "Pınarhisar", "Vize"]
        }
        
        else if(city == "Kırşehir")
        {
            return ["Merkez", "Akçakent", "Akpınar", "Boztepe", "Çiçekdağı", "Kaman", "Mucur"]
        }
            
        else if(city == "Kocaeli")
        {
            return ["İzmit", "Başiskele", "Çayırova", "Darıca", "Derince", "Dilovası", "Gebze", "Gölcük", "Kandıra", "Karamürsel", "Kartepe", "Körfez"]
        }
        
        else if(city == "Konya")
        {
            return ["Merkez", "Ahırlı", "Akören", "Akşehir", "Altınekin", "Beyşehir", "Bozkır", "Cihanbeyli", "Çeltik", "Çumra", "Derbent", "Derebucak", "Doğanhisar", "Emirgazi", "Ereğli", "Güneysınır", "Hadim", "Halkapınar", "Hüyük", "Ilgın", "Kadınhanı", "Karapınar", "Karatay", "Kulu", "Meram", "Sarayönü", "Selçuklu", "Seydişehir", "Taşkent", "Tuzlukçu", "Yalıhüyük", "Yunak"]
        }
            
        else if(city == "Kütahya")
        {
            return ["Merkez", "Altıntaş", "Aslanapa", "Çavdarhisar", "Domaniç", "Dumlupınar", "Emet", "Gediz", "Hisarcık", "Pazarlar", "Simav", "Şaphane", "Tavşanlı"]
        }
            
        else if(city == "Malatya")
        {
            return ["Akçadağ", "Arapgir", "Arguvan", "Battalgazi", "Darende", "Doğanşehir", "Doğanyol", "Hekimhan", "Kale", "Kuluncak", "Pötürge", "Yazıhan", "Yeşilyurt"]
        }
            
        else if(city == "Manisa")
        {
            return ["Merkez", "Ahmetli", "Akhisar", "Alaşehir", "Demirci", "Gölmarmara", "Gördes", "Kırkağaç", "Köprübaşı", "Kula", "Salihli", "Sarıgöl", "Saruhanlı", "Selendi", "Soma", "Turgutlu"]
        }
            
        else if(city == "Kahramanmaraş")
        {
            return ["Merkez", "Afsin", "Andırın", "Çağlıyancerit", "Ekinözü", "Elbistan", "Göksun", "Nurhak", "Pazarcık", "Türkoğlu"]
        }
            
        else if(city == "Mardin")
        {
            return ["Merkez", "Dargeçit", "Derik", "Kızıltepe", "Mazıdağı", "Midyat", "Nusaybin", "Ömerli", "Savurlu", "Yeşilli"]
        }
            
        else if(city == "Muğla")
        {
            return ["Merkez", "Bodrum", "Dalaman", "Datça", "Fethiye", "Kavaklıdere", "Köyceğiz", "Marmaris", "Milas", "Ortaca", "Ula", "Yatağan"]
        }
            
        else if(city == "Muş")
        {
            return ["Merkez", "Bulanık", "Hasköy", "Korkut", "Malazgirt", "Varto"]
        }
            
        else if(city == "Nevşehir")
        {
            return ["Merkez", "Altunhisar", "Bor", "Çamardı", "Çiftlik", "Ulukışla"]
        }
            
        else if(city == "Rize")
        {
            return ["Merkez", "Ardeşen", "Çamlıhemşin", "Çayeli", "Derepazarı", "Fındıklı", "Güneysu", "Hemşin", "İkizdere", "İyidere", "Kalkandere", "Pazar"]
        }
            
        else if(city == "Sakarya")
        {
            return ["Adapazarı", "Akyazı", "Arifiye", "Erenler", "Ferizli", "Geyve", "Hendek", "Karapürçek", "Karasu", "Kaynarca", "Kocaali", "Pamukova", "Sapanca", "Serdivan", "Söğütlü", "Taraklı"]
        }
            
        else if(city == "Samsun")
        {
            return ["Merkez", "Alaçam", "Asarcık", "Atakum", "Ayvacık", "Bafra", "Canik", "Çarşamba", "Havza", "İlkadım", "Kavak", "Ladik", "Ondokuzmayıs", "Salıpazarı", "Tekkeköy", "Terme", "Vezirköprü", "Yakakent"]
        }
            
        else if(city == "Siirt")
        {
            return ["Merkez", "Aydınlar", "Baykan", "Eruh", "Kurtalan", "Pervari", "Şirvan"]
        }
            
        else if(city == "Sivas")
        {
            return ["Merkez", "Akıncılar", "Altınyayla", "Divriği", "Doğanşar", "Gemerek", "Gölova", "Gürün", "Hafik", "İmranlı", "Kangal", "Koyulhisar", "Suşehri", "Şarkışla", "Ulaş", "Yıldızeli", "Zara"]
        }
            
        else if(city == "Tekirdağ")
        {
            return ["Merkez", "Çerezköy", "Çorlu", "Ergene", "Hayrabolu", "Kapaklı", "Malkara", "Marmara Ereğlisi", "Muratlı", "Saray", "Süleymanpaşa", "Şarköy"]
        }
            
        else if(city == "Tokat")
        {
            return ["Merkez", "Almus", "Artova", "Başçiftlik", "Erbaa", "Niksar", "Pazar", "Reşadiye", "Sulusaray", "Turhal", "Yeşilyurt", "Zile"]
        }
            
        else if(city == "Trabzon")
        {
            return ["Merkez", "Akçaabat", "Araklı", "Arsin", "Beşikdüzü", "Çarşıbaşı", "Çaykara", "Dernekpazarı", "Düzköy", "Hayrat", "Maçka", "Köprübaşı", "Of", "Sürmene", "Şalpazarı", "Tonya", "Vakfıkebir", "Yomra"]
        }
            
        else if(city == "Tunceli")
        {
            return ["Merkez", "Çemişgezek", "Hozat", "Mazgirt", "Nazimiye", "Ovacık", "Pertek", "Pülümür"]
        }
            
        else if(city == "Şanlıurfa")
        {
            return ["Merkez", "Akçakale", "Birecik", "Bozova", "Ceylanpınar", "Halfeti", "Harran", "Hilvan", "Siverek", "Suruç", "Viranşehir"]
        }
            
        else if(city == "Uşak")
        {
            return ["Merkez", "Banaz", "Eşme", "Karahallı", "Sivaslı", "Ulubey"]
        }
            
        else if(city == "Van")
        {
            return ["Merkez", "Bahçesaray", "Başkale", "Çaldıran", "Çatak", "Edremit", "Erçiş", "Gevaş", "Gürpınar", "Muradiye", "Özalp", "Saray"]
        }
            
        else if(city == "Yozgat")
        {
            return ["Merkez", "Akdağmadeni", "Aydıncık", "Boğazlıyan", "Çandır", "Çayıralan", "Çekerek", "Kadışehri", "Saraykent", "Sarıkaya", "Sorgun", "Şefaatli", "Yenifakılı", "Yerköy"]
        }
        
        else if(city == "Zonguldak")
        {
            return ["Merkez", "Alaplı", "Çaycuma", "Devrek", "Ereğli", "Gökçebey", "Kilimli", "Kozlu"]
        }
            
        else if(city == "Aksaray")
        {
            return ["Merkez", "Ağaçören", "Eskil", "Gülağaç", "Güzelyurt", "Ortaköy", "Sarıyahşi"]
        }
            
        else if(city == "Bayburt")
        {
            return ["Merkez", "Aydıntepe", "Demirözü"]
        }
            
        else if(city == "Karaman")
        {
            return ["Merkez", "Ayrancı", "Başyayla", "Ermenek", "Kazımkarabekir", "Sarıveliler"]
        }
            
        else if(city == "Kırıkkale")
        {
            return ["Merkez", "Bahşili", "Balışeyh", "Çelebi", "Delice", "Karakeçili", "Keskin", "Sulakyurt", "Yahşihan"]
        }
            
        else if(city == "Batman")
        {
            return ["Merkez", "Beşiri", "Gercüş", "Hasankeyf", "Kozluk", "Sason"]
        }
            
        else if(city == "Şırnak")
        {
            return ["Merkez", "Beytüşşebab", "Cizre", "Güçlükonak", "İdil", "Silopi", "Uludere"]
        }
            
        else if(city == "Bartın")
        {
            return ["Merkez", "Amasra", "Kurucaşile", "Ulus"]
        }
            
        else if(city == "Ardahan")
        {
            return ["Merkez", "Çıldır", "Damal", "Göle", "Hanak", "Posof"]
        }
        
        else if(city == "Iğdır")
        {
            return ["Merkez", "Aralık", "Karakoyunlu", "Tuzluca"]
        }
            
        else if(city == "Yalova")
        {
            return ["Merkez", "Altınova", "Armutlu", "Çınarcık", "Çiftliköy", "Taşköprü", "Termal"]
        }
            
        else if(city == "Karabük")
        {
            return ["Merkez", "Eflani", "Eskipazar", "Ovacık", "Safranbolu", "Yenice"]
        }
            
        else if(city == "Kilis")
        {
            return ["Merkez", "Elbeyli", "Musabeyli", "Polateli"]
        }
            
        else if(city == "Osmaniye")
        {
            return ["Merkez", "Bahçe", "Düziçi", "Hasanbeyli", "İyidere", "Kadirli", "Sumbas", "Toprakkale"]
        }
            
        else if(city == "Düzce")
        {
            return ["Merkez", "Akçakoca", "Cumayeri", "Çilimli", "Gölyaka", "Gümüşova", "Kaynaşlı", "Konuralp", "Yığılca"]
        }
            
        else
        {
            return [""]
        }
    }
    
}
