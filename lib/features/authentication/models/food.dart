class Food {
  int id;
  String name;
  String image;
  double cal;
  double time;
  double rate;
  int reviews;
  bool isLiked;
  String instructions;
  List<String> ingredients;

  Food({
    required this.id,
    required this.name,
    required this.image,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
    required this.isLiked,
    required this.instructions,
    required this.ingredients,
  });
}

final List<Food> foods = [
  Food(
    id: 1,
    name: "Blini Pancakes",
    image: "https://www.themealdb.com/images/media/meals/0206h11699013358.jpg",
    cal: 500,
    time: 40,
    rate: 4.5,
    reviews: 23,
    isLiked: false,
    instructions:
        """In a large bowl, whisk together 1/2 cup buckwheat flour, 2/3 cup all-purpose flour, 1/2 teaspoon salt, and 1 teaspoon yeast. Make a well in the center and pour in 1 cup warm milk, whisking until the batter is smooth. Cover the bowl and let the batter rise until doubled, about 1 hour.Enrich and Rest the Batter Stir 2 tablespoons melted butter and 1 egg yolk into the batter. In a separate bowl, whisk 1 egg white until stiff, but not dry. Fold the whisked egg white into the batter. Cover the bowl and let the batter stand 20 minutes. Pan-Fry the Blini Heat butter in a large nonstick skillet over medium heat. Drop quarter-sized dollops of batter into the pan, being careful not to overcrowd the pan. Cook for about 1 minute or until bubbles form. Turn and cook for about 30 additional seconds. Remove the finished blini onto a plate and cover them with a clean kitchen towel to keep warm. Add more butter to the pan and repeat the frying process with the remaining batter.""",
    ingredients: [
      "1/2 cup Buckwheat",
      "2/3 Cup Flour",
      "1/2 tsp Salt",
      "1 tsp Yeast",
      "1 cup Milk",
      "2 tbs Butter",
      "1 Seperated Egg",
    ],
  ),
  Food(
    id: 2,
    name: "Chicken Handi",
    image: "https://i.ibb.co/M6mGMpd/wyxwsp1486979827.jpg",
    cal: 300,
    time: 70,
    rate: 4.7,
    reviews: 23,
    isLiked: true,
    instructions:
        """Take a large pot or wok, big enough to cook all the chicken, and heat the oil in it. Once the oil is hot, add sliced onion and fry them until deep golden brown. Then take them out on a plate and set aside. To the same pot, add the chopped garlic and sauté for a minute. Then add the chopped tomatoes and cook until tomatoes turn soft. This would take about 5 minutes. Then return the fried onion to the pot and stir. Add ginger paste and sauté well. Now add the cumin seeds, half of the coriander seeds and chopped green chillies. Give them a quick stir. Next goes in the spices – turmeric powder and red chilli powder. Sauté the spices well for couple of minutes. Add the chicken pieces to the wok, season it with salt to taste and cook the chicken covered on medium-low heat until the chicken is almost cooked through. This would take about 15 minutes. Slowly sautéing the chicken will enhance the flavor, so do not expedite this step by putting it on high heat. When the oil separates from the spices, add the beaten yogurt keeping the heat on lowest so that the yogurt doesn’t split. Sprinkle the remaining coriander seeds and add half of the dried fenugreek leaves. Mix well. Finally add the cream and give a final mix to combine everything well. Sprinkle the remaining kasuri methi and garam masala and serve the chicken handi hot with naan or rotis. Enjoy!""",
    ingredients: [
      "1.2 kg Chicken",
      "5 thinly sliced Onion",
      "2 finely chopped Tomatoes",
      "8 cloves chopped Garlic",
      "1 tbsp Ginger paste",
      "¼ cup Vegetable oil",
      "2 tsp Cumin seeds",
      "3 tsp Coriander seeds",
      "1 tsp Turmeric powder",
      "1 tsp Chilli powder",
      "2 Green chilli",
      "1 cup Yogurt",
      "¾ cup Cream",
      "3 tsp Dried fenugreek",
      "1 tsp Garam masala",
    ],
  ),
  Food(
    id: 3,
    name: "Chicken Alfredo Primavera",
    image: "https://i.ibb.co/F59wF8N/syqypv1486981727.jpg",
    cal: 600,
    time: 40,
    rate: 4.2,
    reviews: 23,
    isLiked: true,
    instructions: """
      Take a large pot or wok, big enough to cook all the chicken, and heat the oil in it.
      Once the oil is hot, add sliced onion and fry them until deep golden brown.
      Then take them out on a plate and set aside.
      To the same pot, add the chopped garlic and sauté for a minute.
      Then add the chopped tomatoes and cook until tomatoes turn soft.
      This would take about 5 minutes.
      Then return the fried onion to the pot and stir.
      Add ginger paste and sauté well.
      Now add the cumin seeds, half of the coriander seeds and chopped green chillies.
      Give them a quick stir.
      Next goes in the spices – turmeric powder and red chilli powder.
      Sauté the spices well for couple of minutes.
      Add the chicken pieces to the wok, season it with salt to taste and cook the chicken covered on medium-low heat until the chicken is almost cooked through.
      This would take about 15 minutes.
      Slowly sautéing the chicken will enhance the flavor, so do not expedite this step by putting it on high heat.
      When the oil separates from the spices, add the beaten yogurt keeping the heat on lowest so that the yogurt doesn’t split.
      Sprinkle the remaining coriander seeds and add half of the dried fenugreek leaves.
      Mix well.
      Finally add the cream and give a final mix to combine everything well.
      Sprinkle the remaining kasuri methi and garam masala and serve the chicken handi hot with naan or rotis.
      Enjoy!

""",
    ingredients: [
      "2 tablespoons butter",
      "3 tablespoons Olive Oil",
      "5 boneless Chiken",
      "1 teaspoon Salt",
      "1 cut into 1/2-inch cubes squah",
      "1 Head chopped Broccoli",
      "8 ounce sliced mushrooms",
      "1 red pepper",
      "1 chopped onion",
      "3 cloves garlic",
      "1/2 teaspoon red pepper flakes",
      "1/2 cup white wine",
      "1/2 cup milk",
      "1/2 cup heavy cream",
      "1 cup grated parmesan cheese",
    ],
  ),
  Food(
    id: 4,
    name: "Chicken & mushroom Hotpot",
    image: "https://i.ibb.co/wYvwc1t/uuuspp1511297945.jpg",
    cal: 400,
    time: 35,
    rate: 3.9,
    reviews: 23,
    isLiked: false,
    instructions: """
      Heat oven to 200C/180C fan/gas 6.
      Put the butter in a medium-size saucepan and place over a medium heat.
      Add the onion and leave to cook for 5 mins, stirring occasionally.
      Add the mushrooms to the saucepan with the onions.
      Once the onion and mushrooms are almost cooked, stir in the flour – this will make a thick paste called a roux.
      If you are using a stock cube, crumble the cube into the roux now and stir well.
      Put the roux over a low heat and stir continuously for 2 mins – this will cook the flour and stop the sauce from having a floury taste.
      Take the roux off the heat.
      Slowly add the fresh stock, if using, or pour in 500ml water if you’ve used a stock cube, stirring all the time.
      Once all the liquid has been added, season with pepper, a pinch of nutmeg and mustard powder.
      Put the saucepan back onto a medium heat and slowly bring it to the boil, stirring all the time.
      Once the sauce has thickened, place on a very low heat.
      Add the cooked chicken and vegetables to the sauce and stir well.
      Grease a medium-size ovenproof pie dish with a little butter and pour in the chicken and mushroom filling.
      Carefully lay the potatoes on top of the hot-pot filling, overlapping them slightly, almost like a pie top.
      Brush the potatoes with a little melted butter and cook in the oven for about 35 mins.
      The hot-pot is ready once the potatoes are cooked and golden brown.

""",
    ingredients: [
      "50g Butter",
      "1 chopped Onion",
      "100g Mushrooms",
      "40g Plain Flour",
      "1 Chicken Stock Cube",
      "pinch Nutmeg",
      "pinch Mustard Powder",
      "250g Chicken",
      "2 Handfuls Sweetcorn",
      "2 large Potatoes",
      "1 knob Butter",
    ],
  ),
  Food(
    id: 5,
    name: "Thai Green Curry",
    image: "https://i.ibb.co/M5Hvckk/sstssx1487349585.jpg",
    cal: 45,
    time: 40,
    rate: 5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Put the potatoes in a pan of boiling water and cook for 5 minutes.
Throw in the beans and cook for a further 3 minutes, by which time both should be just tender but not too soft.
Drain and put to one side.
In a wok or large frying pan, heat the oil until very hot, then drop in the garlic and cook until golden, this should take only a few seconds.
Don’t let it go very dark or it will spoil the taste.
Spoon in the curry paste and stir it around for a few seconds to begin to cook the spices and release all the flavours.
Next, pour in the coconut milk and let it come to a bubble.
Stir in the fish sauce and sugar, then the pieces of chicken.
Turn the heat down to a simmer and cook, covered, for about 8 minutes until the chicken is cooked.
Tip in the potatoes and beans and let them warm through in the hot coconut milk, then add a lovely citrussy flavour by stirring in the shredded lime leaves (or lime zest).
The basil leaves go in next, but only leave them briefly on the heat or they will quickly lose their brightness.
Scatter with the lime garnish and serve immediately with boiled rice.
""",
    ingredients: [
      "225g new potatoes",
      "100g green beans",
      "1 tbsp sunflower oil",
      "1 clove garlic",
      "4 tsp Thai green curry paste",
      "400ml coconut milk",
      "2 tsp Thai fish sauce",
      "1 tsp Sugar",
      "450g boneless Chicken",
      "2 fresh kaffir leaves lime",
      "handfull basil",
      "Boiled Rice",
    ],
  ),
  Food(
    id: 6,
    name: "Kentucky Fried Chicken",
    image: "https://www.themealdb.com/images/media/meals/xqusqy1487348868.jpg",
    cal: 500,
    time: 20,
    rate: 3.5,
    reviews: 23,
    isLiked: true,
    instructions:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
    ingredients: [
      "50g Lamb",
      "1 tbs Lemon Juice",
      "2 tbs Butter",
      "1 chopped Onion",
      "450g Lamb",
      "2 cloves Garlic",
      "600ml Vegetable Stock",
      "2 cups Rice",
      "Pinch Saffron",
      "Garnish Parsley",
    ],
  ),
  Food(
    id: 7,
    name: "Baked salmon with fennel & tomatoes",
    image: "https://i.ibb.co/6ZZQ5hj/1548772327.jpg",
    cal: 400,
    time: 30,
    rate: 4.5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Heat oven to 180C/fan 160C/gas 4.
      Trim the fronds from the fennel and set aside.
      Cut the fennel bulbs in half, then cut each half into 3 wedges.
      Cook in boiling salted water for 10 mins, then drain well.
      Chop the fennel fronds roughly, then mix with the parsley and lemon zest.
      Spread the drained fennel over a shallow ovenproof dish, then add the tomatoes.
      Drizzle with olive oil, then bake for 10 mins.
      Nestle the salmon among the veg, sprinkle with lemon juice, then bake 15 mins more until the fish is just cooked.
      Scatter over the parsley and serve.

""",
    ingredients: [
      "2 medium Fennel",
      "2 tbs chopped Parsley",
      "Juice of 1 Lemon",
      "175g Cherry Tomatoes",
      "1 tbs Olive Oil",
      "350g Salmon",
      "to serve Black Olives",
    ],
  ),
  Food(
    id: 8,
    name: "Fish Soup ",
    image: "https://i.ibb.co/Fg0SCnh/7n8su21699013057.jpg",
    cal: 500,
    time: 30,
    rate: 5,
    reviews: 23,
    isLiked: true,
    instructions: """
      In a medium pot, heat the olive oil over medium-high heat.
      Add the onions and cook, stirring occasionally until the onions start to caramelize.
      Add the carrots and cook until the carrots start to soften, about 4 more minutes.
      Add the stock, water, potatoes, bay leaves, and black peppercorns.
      Season with salt and bring to a boil.
      Reduce heat, cover and cook for 10 minutes.
      Add the millet and cook for 15 more minutes until millet and potatoes are cooked.
      Gently add the fish cubes.
      Stir and bring the soup to a simmer.
      The fish will cook through very fast, so make sure to not overcook them.
      They are done when the flesh is opaque and flakes easily.
      Garnish the soup with chopped fresh dill or parsley before serving.

""",
    ingredients: [
      "2 tbs Olive Oil",
      "1 sliced Onion",
      "2 medium Carrots",
      "3 cups Fish Stock",
      "3 cups Water",
      "4 large Potatoes",
      "3 Bay Leaf",
      "1 Cod",
      "1 Salmon",
    ],
  ),
  Food(
    id: 9,
    name: "Honey Teriyaki Salmon",
    image: "https://i.ibb.co/t4nw01K/xxyupu1468262513.jpg",
    cal: 200,
    time: 15,
    rate: 4.7,
    reviews: 23,
    isLiked: false,
    instructions:
        """Mix all the ingredients in the Honey Teriyaki Glaze together. Whisk to blend well. Combine the salmon and the Glaze together. Heat up a skillet on medium-low heat. Add the oil, Pan-fry the salmon on both sides until it’s completely cooked inside and the glaze thickens. Garnish with sesame and serve immediately.""",
    ingredients: [
      "1 lb Salmon",
      "1 tablespoon Olive oil",
      "2 tablespoons Soy Sauce",
      "2 tablespoons Sake",
      "4 tablespoons Sesame Seed",
    ],
  ),
  Food(
    id: 10,
    name: "Lamb Pilaf (Plov)",
    image: "https://i.ibb.co/93r3h0d/kos9av1699014767.jpg",
    cal: 500,
    time: 40,
    rate: 4.5,
    reviews: 23,
    isLiked: false,
    instructions:
        """Place the raisins and prunes into a small bowl and pour over enough water to cover. Add lemon juice and let soak for at least 1 hour. Drain. Roughly chop the prunes. Meanwhile, heat the butter in a large pan, add the onion, and cook for 5 minutes. Add cubed lamb, ground lamb, and crushed garlic cloves. Fry for 5 minutes, stirring constantly until browned. Pour 2/3 cup (150 milliliters) of stock into the pan. Bring to a boil, then lower the heat, cover, and simmer for 1 hour, or until the lamb is tender. Add the remaining stock and bring to a boil. Add rinsed long-grain white rice and a large pinch of saffron. Stir, then cover, and simmer for 15 minutes, or until the rice is tender. Add the drained raisins, drained chopped prunes, and salt and pepper to taste. Heat through for a few minutes, then turn out onto a warmed serving dish and garnish with sprigs of flat-leaf parsley.
        
""",
    ingredients: [
      "50g Lamb",
      "1 tbs Lemon Juice",
      "2 tbs Butter",
      "1 chopped Onion",
      "450g Lamb",
      "2 cloves Garlic",
      "600ml Vegetable Stock",
      "2 cups Rice",
      "Pinch Saffron",
      "Garnish Parsley",
    ],
  ),
  Food(
    id: 11,
    name: "Chicken Enchilada Casserole",
    image: "https://www.themealdb.com/images/media/meals/qtuwxu1468233098.jpg",
    cal: 300,
    time: 25,
    rate: 4.0,
    reviews: 23,
    isLiked: false,
    instructions: """
      Cut each chicken breast in about 3 pieces, so that it cooks faster and put it in a small pot. Pour Enchilada sauce over it and cook covered on low to medium heat until chicken is cooked through, about 20 minutes. No water is needed, the chicken will cook in the Enchilada sauce. Make sure you stir occasionally so that it doesn't stick to the bottom. Remove chicken from the pot and shred with two forks. Preheat oven to 375 F degrees. Start layering the casserole. Start with about ¼ cup of the leftover Enchilada sauce over the bottom of a baking dish. I used a longer baking dish, so that I can put 2 corn tortillas across. Place 2 tortillas on the bottom, top with ⅓ of the chicken and ⅓ of the remaining sauce. Sprinkle with ⅓ of the cheese and repeat starting with 2 more tortillas, then chicken, sauce, cheese. Repeat with last layer with the remaining ingredients, tortillas, chicken, sauce and cheese. Bake for 20 to 30 minutes uncovered, until bubbly and cheese has melted and started to brown on top. Serve warm.

""",
    ingredients: [
      "14 oz jar Enchilada sauce",
      "3 Cups shredded Monterey Jack cheese",
      "6 corn tortillas",
      "2 chicken breasts",
    ],
  ),
  Food(
    id: 12,
    name: "Broccoli & Stilton soup",
    image: "https://i.ibb.co/XYRV03n/tvvxpv1511191952.jpg",
    cal: 600,
    time: 20,
    rate: 2.5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Heat the rapeseed oil in a large saucepan and then add the onions.
      Cook on a medium heat until soft.
      Add a splash of water if the onions start to catch.
      Add the celery, leek, potato and a knob of butter.
      Stir until melted, then cover with a lid.
      Allow to sweat for 5 minutes.
      Remove the lid.
      Pour in the stock and add any chunky bits of broccoli stalk.
      Cook for 10 – 15 minutes until all the vegetables are soft.
      Add the rest of the broccoli and cook for a further 5 minutes.
      Carefully transfer to a blender and blitz until smooth.
      Stir in the stilton, allowing a few lumps to remain.
      Season with black pepper and serve.

""",
    ingredients: [
      "2 tblsp Rapeseed Oil",
      "1 finely chopped Onion",
      "1 Celery",
      "1 sliced Leek",
      "1 medium Potatoes",
      "1 knob Butter",
      "1 litre hot Vegetable Stock",
      "1 Head chopped Broccoli",
      "140g Stilton Cheese",
    ],
  ),
  Food(
    id: 13,
    name: "Beef Mechado",
    image: "https://i.ibb.co/6Nvr2QK/cgl60b1683206581.jpg",
    cal: 300,
    time: 60,
    rate: 4.5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Make the beef tenderloin marinade by combining soy sauce, vinegar, ginger, garlic, sesame oil, olive oil, sugar, salt, and ground black pepper in a large bowl.
      Mix well.
      1.
      Add the cubed beef tenderloin to the bowl with the beef tenderloin marinade.
      Gently toss to coat the beef.
      Let it stay for 1 hour.
      2.
      Using a metal or bamboo skewer, assemble the beef kebob by skewering the vegetables and marinated beef tenderloin.
      3.
      Heat-up the grill and start grilling the beef kebobs for 3 minutes per side.
      This will give you a medium beef that is juicy and tender on the inside.
      Add more time if you want your beef well done, but it will be less tender.
      4.
      Transfer to a serving plate.
      Serve with Saffron rice.
      5.
      Share and enjoy!

""",
    ingredients: [
      "3 cloves Garlic",
      "1 sliced Onion",
      "2 Lbs Beef",
      "8 ounces Tomato Puree",
      "1 cup Water",
      "3 tbs Olive Oil",
      "1 Slice Lemon",
      "1 large Potatoes",
      "1/4 cup Soy Sauce",
      "1/2 tsp Black Pepper",
      "2 Bay Leaves",
      "To taste Salt",
    ],
  ),
  Food(
    id: 14,
    name: "Beef Rendang",
    image: "https://i.ibb.co/QM1BbKy/bc8v651619789840.jpg",
    cal: 400,
    time: 50,
    rate: 5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Chop the spice paste ingredients and then blend it in a food processor until fine.
      Heat the oil in a stew pot, add the spice paste, cinnamon, cloves, star anise, and cardamom and stir-fry until aromatic.
      Add the beef and the pounded lemongrass and stir for 1 minute.
      Add the coconut milk, tamarind juice, water, and simmer on medium heat, stirring frequently until the meat is almost cooked.
      Add the kaffir lime leaves, kerisik (toasted coconut), sugar or palm sugar, stirring to blend well with the meat.
      Lower the heat to low, cover the lid, and simmer for 1 to 1 1/2 hours or until the meat is really tender and the gravy has dried up.
      Add more salt and sugar to taste.
      Serve immediately with steamed rice and save some for overnight.

""",
    ingredients: [
      "1lb Beef",
      "5 tbs Vegetable Oil",
      "1 Cinnamon Stick",
      "3 Cloves",
      "3 Star Anise",
      "3 Cardamom",
      "1 cup Coconut Cream",
      "1 cup Water",
      "2 tbs Tamarind Paste",
      "6 Lime",
      "1 tbs Sugar",
      "5 Challots",
    ],
  ),
  Food(
    id: 15,
    name: "Big Mac",
    image: "https://i.ibb.co/st5tvZ7/urzj1d1587670726.jpg",
    cal: 200,
    time: 20,
    rate: 4.2,
    reviews: 23,
    isLiked: false,
    instructions: """
      1. For the Big Mac sauce, combine all the ingredients in a bowl, season with salt and chill until ready to use.
      2.To make the patties, season the mince with salt and pepper and form into 4 balls using about 1/3 cup mince each.
      Place each onto a square of baking paper and flatten to form into four x 15cm circles.
      Heat oil in a large frypan over high heat.
      In 2 batches, cook beef patties for 1-2 minutes each side until lightly charred and cooked through.
      Remove from heat and keep warm.
      Repeat with remaining two patties.
      3. Carefully slice each burger bun into three acrossways, then lightly toast.
      4. To assemble the burgers, spread a little Big Mac sauce over the bottom base.
      Top with some chopped onion, shredded lettuce, slice of cheese, beef patty and some pickle slices.
      Top with the middle bun layer, and spread with more Big Mac sauce, onion, lettuce, pickles, beef patty and then finish with more sauce.
      Top with burger lid to serve.
      5. After waiting half an hour for your food to settle, go for a jog.

""",
    ingredients: [
      "400g Minced Beef",
      "2 tbs Olive Oil",
      "2 Sesame Seed Burger Buns",
      "Chopped Onion",
      " 1/4 Iceberg Lettuce",
      "2 sliced Cheese",
      "2 large Dill Pickles",
      "1 cup Mayonnaise",
      "2 tsp White Wine Vinegar",
      "Pinch Pepper",
      "2 tsp Mustard",
      "1 1/2 tsp Onion Salt",
      "1 1/2 tsp Garlic Powder",
      "1/2 tsp Paprika"
    ],
  ),
  Food(
    id: 16,
    name: "Brown Stew Chicken",
    image: "https://i.ibb.co/3S7RJ4y/sypxpx1515365095.jpg",
    cal: 200,
    time: 50,
    rate: 5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Squeeze lime over chicken and rub well.
      Drain off excess lime juice.
      Combine tomato, scallion, onion, garlic, pepper, thyme, pimento and soy sauce in a large bowl with the chicken pieces.
      Cover and marinate at least one hour.
      Heat oil in a dutch pot or large saucepan.
      Shake off the seasonings as you remove each piece of chicken from the marinade.
      Reserve the marinade for sauce.
      Lightly brown the chicken a few pieces at a time in very hot oil.
      Place browned chicken pieces on a plate to rest while you brown the remaining pieces.
      Drain off excess oil and return the chicken to the pan.
      Pour the marinade over the chicken and add the carrots.
      Stir and cook over medium heat for 10 minutes.
      Mix flour and coconut milk and add to stew, stirring constantly.
      Turn heat down to minimum and cook another 20 minutes or until tender.!

""",
    ingredients: [
      "1 whole Chicken",
      "1 chopped Tomato",
      "2 chopped Onions",
      "2 chopped Garlic Clove",
      "1 chopped Red Pepper",
      "1 chopped Carrots",
      "1 Lime",
      "2 tsp Thyme",
      "1 tsp Allspice",
      "2 tbs Soy Sauce",
      "2 tsp Cornstarch",
      "2 cups Coconut Milk",
      "1 tbs Vegetable Oil",
    ],
  ),
  Food(
    id: 17,
    name: "Blackberry Fool",
    image: "https://i.ibb.co/YfXZzYG/rpvptu1511641092.jpg",
    cal: 400,
    time: 30,
    rate: 5,
    reviews: 23,
    isLiked: false,
    instructions: """
      For the biscuits, preheat the oven to 200C/180C (fan)/Gas 6 and line two large baking trays with baking parchment.
      Scatter the nuts over a baking tray and roast in the oven for 6-8 minutes, or until golden-brown.
      Watch them carefully so that they don’t have a chance to burn.
      Remove from the oven, tip onto a board and leave to cool.
      Put the butter and sugar in a large bowl and beat with a wooden spoon until light and creamy.
      Roughly chop the cooled nuts and add to the creamed butter and sugar, along with the lemon zest, flour and baking powder.
      Stir well until the mixture comes together and forms a ball – you may need to use your hands.
      Divide the biscuit dough into 24 even pieces and roll into small balls.
      Place the balls the prepared baking trays, spaced well apart to allow for spreading.
      Press the biscuits to flatten to around 1cm/½in thick.
      Bake the biscuits, one tray at a time, for 12 minutes or until very pale golden-brown.
      Leave to cool on the trays.
      They will be very soft when you take them out of the oven, but will crisp as they cool.
      Store in an airtight tin and eat within five days.
      For the fool, rinse the blackberries in a colander to wash away any dust or dirt.
      Put the blackberries in a non-stick saucepan and sprinkle over the caster sugar.
      Stir in the lemon juice and heat gently for two minutes, or until the blackberries begin to soften and release their juices.
      Remove and reserve 12 blackberries for decoration and continue cooking the rest.
      Simmer the blackberries very gently for 15 minutes, stirring regularly until very soft and squidgy.
      Remove from the heat and press the berries and juice through a sieve over a bowl, using the bottom of a ladle to help you extract as much of the purée as possible.
      Leave the purée to cool and discard the seeds.
      You should end up with around 325ml/11fl oz of purée.
      Put the cream and yoghurt in a large bowl and whip with an electric whisk until soft peaks form when the whisk is removed from the bowl – the acidity of the fruit will thicken the cream further, so don’t take it too far.
      When the purée is completely cold, adjust the sweetness to taste by adding more sugar if needed.
      Pour it into the bowl with the whipped cream and yoghurt and stir just once or twice until very lightly combined.
      Spoon the blackberry fool into individual wide, glass dishes – or one large, single bowl.
      It should look quite marbled, so don’t over-stir it.
      Scatter a few tiny mint leaves on top and decorate with the reserved blackberries.
      Sprinkle with a little sugar if you like and serve with the hazelnut biscuits.


""",
    ingredients: [
      "Hazlenuts",
      "125g Butter",
      "150g Caster Sugar",
      "Grated Lemon",
      "150g Plain Flour",
      "½ tsp Baking Powder",
      "600g Blackberrys",
      "75g Sugar",
      "2 tbs Caster Sugar",
      "1 tbs Lemon Juice",
      "300ml Double Cream",
      "100ml Yogurt",
      "Garnish with Mint"
    ],
  ),
  Food(
    id: 18,
    name: "Beef Dumpling Stew",
    image: "https://i.ibb.co/SnqpgBX/uyqrrv1511553350.jpg",
    cal: 500,
    time: 50,
    rate: 4.6,
    reviews: 23,
    isLiked: false,
    instructions: """
            Preheat the oven to 180C/350F/Gas 4.
      For the beef stew, heat the oil and butter in an ovenproof casserole and fry the beef until browned on all sides.
      Sprinkle over the flour and cook for a further 2-3 minutes.
      Add the garlic and all the vegetables and fry for 1-2 minutes.
      Stir in the wine, stock and herbs, then add the Worcestershire sauce and balsamic vinegar, to taste.
      Season with salt and freshly ground black pepper.
      Cover with a lid, transfer to the oven and cook for about two hours, or until the meat is tender.
      For the dumplings, sift the flour, baking powder and salt into a bowl.
      Add the suet and enough water to form a thick dough.
      With floured hands, roll spoonfuls of the dough into small balls.
      After two hours, remove the lid from the stew and place the balls on top of the stew.
      Cover, return to the oven and cook for a further 20 minutes, or until the dumplings have swollen and are tender.
      (If you prefer your dumplings with a golden top, leave the lid off when returning to the oven.
      ) To serve, place a spoonful of mashed potato onto each of four serving plates and top with the stew and dumplings.
      Sprinkle with chopped parsley.

""",
    ingredients: [
      "2 tbs Olive Oil",
      "25g Butter",
      "750g Beef",
      "2 tblsp Plain Flour",
      "2 cloves minced Garlic",
      "175g Onions",
      "150g Celery",
      "150g Carrots",
      "2 chopped Leek",
      "200g Swede",
      "150ml Red Wine",
      "500g Beef Stock",
      "2 Bay Leaf",
      "3 tbs Thyme",
      "3 tblsp chopped Parsley",
    ],
  ),
  Food(
    id: 19,
    name: "Braised Beef Chilli",
    image: "https://i.ibb.co/crPWCNF/uuqvwu1504629254.jpg",
    cal: 600,
    time: 60,
    rate: 4,
    reviews: 23,
    isLiked: false,
    instructions: """
      Preheat the oven to 120C/225F/gas mark 1.
      Take the meat out of the fridge to de-chill.
      Pulse the onions and garlic in a food processor until finely chopped.
      Heat 2 tbsp olive oil in a large casserole and sear the meat on all sides until golden.
      Set to one side and add another small slug of oil to brown the chorizo.
      Remove and add the onion and garlic, spices, herbs and chillies then cook until soft in the chorizo oil.
      Season with salt and pepper and add the vinegar, tomatoes, ketchup and sugar.
      Put all the meat back into the pot with 400ml water (or red wine if you prefer), bring up to a simmer and cook, covered, in the low oven.
      After 2 hours, check the meat and add the beans.
      Cook for a further hour and just before serving, pull the meat apart with a pair of forks.

""",
    ingredients: [
      "1kg Beef",
      "3 Onions",
      "4 cloves Garlic",
      "Dash Olive oil",
      "300g Chorizo",
      "2 tsp Cumin",
      "2 tsp All spice",
      "1 tsp Cloves",
      "1 large Cinnamon stick",
      "3 Bay Leaves",
      "2 tsp dried Oregano",
      "2 ancho Ancho Chillies",
      "3 tbsp Balsamic Vinegar",
      "2 x 400g Plum Tomatoes",
      "2 tbsp Tomato Ketchup",
    ],
  ),
  Food(
    id: 20,
    name: "Beef Wellington",
    image: "https://i.ibb.co/jgQvm1p/vvpprx1487325699.jpg",
    cal: 400,
    time: 30,
    rate: 3.8,
    reviews: 23,
    isLiked: false,
    instructions: """
      Put the mushrooms into a food processor with some seasoning and pulse to a rough paste.
      Scrape the paste into a pan and cook over a high heat for about 10 mins, tossing frequently, to cook out the moisture from the mushrooms.
      Spread out on a plate to cool.
      Heat in a frying pan and add a little olive oil.
      Season the beef and sear in the hot pan for 30 secs only on each side.
      (You don't want to cook it at this stage, just colour it).
      Remove the beef from the pan and leave to cool, then brush all over with the mustard.
      Lay a sheet of cling film on a work surface and arrange the Parma ham slices on it, in slightly overlapping rows.
      With a palette knife, spread the mushroom paste over the ham, then place the seared beef fillet in the middle.
      Keeping a tight hold of the cling film from the edge, neatly roll the Parma ham and mushrooms around the beef to form a tight barrel shape.
      Twist the ends of the cling film to secure.
      Chill for 15-20 mins to allow the beef to set and keep its shape.
      Roll out the puff pastry on a floured surface to a large rectangle, the thickness of a £1 coin.
      Remove the cling film from the beef, then lay in the centre.
      Brush the surrounding pastry with egg yolk.
      Fold the ends over, the wrap the pastry around the beef, cutting off any excess.
      Turn over, so the seam is underneath, and place on a baking sheet.
      Brush over all the pastry with egg and chill for about 15 mins to let the pastry rest.
      Heat the oven to 200C, 400F, gas 6.
      Lightly score the pastry at 1cm intervals and glaze again with beaten egg yolk.
      Bake for 20 minutes, then lower the oven setting to 180C, 350F, gas 4 and cook for another 15 mins.
      Allow to rest for 10-15 mins before slicing and serving with the side dishes of your choice.
      The beef should still be pink in the centre when you serve it.

""",
    ingredients: [
      "400g mushrooms",
      "1-2tbsp English Mustard",
      "Dash Olive Oil",
      "750g piece Beef Fillet",
      "6-8 slices Parma ham",
      "500g Puff Pastry",
      "Dusting Flour",
      "2 Beaten Egg Yolks",
    ],
  ),
  Food(
    id: 21,
    name: "Chicken Karaage",
    image: "https://i.ibb.co/cgsDvWq/tyywsw1505930373.jpg",
    cal: 60,
    time: 25,
    rate: 4.5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Add the ginger, garlic, soy sauce, sake and sugar to a bowl and whisk to combine.
      Add the chicken, then stir to coat evenly.
      Cover and refrigerate for at least 1 hour.
      Add 1 inch of vegetable oil to a heavy bottomed pot and heat until the oil reaches 360 degrees F.
      Line a wire rack with 2 sheets of paper towels and get your tongs out.
      Put the potato starch in a bowl Add a handful of chicken to the potato starch and toss to coat each piece evenly.
      Fry the karaage in batches until the exterior is a medium brown and the chicken is cooked through.
      Transfer the fried chicken to the paper towel lined rack.
      If you want the karaage to stay crispy longer, you can fry the chicken a second time, until it's a darker color after it's cooled off once.
      Serve with lemon wedges.

""",
    ingredients: [
      "450 grams Boneless skin Chicken thigh",
      "1 tablespoon Ginger",
      "1 clove Garlic",
      "2 tablespoons Soy sauce",
      "1 tablespoon Sake",
      "2 teaspoon Granulated sugar",
      "1/3 cup Potato starch",
      "1/3 cup Vegetable oil",
      "1/3 cup Lemon",
    ],
  ),
  Food(
    id: 22,
    name: "Chocolate Raspberry Brownies",
    image: "https://i.ibb.co/JnK8Mjp/yypvst1511386427.jpg",
    cal: 50,
    time: 60,
    rate: 3.2,
    reviews: 23,
    isLiked: false,
    instructions: """
      Heat oven to 180C/160C fan/gas 4.
      Line a 20 x 30cm baking tray tin with baking parchment.
      Put the chocolate, butter and sugar in a pan and gently melt, stirring occasionally with a wooden spoon.
      Remove from the heat.
      Stir the eggs, one by one, into the melted chocolate mixture.
      Sieve over the flour and cocoa, and stir in.
      Stir in half the raspberries, scrape into the tray, then scatter over the remaining raspberries.
      Bake on the middle shelf for 30 mins or, if you prefer a firmer texture, for 5 mins more.
      Cool before slicing into squares.
      Store in an airtight container for up to 3 days.

""",
    ingredients: [
      "200g Dark Chocolate",
      "100g Milk Chocolate",
      "250g Salted Butter",
      "400g Light Brown Soft Sugar",
      "4 large Eggs",
      "140g Plain Flour",
      "50g Cocoa",
      "200g Raspberries",
    ],
  ),
  Food(
    id: 23,
    name: "Chocolate Avocado Mousse",
    image: "https://i.ibb.co/CQk3gkq/uttuxy1511382180.jpg",
    cal: 200,
    time: 45,
    rate: 2.7,
    reviews: 23,
    isLiked: false,
    instructions: """
      1.
      Blend all the mousse ingredients together in your food processor until smooth.
      Add the cacao powder first and, as you blend, have all the ingredients to hand in order to adjust the ratios slightly as the size of avocados and bananas varies so much.
      The perfect ratio in order to avoid the dish tasting too much of either is to use equal amounts of both.
      2.
      Taste and add a few drops of stevia if you feel you need more sweetness.
      3.
      Fill little cups or shot glasses with the mousse, sprinkle with the cacao powder or nibs and serve.
      Tip If you don’t have a frozen banana to hand you can just use a normal one and then chill the mousse before serving for a cooling dessert.

""",
    ingredients: [
      "1 Banana",
      "3 tbsp Cacao",
      "1 Avocado",
      "2 tblsp Honey",
      "1 tsp Lemon Juice",
      "1 tsp Vanilla",
      "2 tbsp Water",
      "pinch Sea Salt",
    ],
  ),
  Food(
    id: 24,
    name: "Dal fry",
    image: "https://i.ibb.co/S6Jtg5K/wuxrtu1483564410.jpg",
    cal: 300,
    time: 30,
    rate: 4.2,
    reviews: 23,
    isLiked: false,
    instructions: """
      Wash and soak toor dal in approx.
      3 cups of water, for at least one hours.
      Dal will be double in volume after soaking.
      Drain the water.
      Cook dal with 2-1/2 cups water and add salt, turmeric, on medium high heat, until soft in texture (approximately 30 mins) it should be like thick soup.
      In a frying pan, heat the ghee.
      Add cumin seeds, and mustard seeds.
      After the seeds crack, add bay leaves, green chili, ginger and chili powder.
      Stir for a few seconds.
      Add tomatoes, salt and sugar stir and cook until tomatoes are tender and mushy.
      Add cilantro and garam masala cook for about one minute.
      Pour the seasoning over dal mix it well and cook for another minute.
      Serve with Naan

""",
    ingredients: [
      "1 cup Toor dal",
      "2-1/2 cups Water",
      "1 tsp Salt",
      "1/4 tsp Turmeric",
      "3 tbs Ghee",
      "1 cup Chopped tomatoes",
      "1/2 tsp Cumin seeds",
      "1/2 tsp Mustard Seeds",
      "2 Bay Leaf",
      "1 tbs chopped Green Chili",
      "2 tsp shredded Ginger",
      "2 tbs Cilantro",
      "1/2 tsp Red Pepper",
      "1/2 tsp Salt",
      "1 tsp Sugar",
    ],
  ),
  Food(
    id: 25,
    name: "Fish fofos",
    image: "https://i.ibb.co/NrsXNYB/a15wsa1614349126.jpg",
    cal: 200,
    time: 30,
    rate: 3.2,
    reviews: 23,
    isLiked: false,
    instructions: """
      STEP 1 Put the fish into a lidded pan and pour over enough water to cover.
      Bring to a simmer and gently poach for 10 minutes over a low heat with the lid on.
      Drain and flake the fish.
      STEP 2 Put the fish, potato, green chilli, coriander, cumin, black pepper, garlic and ginger in a large bowl.
      Season, add the rice flour, mix well and break in 1 egg.
      Stir the mixture and divide into 15, then form into small logs.
      Break the remaining eggs into a bowl and whisk lightly.
      Put the breadcrumbs into another bowl.
      Dip each fofo in the beaten egg followed by the breadcrumb mixture.
      Chill for 20 minutes.
      STEP 3 Heat 1cm of oil in a large frying pan over a medium heat.
      Fry the fofos in batches for 2 minutes on each side, turning gently to get an even golden brown colour all over.
      Drain on kitchen paper and repeat with the remaining fofos.
      STEP 4 For the onion salad, mix together the onion, coriander and lemon juice with a pinch of salt.
      Serve with the fofos and mango chutney.

""",
    ingredients: [
      "600g Haddock",
      "300g Potatoes",
      "1 chopped Green Chilli",
      "3 tbs Coriander",
      "1 tsp Cumin Seeds",
      "1/2 tsp Pepper",
      "3 cloves Garlic",
      "2 pieces Ginger",
      "2 tbs Flour",
      "3 Eggs",
      "75g Breadcrumbs",
      "For frying Vegetable Oil",
    ],
  ),
  Food(
    id: 26,
    name: "Grilled Mac and Cheese Sandwich",
    image: "https://i.ibb.co/hy8qMxR/xutquv1505330523.jpg",
    cal: 50,
    time: 20,
    rate: 5,
    reviews: 23,
    isLiked: false,
    instructions: """
       Make the mac and cheese 1.
      Bring a medium saucepan of generously salted water (you want it to taste like seawater) to a boil.
      Add the pasta and cook, stirring occasionally, until al dente, 8 to 10 minutes, or according to the package directions.
      The pasta should be tender but still chewy.
      2.
      While the pasta is cooking, in a small bowl, whisk together the flour, mustard powder, garlic powder, salt, black pepper, and cayenne pepper.
      3.
      Drain the pasta in a colander.
      Place the empty pasta pan (no need to wash it) over low heat and add the butter.
      When the butter has melted, whisk in the flour mixture and continue to cook, whisking frequently, until the mixture is beginning to brown and has a pleasant, nutty aroma, about 1 minute.
      Watch carefully so it does not scorch on the bottom of the pan.
      4.
      Slowly whisk the milk and cream into the flour mixture until everything is really well combined.
      Cook, whisking constantly, until the sauce is heated through and just begins to thicken, about 2 minutes.
      Remove from the heat.
      Gradually add the cheese while stirring constantly with a wooden spoon or silicone spatula and keep stirring until the cheese has melted into the sauce.
      Then stir in the drained cooked pasta.
      5.
      Line a 9-by-13-inch (23-by-33-centimeter) rimmed baking sheet with parchment paper or aluminum foil.
      Coat the paper or foil with nonstick cooking spray or slick it with butter.
      Pour the warm mac and cheese onto the prepared baking sheet and spread it evenly with a spatula.
      Coat another piece of parchment paper with cooking spray or butter and place it, oiled or buttered side down, directly on the surface of the mac and cheese.
      Refrigerate until cool and firm, about 1 hour.
      Make the grilled cheese 6.
      Heat a large cast-iron or nonstick skillet over medium-low heat.
      7.
      In a small bowl, stir together the 4 tablespoons (55 grams) butter and garlic powder until well blended.
      8.
      Remove the mac and cheese from the refrigerator and peel off the top layer of parchment paper.
      Carefully cut into 8 equal pieces.
      Each piece will make 1 grilled mac and cheese sandwich.
      (You can stash each individual portion in a double layer of resealable plastic bags and refrigerate for up to 3 days or freeze it for up to 1 month.
      ) 9.
      Spread 3/4 teaspoon garlic butter on one side of each bread slice.
      Place half of the slices, buttered-side down, on a clean cutting board.
      Top each with one slice of Cheddar, then 1 piece of the mac and cheese.
      (Transfer from the baking sheet by scooting your hand or a spatula under each piece of mac and cheese and then flipping it over onto a sandwich.
      ) Place 1 slice of Jack on top of each.
      Finish with the remaining bread slices, buttered-side up.
      10.
      Using a wide spatula, place as many sandwiches in the pan as will fit without crowding it.
      Cover and cook until the bottoms are nicely browned, about 4 minutes.
      Turn and cook until the second sides are browned, the cheese is melted, and the mac and cheese is heated through, about 4 minutes more.
      11.
      Repeat with the remaining ingredients.
      Cut the sandwiches in half, if desired, and serve.

""",
    ingredients: [
      "8 ounces (230 grams) Macaroni",
      "1/3 cup Plain Flour",
      "3/4 teaspoon Mustard Powder",
      "1/2 teaspoon Garlic powder",
      "1/2 teaspoon Kosher salt",
      "1/2 teaspoon Black pepper",
      "1/8 teaspoon Cayenne pepper",
      "6 tablespoons (85 grams) Butter",
      "1 1/2 cups (360 milliliters) Whole Milk",
      "1 cup (240 milliliters) Heavy Cream",
      "1 pound (455 grams) Monterey Jack Cheese",
      "4 tablespoons (55 grams) Butter",
      "1 teaspoon garlic powder",
      "16 slices square Bread",
      "8 slices mild Cheddar Cheese",
    ],
  ),
  Food(
    id: 27,
    name: "Tandoori chicken",
    image: "https://i.ibb.co/dbkxczB/qptpvt1487339892.jpg",
    cal: 200,
    time: 35,
    rate: 5,
    reviews: 23,
    isLiked: false,
    instructions: """
      Mix the lemon juice with the paprika and red onions in a large shallow dish.
      Slash each chicken thigh three times, then turn them in the juice and set aside for 10 mins.
      Mix all of the marinade ingredients together and pour over the chicken.
      Give everything a good mix, then cover and chill for at least 1 hr.
      This can be done up to a day in advance.
      Heat the grill.
      Lift the chicken pieces onto a rack over a baking tray.
      Brush over a little oil and grill for 8 mins on each side or until lightly charred and completely cooked through.


""",
    ingredients: [
      "2 Juice lemons",
      "4 tsp paprika",
      "2 finely chopped red onions",
      "16 skinnless chicken thighs",
      "For brushing vegetable oil",
      "300ml Greek yogurt",
      "large piece ginger",
      "4 garlic clove",
      "¾ tsp garam masala",
      "¾ tsp ground cumin",
      "½ tsp chilli powder",
      "¼ tsp turmeric",
    ],
  ),
  Food(
    id: 28,
    name: "Shawarma",
    image: "https://i.ibb.co/DGbc6L1/kcv6hj1598733479.jpg",
    cal: 300,
    time: 15,
    rate: 4.8,
    reviews: 23,
    isLiked: false,
    instructions: """
            Combine the marinade ingredients in a large ziplock bag (or bowl).
      Add the chicken and use your hands to make sure each piece is coated.
      If using a ziplock bag, I find it convenient to close the bag then massage the bag to disperse the rub all over each chicken piece.
      Marinate overnight or up to 24 hours.
      Combine the Yoghurt Sauce ingredients in a bowl and mix.
      Cover and put in the fridge until required (it will last for 3 days in the fridge).
      Heat grill/BBQ (or large heavy based pan on stove) on medium high.
      You should not need to oil it because the marinade has oil in it and also thigh fillets have fat.
      But if you are worried then oil your hotplate/grill.
      (See notes for baking) Place chicken on the grill and cook the first side for 4 to 5 minutes until nicely charred, then turn and cook the other side for 3 to 4 minutes (the 2nd side takes less time).
      Remove chicken from the grill and cover loosely with foil.
      Set aside to rest for 5 minutes.
      TO SERVE Slice chicken and pile onto platter alongside flatbreads, Salad and the Yoghurt Sauce.
      To make a wrap, get a piece of flatbread and smear with Yoghurt Sauce.
      Top with a bit of lettuce and tomato and Chicken Shawarma.
      Roll up and enjoy!

""",
    ingredients: [
      "1 kg Chicken Thighs",
      "1 tbs Coriander",
      "1 tbs Cumin",
      "1 tbs Cardamom",
      "1 tsp Cayenne Pepper",
      "2 tsp Paprika",
      "2 tbs Lemon Juice",
      "3 tbs Olive Oil",
      "1 cup Greek Yogurt",
      "1 Garlic Clove",
      "1 tsp Cumin",
      "Splash Lemon Juice",
      "Sliced Lettuce",
      "Sliced Tomato",
      "6 Pita Bread",
    ],
  ),
  Food(
    id: 29,
    name: "Sushi",
    image: "https://i.ibb.co/S5Rbzff/g046bb1663960946.jpg",
    cal: 500,
    time: 50,
    rate: 4.2,
    reviews: 23,
    isLiked: false,
    instructions: """
            STEP 1 TO MAKE SUSHI ROLLS: Pat out some rice.
      Lay a nori sheet on the mat, shiny-side down.
      Dip your hands in the vinegared water, then pat handfuls of rice on top in a 1cm thick layer, leaving the furthest edge from you clear.
      STEP 2 Spread over some Japanese mayonnaise.
      Use a spoon to spread out a thin layer of mayonnaise down the middle of the rice.
      STEP 3 Add the filling.
      Get your child to top the mayonnaise with a line of their favourite fillings – here we’ve used tuna and cucumber.
      STEP 4 Roll it up.
      Lift the edge of the mat over the rice, applying a little pressure to keep everything in a tight roll.
      STEP 5 Stick down the sides like a stamp.
      When you get to the edge without any rice, brush with a little water and continue to roll into a tight roll.
      STEP 6 Wrap in cling film.
      Remove the mat and roll tightly in cling film before a grown-up cuts the sushi into thick slices, then unravel the cling film.
      STEP 7 TO MAKE PRESSED SUSHI: Layer over some smoked salmon.
      Line a loaf tin with cling film, then place a thin layer of smoked salmon inside on top of the cling film.
      STEP 8 Cover with rice and press down.
      Press about 3cm of rice over the fish, fold the cling film over and press down as much as you can, using another tin if you have one.
      STEP 9 Tip it out like a sandcastle.
      Turn block of sushi onto a chopping board.
      Get a grown-up to cut into fingers, then remove the cling film.
      STEP 10 TO MAKE SUSHI BALLS: Choose your topping.
      Get a small square of cling film and place a topping, like half a prawn or a small piece of smoked salmon, on it.
      Use damp hands to roll walnut-sized balls of rice and place on the topping.
      STEP 11 Make into tight balls.
      Bring the corners of the cling film together and tighten into balls by twisting it up, then unwrap and serve.

""",
    ingredients: [
      "300ml Sushi Rice",
      "100ml Rice wine",
      "2 tbs Caster Sugar",
      "3 tbs Mayonnaise",
      "1 tbs Rice wine",
      "1 tbs Soy Sauce",
      "1 Cucumber",
    ],
  ),
  Food(
    id: 30,
    name: "Lamb Biryani",
    image: "https://i.ibb.co/0p5QzpY/xrttsx1487339558.jpg",
    cal: 400,
    time: 60,
    rate: 4.5,
    reviews: 23,
    isLiked: false,
    instructions: """
            Grind the cashew, poppy seeds and cumin seeds into a smooth paste, using as little water as possible.
      Set aside.
      Deep fry the sliced onions when it is hot.
      Don’t overcrowd the oil.
      When the onions turn light brown, remove from oil and drain on paper towel.
      The fried onion will crisp up as it drains.
      Also fry the cashewnuts till golden brown.
      Set aside.
      Wash the rice and soak in water for twenty minutes.
      Meanwhile, take a big wide pan, add oil in medium heat, add the sliced onions, add the blended paste, to it add the green chillies, ginger garlic paste and garlic and fry for a minute.
      Then add the tomatoes and sauté them well till they are cooked and not mushy.
      Then to it add the red chilli powder, biryani powder, mint, coriander leaves and sauté them well.
      Add the yogurt and mix well.
      I always move the skillet away from the heat when adding yogurt which prevents it from curdling.
      Now after returning the skillet back to the stove, add the washed lamb and salt and ½ cup water and mix well.
      Cook for 1 hour and cook it covered in medium low heat or put it in a pressure cooker for 6 whistles.
      If the water is not drained totally, heat it by keeping it open.
      Take another big pan, add thrice the cup of rice you use, and boil it.
      When it is boiling high, add the rice, salt and jeera and mix well.
      After 7 minutes exact or when the rice is 80% done.
      Switch off and drain the rice.
      Now, the layering starts.
      To the lamb, pat and level it.
      Add the drained hot rice on the top of it.
      Garnish with fried onions, ghee, mint, coriander leaves and saffron dissolved in milk.
      Cover the dish and bake in a 350f oven for 15 minutes or till the cooked but not mushy.
      Or cook in the stove medium heat for 12 minutes and lowest heat for 5 minutes.
      And switch off.
      Mix and serve hot! Notes 1.
      If you are cooking in oven, do make sure to cook in a big oven safe pan and cover it tight and then keep in oven for the final step.
      2.
      You can skip biryani masala if you don’t have and add just garam masala (1 tsp and red chilli powder – 3 tsp instead of 1 tsp) 3.
      If it is spicy in the end, squeeze some lemon, it will reduce the heat and enhance the flavors also.

""",
    ingredients: [
      "12 Cashew nuts",
      "½ tbsp Khus khus",
      "½ tbsp Cumin seeds",
      "3 sliced thinly Onions",
      "2 tsp Ginger garlic paste",
      "4 whole Garlic",
      "Leaves Mint",
      "Leaves Cilantro",
      "½ tsp dissolved in ½ cup warm milk Saffron",
      "2 tbsp Ghee",
      "2 Cups Basmati rice",
      "½ cup Full fat yogurt",
      "1 tbsp Cumin Seeds",
      "½ Bay leaf",
      "1 thin piece Cinnamon",
    ],
  ),
];
