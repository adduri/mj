 
////////////////////////////////////////////////////////////////////////////
// city.js ///////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

var countries = Object();
//Africa
countries['Algeria'] = '|Algiers||Adrar|Ain Defla|Ain Temouchent|Alger|Annaba|Batna|Bechar|Bejaia|Biskra|Blida|Bordj Bou Arreridj|Bouira|Boumerdes|Chlef|Constantine|Djelfa|El Bayadh|El Oued|El Tarf|Ghardaia|Guelma|Illizi|Jijel|Khenchela|Laghouat|Mascara|Medea|Mila|Mostaganem|M\'Sila|Naama|Oran|Ouargla|Oum el Bouaghi|Relizane|Saida|Setif|Sidi Bel Abbes|Skikda|Souk Ahras|Tamanghasset|Tebessa|Tiaret|Tindouf|Tipaza|Tissemsilt|Tizi Ouzou|Tlemcen';
countries['Angola'] = '|Luanda||Bengo|Benguela|Bie|Cabinda|Cuando Cubango|Cuanza Norte|Cuanza Sul|Cunene|Huambo|Huila|Lunda Norte|Lunda Sul|Malanje|Moxico|Namibe|Uige|Zaire';
countries['Benin'] = '|Porto-Novo||Alibori|Atakora|Atlantique|Borgou|Collines|Couffo|Donga|Littoral|Mono|Oueme|Plateau|Zou';
countries['Botswana'] = '|Gaborone||Central|Chobe|Francistown|Ghanzi|Kgalagadi|Kgatleng|Kweneng|Lobatse|Ngamiland|North-East|Selebi-Pikwe|South-East|Southern';
countries['Burkina Faso'] = '|Ouagadougou||Bale|Bam|Banwa|Bazega|Bougouriba|Boulgou|Boulkiemde|Comoe|Ganzourgou|Gnagna|Gourma|Houet|Ioba|Kadiogo|Kenedougou|Komandjari|Kompienga|Kossi|Koupelogo|Kouritenga|Kourweogo|Leraba|Loroum|Mouhoun|Nahouri|Namentenga|Nayala|Naumbiel|Oubritenga|Oudalan|Passore|Poni|Samentenga|Sanguie|Seno|Sissili|Soum|Sourou|Tapoa|Tuy|Yagha|Yatenga|Ziro|Zondomo|Zoundweogo';
countries['Burundi'] = '|Bujumbura||Bubanza|Bujumbura|Bururi|Cankuzo|Cibitoke|Gitega|Karuzi|Kayanza|Kirundo|Makamba|Muramvya|Muyinga|Mwaro|Ngozi|Rutana|Ruyigi';
countries['Cameroon'] = '|Yaounde||Adamaoua|Centre|Est|Extreme-Nord|Littoral|Nord|Nord-Ouest|Ouest|Sud|Sud-Ouest';
countries['Cape Verde'] = '|Praia||Boa Vista|Brava|Calheta|Maio|Mosteiros|Paul|Porto Novo|Ribeira Grande|Sal|Santa Catarina|Santa Cruz|Sao Domingos|Sao Nicolau|Sao Filipe|Sao Vicente|Tarrafal';
countries['Central African Republic'] = '|Bangui||Bamingui-Bangoran|Basse-Kotto|Gribingui|Haute-Kotto|Haute-Sangha|Haut-Mbomou|Kemo-Gribingui|Lobaye|Mbomou|Nana-Mambere|Ombella-Mpoko|Ouaka|Ouham|Ouham-Pende|Sangha|Vakaga';
countries['Chad'] = '|N\'Djamena||Assongha|Baguirmi|Bahr El Gazal|Bahr Koh|Batha Oriental|Batha Occidental|Biltine|Borkou|Dababa|Ennedi|Guera|Hadjer Lamis|Kabia|Kanem|Lac|Lac Iro|Logone Occidental|Logone Oriental|Mandoul|Mayo-Boneye|Mayo-Dallah|Monts de Lam|Ouaddai|Salamat|Sila|Tandjile Oriental|Tandjile Occidental|Tibesti';
countries['Congo, Dem.'] = '|Kinshasa||Bandundu|Bas-Congo|Equateur|Kasai-Occidental|Kasai-Oriental|Katanga|Maniema|Nord-Kivu|Orientale|Sud-Kivu';
countries['Congo, Rep.'] = '|Brazzaville||Bouenza|Cuvette|Kouilou|Lekoumou|Likouala|Niari|Plateaux|Pool|Sangha';
countries['Djibouti'] = '|Djibouti||\'Ali Sabih|Dikhil|Obock|Tadjoura';
countries['Egypt'] = '|Cairo||Ad Daqahliyah|Al Bahr al Ahmar|Al Buhayrah|Al Fayyum|Al Gharbiyah|Al Iskandariyah|Al Isma\'iliyah|Al Jizah|Al Minufiyah|Al Minya|Al Qahirah|Al Qalyubiyah|Al Wadi al Jadid|Ash Sharqiyah|As Suways|Aswan|Asyut|Bani Suwayf|Bur Sa\'id|Dumyat|Janub Sina\'|Kafr ash Shaykh|Matruh|Qina|Shamal Sina\'|Suhaj';
countries['Equatorial Guinea'] = '|Malabo||Annobon|Bioko Norte|Bioko Sur|Centro Sur|Kie-Ntem|Litoral|Wele-Nzas';
countries['Eritrea'] = '|Asmara||Central|Anelba|Southern Red Sea|Northern Red Sea|Southern|Gash-Barka';
countries['Ethiopia'] = '|Addis Ababa||Adis Abeba (Addis Ababa)|Afar|Amara|Binshangul Gumuz|Dire Dawa|Gambela Hizboch|Hareri Hizb|Oromiya|Sumale (Somali)|Tigray|YeDebub Biheroch Bihereseboch...';
countries['Gabon'] = '|Libreville';
countries['Gambia'] = '|Estuaire|Haut-Ogooue|Moyen-Ogooue|Ngounie|Nyanga|Ogooue-Ivindo|Ogooue-Lolo|Ogooue-Maritime|Woleu-Ntem';
countries['Ghana'] = '|Accra||Ashanti|Brong-Ahafo|Central|Eastern|Northern|Upper East|Upper West|Volta|Western';
countries['Guinea'] = '|Conakry||Beyla|Boffa|Boke|Coyah|Dabola|Dalaba|Dinguiraye|Dubreka|Faranah|Forecariah|Fria|Gaoual|Gueckedou|Kankan|Kerouane|Kindia|Kissidougou|Koubia|Koundara|Kouroussa|Labe|Lelouma|Lola|Macenta|Mali|Mamou|Mandiana|Nzerekore|Pita|Siguiri|Telimele|Tougue|Yomou';
countries['Guinea-Bissau'] = '|Bissau||Bafata|Biombo|Bolama/Bijagos|Cacheu|Gabu|Oio|Quinara|Tombali';
countries['Kenya'] = '|Nairobi||Central|Coast|Eastern|Nairobi Area|North Eastern|Nyanza|Rift Valley|Western';
countries['Lesotho'] = '|Maseru||Berea|Butha-Buthe|Leribe|Mafeteng|Mohales Hoek|Mokhotlong|Qacha\'s Nek|Quthing|Thaba-Tseka';
countries['Liberia'] = '|Monrovia||Bomi|Bong|Gparbolu|Grand Bassa|Grand Cape Mount|Grand Gedeh|Grand Kru|Lofa|Margibi|Maryland|Montserrado|Nimba|River Cess|River Gee|Sinoe';
countries['Libya'] = '|Tripoli||Ajdabiya|Al \'Aziziyah|Al Fatih|Al Jabal al Akhdar|Al Jufrah|Al Khums|Al Kufrah|An Nuqat al Khams|Ash Shati\'|Awbari|Az Zawiyah|Banghazi|Darnah|Ghadamis|Gharyan|Misratah|Murzuq|Sabha|Sawfajjin|Surt|Tarabulus|Tarhunah|Tubruq|Yafran|Zlitan';
countries['Madagascar'] = '|Antananarivo||Antsiranana|Fianarantsoa|Mahajanga|Toamasina|Toliara';
countries['Malawi'] = '|Lilongwe||Balaka|Blantyre|Chikwawa|Chiradzulu|Chitipa|Dedza|Dowa|Karonga|Kasungu|Likoma|Machinga (Kasupe)|Mangochi|Mchinji|Mulanje|Mwanza|Mzimba|Ntcheu|Nkhata Bay|Nkhotakota|Nsanje|Ntchisi|Phalombe|Rumphi|Salima|Thyolo|Zomba';
countries['Mali'] = '|Bamako||Gao|Kayes|Kidal|Koulikoro|Mopti|Segou|Sikasso|Tombouctou';
countries['Mauritania'] = '|Nouakchott||Adrar|Assaba|Brakna|Dakhlet Nouadhibou|Gorgol|Guidimaka|Hodh Ech Chargui|Hodh El Gharbi|Inchiri|Tagant|Tiris Zemmour|Trarza';
countries['Mauritius'] = '|Port Louis||Agalega Islands|Black River|Cargados Carajos Shoals|Flacq|Grand Port|Moka|Pamplemousses|Plaines Wilhems|Riviere du Rempart|Rodrigues|Savanne';
countries['Morocco'] = '|Rabat||Ad Dakhla (Oued Eddahab)|Agadir|Al Hoceima|Azilal|Beni Mellal|Ben Slimane|Boujdour|Boulemane|Casablanca|Chaouen|El Jadida|El Kelaa des Sraghna|Er Rachidia|Essaouira|Es Smara|Fes|Figuig|Guelmim|Ifrane|Kenitra|Khemisset|Khenifra|Khouribga|Laayoune|Larache|Marrakech|Meknes|Nador|Ouarzazate|Oujda|Safi|Settat|Sidi Kacem|Tanger|Tan-Tan|Taounate|Taroudannt|Tata|Taza|Tetouan|Tiznit';
countries['Mozambique'] = '|Maputo||Cabo Delgado|Gaza|Inhambane|Manica|Maputo|Nampula|Niassa|Sofala|Tete|Zambezia';
countries['Namibia'] = '|Windhoek||Caprivi|Erongo|Hardap|Karas|Khomas|Kunene|Ohangwena|Okavango|Omaheke|Omusati|Oshana|Oshikoto|Otjozondjupa';
countries['Niger'] = '|Niamey||Agadez|Diffa|Dosso|Maradi|Tahoua|Tillaberi|Zinder';
countries['Nigeria'] = '|Abuja||Abia|Adamawa|Akwa Ibom|Anambra|Bauchi|Bayelsa|Benue|Borno|Cross River|Delta|Ebonyi|Edo|Ekiti|Enugu|Gombe|Imo|Jigawa|Kaduna|Kano|Katsina|Kebbi|Kogi|Kwara|Lagos|Nassarawa|Niger|Ogun|Ondo|Osun|Oyo|Plateau|Rivers|Sokoto|Taraba|Yobe|Zamfara';
countries['Rwanda'] = '|Kigali||Butare|Byumba|Cyangugu|Gikongoro|Gisenyi|Gitarama|Kibungo|Kibuye|Ruhengeri|Umutara';
countries['Sao Tome/Principe'] = '|Sao Tome||Principe';
countries['Senegal'] = '|Dakar||Diourbel|Fatick|Kaolack|Kolda|Louga|Matam|Saint-Louis|Tambacounda|Thies|Ziguinchor';
countries['Seychelles'] = '|Victoria||Anse aux Pins|Anse Boileau|Anse Etoile|Anse Louis|Anse Royale|Baie Lazare|Baie Sainte Anne|Beau Vallon|Bel Air|Bel Ombre|Cascade|Glacis|Grand\' Anse (on Mahe)|Grand\' Anse (on Praslin)|La Digue|La Riviere Anglaise|Mont Buxton|Mont Fleuri|Plaisance|Pointe La Rue|Port Glaud|Saint Louis|Takamaka';
countries['Sierra Leone'] = '|Freetown||Eastern|Northern|Southern|Western';
countries['Somalia'] = '|Mogadishu||Awdal|Bakool|Banaadir|Bari|Bay|Galguduud|Gedo|Hiiraan|Jubbada Dhexe|Jubbada Hoose|Mudug|Nugaal|Sanaag|Shabeellaha Dhexe|Shabeellaha Hoose|Sool|Togdheer|Woqooyi Galbeed';
countries['South Africa'] = '|Pretoria||Eastern Cape|Free State|Gauteng|KwaZulu-Natal|Mpumalanga|North-West|Northern Cape|Northern Province/Limpopo|Western Cape';
countries['Sudan'] = '|Khartoum||A\'ali an Nil|Al Bahr al Ahmar|Al Buhayrat|Al Jazirah|Al Khartum|Al Qadarif|Al Wahdah|An Nil al Abyad|An Nil al Azraq|Ash Shamaliyah|Bahr al Jabal|Gharb al Istiwa\'iyah|Gharb Bahr al Ghazal|Gharb Darfur|Gharb Kurdufan|Janub Darfur|Janub Kurdufan|Junqali|Kassala|Nahr an Nil|Shamal Bahr al Ghazal|Shamal Darfur|Shamal Kurdufan|Sharq al Istiwa\'iyah|Sinnar|Warab';
countries['Swaziland'] = '|Lobamba/Mbabane||Hhohho|Lubombo|Manzini|Shiselweni';
countries['Tanzania'] = '|Dodoma||Arusha|Dar es Salaam|Iringa|Kagera|Kigoma|Kilimanjaro|Lindi|Mara|Mbeya|Morogoro|Mtwara|Mwanza|Pemba North|Pemba South|Pwani|Rukwa|Ruvuma|Shinyanga|Singida|Tabora|Tanga|Zanzibar Central/South|Zanzibar North|Zanzibar Urban/West';
countries['Togo'] = '|Lome||De La Kara|Des Plateaux|Des Savanes|Centrale|Maritime';
countries['Tunisia'] = '|Tunis||Ariana|Beja|Ben Arous|Bizerte|El Kef|Gabes|Gafsa|Jendouba|Kairouan|Kasserine|Kebili|Mahdia|Medenine|Monastir|Nabeul|Sfax|Sidi Bou Zid|Siliana|Sousse|Tataouine|Tozeur|Zaghouan';
countries['Uganda'] = '|Kampala||Adjumani|Apac|Arua|Bugiri|Bundibugyo|Bushenyi|Busia|Gulu|Hoima|Iganga|Jinja|Kabale|Kabarole|Kaberamaido|Kalangala|Kamuli|Kamwenge|Kanungu|Kapchorwa|Kasese|Katakwi|Kayunga|Kibale|Kiboga|Kisoro|Kitgum|Kotido|Kumi|Kyenjojo|Lira|Luwero|Masaka|Masindi|Mayngc|Mbale|Mbarara|Moroto|Moyo|Mpigi|Mubende|Mukono|Nakapiripiti|Nakasongola|Nebbi|Ntungamo|Pader|Pallisa|Rakai|Rukungiri|Sembabule|Sironko|Soroti|Tororo|Wakiso|Yumbe';
countries['Zambia'] = '|Lusaka||Central|Copperbelt|Eastern|Luapula|Lusaka|Northern|North-Western|Southern|Western';
countries['Zimbabwe'] = '|Harare||Bulawayo|Manicaland|Mashonaland Central|Mashonaland East|Mashonaland West|Masvingo|Matabeleland North|Matabeleland South|Midlands';


