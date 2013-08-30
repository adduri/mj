var states = new Array();

states['India'] = new Array("<--select-->","Andaman and Nicobar Islands", "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chandigarh", "Chhattisgarh", "Dadra and Nagar Haveli", "Daman and Diu", "Delhi", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu and Kashmir", "Jharkhand", "Karnataka", "Kerala", "Lakshadweep", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Orissa", "Pondicherry", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Tripura", "Uttaranchal", "Uttar Pradesh", "West Bengal");
 
states['United States'] = new Array("<--select-->","Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming");

states['Mexico'] = new Array("<--select-->","Mexico (Distrito Federal)","Aguascalientes","Baja California","Baja California Sur","Campeche","Chiapas","Chihuahua","Coahuila de Zaragoza","Colima","Durango","Guanajuato","Guerrero","Hidalgo","Jalisco","Michoacan de Ocampo","Morelos","Nayarit","Nuevo Leon","Oaxaca","Puebl","Queretaro de Arteaga","Quintana Roo","San Luis Potosi","Sinaloa","Sonora","Tabasco","Tamaulipas","Tlaxcala","Veracruz-Llave","Yucatan","Zacatecas");

states['Nigeria'] = new Array("<--select-->",'Abuja','Abia','Adamawa','Akwa Ibom','Anambra','Bauchi','Bayelsa','Benue','Borno','Cross River','Delta','Ebonyi',"Edo","Ekiti","Enugu","Gombe","Imo","Jigawa","Kaduna","Kano","Katsina","Kebbi","Kogi","Kwara","Lagos","Nassarawa","Niger","Ogun","Ondo","Osun","Oyo","Plateau","Rivers","Sokoto","Taraba","Yobe",'Zamfara');


states["Bangladesh"] = new Array("<--select-->","Dhaka","Barisal","Chittagong","Khulna","Rajshahi","Sylhet");
states["Bhutan"] = new Array("<--select-->","Thimphu","Bumthang","Chhukha","Chirang","Dagana","Gasa","Geylegphug","Ha","Lhuntshi","Mongar","Paro","Pemagatsel","Punakha","Samchi","Samdrup Jongkhar","Shemgang","Tashigang","Tongsa","Wangdi Phodrang","Yangtse");
states["Brunei"] = new Array("<--select-->","Bandar Seri Begawan","Belait","Brunei/Muara","Temburong","Tutong");
states["Burma (Myanmar)"] = new Array("<--select-->","Rangoon","Ayeyarwady","Bago","Chin","Kachin","Kayin","Kayah","Magway","Mandalay","Mon","Rakhine","Sagaing","Shan","Tanintharyi","Yangon");
states["Cambodia"] = new Array("<--select-->","Phnom Penh","Banteay Mean Cheay","Batdambang","Kampong Cham","Kampong Chhnang","Kampong Spoe","Kampong Thum","Kampot","Kandal","Kaoh Kong","Keb","Kracheh","Mondol Kiri","Otdar Mean Cheay","Pailin","Pouthisat","Preah Seihanu (Sihanoukville)","Preah Vihear","Prey Veng","Rotanah Kiri","Siem Reab","Stoeng Treng","Svay Rieng","Takev");
states["China"] = new Array("<--select-->","Beijing","Anhui","Chongqing","Fujian","Gansu","Guangdong","Guangxi","Guizhou","Hainan","Hebei","Heilongjiang","Henan","Hubei","Hunan","Jiangsu","Jiangxi","Jilin","Liaoning","Nei Mongol","Ningxia","Qinghai","Shaanxi","Shandong","Shanghai","Shanxi","Sichuan","Tianjin","Xinjiang","Xizang (Tibet)","Yunnan","Zhejiang");

states["Italy"] = new Array("<--select-->","Rome","Abruzzi","Basilicata","Calabria","Campania","Emilia-Romagna","Friuli-Venezia Giulia","Lazio","Liguria","Lombardia","Marche","Molise","Piemonte","Puglia","Sardegna","Sicilia","Toscana","Trentino-Alto Adige","Umbria","Valle d\'Aosta","Veneto");
states["United Kingdom"] = new Array("<--select-->","-----ENGLAND:-----","Barking/Dagenham","Barnet","Barnsley","Bath/North East Somerset","Bedfordshire","Bexley","Birmingham","Blackburn with Darwen","Blackpool","Bolton","Bournemouth","Bracknell Forest","Bradford","Brent","Brighton/Hove","City of Bristol","Bromley","Buckinghamshire","Bury","Calderdale","Cambridgeshire","Camden","Cheshire","Cornwall","Coventry","Croydon","Cumbria","Darlington","Derby","Derbyshire","Devon","Doncaster","Dorset","Dudley","Durham","Ealing","East Riding of Yorkshire","East Sussex","Enfield","Essex","Gateshead","Gloucestershire","Greenwich","Hackney","Halton","Hammersmith/Fulham","Hampshire","Haringey","Harrow","Hartlepool","Havering","Herefordshire","Hertfordshire","Hillingdon","Hounslow","Isle of Wight","Islington","Kensington/Chelsea","Kent","City of Kingston upon Hull","Kingston upon Thames","Kirklees","Knowsley","Lambeth","Lancashire","Leeds","Leicester","Leicestershire","Lewisham","Lincolnshire","Liverpool","City of London","Luton","Manchester","Medway","Merton","Middlesbrough","Milton Keynes","Newcastle upon Tyne","Newham","Norfolk","Northamptonshire","North East Lincolnshire","North Lincolnshire","North Somerset","North Tyneside","Northumberl/","North Yorkshire","Nottingham","Nottinghamshire","Oldham","Oxfordshire","Peterborough","Plymouth","Poole","Portsmouth","Reading","Redbridge","Redcar/Clevel/","Richmond upon Thames","Rochdale","Rotherham","Rutl/","Salford","Shropshire","S/well","Sefton","Sheffield","Slough","Solihull","Somerset","Southampton","Southend-on-Sea","South Gloucestershire","South Tyneside","Southwark","Staffordshire","St. Helens","Stockport","Stockton-on-Tees","Stoke-on-Trent","Suffolk","Sunderl/","Surrey","Sutton","Swindon","Tameside","Telford/Wrekin","Thurrock","Torbay","Tower Hamlets","Trafford","Wakefield","Walsall","Waltham Forest","W/sworth","Warrington","Warwickshire","West Berkshire","Westminster","West Sussex","Wigan","Wiltshire","Windsor/Maidenhead","Wirral","Wokingham","Wolverhampton","Worcestershire","York","-----NORTHERN IRELAND:-----","Antrim","County Antrim","Ards","Armagh","County Armagh","Ballymena","Ballymoney","Banbridge","Belfast","Carrickfergus","Castlereagh","Coleraine","Cookstown","Craigavon","Down","County Down","Dungannon","Fermanagh","County Fermanagh","Larne","Limavady","Lisburn","County Londonderry","Derry","Magherafelt","Moyle","Newry/Mourne","Newtownabbey","North Down","Omagh","Strabane","County Tyrone","-----SCOTLAND:-----","Aberdeen City","Aberdeenshire","Angus","Argyll/Bute","The Scottish Borders","Clackmannanshire","Dumfries/Galloway","Dundee City","East Ayrshire","East Dunbartonshire","East Lothian","East Renfrewshire","City of Edinburgh","Falkirk","Fife","Glasgow City","Highland","Inverclyde","Midlothian","Moray","North Ayrshire","North Lanarkshire","Orkney Islands","Perth/Kinross","Renfrewshire","Shetland Islands","South Ayrshire","South Lanarkshire","Stirling","West Dunbartonshire","Eilean Siar (Western Isles)","West Lothian","-----WALES-----:","Isle of Anglesey","Blaenau Gwent","Bridgend","Caerphilly","Cardiff","Ceredigion","Carmarthenshire","Conwy","Denbighshire","Flintshire","Gwynedd","Merthyr Tydfil","Monmouthshire","Neath Port Talbot","Newport","Pembrokeshire","Powys","Rhondda Cynon Taff","Swansea","Torfaen","The Vale of Glamorgan","Wrexham");
states["Kuwait"] = new Array("<--select-->","Kuwait","Al Ahmadi","Al Farwaniyah","Al \'Asimah","Al Jahra\'","Hawalli");

states["Saudi Arabia"] = new Array("<--select-->","Riyadh","Al Bahah","Al Hudud ash Shamaliyah","Al Jawf","Al Madinah","Al Qasim","Ar Riyad","Ash Sharqiyah (Eastern Province)","\'Asir","Ha\'il","Jizan","Makkah","Najran","Tabuk");
states["Turkey"] = new Array("<--select-->","Ankara","Adana","Adiyaman","Afyon","Agri","Aksaray","Amasya","Antalya","Ardahan","Artvin","Aydin","Balikesir","Bartin","Batman","Bayburt","Bilecik","Bingol","Bitlis","Bolu","Burdur","Bursa","Canakkale","Cankiri","Corum","Denizli","Diyarbakir","Duzce","Edirne","Elazig","Erzincan","Erzurum","Eskisehir","Gaziantep","Giresun","Gumushane","Hakkari","Hatay","Icel","Igdir","Isparta","Istanbul","Izmir","Kahramanmaras","Karabuk","Karaman","Kars","Kastamonu","Kayseri","Kilis","Kirikkale","Kirklareli","Kirsehir","Kocaeli","Konya","Kutahya","Malatya","Manisa","Mardin","Mugla","Mus","Nevsehir","Nigde","Ordu","Osmaniye","Rize","Sakarya","Samsun","Sanliurfa","Siirt","Sinop","Sirnak","Sivas","Tekirdag","Tokat","Trabzon","Tunceli","Usak","Van","Yalova","Yozgat","Zonguldak  Buri","Sisaket","Songkhla","Sukhothai","Suphan Buri","Surat Thani","Surin","Tak","Trang","Trat","Ubon Ratchathani","Udon Thani","Uthai Thani","Uttaradit","Yala","Yasothon");
states["United Arab Emirates"] = new Array("<--select-->","Abu Dhabi","Abu Zaby (Abu Dhabi)","\'Ajman","Al Fujayrah","Ash Shariqah (Sharjah)","Dubayy (Dubai)","Ra\'s al Khaymah","Umm al Qaywayn");
states["Canada"] = new Array("<--select-->","Ottawa","Alberta","British Columbia","Manitoba","New Brunswick","Newfoundland and Labrador","Northwest Territories","Nova Scotia","Nunavut","Ontario","Prince Edward Island","Quebec","Saskatchewan","Yukon Territory"); 

states["Nigeria"] = new Array("<--select-->","Abuja","Abia","Adamawa","Akwa Ibom","Anambra","Bauchi","Bayelsa","Benue","Borno","Cross River","Delta","Ebonyi","Edo","Ekiti","Enugu","Gombe","Imo","Jigawa","Kaduna","Kano","Katsina","Kebbi","Kogi","Kwara","Lagos","Nassarawa","Niger","Ogun","Ondo","Osun","Oyo","Plateau","Rivers","Sokoto","Taraba","Yobe","Zamfara");
states["South Africa"] = new Array("<--select-->","Pretoria","Eastern Cape","Free State","Gauteng","KwaZulu-Natal","Mpumalanga","North-West","Northern Cape","Northern Province/Limpopo","Western Cape");
states["China"] = new Array("<--select-->","Beijing","Anhui","Chongqing","Fujian","Gansu","Guangdong","Guangxi","Guizhou","Hainan","Hebei","Heilongjiang","Henan","Hubei","Hunan","Jiangsu","Jiangxi","Jilin","Liaoning","Nei Mongol","Ningxia","Qinghai","Shaanxi","Shandong","Shanghai","Shanxi","Sichuan","Tianjin","Xinjiang","Xizang (Tibet)","Yunnan","Zhejiang");
states["Indonesia"] = new Array("<--select-->","Jakarta","Aceh","Bali","Banten","Bengkulu","Gorontalo","Jakarta Raya","Jambi","Jawa Barat","Jawa Tengah","Jawa Timur","Kalimantan Barat","Kalimantan Selatan","Kalimantan Tengah","Kalimantan Timur","Kepulauan Bangka Belitung","Lampung","Maluku","Maluku Utara","Nusa Tenggara Barat","Nusa Tenggara Timur","Papua","Riau","Sulawesi Selatan","Sulawesi Tengah","Sulawesi Tenggara","Sulawesi Utara","Sumatera Barat","Sumatera Selatan","Sumatera Utara","Yogyakarta");
states["Korea (north)"] = new Array("<--select-->","P\'yongyang","Chagang-do","Hamgyong-bukto","Hamgyong-namdo","Hwanghae-bukto","Hwanghae-namdo","Kaesong-si","Kangwon-do","Najin Sonbong-si","Namp\'o-si","P\'yongan-bukto","P\'yongan-namdo","P\'yongyang-si","Yanggang-do");
states["Korea (south)"] = new Array("<--select-->","Seoul","Cheju-do","Cholla-bukto","Cholla-namdo","Ch\'ungch\'ong-bukto","Ch\'ungch\'ong-namdo","Inch\'on-gwangyoksi","Kangwon-do","Kwangju-gwangyoksi","Kyonggi-do","Kyongsang-bukto","Kyongsang-namdo","Pusan-gwangyoksi","Soul-t\'ukpyolsi","Taegu-gwangyoksi","Taejon-gwangyoksi","Ulsan-gwangyoksi");
states["Malaysia"] = new Array("<--select-->","Kuala Lumpur","Johor","Kedah","Kelantan","Labuan","Melaka","Negeri Sembilan","Pahang","Perak","Perlis","Pulau Pinang","Putrajaya","Sabah","Sarawak","Selangor","Terengganu","Wilayah Persekutuan");
states["Sri Lanka"] = new Array("<--select-->","Colombo","Central","North Central","Northern","Eastern","North Western","Sabaragamuwa","Southern","Uva","Western");
states["Thailand"] = new Array("<--select-->","Bangkok","Amnat Charoen","Ang Thong","Buriram","Chachoengsao","Chai Nat","Chaiyaphum","Chanthaburi","Chiang Mai","Chiang Rai","Chon Buri","Chumphon","Kalasin","Kamphaeng Phet","Kanchanaburi","Khon Kaen","Krabi","Lampang","Lamphun","Loei","Lop Buri","Mae Hong Son","Maha Sarakham","Mukdahan","Nakhon Nayok","Nakhon Pathom","Nakhon Phanom","Nakhon Ratchasima","Nakhon Sawan","Nakhon Si Thammarat","Nan","Narathiwat","Nong Bua Lamphu","Nong Khai","Nonthaburi","Pathum Thani","Pattani","Phangnga","Phatthalung","Phayao","Phetchabun","Phetchaburi","Phichit","Phitsanulok","Phra Nakhon Si Ayutthaya","Phrae","Phuket","Prachin Buri","Prachuap Khiri Khan","Ranong","Ratchaburi","Rayong","Roi Et","Sa Kaeo","Sakon Nakhon","Samut Prakan","Samut Sakhon","Samut Songkhram","Sara Buri","Satun","Sing");
states["Australia"] = new Array("<--select-->","Canberra","Australian Capital Territory","New South Wales","Northern Territory","Queensland","South Australia","Tasmania","Victoria","Western Australia");
states["New Zealand"] = new Array("<--select-->","Wellington","Akaroa","Amuri","Ashburton","Auckland","Banks Peninsula","Bay of Islands","Bay of Plenty","Bruce","Buller","Canterbury","Carterton","Chatham Islands","Cheviot","Christchurch","Clifton","Clutha","Cook","Dannevirke","Dunedin","Egmont","Eketahuna","Ellesmere","Eltham","Eyre","Far North","Featherston","Franklin","Gisborne","Golden Bay","Gore","Great Barrier Island","Grey","Hamilton","Hastings","Hauraki Plains","Hawera","Hawke\'s Bay","Heathcote","Hikurangi","Hobson","Hokianga","Horowhenua","Hurunui","Hutt","Inangahua","Inglewood","Invercargill","Kaikoura","Kaipara","Kairanga","Kapiti Coast","Kawerau","Kiwitea","Lake","Mackenzie","Malvern","Manaia","Manawatu","Mangonui","Maniototo","Manukau","Marlborough","Masterton","Matamata","Matamata Piako","Mount Herbert","Napier","Nelson","Nelson","New Plymouth","Northland","North Shore","Ohinemuri","Opotiki","Oroua","Otago","Otamatea","Otorohanga","Oxford","Palmerston North","Pahiatua","Papakura","Paparua","Patea","Piako","Pohangina","Porirua","Queenstown Lakes","Raglan","Rangiora","Rangitikei","Rodney","Rotorua","Ruapehu","Runanga","Saint Kilda","Selwyn","Silverpeaks","Southland","South Taranaki","South Waikato","South Wairarapa","Stewart Island","Stratford","Strathallan","Taranaki","Tararua","Tasman","Taumarunui","Taupo","Tauranga","Thames Coromandel","Timaru","Tuapeka","Upper Hutt","Vincent","Waiapu","Waiheke","Waihemo","Waikato","Waikohu","Waimairi","Waimarino","Waimate","Waimate West","Waimea","Waipa","Waipawa","Waipukurau","Wairarapa South","Wairewa","Wairoa","Waitakere","Waitaki","Waitomo","Waitotara","Wallace","Wanganui","Wanganui-Manawatu","Waverley","West Coast","Western Bay of Plenty","Westland","Whakatane","Whangarei","Whangaroa","Woodville");
states["Iceland"] = new Array("<--select-->","Reykjavik","Akranes","Akureyri","Arnessysla","Austur-Bardhastrandarsysla","Austur-Hunavatnssysla","Austur-Skaftafellssysla","Borgarfjardharsysla","Dalasysla","Eyjafjardharsysla","Gullbringusysla","Hafnarfjordhur","Husavik","Isafjordhur","Keflavik","Kjosarsysla","Kopavogur","Myrasysla","Neskaupstadhur","Nordhur-Isafjardharsysla","Nordhur-Mulasys-la","Nordhur-Thingeyjarsysla","Olafsfjordhur","Rangarvallasysla","Saudharkrokur","Seydhisfjordhur","Siglufjordhur","Skagafjardharsysla","Snaefellsnes-og Hnappadalssysla","Strandasysla","Sudhur-Mulasysla","Sudhur-Thingeyjarsysla","Vesttmannaeyjar","Vestur-Bardhastrandarsysla","Vestur-Hunavatnssysla","Vestur-Isafjardharsysla","Vestur-Skaftafellssysla");


// City lists
var cities = new Array();


cities['India'] = new Array();

cities['India']['Jammu and Kashmir'] = new Array("<--select-->","Jammu", "Srinagar", "Anantnag", "Baramula", "Kupwara", "Badgam", "Rajouri", "Kathua", "Pulwama", "Udhampur", "Punch", "Kulgam", "Doda", "Bandipora", "Samba", "Reasi", "Ganderbal", "Ramban", "Shupiyan", "Kishtwar", "Kargil", "Leh");

cities['India']["Goa"] = new Array("<--select-->","North Goa","South Goa");

cities['India']["Dadra and Nagar Haveli"] = new Array("<--select-->", "Dadra and Nagar Haveli");

cities['India']["Daman and Diu"] = new Array("<--select-->",  "Daman" ,"Diu");

cities['India']['Haryana'] = new Array("<--select-->","Faridabad","Hisar","Bhiwani","Gurgaon","Karnal","Sonipat","Jind","Sirsa","Yamunanagar","Panipat","Ambala","Mewat","Kaithal","Rohtak","Palwal","Kurukshetra","Jhajjar","Fatehabad","Mahendragarh","Rewari","Panchkula");   

cities['India']["Lakshadweep"] = new Array("<--select-->", "Lakshadweep");

cities['India']["Andaman and Nicobar Islands"] = new Array("<--select-->","South Andaman","North And Middle Andaman","Nicobars");  

cities['India']["Andhra Pradesh"]= new Array("<--select-->","Adilabad","Adoni","Amravati","Anantapur","Cuddapah","Eluru","Guntur","Hyderabad","Karimnagar","Khammam","Kothagudem","Kurnool","Lepakshi","Nagarjuna Sagar","Nagarjunakonda","Nalgonda","Nellore","Nizamabad","Puttaparthi","Srikakulam", "Tirupati","Vijayawada","Visakhapatnam","Warangal");

cities['India']['Arunachal Pradesh']= new Array("<--select-->","Papumpare", "Changlang", "Lohit", "West Siang", "Tirap", "East Siang", "Kurung Kumey", "West Kameng", "Upper Subansiri", "Lower Subansiri", "East Kameng", "Lower Dibang Valley", "Tawang", "Upper Siang", "Anjaw", "Dibang Valley");

cities['India']['Assam']= new Array("<--select-->","Tinsukia", "Dibrugarh", "Sibsagar", "Dhemaji", "Jorhat", "Lakhimpur", "Golaghat", "Sonitpur", "Karbi Anglong", "Nagaon", "Marigaon", "Darrang", "Kamrup", "Nalbari", "Barpeta", "Bongaigaon", "Goalpara", "Kokrajhar", "Dhubri", "North Cachar Hills", "Cachar", "Hailakandi", "Karimganj", "Kamrup Metropolitan", "Baksa", "Udalguri", "Chirang");

cities['India']["Bihar"] = new Array("<--select-->","Patna","Purbi Champaran"," Muzaffarpur","Madhubani","Gaya Samastipur","Saran","Darbhanga","Pashchim Champaran ","Vaishali", "Sitamarhi", "Siwan","Purnia","Katihar","Bhagalpur","Begusarai","Rohtas","Nalanda","Araria","Bhojpur","Gopalganj","Aurangabad","Supaul", "Nawada","Banka","Madhepura","Saharsa","Jamui","Buxar","Kishanganj","Khagaria","Kaimur","Munger","Jehanabad","Lakhisarai","Arwal","Sheohar","Sheikhpura");

cities['India']["Chandigarh"] = new Array("<--select-->","Chandigarh");

cities['India']['Chhattisgarh']= new Array("<--select-->","Raipur", "Durg", "Bilaspur", "Surguja", "Janjgir Champa", "Rajnandgaon", "Raigarh", "Bastar", "Korba", "Mahasamund", "Jashpur", "Kabirdham", "Dhamtari", "Kanker", "Korea", "Dantewada", "Bijapur", "Narayanpur");

cities['India']['Delhi'] = new Array("<--select-->","North West Delhi","South Delhi","West Delhi","South West Delhi","North East Delhi","East Delhi","North Delhi","Central Delhi","New Delhi");

cities['India']['Gujarat'] = new Array("<--select-->","Ahmadabad", "Surat", "Vadodar", "Rajkot", "Banaskanth", "Bhavnagar", "Junagadh", "Sabarkantha", "PanchMahal", "Kheda", "Jamnagar", "Dohad", "Anand", "Kachchh", "Mahesana", "Surendranagar", "Valsad", "Bharuch", "Amreli", "Gandhinagar", "Patan", "Navsari", "Tapi", "Narmada", "Porbanda", "The Dang");

cities['India']['Himachal Pradesh'] = new Array("<--select-->","Kangra", "Mandi", "Shimla", "Solan", "Sirmaur", "Una", "Chamba", "Hamirpur", "Kullu", "Bilaspur", "Kinna", "Lahul and Spit");

cities['India']['Jharkhand'] = new Array("<--select-->","Ranchi", "Dhanbad", "Giridih", "Purbi Singhbhum", "Bokaro", "Palamu", "Hazaribagh", "Pashchimi Singhbhum", "Deoghar", "Garhwa", "Dumka", "Godda", "Sahibganj", "Saraikela Kharsawan", "Chatra", "Gumla", "Ramgarh", "Pakur", "Jamtara", "Latehar", "Kodarma", "Simdega", "Khunti", "Lohardag");

cities['India']['Karnataka'] = new Array("<--select-->","Bangalore", "Belgaum", "Mysore", "Tumkur", "Gulbarga", "Bellary", "Bijapur", "Dakshina Kannada", "Davanagere", "Raichur", "Bagalkot", "Dharwad", "Mandya", "Hassan", "Shimoga", "Bidar", "Chitradurga", "Haveri", "Kolar", "Uttara Kannada", "Koppal", "Chikkaballapura", "Udupi", "Yadgir", "Chikmagalur", "Ramanagara", "Gadag", "Chamarajanagar", "Bangalore Rural", "Kodagu");

cities['India']['Kerala'] = new Array("<--select-->","Malappuram", "Thiruvananthapuram", "Ernakulam", "Thrissur", "Kozhikode", "Palakkad", "Kollam", "Kannur", "Alappuzha", "Kottayam", "Kasaragod", "Pathanamthitta", "Idukki", "Wayana");

cities['India']['Madhya Pradesh'] = new Array("<--select-->","Indore", "Jabalpur", "Sagar", "Bhopal", "Rewa", "Satna", "Dhar", "Chhindwara", "Gwalior", "Ujjain", "Morena", "West Nimar", "Chhattarpur", "Shivpuri", "Bhind", "Balaghat", "Betul", "Dewas", "Rajgarh", "Shajapur", "Vidisha", "Ratlam", "Tikamgarh", "Barwani", "Seoni", "Mandsaur", "Raisen", "Sehore", "East Nimar", "Katni", "Damoh", "Guna", "Hoshangabad", "Singrauli", "Sidhi", "Narsimhapur", "Shahdol", "Mandla", "Jhabua", "Panna", "Ashoknagar", "Neemuch", "Datia", "Burhanpur", "Anuppur", "Alirajpur", "Dindori", "Sheopur", "Umaria", "Harda");

 cities['India']['Maharashtra'] = new Array("<--select-->","Thane", "Pune", "Mumbai Suburban", "Nashik", "Nagpur", "Ahmadnagar", "Solapur", "Jalgaon", "Kolhapur", "Aurangabad", "Nanded", "Mumbai City", "Satara", "Amravati", "Sangli", "Yavatmal", "Raigarh", "Buldana", "Bid", "Latur", "Chandrapur", "Dhule", "Jalna", "Parbhani", "Akola", "Osmanabad", "Nandurbar", "Ratnagiri", "Gondiya", "Wardha", "Bhandara", "Washim", "Hingoli", "Gadchiroli", "Sindhudur");

cities['India']['Manipur'] = new Array("<--select-->","Imphal West","Imphal East","Thoubal","Churachandpur","Bishnupur","Senapati","Ukhrul","Chandel","Tamenglong");  

cities['India']['Meghalaya'] = new Array("<--select-->","East Khasi Hills","West Garo Hills","Jaintia Hills","West Khasi Hills","East Garo Hills","Ri Bhoi","South Garo Hills" ); 

cities['India']['Mizoram']= new Array("<--select-->","Aizawl","Lunglei","Champhai","Lawngtlai","Mamit","Kolasib","Serchhip","Saiha" );  

cities['India']["Nagaland"] = new Array("<--select-->","Dimapur","Kohima","Mon","Tuensang","Mokokchung","Wokha","Phek","Zunheboto","Peren","Kiphire","Longleng");  

cities['India']["Orissa"] = new Array("<--select-->","Ganjam","Cuttack","Mayurbhanj","Baleshwar","Khordha","Sundargarh","Jajapur","Kendujhar","Puri","Balangir","Kalahandi","Bhadrak","Bargarh","Kendrapara","Koraput","Anugul","Nabarangapur","Dhenkanal","Jagatsinghapur","Sambalpur","Rayagada","Nayagarh","Kandhamal","Malkangiri","Nuapada","Subarnapur","Jharsuguda","Gajapati","Baudh","Debagarh" );

cities['India']['Pondicherry'] = new Array("<--select-->","Puducherry","Karaikal","Yanam","Mahe") 

cities['India']['Punjab'] = new Array("<--select-->","Ludhiana","Amritsar","Gurdaspur","Jalandhar","Firozpur","Patiala","Sangrur","Hoshiarpur","Bathinda","Tarn Taran","Moga","Mohali","Muktsar","Kapurthala","Mansa","Rupnagar","Faridkot","Shahid Bhagat Singh Nagar","Fatehgarh Sahib","Barnala");  

cities['India']['Rajasthan'] = new Array("<--select-->","Jaipur","Jodhpur","Alwar","Nagaur","Udaipur","Sikar","Barmer ","Ajmer ","Bharatpur","Bhilwara ","Bikaner","Jhunjhunun","Churu" ,"Pali","Ganganagar","Kota","Jalor","Banswara","Hanumangarh","Dausa","Chittaurgarh","Karauli","Tonk","Jhalawar" ,"Dungarpur","Sawai Madhopur","Baran","Dhaulpur","Rajsamand","Bundi","Sirohi","Pratapgarh","Jaisalmer" ); 

cities['India']['Sikkim'] = new Array("<--select-->","East Sikkim","South Sikkim","West Sikkim","North Sikkim"); 

cities["India"]["Tamil Nadu"] = new Array("<--select-->","Chennai","Kancheepuram" ,"Vellore","Thiruvallur","Salem","Viluppuram","Coimbatore","Tirunelveli","Madurai","Tiruchirappalli","Cuddalore","Tiruppur","Tiruvannamalai", "Thanjavur", "Erode","Dindigul","Virudhunagar","Krishnagiri","Kanniyakumari","Thoothukkudi","Namakkal","Pudukkottai","Nagapattinam","Dharmapuri","Ramanathapuram","Sivaganga","Thiruvarur","Theni","Karur","Ariyalur","The Nilgiris","Perambalur");

cities['India']['Tripura'] = new Array("<--select-->","West Tripura","South Tripura" ,"North Tripura","Dhalai"); 

cities["India"]["Uttaranchal"] = new Array("<--select-->","Haridwar","Dehradun","Udham Singh Nagar","Nainital","Pauri Garhwal","Almora","Tehri Garhwal","Pithoragarh","Chamoli","Uttarkashi","Bageshwar","Champawat","Rudraprayag");

cities["India"]["Uttar Pradesh"] = new Array("<--select-->","Bijnaur","Maharajganj","Gonda","Unnao", "Lalitpur","Kushinagar","Lakhimpur","Basti","Banda","Jalaun","Pilibheet","Muzaffarnagar","Allahabad","Mahoba","Jhansi","Chandauli","Saharanpur","Ajamgarh","Chitrakut","Bagpat","Jyotibapulanger","Mau","Hamirpur","Ambedkar","Shahjahanpur","Hardoi","Varanashi","Meerut","Kannauj","Kanpur","Kabir Nagar","Etawah","Etah","St. Rabidas Nagar","Kaushambi","Auraiya","Kanpur City","Muradabad","Balia","Mirzapur","Fatehpur","Rampur","Baharaich","Bulandshahar","Aligarh","Deoria","Sonbhadra","Jaunpur","Pratapgarh","Sultanpur","Sitapur","Mainpuri","Balrampur","Hathras","Gorakhpur","Ghazipur","Shraswati","Barieli","Badaun","Gautambuddh Nagar","Raibariely","Faizabad","Firozabad","Farrukabad","Siddharth Nagar","Agra","Lucknow","Barabanki","Mathura","Ghaziabad");  

cities['India']["West Bengal"] = new Array("<--select-->","Bankura","Bardhaman","Birbhum","East Midnapore","Hooghly","Purulia","West Midnapore","Cooch Behar","Darjeeling","Jalpaiguri","Malda","North Dinajpur","South Dinajpur","Howrah","Kolkata","Murshidabad","Nadia","North 24 Parganas","South 24 Parganas ");






cities['Canada'] = new Array();
cities['Canada']['Alberta']          = new Array('<--select-->','Edmonton','Calgary');
cities['Canada']['British Columbia'] = new Array('<--select-->','Victoria','Vancouver');
cities['Canada']['Ontario']          = new Array('<--select-->','Toronto','Hamilton');



cities['United States'] = new Array();
cities['United States']['California'] = new Array('<--select-->','Los Angeles','San Francisco');
cities['United States']['Florida']    = new Array('<--select-->','Miami','Orlando');
cities['United States']['New York']   = new Array('<--select-->','Buffalo','new York');


function setStates() {
  cntrySel = document.getElementById('country');
  stateList = states[cntrySel.value];
  changeSelect('state', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('country');
  stateSel = document.getElementById('state');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('city', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  setStates();
});