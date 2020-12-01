Portrait.destroy_all
User.destroy_all
SubCategory.destroy_all
Category.destroy_all


#USERS
file_maxine = File.open(Rails.root.join("db/fixtures/users/maxine.jpg"))
maxine = User.create!(first_name: "Maxine", last_name:"Jourdan", nickname: "max", email: "max@gmail.fr", password: "max123", description: "Jeune skipper diplômée 'Yacht Master voile', j'ai déjà eu de nombreusues expériences de courses à la voile côtières ou hauturières ainsi que de nombreuses croisières")
# file_lise = File.open(Rails.root.join("db/fixtures/users/lise.jpg"))
# lise = User.create!(first_name: "Lise", last_name:"Pluger", nickname: "lili", email: "lise@gmail.fr", password: "lise123", description: "Passionnée de chasse sous-marine, j'ai récemment fait l'acquisition d'un bateau pneumatique pour faire des sorties en mer dans ma région (Gironde) et partager ma passion, le week-end en ou en semaine.")
# file_ludivine = File.open(Rails.root.join("db/fixtures/users/ludivine.jpg"))
# ludivine = User.create!(first_name: "Ludivine", last_name:"Villain", nickname: "ludi", email: "ludi@gmail.fr", password: "ludi123", description: "Ancienne compétitrice en snowboard et parapente acrobatique à haut-niveau, je veux maintenant m'investir dans la voile et rêve d'une mini transat un jour.
# ")
# file_carole = File.open(Rails.root.join("db/fixtures/users/carole.jpg"))
# carole = User.create!(first_name: "Carole", last_name:"des Jamonieres", nickname: "caro", email: "caro@gmail.fr", password: "caro123", description: "L'Amour de la mer, de la Nature m'a motivée à m'inscrire sur ce site. Pourquoi ne pas naviguer vers d'autres horizons, d'autres mers grâce à l'inspiration que je vais trouver ici..")
# file_clementine = File.open(Rails.root.join("db/fixtures/users/clementine.jpg"))
# clementine = User.create!(first_name: "Clémentine", last_name:"Le Cam", nickname: "clem", email: "clem@gmail.fr", password: "clem123", description: "Je suis sur l'eau depuis toute petite, je navigue par moi-même et skippe depuis plus de 5 ans. Altruiste, j'ai envie de partager ce qui est pour moi presque un art de vivre : la voile")
# file_jeanne = File.open(Rails.root.join("db/fixtures/users/jeanne.png"))
# jeanne = User.create!(first_name: "Jeanne", last_name:"Marchand", nickname: "Jeannou", email: "jeanne@gmail.fr", password: "jeanne123", description: "Je navigue depuis quelques années comme équipière sur voilier habitable. J'ai débuté la voile sur un 'vaurien' en bois, 'plume', que j'ai retapé. Je suis ici pour trouver de l'inspiration")

puts "finish users"

#PORTRAITS
# file_emmanuelle = File.open(Rails.root.join("db/fixtures/portraits/emmanuelle.jpg"))
# emmanuelle = Portrait.create!(
#   title: "Emmanuelle Périé-Bardout" ,
#   description: "Ancienne équipière de Jean-Louis Étienne, Emmanuelle Périé-Bardout dirige aux côtés de son mari Ghislain le programme Under The Pole. Skipper du « WHY » et plongeuse recycleur hypoxique, elle a en charge la pédagogie et la communication des expéditions et aime à documenter, en particulier à travers l’écriture, ces régions encore presque vierges d’exploration. Leurs enfants, Robin et Tom, âgés de 8 ans et 4 ans, accompagnent les expéditions.

#   Passionnée depuis l’enfance par la mer et les cétacés, elle embarque à 13 ans pour 6 mois sur une goélette école. En 2000, elle se forme aux Glénans puis à l’École Nationale de Voile. Suite à sa rencontre avec Jean-Louis Étienne, elle embarque pour l’expédition Clipperton, comme marin et co-responsable des activités nautiques. À son retour, elle repart pour un an et demi de navigation polaire entre Norvège et Svalbard comme second à bord du Southern Star d’Olivier Pitras. En 2007, elle retrouve Jean-Louis Étienne pour une expédition sur un bateau des airs : le dirigeable. C’est à cette occasion qu’en 2008 elle se rend pour la première fois au pôle Nord Géographique.