//Asia
countries['Bangladesh'] = '|Dhaka||Barisal|Chittagong|Khulna|Rajshahi|Sylhet';
countries['Bhutan'] = '|Thimphu||Bumthang|Chhukha|Chirang|Dagana|Gasa|Geylegphug|Ha|Lhuntshi|Mongar|Paro|Pemagatsel|Punakha|Samchi|Samdrup Jongkhar|Shemgang|Tashigang|Tongsa|Wangdi Phodrang|Yangtse';
countries['Brunei'] = '|Bandar Seri Begawan||Belait|Brunei/Muara|Temburong|Tutong';
countries['Burma (Myanmar)'] = '|Rangoon||Ayeyarwady|Bago|Chin|Kachin|Kayin|Kayah|Magway|Mandalay|Mon|Rakhine|Sagaing|Shan|Tanintharyi|Yangon';
countries['Cambodia'] = '|Phnom Penh||Banteay Mean Cheay|Batdambang|Kampong Cham|Kampong Chhnang|Kampong Spoe|Kampong Thum|Kampot|Kandal|Kaoh Kong|Keb|Kracheh|Mondol Kiri|Otdar Mean Cheay|Pailin|Pouthisat|Preah Seihanu (Sihanoukville)|Preah Vihear|Prey Veng|Rotanah Kiri|Siem Reab|Stoeng Treng|Svay Rieng|Takev';
countries['China'] = '|Beijing||Anhui|Chongqing|Fujian|Gansu|Guangdong|Guangxi|Guizhou|Hainan|Hebei|Heilongjiang|Henan|Hubei|Hunan|Jiangsu|Jiangxi|Jilin|Liaoning|Nei Mongol|Ningxia|Qinghai|Shaanxi|Shandong|Shanghai|Shanxi|Sichuan|Tianjin|Xinjiang|Xizang (Tibet)|Yunnan|Zhejiang';
countries['East Timor'] = '|Dili||Aileu|Ainaro|Baucau|Bobonaro (Maliana)|Cova-Lima (Suai)|Ermera|Lautem (Los Palos)|Liquica|Manatuto|Manufahi (Same)|Oecussi (Ambeno)|Viqueque';
countries['India'] = '|New Delhi||Andaman/Nicobar Islands|Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chandigarh|Chhattisgarh|Dadra/Nagar Haveli|Daman/Diu|Goa|Gujarat|Haryana|Himachal Pradesh|Jammu/Kashmir|Jharkhand|Karnataka|Kerala|Lakshadweep|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Orissa|Pondicherry|Punjab|Rajasthan|Sikkim|Tamil Nadu|Tripura|Uttaranchal|Uttar Pradesh|West Bengal';
countries['Indonesia'] = '|Jakarta||Aceh|Bali|Banten|Bengkulu|Gorontalo|Jakarta Raya|Jambi|Jawa Barat|Jawa Tengah|Jawa Timur|Kalimantan Barat|Kalimantan Selatan|Kalimantan Tengah|Kalimantan Timur|Kepulauan Bangka Belitung|Lampung|Maluku|Maluku Utara|Nusa Tenggara Barat|Nusa Tenggara Timur|Papua|Riau|Sulawesi Selatan|Sulawesi Tengah|Sulawesi Tenggara|Sulawesi Utara|Sumatera Barat|Sumatera Selatan|Sumatera Utara|Yogyakarta';
countries['Japan'] = '|Tokyo||Aichi|Akita|Aomori|Chiba|Ehime|Fukui|Fukuoka|Fukushima|Gifu|Gumma|Hiroshima|Hokkaido|Hyogo|Ibaraki|Ishikawa|Iwate|Kagawa|Kagoshima|Kanagawa|Kochi|Kumamoto|Kyoto|Mie|Miyagi|Miyazaki|Nagano|Nagasaki|Nara|Niigata|Oita|Okayama|Okinawa|Osaka|Saga|Saitama|Shiga|Shimane|Shizuoka|Tochigi|Tokushima|Tokyo|Tottori|Toyama|Wakayama|Yamagata|Yamaguchi|Yamanashi';
countries['Kazakhstan'] = '|Astana||Almaty|Almaty|Aqmola|Aqtobe|Astana|Atyrau|Batys Qazaqstan|Bayqongyr|Mangghystau|Ongtustik Qazaqstan|Pavlodar|Qaraghandy|Qostanay|Qyzylorda|Shyghys Qazaqstan|Soltustik Qazaqstan|Zhambyl';
countries['Korea (north)'] = '|P\'yongyang||Chagang-do|Hamgyong-bukto|Hamgyong-namdo|Hwanghae-bukto|Hwanghae-namdo|Kaesong-si|Kangwon-do|Najin Sonbong-si|Namp\'o-si|P\'yongan-bukto|P\'yongan-namdo|P\'yongyang-si|Yanggang-do';
countries['Korea (south)'] = '|Seoul||Cheju-do|Cholla-bukto|Cholla-namdo|Ch\'ungch\'ong-bukto|Ch\'ungch\'ong-namdo|Inch\'on-gwangyoksi|Kangwon-do|Kwangju-gwangyoksi|Kyonggi-do|Kyongsang-bukto|Kyongsang-namdo|Pusan-gwangyoksi|Soul-t\'ukpyolsi|Taegu-gwangyoksi|Taejon-gwangyoksi|Ulsan-gwangyoksi';
countries['Laos'] = '|Vientiane||Attapu|Bokeo|Bolikhamxai|Champasak|Houaphan|Khammouan|Louangnamtha|Louangphabang|Oudomxai|Phongsali|Salavan|Savannakhet|Viangchan|Viangchan|Xaignabouli|Xaisomboun|Xekong|Xiangkhoang';
countries['Malaysia'] = '|Kuala Lumpur||Johor|Kedah|Kelantan|Labuan|Melaka|Negeri Sembilan|Pahang|Perak|Perlis|Pulau Pinang|Putrajaya|Sabah|Sarawak|Selangor|Terengganu|Wilayah Persekutuan';
countries['Maldives'] = '|Maale||Alifu|Baa|Dhaalu|Faafu|Gaafu Alifu|Gaafu Dhaalu|Gnaviyani|Haa Alifu|Haa Dhaalu|Kaafu|Laamu|Lhaviyani|Meemu|Noonu|Raa|Seenu|Shaviyani|Thaa|Vaavu';
countries['Mongolia'] = '|Ulaanbaatar||Arhangay|Bayanhongor|Bayan-Olgiy|Bulgan|Darhan Uul|Dornod|Dornogovi|Dundgovi|Dzavhan|Govi-Altay|Govi-Sumber|Hentiy|Hovd|Hovsgol|Omnogovi|Orhon|Ovorhangay|Selenge|Suhbaatar|Tov|Uvs';
countries['Nepal'] = '|Kathmandu||Bagmati|Bheri|Dhawalagiri|Gandaki|Janakpur|Karnali|Kosi|Lumbini|Mahakali|Mechi|Narayani|Rapti|Sagarmatha|Seti';
countries['Philippines'] = '|Manila||Oriental|North Cotabato|Northern Samar|Nueva Ecija|Nueva Vizcaya|Olongapo|Ormoc|Oroquieta|Ozamis|Pagadian|Palawan|Palayan|Pampanga|Pangasinan|Pasay|Puerto Princesa|Quezon|Quezon City|Quirino|Rizal|Romblon|Roxas|Samar|San Carlos (Negros Occidental)|San Carlos (Pangasinan)|San Jose|San Pablo|Silay|Siquijor|Sorsogon|South Cotabato|Southern Leyte|Sultan Kudarat|Sulu|Surigao|Surigao del Norte|Surigao del Sur|Tacloban|Tagaytay|Tagbilaran|Tangub|Tarlac|Tawi-Tawi|Toledo|Trece Martires|Zambales|Zamboanga|Zamboanga del Norte|Zamboanga del Sur';
countries['Russian Federation'] = '|Moskva (Moscow)||Adygeya (Maykop)|Aginskiy Buryatskiy (Aginskoye)|Altay (Gorno-Altaysk)|Altayskiy (Barnaul)|Amurskaya (Blagoveshchensk)|Arkhangel\'skaya|Astrakhanskaya|Bashkortostan (Ufa)|Belgorodskaya|Bryanskaya|Buryatiya (Ulan-Ude)|Chechnya (Groznyy)|Chelyabinskaya|Chitinskaya|Chukotskiy (Anadyr\')|Chuvashiya (Cheboksary)|Dagestan (Makhachkala)|Evenkiyskiy (Tura)|Ingushetiya (Nazran\')|Irkutskaya|Ivanovskaya|Kabardino-Balkariya (Nal\'chik)|Kaliningradskaya|Kalmykiya (Elista)|Kaluzhskaya|Kamchatskaya (Petropavlovsk-Kamchatskiy)|Karachayevo-Cherkesiya (Cherkessk)|Kareliya (Petrozavodsk)|Kemerovskaya|Khabarovskiy|Khakasiya (Abakan)|Khanty-Mansiyskiy (Khanty-Mansiysk)|Kirovskaya|Komi (Syktyvkar)|Koryakskiy (Palana)|Kostromskaya|Krasnodarskiy|Krasnoyarskiy|Kurganskaya|Kurskaya|Leningradskaya|Lipetskaya|Magadanskaya|Mariy-El (Yoshkar-Ola)|Mordoviya (Saransk)|Moskovskaya|Murmanskaya|Nenetskiy (Nar\'yan-Mar)|Nizhegorodskaya|Novgorodskaya|Novosibirskaya|Omskaya|Orenburgskaya|Orlovskaya (Orel)|Penzenskaya|Permskaya|Komi-Permyatskiy (Kudymkar)|Primorskiy (Vladivostok)|Pskovskaya|Rostovskaya|Ryazanskaya|Sakha (Yakutiya)|Sakhalinskaya (Yuzhno-Sakhalinsk)|Samarskaya|Sankt-Peterburg (Saint Petersburg)|Saratovskaya|Severnaya Osetiya-Alaniya [North Ossetia] (Vladikavkaz)|Smolenskaya|Stavropol\'skiy|Sverdlovskaya (Yekaterinburg)|Tambovskaya|Tatarstan (Kazan\')|Taymyrskiy (Dudinka)|Tomskaya|Tul\'skaya|Tverskaya|Tyumenskaya|Tyva (Kyzyl)|Udmurtiya (Izhevsk)|Ul\'yanovskaya|Ust\'-Ordynskiy Buryatskiy (Ust\'-Ordynskiy)|Vladimirskaya|Volgogradskaya|Vologodskaya|Voronezhskaya|Yamalo-Nenetskiy (Salekhard)|Yaroslavskaya|Yevreyskaya';
countries['Singapore'] = '';
countries['Sri Lanka'] = '|Colombo||Central|North Central|Northern|Eastern|North Western|Sabaragamuwa|Southern|Uva|Western';
countries['Taiwan'] = '|Taipei||Chang-hua|Chia-i|Chi-lung|Chung-hsing-hsin-ts\'un|Hsin-chu|Hua-lien|I-lan|Kao-hsiung|Miao-li|Nan-t\'ou|P\'eng-hu|P\'ing-tung|T\'ai-chung|T\'ai-nan|T\'ai-pei|T\'ai-tung|T\'ao-yuan/Yun-lin';
countries['Thailand'] = '|Bangkok||Amnat Charoen|Ang Thong|Buriram|Chachoengsao|Chai Nat|Chaiyaphum|Chanthaburi|Chiang Mai|Chiang Rai|Chon Buri|Chumphon|Kalasin|Kamphaeng Phet|Kanchanaburi|Khon Kaen|Krabi|Lampang|Lamphun|Loei|Lop Buri|Mae Hong Son|Maha Sarakham|Mukdahan|Nakhon Nayok|Nakhon Pathom|Nakhon Phanom|Nakhon Ratchasima|Nakhon Sawan|Nakhon Si Thammarat|Nan|Narathiwat|Nong Bua Lamphu|Nong Khai|Nonthaburi|Pathum Thani|Pattani|Phangnga|Phatthalung|Phayao|Phetchabun|Phetchaburi|Phichit|Phitsanulok|Phra Nakhon Si Ayutthaya|Phrae|Phuket|Prachin Buri|Prachuap Khiri Khan|Ranong|Ratchaburi|Rayong|Roi Et|Sa Kaeo|Sakon Nakhon|Samut Prakan|Samut Sakhon|Samut Songkhram|Sara Buri|Satun|Sing';
countries['Vietnam'] = '|Hanoi||An Giang|Bac Giang|Bac Kan|Bac Lieu|Bac Ninh|Ba Ria-Vung Tau|Ben Tre|Binh Dinh|Binh Duong|Binh Phuoc|Binh Thuan|Ca Mau|Can Tho|Cao Bang|Dac Lak|Da Nang|Dong Nai|Dong Thap|Gia Lai|Ha Giang|Hai Duong|Hai Phong|Ha Nam|Ha Noi|Ha Tay|Ha Tinh|Hoa Binh|Ho Chi Minh|Hung Yen|Khanh Hoa|Kien Giang|Kon Tum|Lai Chau|Lam Dong|Lang Son|Lao Cai|Long An|Nam Dinh|Nghe An|Ninh Binh|Ninh Thuan|Phu Tho|Phu Yen|Quang Binh|Quang Nam|Quang Ngai|Quang Ninh|Quang Tri|Soc Trang|Son La|Tay Ninh|Thai Binh|Thai Nguyen|Thanh Hoa|Thua Thien-Hue|Tien Giang|Tra Vinh|Tuyen Quang|Vinh Long|Vinh Phuc|Yen Bai';


