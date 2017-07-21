Supplier.create!([
  {name: "Dragon's Cave", email: "dc@email.com", phone_number: "232-232-2323"},
  {name: "Sky Center", email: "sc@email.com", phone_number: "932-232-2323"}
])
Product.create!([
  {name: "Slone", price: "230000.0", image: "https://www.forexfactory.com/attachment.php?attachmentid=1557296&d=1416835200", element: "Beast", description: "Brute force is his strong suit, but easy to take out from a distance if you can get past the armor.(NOTE: small man not included)", supplier_id: 2},
  {name: "Meganen", price: "450000.0", image: "http://cdn.playbuzz.com/cdn/188b4f88-93d6-4810-a7b0-0aaf7df5375b/39772759-5076-4fac-841c-c077eb561650.jpg", element: "Dark", description: "Not a beast of the night but the night itself...And this darkness comes with everything that evil has even touched.", supplier_id: 2},
  {name: "Karon", price: "420000.0", image: "https://taniamarieartist.files.wordpress.com/2012/01/water_dragon_by_lumaris-d3c23ti.jpg", element: "Water", description: "The Ocean's Queen. All things in the waters bow to her, even the waters..itself.", supplier_id: 2},
  {name: "Frost", price: "340000.0", image: "http://orig04.deviantart.net/a00a/f/2009/075/7/0/ice_dragon__s_late_night_snack_by_bogg_art.jpg", element: "Ice/Bruet", description: "From the Arctic, the dark monstrosity uses close combat to quickly freeze and end her enemies.", supplier_id: 2},
  {name: "Vixum", price: "230000.0", image: "http://www.diarioonline.com.br/img/noticias/original/destaque-401473-game-of-thrones-6-1024x635.jpg", element: "Ghost", description: "A death sentance is a form of monstrosity. This flying hellstorm came from the diamention of the unknown. Its crys makes the ears of if enemies bleed and souls of the lost is its meal...", supplier_id: 1},
  {name: "Leo", price: "22000.0", image: "http://weknownyourdreamz.com/images/dragon/dragon-01.jpg", element: "Ice", description: "cold", supplier_id: 1},
  {name: "Balecetera", price: "20000.0", image: "http://cdn.playbuzz.com/cdn/845ff10a-f092-4740-b866-36d9e705cd95/2d18356c-0026-48ee-861c-473239e3e6ad.jpg", element: "Earth", description: "She is a kind beast.She enjoys an afternoon dance and literally moves the ground with her rock'n moves.", supplier_id: 1},
  {name: "Nilick", price: "670000.0", image: "http://images6.fanpop.com/image/answers/542000/542691_1408623937757_400_300.jpg", element: "Lightning", description: "StormGod!!", supplier_id: 1},
  {name: "Blazz", price: "340000.0", image: "http://cdn.playbuzz.com/cdn/503aeb8a-c1b8-4679-8ed3-da5e11643f29/8a940ebd-8630-4247-888e-c4c611f4f0e2.jpg", element: "Earth", description: "Although he is red fire is his biggest fear", supplier_id: 1}
])