#   Elle rejoint alors Ghislain pour préparer Deepsea Under The Pole by Rolex. En 2010, elle est la seule femme de l’équipe sur la banquise où elle plonge, s’occupe de la communication et du chien Kayak. Depuis 2014, Under The Pole mène des expéditions scientifiques et d’exploration sous-marine à bord de la goélette « WHY ». Après deux ans et un hivernage dans les glaces durant Under The Pole II, l’équipe a embarquée pour un tour du monde par les régions polaires pour Under The Pole III - Twilight Zone. Après deux années de recherches et de plongées intensives sur les récifs coralliens en Polynésie Française, où ils ont entres autres remonté le corail récifal le plus profond du monde (172m), et mis en oeuvre le programme Capsule - habitat sous-marin autonome développé en interne - ils se préparent au prochain leg en Antarctique à la fin de l’année. " ,
# )

# file_caroline = File.open(Rails.root.join("db/fixtures/portraits/caroline.jpg"))
# caroline = Portrait.create!(
#   title: "Caroline Britz" ,
#   description: "Caroline est alsacienne, née bien loin de la mer mais passionnée de voyages et d'expéditions surtout polaires qu’elle découvre à travers les grands explorateurs. Après de longues études de droit, elle a finalement pu rejoindre le large en devenant journaliste, d'abord au marin puis à Mer et Marine. Elle est spécialisée dans la marine marchande, la construction navale, les énergies en mer et la vie portuaire. Elle a beaucoup embarqué, principalement au commerce, un peu sur des bateaux militaires, pour raconter la vie des marins, des navigations et des nouveaux enjeux maritimes. Sinon, elle vit en Bretagne, est amoureuse de la Norvège et aime aussi beaucoup la montagne, la voile et découvrir le monde. Elle embarque sur le Marion Dufresne, navire de ravitaillement des terres australes françaises, pour un reportage aux Iles Kerguelen, Crozet et Amsterdam." ,
# )

# file_marion = File.open(Rails.root.join("db/fixtures/portraits/marion.jpg"))
# marion = Portrait.create!(
#   title: "Marion Lauters" ,
#   description: "Marion a grandit à Paris où elle a fait ses études de biologie des Organismes vivants à Paris VI et un Masters en Environnement et Ecologie à Orsay ¨Paris XI. Pendant ses études elle a pris une année sabbatique pour changer d'air, son périple l'a amené jusque sur Clipperton. Jean-Louis Etienne y organisait une expédition avec pour but de faire un inventaire de la Faune et la Flore de l'atoll Français situé au large du Mexique dans l'Océan Pacifique. Cette première expérience lui a donné le goût du voyage, de l'aventure et une sensibilité prononcée pour les problématiques environnementales.

# Elle a donc postulé pour embarquer sur la Goélette Tara, ses différentes expériences passées, son bagage scientifique et son savoir faire de « maîtresse de maison des Glénan » lui ont permis d'embarquer sur la dérive Arctique en tant que stagiaires pour son Master et responsable de l'intendance. Suite à cette aventure, elle a continué à embarquer sur les différentes expéditions de la Goelette. En parallèle de cette vie professionnelle Marion navigue en famille sur un voilier de 11 mètres sur les différents océans du globes..." ,
# )

# file_charlene = File.open(Rails.root.join("db/fixtures/portraits/charlene.jpg"))
# charlene = Portrait.create!(
#   title: "Charlene Gicquel" ,
#   description: "Charlène est officière de marine marchande, en 2009 elle rejoint l'Institut Polaire Français Paul-Emile Victor (IPEV). Elle est alors mécanicienne diéséliste pour l'hivernage de la station scientifique française Dumont d'Urville installée en Terre Adélie en Antarctique.

# Elle est en charge de l'exploitation et de l'entretien de la centrale électrique, du générateur d'eau douce et des machines auxiliaires.

# En été, elle devient conductrice de tracteur à chenilles sur le convoi continental de 1 100 km ravitaillant la station Antarctique Concordia.

# Elle passe 13 mois en Antarctique, dont 8 mois en isolement total avec 26 hivernants." ,
# )

# file_sarah = File.open(Rails.root.join("db/fixtures/portraits/sarah.jpg"))
# sarah = Portrait.create!(
#   title: "Sarah Romac" ,
#   description: "Sarah est ingénieure d'étude à la station biologique de Roscoff. Elle est en charge de la coordination des prélèvements de plancton en mer. Elle s'occupe de l'isolement et de la caractérisation des protists marins. Elle développe également des outils moléculaires pour l'étude de la diversité et des interactions du milieu planctonique." ,
# )