//Australia-Oceania
countries['Australia'] = '|Canberra||Australian Capital Territory|New South Wales|Northern Territory|Queensland|South Australia|Tasmania|Victoria|Western Australia';
countries['Fiji'] = '|Suva||Central|Eastern|Northern|Rotuma|Western';
countries['Kiribati'] = '|Tarawa||Abaiang|Abemama|Aranuka|Arorae|Banaba|Beru|Butaritari|Gilberts (Central)|Gilberts (Northern)|Gilberts (Southern)|Kanton|Kiritimati|Kuria|Line Islands|Maiana|Makin|Marakei|Nikunau|Nonouti|Onotoa|Phoenix Islands|Tabiteuea|Tabuaeran|Tamana|Teraina';
countries['Micronesia'] = '|Palikir||Chuuk (Truk)|Kosrae|Pohnpei|Yap';
countries['Nauru'] = '|Yaren||Aiwo|Anabar|Anetan|Anibare|Baiti|Boe|Buada|Denigomodu|Ewa|Ijuw|Meneng|Nibok|Uaboe';
countries['New Zealand'] = '|Wellington||Akaroa|Amuri|Ashburton|Auckland|Banks Peninsula|Bay of Islands|Bay of Plenty|Bruce|Buller|Canterbury|Carterton|Chatham Islands|Cheviot|Christchurch|Clifton|Clutha|Cook|Dannevirke|Dunedin|Egmont|Eketahuna|Ellesmere|Eltham|Eyre|Far North|Featherston|Franklin|Gisborne|Golden Bay|Gore|Great Barrier Island|Grey|Hamilton|Hastings|Hauraki Plains|Hawera|Hawke\'s Bay|Heathcote|Hikurangi|Hobson|Hokianga|Horowhenua|Hurunui|Hutt|Inangahua|Inglewood|Invercargill|Kaikoura|Kaipara|Kairanga|Kapiti Coast|Kawerau|Kiwitea|Lake|Mackenzie|Malvern|Manaia|Manawatu|Mangonui|Maniototo|Manukau|Marlborough|Masterton|Matamata|Matamata Piako|Mount Herbert|Napier|Nelson|Nelson|New Plymouth|Northland|North Shore|Ohinemuri|Opotiki|Oroua|Otago|Otamatea|Otorohanga|Oxford|Palmerston North|Pahiatua|Papakura|Paparua|Patea|Piako|Pohangina|Porirua|Queenstown Lakes|Raglan|Rangiora|Rangitikei|Rodney|Rotorua|Ruapehu|Runanga|Saint Kilda|Selwyn|Silverpeaks|Southland|South Taranaki|South Waikato|South Wairarapa|Stewart Island|Stratford|Strathallan|Taranaki|Tararua|Tasman|Taumarunui|Taupo|Tauranga|Thames Coromandel|Timaru|Tuapeka|Upper Hutt|Vincent|Waiapu|Waiheke|Waihemo|Waikato|Waikohu|Waimairi|Waimarino|Waimate|Waimate West|Waimea|Waipa|Waipawa|Waipukurau|Wairarapa South|Wairewa|Wairoa|Waitakere|Waitaki|Waitomo|Waitotara|Wallace|Wanganui|Wanganui-Manawatu|Waverley|West Coast|Western Bay of Plenty|Westland|Whakatane|Whangarei|Whangaroa|Woodville';
countries['Palau'] = '|Koror||Aimeliik|Airai|Angaur|Hatobohei|Kayangel|Melekeok|Ngaraard|Ngarchelong|Ngardmau|Ngatpang|Ngchesar|Ngeremlengui|Ngiwal|Peleliu|Sonsoral';
countries['Papua New Guinea'] = '|Port Moresby||Bougainville|Central|Chimbu|Eastern Highlands|East New Britain|East Sepik|Enga|Gulf|Madang|Manus|Milne Bay|Morobe|National Capital|New Ireland|Northern|Sandaun|Southern Highlands|Western|Western Highlands|West New Britain';
countries['Samoa'] = '|Apia||A\'ana|Aiga-i-le-Tai|Atua|Fa\'asaleleaga|Gaga\'emauga|Gagaifomauga|Palauli|Satupa\'itea|Tuamasaga|Va\'a-o-Fonoti|Vaisigano';
countries['Tonga'] = '|Nuku\'alofa||Ha\'apai|Tongatapu|Vava\'u';
countries['Tuvalu'] = '|Fongafale';
countries['Vanuatu'] = '|Port-Vila||Malampa|Penama|Sanma|Shefa|Tafea|Torba';


//Caribbean
countries['Anguilla'] = '|The Valley';
countries['Antigua/Barbuda'] = '|Saint John||Barbuda|Redonda|Saint George|Saint Mary|Saint Paul|Saint Peter|Saint Philip';
countries['Aruba'] = '|Oranjestad';
countries['Bahamas'] = '|Nassau||Acklins/Crooked Islands|Bimini|Cat Island|Exuma|Freeport|Fresh Creek|Governor\'s Harbour|Green Turtle Cay|Harbour Island|High Rock|Inagua|Kemps Bay|Long Island|Marsh Harbour|Mayaguana|New Providence|Nichollstown/Berry Islands|Ragged Island|Rock Sound|Sandy Point|San Salvador/Rum Cay';
countries['Barbados'] = '|Bridgetown||Christ Church|Saint Andrew|Saint George|Saint James|Saint John|Saint Joseph|Saint Lucy|Saint Michael|Saint Peter|Saint Philip|Saint Thomas';
countries['Cuba'] = '|Havana||Camaguey|Ciego de Avila|Cienfuegos|Ciudad de La Habana|Granma|Guantanamo|Holguin|Isla de la Juventud|La Habana|Las Tunas|Matanzas|Pinar del Rio|Sancti Spiritus|Santiago de Cuba|Villa Clara';
countries['Dominica'] = '|Roseau||Saint Andrew|Saint David|Saint George|Saint John|Saint Joseph|Saint Luke|Saint Mark|Saint Patrick|Saint Paul|Saint Peter';
countries['Dominican Republic'] = '|Santo Domingo||Azua|Baoruco|Barahona|Dajabon|Distrito Nacional|Duarte|Elias Pina|El Seibo|Espaillat|Hato Mayor|Independencia|La Altagracia|La Romana|La Vega|Maria Trinidad Sanchez|Monsenor Nouel|Monte Cristi|Monte Plata|Pedernales|Peravia|Puerto Plata|Salcedo|Samana|Sanchez Ramirez|San Cristobal|San Juan|San Pedro de Macoris|Santiago|Santiago Rodriguez|Valverde';
countries['Grenada'] = '|Saint George\'s||Carriacou/Petit Martinique|Saint Andrew|Saint David|Saint John|Saint Mark|Saint Patrick';
countries['Guadeloupe'] = '|Basse-Terre';
countries['Haiti'] = '|Port-au-Prince||Artibonite|Centre|Grand \'Anse|Nord|Nord-Est|Nord-Ouest|Ouest|Sud|Sud-Est';
countries['Jamaica'] = '|Kingston||Clarendon|Hanover|Manchester|Portland|Saint Andrew|Saint Ann|Saint Catherine|Saint Elizabeth|Saint James|Saint Mary|Saint Thomas|Trelawny|Westmoreland';
countries['Martinique'] = '|Fort-de-France';
countries['Montserrat'] = '|Brades Estate|Plymouth||Saint Anthony|Saint Georges|Saint Peter';
countries['Netherlands Antilles'] = '|Willemstad';
countries['Puerto Rico'] = '|San Juan||Adjuntas|Aguada|Aguadilla|Aguas Buenas|Aibonito|Anasco|Arecibo|Arroyo|Barceloneta|Barranquitas|Bayamon|Cabo Rojo|Caguas|Camuy|Canovanas|Carolina|Catano|Cayey|Ceiba|Ciales|Cidra|Coamo|Comerio|Corozal|Culebra|Dorado|Fajardo|Florida|Guanica|Guayama|Guayanilla|Guaynabo|Gurabo|Hatillo|Hormigueros|Humacao|Isabela|Jayuya|Juana Diaz|Juncos|Lajas|Lares|Las Marias|Las Piedras|Loiza|Luquillo|Manati|Maricao|Maunabo|Mayaguez|Moca|Morovis|Naguabo|Naranjito|Orocovis|Patillas|Penuelas|Ponce|Quebradillas|Rincon|Rio Grande|Sabana Grande|Salinas|San German|San Lorenzo|San Sebastian|Santa Isabel|Toa Alta|Toa Baja|Trujillo Alto|Utuado|Vega Alta|Vega Baja|Vieques|Villalba|Yabucoa|Yauco';
countries['St. Barts'] = '';
countries['St. Kitts/Nevis'] = '|Basseterre||Christ Church Nichola Town|St. Anne Sandy Point|St. George Basseterre|St. George Gingerland|St. James Windward|St. John Capesterre|St. John Figtree|St. Mary Cayon|St. Paul Capesterre|St. Paul Charlestown|St. Peter Basseterre|St. Thomas Lowland|St. Thomas Middle Island|Trinity Palmetto Point';
countries['St. Lucia'] = '|Castries||Anse-la-Raye|Castries|Choiseul|Dauphin|Dennery|Gros-Islet|Laborie|Micoud|Praslin|Soufriere|Vieux-Fort';
countries['St. Martin/Sint Maarten'] = '';
countries['St Vincent/Grenadines'] = '|Kingstown||Charlotte|Grenadines|Saint Andrew|Saint David|Saint George|Saint Patrick';
countries['San Andres'] = '';
countries['Trinidad/Tobago'] = '|Port-of-Spain||Arima|Caroni|Mayaro|Nariva|Saint Andrew|Saint David|Saint George|Saint Patrick|San Fernando|Tobago|Victoria';
countries['Turks/Caicos'] = '|Grand Turk (Cockburn Town)';


//Central America
countries['Belize'] = '|Belmopan||Belize|Cayo|Corozal|Orange Walk|Stann Creek|Toledo';
countries['Costa Rica'] = '|San Jose||Alajuela|Cartago|Guanacaste|Heredia|Limon|Puntarenas';
countries['El Salvador'] = '|San Salvador||Ahuachapan|Cabanas|Chalatenango|Cuscatlan|La Libertad|La Paz|La Union|Morazan|San Miguel|Santa Ana|San Vicente|Sonsonate|Usulutan';
countries['Guatemala'] = '|Guatemala||Alta Verapaz|Baja Verapaz|Chimaltenango|Chiquimula|El Progreso|Escuintla|Guatemala|Huehuetenango|Izabal|Jalapa|Jutiapa|Peten|Quetzaltenango|Quiche|Retalhuleu|Sacatepequez|San Marcos|Santa Rosa|Solola|Suchitepequez|Totonicapan|Zacapa';
countries['Honduras'] = '|Tegucigalpa||Atlantida|Choluteca|Colon|Comayagua|Copan|Cortes|El Paraiso|Francisco Morazan|Gracias a Dios|Intibuca|Islas de la Bahia|La Paz|Lempira|Ocotepeque|Olancho|Santa Barbara|Valle|Yoro';
countries['Nicaragua'] = '|Managua||Boaco|Carazo|Chinandega|Chontales|Esteli|Granada|Jinotega|Leon|Madriz|Managua|Masaya|Matagalpa|Nueva Segovia|Rio San Juan|Rivas|Atlantico Norte|Atlantico Sur';
countries['Panama'] = '|Panama||Bocas del Toro|Chiriqui|Cocle|Colon|Darien|Herrera|Los Santos|San Blas|Veraguas';