# file_julie = File.open(Rails.root.join("db/fixtures/portraits/julie.jpg"))
# julie = Portrait.create!(
#   title: "Julie Lhérault" ,
#   description: "Julie a commencé à naviguer très jeune d’abord sur des dériveurs dans le golfe du Morbihan, puis à l’école de voile des Glénans où elle devient moniteur de voile croisière. En 2010, elle rejoint le voilier Glory of the Sea à Ushuaia pour le convoyer jusqu’en France avec un autre skipper. Une aventure qui s’arrête rapidement après une succession de galères. Elle reste tout de même en Patagonie où elle trouve peu à peu d’autres opportunités de naviguer, d’apprendre et surtout de rejoindre l’Antarctique… A la fin de cette année là, elle est second sur Pelagic, un Damien de 16m, pour une expédition de deux mois en Géorgie du Sud avec des kayakistes Norvégiens. Puis, elle rejoint ensuite Xplore pour des voyages en Antarctique puis la traversée du pacifique.

# A la suite de cela, elle est embarquée sur Podorange où elle retrouve son compagnon Antoine. Ils skippent ensuite ensemble Spirit of Sydney et Esprit d’Equipe. Après de mauvaises aventures dont un démâtage au Cap Horn, ils font tous deux cap sur la Polynésie pour travailler 8 mois sur un bateau de charter. Julie est ensuite cheffe de pont puis second sur le navire scientifique Tara pour la mission dans le pacifique.

# Riches de ces expériences, ils se mettent à leur compte à l’âge de 27 ans en achetant un voilier de 21m, Aztec Lady. Ils proposent tous les ans des croisières au Spitzberg et au Groenland mais aussi des croisières ski voile dans les fjords Norvégiens et aux Lofotens.  " ,
# )

# file_Marie = File.open(Rails.root.join("db/fixtures/portraits/marie.jpg"))
# marie = Portrait.create!(
#   title: "Marie-Pierre Jezegou" ,
#   description: "Marie-Pierre est ingénieure d'études au Département des recherches archéologiques subaquatiques et sous-marines, DRASSM, du Ministère de la Culture, en charge de la valorisation des biens culturels maritimes du littoral du Languedoc-Roussillon depuis 1992. Elle a soutenu en 1983 une thèse de doctorat sur L'épave II de l'anse Saint Gervais à Fos-sur-mer. Elle a enseigné l'archéologie à l'Université du Gabon de 1984 à 1991. Elle est rattachée à l’UMR 5140 du CNRS à Montpellier. Ses recherches concernent principalement l'archéologie navale, la navigation et le commerce maritime en Méditerranée, dans le monde romain. Elle dirige plusieurs fouilles sous-marines lors des campagnes du DRASSM." ,
# )


#CATEGORIES
puts "creation category start"

# navigations = Category.create!(title: "Mes navigations en...")
# bons_plans = Category.create!(title: "Mes bons plans...")
histoires = Category.create!(title: "Mes histoires de...")

puts "creation category finish"

#SUB-CATEGORIES
puts "creation SubCategory start"

# voilier = SubCategory.create!(title: "Voilier", category: navigations)
# navire_marchand = SubCategory.create!(title: "Navire marchand", category: navigations)
# peche = SubCategory.create!(title: "Pêche", category: navigations)
# defense = SubCategory.create!(title: "Défense", category: navigations)
# plongee = SubCategory.create!(title: "Plongée", category: navigations)
# glisse = SubCategory.create!(title: "Glisse", category: navigations)
# escales = SubCategory.create!(title: "Escales & Ports", category: bons_plans)
# mouillages = SubCategory.create!(title: "Mouillages", category: bons_plans)
# bourse = SubCategory.create!(title: "Bourse aux équipiers", category: bons_plans)
# equipement = SubCategory.create!(title: "Equipement & Entretien", category: bons_plans)
# astuces = SubCategory.create!(title: "Astuces & Conseils", category: bons_plans)
# cuisine = SubCategory.create!(title: "Formation", category: bons_plans)
# voyage = SubCategory.create!(title: "Voyage", category: histoires)
# reportage = SubCategory.create!(title: "Reportage", category: histoires)
# regate = SubCategory.create!(title: "Regate & Sport", category: histoires)
# insolite = SubCategory.create!(title: "Insolite", category: histoires)
# construction = SubCategory.create!(title: "Construction & Technique", category: histoires)
# avarie = SubCategory.create!(title: "Avarie & Naufrage", category: histoires)
science = SubCategory.create!(title: "Science & Découverte", category: histoires)
culture = SubCategory.create!(title: "Culture", category: histoires)