//Europe
countries['Albania'] = '|Tirana||Berat|Bulqize|Delvine|Devoll|Diber|Durres|Elbasan|Fier|Gjirokaster|Gramsh|Has|Kavaje|Kolonje|Korce|Kruje|Kucove|Kukes|Kurbin|Lezhe|Librazhd|Lushnje|Malesi e Madhe|Mallakaster|Mat|Mirdite|Peqin|Permet|Pogradec|Puke|Sarande|Shkoder|Skrapar|Tepelene|Tirane|Tropoje|Vlore';
countries['Andorra'] = '|Andorra la Vella||Canillo|Encamp|La Massana|Escaldes-Engordany|Ordino|Sant Julia de Loria';
countries['Austria'] = '|Vienna||Burgenland|Kaernten|Niederoesterreich|Oberoesterreich|Salzburg|Steiermark|Tirol|Vorarlberg|Wien';
countries['Belarus'] = '|Minsk||Brest|Homyel\'|Horad Minsk||Hrodna|Mahilyow|Vitsyebsk';
countries['Belgium'] = '|Brussels||Antwerpen|Brabant Wallon|Brussels (Bruxelles)|Hainaut|Liege|Limburg|Luxembourg|Namur|Oost-Vlaanderen|Vlaams-Brabant|West-Vlaanderen';
countries['Bosnia/Herzegovina'] = '|Sarajevo';
countries['Bulgaria'] = '|Sofiya||Blagoevgrad|Burgas|Dobrich|Gabrovo|Khaskovo|Kurdzhali|Kyustendil|Lovech|Montana|Pazardzhik|Pernik|Pleven|Plovdiv|Razgrad|Ruse|Shumen|Silistra|Sliven|Smolyan|Sofiya-Grad|Stara Zagora|Turgovishte|Varna|Veliko Turnovo|Vidin|Vratsa|Yambol';
countries['Croatia'] = '|Zagreb||Bjelovarsko-Bilogorska|Brodsko-Posavska|Dubrovacko-Neretvanska|Istarska|Karlovacka|Koprivnicko-Krizevacka|Krapinsko-Zagorska|Licko-Senjska|Medimurska|Osjecko-Baranjska|Pozesko-Slavonska|Primorsko-Goranska|Sibensko-Kninska|Sisacko-Moslavacka|Splitsko-Dalmatinska|Varazdinska|Viroviticko-Podravska|Vukovarsko-Srijemska|Zadarska|Zagrebacka';
countries['Czech Republic'] = '|Prague (Praha)||Jihocesky|Jihomoravsky|Karlovarsky|Kralovehradecky|Liberecky|Moravskoslezsky|Olomoucky|Pardubicky|Plzensky|Stredocesky|Ustecky|Vysocina|Zlinsky';
countries['Denmark'] = '|Copenhagen (Kobenhavn)||Arhus|Bornholm|Fredericksberg|Frederiksborg|Fyn|Kobenhavns|Nordjylland|Ribe|Ringkobing|Roskilde|Sonderjylland|Storstrom|Vejle|Vestsjalland|Viborg';
countries['Estonia'] = '|Harjumaa (Tallinn)||Hiiumaa (Kardla)|Ida-Virumaa (Johvi)|Jarvamaa (Paide)|Jogevamaa (Jogeva)|Laanemaa (Haapsalu)|Laane-Virumaa (Rakvere)|Parnumaa (Parnu)|Polvamaa (Polva)|Raplamaa (Rapla)|Saaremaa (Kuressaare)|Tartumaa (Tartu)|Valgamaa (Valga)|Viljandimaa (Viljandi)|Vorumaa (Voru)';
countries['Finland'] = '|Helsinki||Aland|Etela-Suomen Laani|Ita-Suomen Laani|Lansi-Suomen Laani|Lappi|Oulun Laani';
countries['France'] = '|Paris||Alsace|Aquitaine|Auvergne|Basse-Normandie|Bourgogne|Bretagne|Centre|Champagne-Ardenne|Corse|Franche-Comte|Haute-Normandie|Ile-de-France|Languedoc-Roussillon|Limousin|Lorraine|Midi-Pyrenees|Nord-Pas-de-Calais|Pays de la Loire|Picardie|Poitou-Charentes|Provence-Alpes-Cote d\'Azur|Rhone-Alpes';
countries['Georgia'] = '|T\'bilisi||Bat\'umi|Chiat\'ura|Gori|Guria|Imereti|Kakheti|K\'ut\'aisi|Kvemo Kartli|Mtskheta-Mtianeti|P\'ot\'i|Racha-Lechkhumi/Kvemo Svaneti|Rust\'avi|Samegrelo/Zemo Svaneti|Samtskhe-Javakheti|Shida Kartli|Sokhumi|Tqibuli|Tsqaltubo|Zugdidi';
countries['Germany'] = '|Berlin||Baden-Wuerttemberg|Bayern|Berlin|Brandenburg|Bremen|Hamburg|Hessen|Mecklenburg-Vorpommern|Niedersachsen|Nordrhein-Westfalen|Rheinland-Pfalz|Saarland|Sachsen|Sachsen-Anhalt|Schleswig-Holstein|Thueringen';
countries['Greece'] = '|Athens||Agion Oros (Mt. Athos)|Achaia|Aitolia kai Akarmania|Argolis|Arkadia|Arta|Attiki|Chalkidiki|Chanion|Chios|Dodekanisos|Drama|Evros|Evrytania|Evvoia|Florina|Fokidos|Fthiotis|Grevena|Ileia|Imathia|Ioannina|Irakleion|Karditsa|Kastoria|Kavala|Kefallinia|Kerkyra|Kilkis|Korinthia|Kozani|Kyklades|Lakonia|Larisa|Lasithi|Lefkas|Lesvos|Magnisia|Messinia|Pella|Pieria|Preveza|Rethynnis|Rodopi|Samos|Serrai|Thesprotia|Thessaloniki|Trikala|Voiotia|Xanthi|Zakynthos';
countries['Hungary'] = '|Budapest||Bacs-Kiskun|Baranya|Bekes|Bekescsaba|Borsod-Abauj-Zemplen|Csongrad|Debrecen|Dunaujvaros|Eger|Fejer|Gyor|Gyor-Moson-Sopron|Hajdu-Bihar|Heves|Hodmezovasarhely|Jasz-Nagykun-Szolnok|Kaposvar|Kecskemet|Komarom-Esztergom|Miskolc|Nagykanizsa|Nograd|Nyiregyhaza|Pecs|Pest|Somogy|Sopron|Szabolcs-Szatmar-Bereg|Szeged|Szekesfehervar|Szolnok|Szombathely|Tatabanya|Tolna|Vas|Veszprem|Veszprem|Zala|Zalaegerszeg';
countries['Iceland'] = '|Reykjavik||Akranes|Akureyri|Arnessysla|Austur-Bardhastrandarsysla|Austur-Hunavatnssysla|Austur-Skaftafellssysla|Borgarfjardharsysla|Dalasysla|Eyjafjardharsysla|Gullbringusysla|Hafnarfjordhur|Husavik|Isafjordhur|Keflavik|Kjosarsysla|Kopavogur|Myrasysla|Neskaupstadhur|Nordhur-Isafjardharsysla|Nordhur-Mulasys-la|Nordhur-Thingeyjarsysla|Olafsfjordhur|Rangarvallasysla|Saudharkrokur|Seydhisfjordhur|Siglufjordhur|Skagafjardharsysla|Snaefellsnes-og Hnappadalssysla|Strandasysla|Sudhur-Mulasysla|Sudhur-Thingeyjarsysla|Vesttmannaeyjar|Vestur-Bardhastrandarsysla|Vestur-Hunavatnssysla|Vestur-Isafjardharsysla|Vestur-Skaftafellssysla';
countries['Ireland'] = '|Dublin||Carlow|Cavan|Clare|Cork|Donegal|Galway|Kerry|Kildare|Kilkenny|Laois|Leitrim|Limerick|Longford|Louth|Mayo|Meath|Monaghan|Offaly|Roscommon|Sligo|Tipperary|Waterford|Westmeath|Wexford|Wicklow';
countries['Italy'] = '|Rome||Abruzzi|Basilicata|Calabria|Campania|Emilia-Romagna|Friuli-Venezia Giulia|Lazio|Liguria|Lombardia|Marche|Molise|Piemonte|Puglia|Sardegna|Sicilia|Toscana|Trentino-Alto Adige|Umbria|Valle d\'Aosta|Veneto';
countries['Latvia'] = '|Riga||Aizkraukles|Aluksnes|Balvu|Bauskas|Cesu|Daugavpils|Daugavpils|Dobeles|Gulbenes|Jekabpils|Jelgava|Jelgavas|Jurmala|Kraslavas|Kuldigas|Liepaja|Liepajas|Limbazu|Ludzas|Madonas|Ogres|Preilu|Rezekne|Rezeknes|Riga|Rigas|Saldus|Talsu|Tukuma|Valkas|Valmieras|Ventspils|Ventspils';
countries['Liechtenstein'] = '|Vaduz||Balzers|Eschen|Gamprin|Mauren|Planken|Ruggell|Schaan|Schellenberg|Triesen|Triesenberg';
countries['Lithuania'] = '|Vilnius||Alytaus|Kauno|Klaipedos|Marijampoles|Panevezio|Siauliu|Taurages|Telsiu|Utenos';
countries['Luxembourg'] = '|Luxembourg||Diekirch|Grevenmacher';
countries['Macedonia'] = '|Skopje||Aracinovo|Bac|Belcista|Berovo|Bistrica|Bitola|Blatec|Bogdanci|Bogomila|Bogovinje|Bosilovo|Brvenica|Cair|Capari|Caska|Cegrane|Centar|Centar Zupa|Cesinovo|Cucer-Sandevo|Debar|Delcevo|Delogozdi|Demir Hisar|Demir Kapija|Dobrusevo|Dolna Banjica|Dolneni|Dorce Petrov|Drugovo|Dzepciste|Gazi Baba|Gevgelija|Gostivar|Gradsko|Ilinden|Izvor|Jegunovce|Kamenjane|Karbinci|Karpos|Kavadarci|Kicevo|Kisela Voda|Klecevce|Kocani|Konce|Kondovo|Konopiste|Kosel|Kratovo|Kriva Palanka|Krivogastani|Krusevo|Kuklis|Kukurecani|Kumanovo|Labunista|Lipkovo|Lozovo|Lukovo|Makedonska Kamenica|Makedonski Brod|Mavrovi Anovi|Meseista|Miravci|Mogila|Murtino|Negotino|Negotino-Polosko|Novaci|Novo Selo|Oblesevo|Ohrid|Orasac|Orizari|Oslomej|Pehcevo|Petrovec|Plasnica|Podares|Prilep|Probistip|Radovis|Rankovce|Resen|Rosoman|Rostusa|Samokov|Saraj|Sipkovica|Sopiste|Sopotnica|Srbinovo|Star Dojran|Staravina|Staro Nagoricane|Stip|Struga|Strumica|Studenicani|Suto Orizari|Sveti Nikole|Tearce|Tetovo|Topolcani|Valandovo|Vasilevo|Velesta|Veles|Vevcani|Vinica|Vitoliste|Vranestica|Vrapciste|Vratnica|Vrutok|Zajas|Zelenikovo|Zeleno|Zitose|Zletovo|Zrnovci';
countries['Malta'] = '|Valletta';
countries['Moldova'] = '|Chisinau||Balti|Cahul|Chisinau|Chisinau|Edinet|Gagauzia|Lapusna|Orhei|Soroca|Stinga Nistrului|Tighina|Ungheni';
countries['Monaco'] = '|Monaco||Fontvieille|La Condamine|Monaco-Ville|Monte-Carlo';
countries['Netherlands'] = '|Amsterdam|The Hague||Drenthe|Flevoland|Friesland|Gelderland|Groningen|Limburg|Noord-Brabant|Noord-Holland|Overijssel|Utrecht|Zeeland|Zuid-Holland';
countries['Norway'] = '|Oslo||Akershus|Aust-Agder|Buskerud|Finnmark|Hedmark|Hordaland|More og Romsdal|Nordland|Nord-Trondelag|Oppland|Ostfold|Rogaland|Sogn og Fjordane|Sor-Trondelag|Telemark|Troms|Vest-Agder|Vestfold';
countries['Poland'] = '|Warsaw||Dolnoslaskie|Kujawsko-Pomorskie|Lodzkie|Lubelskie|Lubuskie|Malopolskie|Mazowieckie|Opolskie|Podkarpackie|Podlaskie|Pomorskie|Slaskie|Swietokrzyskie|Warminsko-Mazurskie|Wielkopolskie|Zachodniopomorskie';
countries['Portugal'] = '|Lisbon||Aveiro|Acores (Azores)|Beja|Braga|Braganca|Castelo Branco|Coimbra|Evora|Faro|Guarda|Leiria|Lisboa|Madeira|Portalegre|Porto|Santarem|Setubal|Viana do Castelo|Vila Real|Viseu';
countries['Romania'] = '|Bucharest (Bucuresti)||Alba|Arad|Arges|Bacau|Bihor|Bistrita-Nasaud|Botosani|Braila|Brasov|Buzau|Calarasi|Caras-Severin|Cluj|Constanta|Covasna|Dimbovita|Dolj|Galati|Gorj|Giurgiu|Harghita|Hunedoara|Ialomita|Iasi|Ilfov|Maramures|Mehedinti|Mures|Neamt|Olt|Prahova|Salaj|Satu Mare|Sibiu|Suceava|Teleorman|Timis|Tulcea|Vaslui|Vilcea|Vrancea';
countries['San Marino'] = '|San Marino||Acquaviva|Borgo Maggiore|Chiesanuova|Domagnano|Faetano|Fiorentino|Monte Giardino|Serravalle';
countries['Serbia/Montenegro (Yugoslavia)'] = '|Belgrade||Kosovo|Montenegro|Serbia|Vojvodina';
countries['Slovakia'] = '|Bratislava||Banskobystricky|Kosicky|Nitriansky|Presovsky|Trenciansky|Trnavsky|Zilinsky';
countries['Slovenia'] = '|Ljubljana||Ajdovscina|Beltinci|Bled|Bohinj|Borovnica|Bovec|Brda|Brezice|Brezovica|Cankova-Tisina|Celje|Cerklje na Gorenjskem|Cerknica|Cerkno|Crensovci|Crna na Koroskem|Crnomelj|Destrnik-Trnovska Vas|Divaca|Dobrepolje|Dobrova-Horjul-Polhov Gradec|Dol pri Ljubljani|Domzale|Dornava|Dravograd|Duplek|Gorenja Vas-Poljane|Gorisnica|Gornja Radgona|Gornji Grad|Gornji Petrovci|Grosuplje|Hodos Salovci|Hrastnik|Hrpelje-Kozina|Idrija|Ig|Ilirska Bistrica|Ivancna Gorica|Izola|Jesenice|Jursinci|Kamnik|Kanal|Kidricevo|Kobarid|Kobilje|Kocevje|Komen|Koper|Kozje|Kranj|Kranjska Gora|Krsko|Kungota|Kuzma|Lasko|Lenart|Lendava|Litija|Ljubno|Ljutomer|Logatec|Loska Dolina|Loski Potok|Luce|Lukovica|Majsperk|Maribor|Medvode|Menges|Metlika|Mezica|Miren-Kostanjevica|Mislinja|Moravce|Moravske Toplice|Mozirje|Murska Sobota|Muta|Naklo|Nazarje|Nova Gorica|Novo Mesto|Odranci|Ormoz|Osilnica|Pesnica|Piran|Pivka|Podcetrtek|Podvelka-Ribnica|Postojna|Preddvor|Ptuj|Puconci|Race-Fram|Radece|Radenci|Radlje ob Dravi|Radovljica|Ravne-Prevalje|Ribnica|Rogasevci|Rogaska Slatina|Rogatec|Ruse|Semic|Sencur|Sentilj|Sentjernej|Sentjur pri Celju|Sevnica|Sezana|Skocjan|Skofja Loka|Skofljica|Slovenj Gradec|Slovenska Bistrica|Slovenske Konjice|Smarje pri Jelsah|Smartno ob Paki|Sostanj|Starse|Store|Sveti Jurij|Tolmin|Trbovlje|Trebnje|Trzic|Turnisce|Velenje|Velike Lasce|Videm|Vipava|Vitanje|Vodice|Vojnik|Vrhnika|Vuzenica|Zagorje ob Savi|Zalec|Zavrc|Zelezniki|Ziri|Zrece';
countries['Spain'] = '|Madrid||Andalucia|Aragon|Asturias|Baleares (Balearic Islands)|Ceuta|Canarias (Canary Islands)|Cantabria|Castilla-La Mancha|Castilla y Leon|Cataluna|Communidad Valencian|Extremadura|Galicia|La Rioja|Melilla|Murcia|Navarra|Pais Vasco (Basque Country)';
countries['Sweden'] = '|Stockholm||Blekinge|Dalarnas|Gavleborgs|Gotlands|Hallands|Jamtlands|Jonkopings|Kalmar|Kronobergs|Norrbottens|Orebro|Ostergotlands|Skane|Sodermanlands|Uppsala|Varmlands|Vasterbottens|Vasternorrlands|Vastmanlands|Vastra Gotalands';
countries['Switzerland'] = '|Bern||Aargau|Appenzell Ausser-Rhoden|Appenzell Inner-Rhoden|Basel-Landschaft|Basel-Stadt|Fribourg|Geneve|Glarus|Graubunden|Jura|Luzern|Neuchatel|Nidwalden|Obwalden|Sankt Gallen|Schaffhausen|Schwyz|Solothurn|Thurgau|Ticino|Uri|Valais|Vaud|Zug|Zurich';
countries['Ukraine'] = '|Kiev (Kyyiv)||Cherkas\'ka (Cherkasy)|Chernihivs\'ka (Chernihiv)|Chernivets\'ka (Chernivtsi)|Dnipropetrovs\'ka (Dnipropetrovs\'k)|Donets\'ka (Donets\'k)|Ivano-Frankivs\'ka (Ivano-Frankivs\'k)|Izmail (Izmayl)|Kharkivs\'ka (Kharkiv)|Khersons\'ka (Kherson)|Khmel\'nyts\'ka (Khmel\'nyts\'kyy)|Kirovohrads\'ka (Kirovohrad)|Luhans\'ka (Luhans\'k)|L\'vivs\'ka (L\'viv)|Mykolayivs\'ka (Mykolayiv)|Odes\'ka (Odesa)|Poltavs\'ka (Poltava)|Avtonomna Respublika Krym|Rivnens\'ka (Rivne)|Sevastopol\'|Sums\'ka (Sumy)|Ternopil\'s\'ka (Ternopil\')|Vinnyts\'ka (Vinnytsya)|Volyns\'ka (Luts\'k)|Zakarpats\'ka (Uzhhorod)|Zaporiz\'ka (Zaporizhzhya)|Zhytomyrs\'ka (Zhytomyr)';
countries['United Kingdom'] = '|-----ENGLAND:-----|Barking/Dagenham|Barnet|Barnsley|Bath/North East Somerset|Bedfordshire|Bexley|Birmingham|Blackburn with Darwen|Blackpool|Bolton|Bournemouth|Bracknell Forest|Bradford|Brent|Brighton/Hove|City of Bristol|Bromley|Buckinghamshire|Bury|Calderdale|Cambridgeshire|Camden|Cheshire|Cornwall|Coventry|Croydon|Cumbria|Darlington|Derby|Derbyshire|Devon|Doncaster|Dorset|Dudley|Durham|Ealing|East Riding of Yorkshire|East Sussex|Enfield|Essex|Gateshead|Gloucestershire|Greenwich|Hackney|Halton|Hammersmith/Fulham|Hampshire|Haringey|Harrow|Hartlepool|Havering|Herefordshire|Hertfordshire|Hillingdon|Hounslow|Isle of Wight|Islington|Kensington/Chelsea|Kent|City of Kingston upon Hull|Kingston upon Thames|Kirklees|Knowsley|Lambeth|Lancashire|Leeds|Leicester|Leicestershire|Lewisham|Lincolnshire|Liverpool|City of London|Luton|Manchester|Medway|Merton|Middlesbrough|Milton Keynes|Newcastle upon Tyne|Newham|Norfolk|Northamptonshire|North East Lincolnshire|North Lincolnshire|North Somerset|North Tyneside|Northumberl/|North Yorkshire|Nottingham|Nottinghamshire|Oldham|Oxfordshire|Peterborough|Plymouth|Poole|Portsmouth|Reading|Redbridge|Redcar/Clevel/|Richmond upon Thames|Rochdale|Rotherham|Rutl/|Salford|Shropshire|S/well|Sefton|Sheffield|Slough|Solihull|Somerset|Southampton|Southend-on-Sea|South Gloucestershire|South Tyneside|Southwark|Staffordshire|St. Helens|Stockport|Stockton-on-Tees|Stoke-on-Trent|Suffolk|Sunderl/|Surrey|Sutton|Swindon|Tameside|Telford/Wrekin|Thurrock|Torbay|Tower Hamlets|Trafford|Wakefield|Walsall|Waltham Forest|W/sworth|Warrington|Warwickshire|West Berkshire|Westminster|West Sussex|Wigan|Wiltshire|Windsor/Maidenhead|Wirral|Wokingham|Wolverhampton|Worcestershire|York||-----NORTHERN IRELAND:-----|Antrim|County Antrim|Ards|Armagh|County Armagh|Ballymena|Ballymoney|Banbridge|Belfast|Carrickfergus|Castlereagh|Coleraine|Cookstown|Craigavon|Down|County Down|Dungannon|Fermanagh|County Fermanagh|Larne|Limavady|Lisburn|County Londonderry|Derry|Magherafelt|Moyle|Newry/Mourne|Newtownabbey|North Down|Omagh|Strabane|County Tyrone||-----SCOTLAND:-----|Aberdeen City|Aberdeenshire|Angus|Argyll/Bute|The Scottish Borders|Clackmannanshire|Dumfries/Galloway|Dundee City|East Ayrshire|East Dunbartonshire|East Lothian|East Renfrewshire|City of Edinburgh|Falkirk|Fife|Glasgow City|Highland|Inverclyde|Midlothian|Moray|North Ayrshire|North Lanarkshire|Orkney Islands|Perth/Kinross|Renfrewshire|Shetland Islands|South Ayrshire|South Lanarkshire|Stirling|West Dunbartonshire|Eilean Siar (Western Isles)|West Lothian||-----WALES-----:|Isle of Anglesey|Blaenau Gwent|Bridgend|Caerphilly|Cardiff|Ceredigion|Carmarthenshire|Conwy|Denbighshire|Flintshire|Gwynedd|Merthyr Tydfil|Monmouthshire|Neath Port Talbot|Newport|Pembrokeshire|Powys|Rhondda Cynon Taff|Swansea|Torfaen|The Vale of Glamorgan|Wrexham';
countries['Vatican City'] = '';


//Islands
countries['Arctic Ocean'] = '|Franz Josef Land|Svalbard';
countries['Atlantic Ocean (North)'] = '|Alderney|Azores|Baixo|Belle-Ile|Bermuda|Bioko|Block|Boa Vista|Borduy|Bugio|Canary Islands|Cape Breton|Cape Verde Islands|Channel Islands|Corvo|Deer Isle|Eysturoy|Faeroe Islands|Fago|Faial|Flores|Fuerteventura|Fugloy|Gomera|Graciosa|Gran Canaria|Grand Manan|Grande|Greenland|Guernsey|Hebrides|Herm|Hestur|Hierro|Iceland|Iles De La Madeleine|Ile de Noirmoutier|Ile de\' Re|Ile d\' Ol‚ron|Ile d\' Yeu|Ilhas Desertas|Ireland|Isle au Haut|Isle of Lewis|Isle of Mull|Isle of Skye|Jersey|Kalsoy|Koltur|Kunoy|Lanzarote|La Palma|Litla Dimun|Long Island|Jan Mayen|Madeira Islands|Maio|Martha\'s Vineyard|Matinicus|Monhegan|Mount Desert|Mykines|Nantucket Island|Newfoundland|Nolsoy|Orkney Islands|Pico|Porto Santo|Prince Edward Island|St. Peter/St. Paul Rocks|St.-Pierre/Miquelon|Praia|Sable Island|Sal|Sandoy|Santo Antao|Santa Maria|Sao Jorge|Sao Miguel|Sao Nicolau|Sao Tiago|Sao Tome/Principe|Sao Vicente|Sark|Scilly Isles|Shetland Islands|Skuvoy|Stora Dimun|Streymoy|Sumba|Svinoy|Swans|Tenerife|Terceira|Uist Islands|Vagar|Viday|Vinalhaven';
countries['Atlantic Ocean (South)'] = '|Amsterdam|Andaman Islands|Annobon|Ascension|Bouvet|Falkland Islands|Gough|Martin Vas Islands|Nightingale|St. Helena|Shag/Black Rocks|South Georgia|South Orkney Islands|South Sandwich Islands|Traversay|Trindade|Tristan da Cunha';
countries['Assorted'] = '|Akimiski|Aland|Alcatraz|Apostle Islands|Baffin|Banka|Banks|Beaver|Belcher Islands|Belitung|Borneo|Bornholm|Brac|Coats|Cres|Devon|East Frisian Islands|Ellesmere|Fyn|Galveston|Gotland|Groote Eylandt|Hiiumaa|Hong Kong Island|Ile d\' Anticosti|Ile d\' Orleans|Isla de Ometepe|Isla Del Ray|Isle of Man|Isle of Wight|Isle Royale|Jutland|Key Largo|Key West|King William|Krek|Langeland|Lantau|Lolland|Lundy|Mackinac|Madeleine Islands|Manhattan Island|Manitoulin|Marsh|Matagorda|Melville|North Hero|Oland|Paracel Islands|Pelee|Prince Charles|Prince of Wales|Queen Elizabeth Islands|Saaremaa|Sjaelland|Somerset|Southhampton|South Hero|Spratley Islands|Sulawesi|Victoria|Washington|Wellesley Islands';
countries['Caribbean Sea'] = '|Abaco (great)|Abaco (little)|Acklins|Andros|Anegada|Anguilla|Antigua|Aruba|Bahamas|Barbados|Barbuda|Bimini Islands|Bonaire|Caicos Islands|Cat|Cayman Brac|Cayman Islands|Cozumel|Crooked|Cuba|Curacao|Dominica|Exuma|Grand Bahama|Grand Cayman|Grand Turk|Greater Antilles|Great Inagua|Grenada|Guadeloupe|Hispaniola (Haiti/DOR)|Isla de Margarita|Isla Mujeres|Isla La Tortuga|Isle of Youth|Jamaica|Lesser Antilles|Little Cayman|Little Inagua|Long|Marie-Galante|Martinique|Mayaguana|Montserrat|Navassa|Nevis|New Providence|Providencia|Puerto Rico|Roatan|Rum Cay|St. Barts|St. Croix|St. Eustatius|St. John|St. Kitts|St. Lucia|St. Martin/Sint Maartan|St. Thomas|St Vincent and the Grenadines|Saba|San Blas Islands|San Salvador|San Andres|Santa Catilina (St. Catherine)|Tobago|Tortola|Trinidad|Virgin Gorda|West Indies';
countries['Greek Isles'] = '|Aegina|Alonissos|Amorgos|Andros|Angistri|Astipalea|Carpathos|Cephalonia|Chios (Hios)|Corfu|Cos (Kos)|Crete (Kriti)|Cyclades Islands|Dodecanese Islands|Dokos|Eubaea (Evia)|Evia|Hydra|Ikaria|Ionian Islands|Ios|Ithaca|Kea|Kefalonia|Kefalos|Kalimnos|Kassos|Kithnos|Kos|Kythnos|Kythria|Lefkada|Lemnos|Leros|Lesvos|Leucas|Limnos|Lipsi|Los|Melos|Mykonos|Naxos|Nisyros|Paros|Patmos|Poros|Pothia|Rhodes (Rodos)|Salamina|Samos|Samothrace|Santorini|Serifos|Seriphos|Sifnos|Sikinos|Skiros|Skiathos|Skopelos|Skyros|Spetses|Sporades Islands|Syros|Tenos (Tinos)|Thassos|Tzia|Zakinthos|Zante';
countries['Indian Ocean'] = '|Addu Atoll|Agalega Islands|Amsterdam|Andaman Islands|Anjouan (Nzwani)|Ari Atoll|Ashmore/Cartier Islands|Bali|Barrow|Bathurst|Bompoka|Cape Barren|Car Nicobar|Chagos Archipelago|Christmas|Comoros|Crozet Islands|Danger|Diego Garcia|Eagle Islands|Egmont Islands|Faadhippolhu Atoll|Felidhoo Atoll|Flinders|Goidhoo Atoll|Grand Comore (Njazidja)|Great Nicobar|Hadhdhunmathee|Heard|Huvadhoo Atoll|Ihavandhippolhu Atoll|Java|Kangaroo|Katchall|Keeling Islands (Cocos)|King|Kolhumadulu Atoll|Lakshadweep Islands|Little Andaman|Little Nicobar|Lower Andaman|Maalhosmadulu Atoll|Maamakunudhoo Atoll|Madagascar|Mahe|Maldives|Male\' Atoll|Mauritius|Mayotte|McDonald Islands|Melville|Middle Andaman|Miladhunmafulu Atoll|Moheli (Mwali)|Molaku Atoll|Nancowry|Nelsons Island|Nias|Nicobar Islands|Nilandhoo Atoll|North Andaman|Peros Banhos|Phuket|Prince Edward Islands|Reunion|Rodrigues|St. Paul|Salomon Islands|Seychelles|Shag|Siberut|Simeulue|Sipura|Socotra|Sumatra|Sri Lanka|Tarasa Dwip|Tasmania|Thiladhunmathee Atoll|Three Brothers|Timor|Tromelin|Zanzibar';
countries['Mediterranean Sea'] = '|Aeolian Islands|Alboran|Balearic Islands|Cabrera|Capraia|Capri|Corse (Corsica)|Cyprus|Elba|Formentera|Gozo|Ibiza (Ivisa)|Iles d\' Hyeres|Jalitah|Lampedusa|Lipari Islands|Mallorca (Majorca)|Malta|Maltese Islands|Menorca (Minorca)|Pantelleria|Ponziane|Salina|Sant\' Antioca|San Pietro|Sardinia (Sardegna)|Sicily (Sicilia)|Stromboli|Vulcano|Zembra';
countries['Oceania'] = '|Abaiang|Admiralty Islands|Aitutaki|Alofi|Ambrym|American Samoa|Antipodes|Atafu Atoll|Atiu|Auckland Islands|Aunu\'u|Austral Islands|Banaba|Bega|Bora Bora|Bougainville|Bounty Islands|Campbell|Chatham Islands|Choiseul|Cook Islands|Coral Sea Islands|Efate|Elao|Erromango|Espiritu Santo|\' Eua|Faioa|Fakaofo Atoll|Fatu Hiva|Fiji|French Polynesia|Funafuti Atoll|Futuna|Gambier Islands|Gau|Gilbert Islands|Gizo|Grand Terre|Great Barrier Reef|Guadacanal|Ha\'apai Island Group|Hatutu|Hiva Oa|Horne Islands|Huahine|Isle of Pines|Kadavu|Karkar|Kioa|Kiribati|Kiritamati|Koro|Lakeba|Lau Group|Lifou|Line Islands|Loyalty Islands|Malaita|Malekula|Malolo|Mangaia|Manihiki|Manu\'a Group|Manuae|Mare|Marquises Islands|Mata Utu|Matuku|Mauke|Maupiti|Melanesia|Mitiaro|Moala|Mohotani|Moorea|Nairai|Nanumea Atoll|Nassau|Nauru|Naviti|Nepean|New Britain|New Caledonia|New Georgia Islands|New Guinea|New Ireland|Niuafo\'ou|Niuas Islands|Niuatoputapu|Niue|Niulakita Atoll|Nomuka Island Group|Norfolk Islands|Nukuaeta|Nukufetau Atoll|Nuku Hiva|Nukulaelae Atoll|Nukunono Atoll|Ofu|Olasega|Ono|Ouvea|Ovalau|Palmerston|Pangai|Penrhyn|Philip|Phoenix Islands|Pitcairn|Pitt Island|Polynesia|Pukapuka|Rabi|Raiatea|Rakahanga|Rangiroa|Rarotonga|Rotuma|Samao|San Cristobal|Santa Cruz Islands|Santa Isabel|Savai \'i|Society Islands|Solomon Islands|Stewart|Suwarrow|Tabuaeran|Tahaa|Tahiti|Tahuata|Taiohae|Tanna|Tarawa|Tasmania|Tau|Taveuni|Tetiaroa|Tokelau|Tonga|Tongatapu|Totoya|Tuamotu Islands|Tubuai|Tupai|Tutuila|Tuvalu|Ua Huka|Ua Pou|Hiva Oa|Upolu|\' Uta Vava\'u|Uvea|Vaiaku|Vanua Balavu|Vanua Levu|Vanuatu|Vatulele|Vava\'u Island Group|Vita Levu|Wallis Islands|Wallis and Futuna|Waya|Yasawa|Yasawa Group';
countries['Pacific Ocean (North)'] = '|Aleutian Islands|Alexander Islands|Andreanof Islands|Babelthuap|Baker|Bikini|Bohol|Bonin Islands|Cabras|Caroline Islands|Cebu|Channel Islands (US)|Cheju Do|Chuuk|Diomede Islands|Guam|Hainan|Hawaii (big island)|Hawaiian Islands|Hokkaido|Honshu|Howland|Jaluit Atoll|Japan|Johnston Atoll|Kahoolawe|Kauai|Kodiak|Kosrae|Kwajalein Atoll|Kyushu|Lanai|Lifou|Loyalty Islands|Luzon|Maloelap Atoll|Majuro Atoll|Mare|Marshall Islands|Maui|Micronesia|Midway Islands|Mili Atoll|Mindanao|Mindoro|Molakai|Niihau|Near Islands|Negros|Northern Marianas|Nunivak|Oahu|Okinawa|Ostrov Sakhalin|Pagan|Palau|Palawan|Palmyra Atoll|Panay|Philippines|Pohnpei|Queen Charlotte Islands|Rat|Rongelap Atoll|St. Lawrence|St. Matthew|St. Paul|Saipan|Samar|San Clemente|San Miguel|San Nicolas|Santa Catalina|Santa Cruz|Santa Rosa|Shikoku|Taiwan|Tinian|Vancouver|Volcano Islands|Wake Island|Yap';
countries['Pacific Ocean (South)'] = '|Easter|Galapogos Islands|Juan Fernandez Islands|Isla Espanola|Isla Fernandina|Isla Genovesa|Isla Isabella|Isla Marchena|Isla Pinta|Isla Puna|Isla San Cristobal|Isla San Salvador|Isla Santa Cruz|Isla Santa Maria|Robinson Crusoe|San Felix|Santa Clara';