puts "creation SubCategory finish"

#PODCASTS

episode_1 = Cast.new(
  format: "podcast",
  title: "'Ils arrivent pieds nus par la mer'",
  description: "Maud Veith - Photographe embarquée sur le navire de sauvetage Aquarius",
  localisation: "Marseille",
  published_date: "17/06/2020",
  user: maxine
)
episode_1.sub_categories << science
episode_1.sub_categories << culture
episode_1.save!


file_Maud = File.open(Rails.root.join("db/fixtures/portraits/maud.jpg"))
maud = Portrait.create!(
  title: "Maud Veith" ,
  description: "Maud étudie la photographie à l'Université Paris 8 et à l'Ecole des Gobelins. Marquée par le théâtre de rue, elle a photographié durant quatre ans 'Rue Balanza !' série sur l'art de rue à Lima et crée le Studio Photo Ambulant avec lequel elle collecte des portraits du monde entier depuis 2011. Son travail de laboratoire est lié à la transmission, notamment auprès de SDF ou de jeunes autistes. Elle se forme à l’âge de 30 ans au métier de marin pour ensuite embarquer régulièrement sur Tara, la goélette d’expédition scientifique, et sur l’Aquarius de l'association SOS MEDITERRANEE. Elle navigue également sur le voilier le Patriarc’h de l’association la Déferlante, où elle encadre des jeunes en réinsertion. Et elle entreprend également une série de photo sur le cargo Cobia III dans l’archipel des Tuamotu. En 2016, elle fonde l'association Femmes PHOTOgraphes, avec trois autres photographes.",
  cast: episode_1
)

# episode_2 = Cast.(type: "podcast",
#   title: "'La tête en bas, les pieds en l'air, comme suspendu au bout d'un fil'",
#   description: "Marie-Pierre Jézégou - Archéologue sous-marine embarquée sur le navire de recherche André Malraux",
#   localisation: "Brest",
#   published_date: 17/06/2020
#   user: maxine
#   portrait: marie
# )
# episode_3 = Cast.create!(type: "podcast",
#   title: "'Tu prends des tours dans le yankee ou tu te mets à la cape!'",
#   description: "Julie Lhérault - Marin embarquée sur des voiliers en Mers du Sud",
#   localisation: "Quimper",
#   published_date: 01/07/2020
#   user: maxine
#   portrait: julie
# )
# episode_4 = Cast.create!(type: "podcast",
#   title: "'L'un de nos poumons respire grâce au plancton'",
#   description: "Sarah Romac – Biologiste marin embarquée sur le navire de recherche l'Atalante",
#   localisation: "Bordeaux",
#   published_date: 16/07/2020
#   user: maxine
#   portrait: sarah
# )
# episode_5 = Cast.create!(type: "podcast",
#   title: "'Sur la base on peut être vite en situation critique'",
#   description: "Charlène Gicquel - Officière de marine marchande, mécanicienne embarquée en Terre Adélie",
#   localisation: "Nice",
#   published_date: 31/07/2020
#   user: maxine
#   portrait: charlene
# )
# episode_6 = Cast.create!(type: "podcast",
#   title: "'Pris dans les glaces'",
#   description: "Marion Lauters – Étudiante/Intendante embarquée sur la dérive Arctique de la goélette Tara",
#   localisation: "Rouen",
#   published_date: 13/08/2020
#   user: maxine
#   portrait: marion
# )
# episode_7 = Cast.create!(type: "podcast",
#   title: "'Ca serait Ouessant qui a pris de la cocaïne'",
#   description: "Caroline Britz - Reporter embarquée sur le navire de ravitaillement Marion Dufresne",
#   localisation: "Cayenne",
#   published_date: 27/08/2020
#   user: maxine
#   portrait: caroline
# )
# episode_8 = Cast.create!(type: "podcast",
#   title: "'Vivre trois jours sous la mer'",
#   description: "Emmanuelle Périe-Bardout - Plongeuse profonde embarquée sur le WHY d'Under the Pole",
#   localisation: "Paris",
#   published_date: 09/09/2020
#   user: maxine
#   portrait: emmanuelle
# )

#MINICASTS