//Middle East
countries['Afghanistan'] = '|Kabul||Badakhshan|Badghis|Baghlan|Balkh|Bamian|Farah|Faryab|Ghazni|Ghowr|Helmand|Herat|Jowzjan|Kabol|Kandahar|Kapisa|Khowst|Konar|Kondoz|Laghman|Lowgar|Nangarhar|Nimruz|Nurestan|Oruzgan|Paktia|Paktika|Parvan|Samangan|Sar-e Pol|Takhar|Vardak|Zabol';
countries['Armenia'] = '|Yerevan||Aragatsotn|Ararat|Armavir|Geghark\'unik\'|Kotayk\'|Lorri|Shirak|Syunik\'|Tavush|Vayots\' Dzor';
countries['Azerbaijan'] = '|Baku (Baki)||Abseron|Agcabadi|Agdam|Agdas|Agstafa|Agsu|Ali Bayramli|Astara|Balakan|Barda|Beylaqan|Bilasuvar|Cabrayil|Calilabad|Daskasan|Davaci|Fuzuli|Gadabay|Ganca|Goranboy|Goycay|Haciqabul|Imisli|Ismayilli|Kalbacar|Kurdamir|Lacin|Lankaran|Lankaran|Lerik|Masalli|Mingacevir|Naftalan|Naxcivan|Neftcala|Oguz|Qabala|Qax|Qazax|Qobustan|Quba|Qubadli|Qusar|Saatli|Sabirabad|Saki|Saki|Salyan|Samaxi|Samkir|Samux|Siyazan|Sumqayit|Susa|Susa|Tartar|Tovuz|Ucar|Xacmaz|Xankandi|Xanlar|Xizi|Xocali|Xocavand|Yardimli|Yevlax|Yevlax|Zangilan|Zaqatala|Zardab';
countries['Bahrain'] = '|Manama||Al Hadd|Al Manamah|Al Mintaqah al Gharbiyah|Al Mintaqah al Wusta|Al Mintaqah ash Shamaliyah|Al Muharraq|Ar Rifa\' wa al Mintaqah al Janubiyah|Jidd Hafs|Madinat Hamad|Madinat \'Isa|Juzur Hawar|Sitrah';
countries['Cyprus'] = '|Nicosia||Famagusta|Kyrenia|Larnaca|Limassol|Paphos';
countries['Iran'] = '|Tehran||Ardabil|Azarbayjan-e Gharbi|Azarbayjan-e Sharqi|Bushehr|Chahar Mahall va Bakhtiari|Esfahan|Fars|Gilan|Golestan|Hamadan|Hormozgan|Ilam|Kerman|Kermanshah|Khorasan|Khuzestan|Kohkiluyeh va Buyer Ahmad|Kordestan|Lorestan|Markazi|Mazandaran|Qazvin|Qom|Semnan|Sistan va Baluchestan|Yazd|Zanjan';
countries['Iraq'] = '|Baghdad||Al Anbar|Al Basrah|Al Muthanna|Al Qadisiyah|An Najaf|Arbil|As Sulaymaniyah|At Ta\'mim|Babil|Dahuk|Dhi Qar|Diyala|Karbala\'|Maysan|Ninawa|Salah ad Din|Wasit';
countries['Israel'] = '|Jerusalem||Central|Haifa|Northern|Southern|Tel Aviv';
countries['Jordan'] = '|Amman||Ajlun|Al \'Aqabah|Al Balqa\'|Al Karak|Al Mafraq|At Tafilah|Az Zarqa\'|Irbid|Jarash|Ma\'an|Madaba';
countries['Kuwait'] = '|Kuwait||Al Ahmadi|Al Farwaniyah|Al \'Asimah|Al Jahra\'|Hawalli';
countries['Kyrgyzstan'] = '|Bishkek Shaary||Batken Oblasty|Chuy Oblasty (Bishkek)|Jalal-Abad Oblasty|Naryn Oblasty|Osh Oblasty|Talas Oblasty|Ysyk-Kol Oblasty (Karakol)';
countries['Lebanon'] = '|Beirut||Beyrouth|Beqaa|Liban-Nord|Liban-Sud|Mont-Liban|Nabatiye';
countries['Oman'] = '|Muscat||Ad Dakhiliyah|Al Batinah|Al Wusta|Ash Sharqiyah|Az Zahirah|Musandam|Zufar';
countries['Pakistan'] = '|Islamabad||Balochistan|Federally Administered Tribal Areas|North-West Frontier Province|Punjab|Sindh';
countries['Qatar'] = '|Doha||Ad Dawhah|Al Ghuwayriyah|Al Jumayliyah|Al Khawr|Al Wakrah|Ar Rayyan|Jarayan al Batinah|Madinat ash Shamal|Umm Salal';
countries['Saudi Arabia'] = '|Riyadh||Al Bahah|Al Hudud ash Shamaliyah|Al Jawf|Al Madinah|Al Qasim|Ar Riyad|Ash Sharqiyah (Eastern Province)|\'Asir|Ha\'il|Jizan|Makkah|Najran|Tabuk';
countries['Syria'] = '|Damascus||Al Hasakah|Al Ladhiqiyah|Al Qunaytirah|Ar Raqqah|As Suwayda\'|Dar\'a|Dayr az Zawr|Dimashq|Halab|Hamah|Hims|Idlib|Rif Dimashq|Tartus';
countries['Tajikistan'] = '|Dushanbe||Viloyati Mukhtori Kuhistoni Badakhshon|Viloyati Khatlon|Viloyati Sughd';
countries['Turkey'] = '|Ankara||Adana|Adiyaman|Afyon|Agri|Aksaray|Amasya|Antalya|Ardahan|Artvin|Aydin|Balikesir|Bartin|Batman|Bayburt|Bilecik|Bingol|Bitlis|Bolu|Burdur|Bursa|Canakkale|Cankiri|Corum|Denizli|Diyarbakir|Duzce|Edirne|Elazig|Erzincan|Erzurum|Eskisehir|Gaziantep|Giresun|Gumushane|Hakkari|Hatay|Icel|Igdir|Isparta|Istanbul|Izmir|Kahramanmaras|Karabuk|Karaman|Kars|Kastamonu|Kayseri|Kilis|Kirikkale|Kirklareli|Kirsehir|Kocaeli|Konya|Kutahya|Malatya|Manisa|Mardin|Mugla|Mus|Nevsehir|Nigde|Ordu|Osmaniye|Rize|Sakarya|Samsun|Sanliurfa|Siirt|Sinop|Sirnak|Sivas|Tekirdag|Tokat|Trabzon|Tunceli|Usak|Van|Yalova|Yozgat|Zonguldak  Buri|Sisaket|Songkhla|Sukhothai|Suphan Buri|Surat Thani|Surin|Tak|Trang|Trat|Ubon Ratchathani|Udon Thani|Uthai Thani|Uttaradit|Yala|Yasothon';
countries['Turkmenistan'] = '|Ashgabat||Ahal Welayaty|Balkan Welayaty|Dasoguz Welayaty|Labap Welayaty|Mary Welayaty';
countries['United Arab Emirates'] = '|Abu Dhabi||Abu Zaby (Abu Dhabi)|\'Ajman|Al Fujayrah|Ash Shariqah (Sharjah)|Dubayy (Dubai)|Ra\'s al Khaymah|Umm al Qaywayn';
countries['Uzbekistan'] = '|Tashkent (Toshkent)||Andijon Viloyati|Buxoro Viloyati|Farg\'ona Viloyati|Jizzax Viloyati|Namangan Viloyati|Navoiy Viloyati|Qashqadaryo Viloyati (Qarshi)|Qaraqalpog\'iston Respublikasi|Samarqand Viloyati|Sirdaryo Viloyati (Guliston)|Surxondaryo Viloyati (Termiz)|Toshkent Shahri|Toshkent Viloyati|Xorazm Viloyati (Urganch)';
countries['Yemen'] = '|Sanaa||Abyan|\'Adan|Al Bayda\'|Al Hudaydah|Al Jawf|Al Mahrah|Al Mahwit|Dhamar|Hadramawt|Hajjah|Ibb|Lahij|Ma\'rib|Sa\'dah|San\'a\'|Shabwah|Ta\'izz';


//North America
countries['Bermuda'] = '|Hamilton||Devonshire|Hamilton|Hamilton|Paget|Pembroke|Saint George|Saint George\'s|Sandys|Smith\'s|Southampton|Warwick';
countries['Canada'] = '|Ottawa||Alberta|British Columbia|Manitoba|New Brunswick|Newfoundland and Labrador|Northwest Territories|Nova Scotia|Nunavut|Ontario|Prince Edward Island|Quebec|Saskatchewan|Yukon Territory';
countries['Caribbean'] = '';
countries['Greenland'] = '|Nuuk (Godthab)||Avannaa (Nordgronland)|Tunu (Ostgronland)|Kitaa (Vestgronland)';
countries['Mexico'] = '|Mexico (Distrito Federal)||Aguascalientes|Baja California|Baja California Sur|Campeche|Chiapas|Chihuahua|Coahuila de Zaragoza|Colima|Durango|Guanajuato|Guerrero|Hidalgo|Jalisco|Michoacan de Ocampo|Morelos|Nayarit|Nuevo Leon|Oaxaca|Puebla|Queretaro de Arteaga|Quintana Roo|San Luis Potosi|Sinaloa|Sonora|Tabasco|Tamaulipas|Tlaxcala|Veracruz-Llave|Yucatan|Zacatecas';
countries['United States'] = '|Washington DC||Alabama|Alaska|Arizona|Arkansas|California|Colorado|Connecticut|Delaware|Georgia|Kentucky|Hawaii|Idaho|Illinois|Indiana|Iowa|Kansas|Kentucky|Louisiana|Maine|Maryland|Massachusets|Michigan|Minnesota|Mississippi|Missouri|Montana|Nebraska|Nevada|New Hampshire|New Jersey|New Mexico|New York|North Carolina|North Dakota|Ohio|Oklahoma|Oregon|Pennsylvania|Rhode Island|South Carolina|South Dakota|Tennessee|Texas|Utah|Vermont|Virginia|Washington|West Virginia|Wisconsin|Wyoming';


//South America
countries['Argentina'] = '|Buenos Aires||Catamarca|Chaco|Chubut|Cordoba|Corrientes|Entre Rios|Formosa|Jujuy|La Pampa|La Rioja|Mendoza|Misiones|Neuquen|Rio Negro|Salta|San Juan|San Luis|Santa Cruz|Santa Fe|Santiago del Estero|Tucuman';
countries['Bolivia'] = '|La Paz|Sucre||Chuquisaca|Cochabamba|Beni|Oruro|Pando|Potosi|Santa Cruz|Tarija';
countries['Brazil'] = '|Brasilia||Acre|Alagoas|Amapa|Amazonas|Bahia|Ceara|Distrito Federal|Espirito Santo|Goias|Maranhao|Mato Grosso|Mato Grosso do Sul|Minas Gerais|Para|Paraiba|Parana|Pernambuco|Piaui|Rio de Janeiro|Rio Grande do Norte|Rio Grande do Sul|Rondonia|Roraima|Santa Catarina|Sao Paulo|Sergipe|Tocantins';
countries['Chile'] = '|Santiago||Antofagasta|Araucania|Atacama|Bio-Bio|Coquimbo|Los Lagos|Maule|Tarapaca|Valparaiso';
countries['Colombia'] = '|Bogota||Amazonas|Antioquia|Arauca|Atlantico|Bolivar|Boyaca|Caldas|Caqueta|Casanare|Cauca|Cesar|Choco|Cordoba|Cundinamarca|Guainia|Guaviare|Huila|La Guajira|Magdalena|Meta|Narino|Norte de Santander|Putumayo|Quindio|Risaralda|San Andres/Providencia|Santander|Sucre|Tolima|Valle del Cauca|Vaupes|Vichada';
countries['Ecuador'] = '|Quito||Azuay|Bolivar|Canar|Carchi|Chimborazo|Cotopaxi|El Oro|Esmeraldas|Galapagos|Guayas|Imbabura|Loja|Los Rios|Manabi|Morona-Santiago|Napo|Orellana|Pastaza|Pichincha|Sucumbios|Tungurahua|Zamora-Chinchipe';
countries['Guyana'] = '|Georgetown||Barima-Waini|Cuyuni-Mazaruni|Demerara-Mahaica|East Berbice-Corentyne|Essequibo Islands-West Demerara|Mahaica-Berbice|Pomeroon-Supenaam|Potaro-Siparuni|Upper Demerara-Berbice|Upper Takutu-Upper Essequibo';
countries['Paraguay'] = '|Asuncion||Alto Paraguay|Alto Parana|Amambay|Boqueron|Caaguazu|Caazapa|Canindeyu|Central|Concepcion|Cordillera|Guaira|Itapua|Misiones|Neembucu|Paraguari|Presidente Hayes|San Pedro';
countries['Peru'] = '|Lima||Amazonas|Ancash|Apurimac|Arequipa|Ayacucho|Cajamarca|Callao|Cusco|Huancavelica|Huanuco|Ica|Junin|La Libertad|Lambayeque|Loreto|Madre de Dios|Moquegua|Pasco|Piura|Puno|San Martin|Tacna|Tumbes|Ucayali';
countries['Suriname'] = '|Paramaribo||Brokopondo|Commewijne|Coronie|Marowijne|Nickerie|Para|Saramacca|Sipaliwini|Wanica';
countries['Uruguay'] = '|Montevideo||Artigas|Canelones|Cerro Largo|Colonia|Durazno|Flores|Florida|Lavalleja|Maldonado|Paysandu|Rio Negro|Rivera|Rocha|Salto|San Jose|Soriano|Tacuarembo|Treinta y Tres';
countries['Venezuela'] = '|Caracas||Amazonas|Anzoategui|Apure|Aragua|Barinas|Bolivar|Carabobo|Cojedes|Delta Amacuro|Dependencias Federales|Distrito Federal|Falcon|Guarico|Lara|Merida|Miranda|Monagas|Nueva Esparta|Portuguesa|Sucre|Tachira|Trujillo|Vargas|Yaracuy|Zulia';

 
////////////////////////////////////////////////////////////////////////////

var citys = Object();
citys['Andhra Pradesh'] = '|Adilabad|Anantapur|Chittoor|East Godavari|Guntur|Hyderabad|Kadapa|Karimnagar|Khammam|Krishna|Kurnool|Mahbubnagar|Medak|Nalgonda|Nellore|Nizamabad|Prakasam|KonarRangareddy|Srikakulam|Vishakhapatnam|Vizianagaram|Warangal|West Godavari';
citys['Goa'] = '|North Goa|South Goa';
citys['Jammu/Kashmir'] = '|Jammu|Srinagar|Anantnag|Baramula|Kupwara|Badgam|Rajouri|Kathua|Pulwama|Udhampur|Punch|Kulgam|Doda|Bandipora|Samba|Reasi|Ganderbal|Ramban|Shupiyan|Kishtwar|Kargil|Leh';
citys['Dadra/Nagar Haveli'] = '|Dadra and Nagar Haveli';
citys['Daman/Diu'] = '|Daman|Diu';
citys['Haryana'] = '|Faridabad|Hisar|Bhiwani|Gurgaon|Karnal|Sonipat|Jind|Sirsa|Yamunanagar|Panipat|Ambala|Mewat|Kaithal|Rohtak|Palwal|Kurukshetra|Jhajjar|Fatehabad|Mahendragarh|Rewari|Panchkula';
citys['Lakshadweep'] = '|Lakshadweep';
citys['Andaman/Nicobar Islands'] = '|South Andaman|North And Middle Andaman|Nicobars';  
citys['Arunachal Pradesh']= '|Papumpare|Changlang|Lohit|West Siang|Tirap|East Siang|Kurung Kumey|West Kameng|Upper Subansiri|Lower Subansiri|East Kameng|Lower Dibang Valley|Tawang|Upper Siang|Anjaw|Dibang Valley';
citys['Assam']= '|Tinsukia|Dibrugarh|Sibsagar|Dhemaji|Jorhat|Lakhimpur|Golaghat|Sonitpur|Karbi Anglong|Nagaon|Marigaon|Darrang|Kamrup|Nalbari|Barpeta|Bongaigaon|Goalpara|Kokrajhar|Dhubri|North Cachar Hills|Cachar|Hailakandi|Karimganj|Kamrup Metropolitan|Baksa|Udalguri|Chirang';
citys['Bihar'] = '|Patna|Purbi Champaran| Muzaffarpur|Madhubani|Gaya Samastipur|Saran|Darbhanga|Pashchim Champaran |Vaishali|Sitamarhi|Siwan|Purnia|Katihar|Bhagalpur|Begusarai|Rohtas|Nalanda|Araria|Bhojpur|Gopalganj|Aurangabad|Supaul|Nawada|Banka|Madhepura|Saharsa|Jamui|Buxar|Kishanganj|Khagaria|Kaimur|Munger|Jehanabad|Lakhisarai|Arwal|Sheohar|Sheikhpura';
citys['Chandigarh'] = '|Chandigarh';
citys['Chhattisgarh']= '|Raipur|Durg|Bilaspur|Surguja|Janjgir Champa|Rajnandgaon|Raigarh|Bastar|Korba|Mahasamund|Jashpur|Kabirdham|Dhamtari|Kanker|Korea|Dantewada|Bijapur|Narayanpur';
citys['New Delhi'] = '|North West Delhi|South Delhi|West Delhi|South West Delhi|North East Delhi|East Delhi|North Delhi|Central Delhi|New Delhi';
citys['Gujarat'] = '|Ahmadabad|Surat|Vadodar|Rajkot|Banaskanth|Bhavnagar|Junagadh|Sabarkantha|PanchMahal|Kheda|Jamnagar|Dohad|Anand|Kachchh|Mahesana|Surendranagar|Valsad|Bharuch|Amreli|Gandhinagar|Patan|Navsari|Tapi|Narmada|Porbanda|The Dang';
citys['Himachal Pradesh'] = '|Kangra|Mandi|Shimla|Solan|Sirmaur|Una|Chamba|Hamirpur|Kullu|Bilaspur|Kinna|Lahul and Spit';
citys['Jharkhand'] = '|Ranchi|Dhanbad|Giridih|Purbi Singhbhum|Bokaro|Palamu|Hazaribagh|Pashchimi Singhbhum|Deoghar|Garhwa|Dumka|Godda|Sahibganj|Saraikela Kharsawan|Chatra|Gumla|Ramgarh|Pakur|Jamtara|Latehar|Kodarma|Simdega|Khunti|Lohardag';
citys['Karnataka'] = '|Bangalore|Belgaum|Mysore|Tumkur|Gulbarga|Bellary|Bijapur|Dakshina Kannada|Davanagere|Raichur|Bagalkot|Dharwad|Mandya|Hassan|Shimoga|Bidar|Chitradurga|Haveri|Kolar|Uttara Kannada|Koppal|Chikkaballapura|Udupi|Yadgir|Chikmagalur|Ramanagara|Gadag|Chamarajanagar|Bangalore Rural|Kodagu';
citys['Kerala'] = '|Malappuram|Thiruvananthapuram|Ernakulam|Thrissur|Kozhikode|Palakkad|Kollam|Kannur|Alappuzha|Kottayam|Kasaragod|Pathanamthitta|Idukki|Wayana';
citys['Madhya Pradesh'] = '|Indore|Jabalpur|Sagar|Bhopal|Rewa|Satna|Dhar|Chhindwara|Gwalior|Ujjain|Morena|West Nimar|Chhattarpur|Shivpuri|Bhind|Balaghat|Betul|Dewas|Rajgarh|Shajapur|Vidisha|Ratlam|Tikamgarh|Barwani|Seoni|Mandsaur|Raisen|Sehore|East Nimar|Katni|Damoh|Guna|Hoshangabad|Singrauli|Sidhi|Narsimhapur|Shahdol|Mandla|Jhabua|Panna|Ashoknagar|Neemuch|Datia|Burhanpur|Anuppur|Alirajpur|Dindori|Sheopur|Umaria|Harda';
citys['Maharashtra'] = '|Thane|Pune|Mumbai Suburban|Nashik|Nagpur|Ahmadnagar|Solapur|Jalgaon|Kolhapur|Aurangabad|Nanded|Mumbai City|Satara|Amravati|Sangli|Yavatmal|Raigarh|Buldana|Bid|Latur|Chandrapur|Dhule|Jalna|Parbhani|Akola|Osmanabad|Nandurbar|Ratnagiri|Gondiya|Wardha|Bhandara|Washim|Hingoli|Gadchiroli|Sindhudur';
citys['Manipur'] = '|Imphal West|Imphal East|Thoubal|Churachandpur|Bishnupur|Senapati|Ukhrul|Chandel|Tamenglong';  
citys['Meghalaya'] = '|East Khasi Hills|West Garo Hills|Jaintia Hills|West Khasi Hills|East Garo Hills|Ri Bhoi|South Garo Hills'; 
citys['Mizoram']= '|Aizawl|Lunglei|Champhai|Lawngtlai|Mamit|Kolasib|Serchhip|Saiha';  
citys['Nagaland'] = '|Dimapur|Kohima|Mon|Tuensang|Mokokchung|Wokha|Phek|Zunheboto|Peren|Kiphire|Longleng';
citys['Orissa'] = '|Ganjam|Cuttack|Mayurbhanj|Baleshwar|Khordha|Sundargarh|Jajapur|Kendujhar|Puri|Balangir|Kalahandi|Bhadrak|Bargarh|Kendrapara|Koraput|Anugul|Nabarangapur|Dhenkanal|Jagatsinghapur|Sambalpur|Rayagada|Nayagarh|Kandhamal|Malkangiri|Nuapada|Subarnapur|Jharsuguda|Gajapati|Baudh|Debagarh';
citys['Pondicherry'] = '|Puducherry|Karaikal|Yanam|Mahe';
citys['Punjab'] = '|Ludhiana|Amritsar|Gurdaspur|Jalandhar|Firozpur|Patiala|Sangrur|Hoshiarpur|Bathinda|Tarn Taran|Moga|Mohali|Muktsar|Kapurthala|Mansa|Rupnagar|Faridkot|Shahid Bhagat Singh Nagar|Fatehgarh Sahib|Barnala';
citys['Rajasthan'] = '|Jaipur|Jodhpur|Alwar|Nagaur|Udaipur|Sikar|Barmer|Ajmer|Bharatpur|Bhilwara|Bikaner|Jhunjhunun|Churu|Pali|Ganganagar|Kota|Jalor|Banswara|Hanumangarh|Dausa|Chittaurgarh|Karauli|Tonk|Jhalawar|Dungarpur|Sawai Madhopur|Baran|Dhaulpur|Rajsamand|Bundi|Sirohi|Pratapgarh|Jaisalmer';
citys['Sikkim'] = '|East Sikkim|South Sikkim|West Sikkim|North Sikkim';
citys['Tamil Nadu'] = '|Chennai|Kancheepuram|Vellore|Thiruvallur|Salem|Viluppuram|Coimbatore|Tirunelveli|Madurai|Tiruchirappalli|Cuddalore|Tiruppur|Tiruvannamalai|Thanjavur|Erode|Dindigul|Virudhunagar|Krishnagiri|Kanniyakumari|Thoothukkudi|Namakkal|Pudukkottai|Nagapattinam|Dharmapuri|Ramanathapuram|Sivaganga|Thiruvarur|Theni|Karur|Ariyalur|The Nilgiris|Perambalur';
citys['Tripura'] = '|West Tripura|South Tripura|North Tripura|Dhalai';
citys['Uttaranchal'] = '|Haridwar|Dehradun|Udham Singh Nagar|Nainital|Pauri Garhwal|Almora|Tehri Garhwal|Pithoragarh|Chamoli|Uttarkashi|Bageshwar|Champawat|Rudraprayag';
citys['Uttar Pradesh'] = '|Bijnaur|Maharajganj|Gonda|Unnao|Lalitpur|Kushinagar|Lakhimpur|Basti|Banda|Jalaun|Pilibheet|Muzaffarnagar|Allahabad|Mahoba|Jhansi|Chandauli|Saharanpur|Ajamgarh|Chitrakut|Bagpat|Jyotibapulanger|Mau|Hamirpur|Ambedkar|Shahjahanpur|Hardoi|Varanashi|Meerut|Kannauj|Kanpur|Kabir Nagar|Etawah|Etah|St. Rabidas Nagar|Kaushambi|Auraiya|Kanpur City|Muradabad|Balia|Mirzapur|Fatehpur|Rampur|Baharaich|Bulandshahar|Aligarh|Deoria|Sonbhadra|Jaunpur|Pratapgarh|Sultanpur|Sitapur|Mainpuri|Balrampur|Hathras|Gorakhpur|Ghazipur|Shraswati|Barieli|Badaun|Gautambuddh Nagar|Raibariely|Faizabad|Firozabad|Farrukabad|Siddharth Nagar|Agra|Lucknow|Barabanki|Mathura|Ghaziabad';
citys['West Bengal'] = '|Bankura|Bardhaman|Birbhum|East Midnapore|Hooghly|Purulia|West Midnapore|Cooch Behar|Darjeeling|Jalpaiguri|Malda|North Dinajpur|South Dinajpur|Howrah|Kolkata|Murshidabad|Nadia|North 24 Parganas|South 24 Parganas';
 
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

function setRegions()
{
	for (state in countries)
		document.write('<option value="' + state + '">' + state + '</option>');
}
function set_country(oRegionSel, oCountrySel, oCity_StateSel)
{
	var countryArr;
	oCountrySel.length = 0;
	oCity_StateSel.length = 0;
	var state = oRegionSel.options[oRegionSel.selectedIndex].text;
	if (countries[state])
	{
		oCountrySel.disabled = false;
		oCity_StateSel.disabled = true;
		oCountrySel.options[0] = new Option('SELECT COUNTRY','');
		countryArr = countries[state].split('|');
		for (var i = 0; i < countryArr.length; i++)
			oCountrySel.options[i + 1] = new Option(countryArr[i], countryArr[i]);
		document.getElementById('txtregion').innerHTML = state;
		document.getElementById('txtplacename').innerHTML = '';
	}
	else oCountrySel.disabled = true;
}
 function set_city(oCountrySel, oCity_StateSel)
{
	var cityArr;
	oCity_StateSel.length = 0;
	var country = oCountrySel.options[oCountrySel.selectedIndex].text;
	if (citys[country])
	{
		oCity_StateSel.disabled = false;
		oCity_StateSel.options[0] = new Option('SELECT NEAREST DIVISION','');
		cityArr = citys[country].split('|');
		for (var i = 0; i < cityArr.length; i++)
			oCity_StateSel.options[i+1] = new Option(cityArr[i],cityArr[i]);
		document.getElementById('txtplacename').innerHTML = country;
	}
	else oCity_StateSel.disabled = true;
}
function print_city(oCountrySel, oCity_StateSel)
{
	var country = oCountrySel.options[oCountrySel.selectedIndex].text;
	var city = oCity_StateSel.options[oCity_StateSel.selectedIndex].text;
	if (city && citys[country].indexOf(city) != -1)
		document.getElementById('txtplacename').innerHTML = city + ', ' + country;
	else document.getElementById('txtplacename').innerHTML = country;
}

 
 