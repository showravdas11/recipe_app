class Recipes {
  int id;
  String name;
  String image;
  double calories;
  double time;
  double ratings;
  String instructions;

  Recipes({
    required this.id,
    required this.name,
    required this.image,
    required this.calories,
    required this.time,
    required this.ratings,
    required this.instructions,
  });
}

final List<Recipes> recipe = [
  Recipes(
      id: 1,
      image: "https://i.ibb.co/93r3h0d/kos9av1699014767.jpg",
      name: "Lamb Pilaf (Plov)",
      calories: 500,
      time: 40,
      ratings: 4.5,
      instructions: """
        Place the raisins and prunes into a small bowl and pour over enough water to cover.
        Add lemon juice and let soak for at least 1 hour.
        Drain.
        Roughly chop the prunes.
        Meanwhile, heat the butter in a large pan, add the onion, and cook for 5 minutes.
        Add cubed lamb, ground lamb, and crushed garlic cloves.
        Fry for 5 minutes, stirring constantly until browned.
        Pour 2/3 cup (150 milliliters) of stock into the pan.
        Bring to a boil, then lower the heat, cover, and simmer for 1 hour, or until the lamb is tender.
        Add the remaining stock and bring to a boil.
        Add rinsed long-grain white rice and a large pinch of saffron.
        Stir, then cover, and simmer for 15 minutes, or until the rice is tender.
        Add the drained raisins, drained chopped prunes, and salt and pepper to taste.
        Heat through for a few minutes, then turn out onto a warmed serving dish and garnish with sprigs of flat-leaf parsley.
"""),
  Recipes(
      id: 2,
      image: "https://i.ibb.co/M6mGMpd/wyxwsp1486979827.jpg",
      name: "Chicken Handi",
      calories: 300,
      time: 45,
      ratings: 4.7,
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

"""),
  Recipes(
      id: 3,
      image: "https://i.ibb.co/F59wF8N/syqypv1486981727.jpg",
      name: "Chicken Alfredo Primavera",
      calories: 600,
      time: 30,
      ratings: 4.2,
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

"""),
  Recipes(
      id: 4,
      image: "https://i.ibb.co/wYvwc1t/uuuspp1511297945.jpg",
      name: "Chicken & mushroom Hotpot",
      calories: 400,
      time: 20,
      ratings: 3.9,
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

"""),
  Recipes(
      id: 5,
      image: "https://i.ibb.co/M5Hvckk/sstssx1487349585.jpg",
      name: "Thai Green Curry",
      calories: 45,
      time: 40,
      ratings: 5,
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
"""),
  Recipes(
      id: 6,
      image:
          "https://i.ibb.co/M5Hvckk/sstssx1487349585.jpghttps://i.ibb.co/9cnvWbX/xqusqy1487348868.jpg",
      name: "Kentucky Fried Chicken",
      calories: 500,
      time: 20,
      ratings: 3.5,
      instructions: """
      Preheat fryer to 350°F.
      Thoroughly mix together all the spice mix ingredients.
      Combine spice mix with flour, brown sugar and salt.
      Dip chicken pieces in egg white to lightly coat them, then transfer to flour mixture.
      Turn a few times and make sure the flour mix is really stuck to the chicken.
      Repeat with all the chicken pieces.
      Let chicken pieces rest for 5 minutes so crust has a chance to dry a bit.
      Fry chicken in batches.
      Breasts and wings should take 12-14 minutes, and legs and thighs will need a few more minutes.
      Chicken pieces are done when a meat thermometer inserted into the thickest part reads 165°F.
      Let chicken drain on a few paper towels when it comes out of the fryer.
      Serve hot.
"""),
  Recipes(
      id: 7,
      image: "https://i.ibb.co/6ZZQ5hj/1548772327.jpg",
      name: "Baked salmon with fennel & tomatoes",
      calories: 400,
      time: 30,
      ratings: 4.5,
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

"""),
  Recipes(
      id: 8,
      image: "https://i.ibb.co/Fg0SCnh/7n8su21699013057.jpg",
      name: "Fish Soup ",
      calories: 500,
      time: 30,
      ratings: 5,
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

"""),
  Recipes(
      id: 9,
      image: "https://i.ibb.co/t4nw01K/xxyupu1468262513.jpg",
      name: "Honey Teriyaki Salmon",
      calories: 200,
      time: 15,
      ratings: 4.7,
      instructions: """
      Mix all the ingredients in the Honey Teriyaki Glaze together.
      Whisk to blend well.
      Combine the salmon and the Glaze together.
      Heat up a skillet on medium-low heat.
      Add the oil, Pan-fry the salmon on both sides until it’s completely cooked inside and the glaze thickens.
      Garnish with sesame and serve immediately.

"""),
  Recipes(
      id: 10,
      image: "https://i.ibb.co/gv9nBd0/hqaejl1695738653.jpg",
      name: "Bread omelette",
      calories: 100,
      time: 10,
      ratings: 4,
      instructions: """
      Make and enjoy

"""),
  Recipes(
      id: 11,
      image: "https://i.ibb.co/QPB3QSR/urtpqw1487341253.jpg",
      name: "Baingan Bharta",
      calories: 300,
      time: 25,
      ratings: 4.0,
      instructions: """
      Rinse the baingan (eggplant or aubergine) in water.
      Pat dry with a kitchen napkin.
      Apply some oil all over and keep it for roasting on an open flame.
      You can also grill the baingan or roast in the oven.
      But then you won't get the smoky flavor of the baingan.
      Keep the eggplant turning after a 2 to 3 minutes on the flame, so that its evenly cooked.
      You could also embed some garlic cloves in the baingan and then roast it.
      2.
      Roast the aubergine till its completely cooked and tender.
      With a knife check the doneness.
      The knife should slid easily in aubergines without any resistance.
      Remove the baingan and immerse in a bowl of water till it cools down.
      3.
      You can also do the dhungar technique of infusing charcoal smoky flavor in the baingan.
      This is an optional step.
      Use natural charcoal for this method.
      Heat a small piece of charcoal on flame till it becomes smoking hot and red.
      4.
      Make small cuts on the baingan with a knife.
      Place the red hot charcoal in the same plate where the roasted aubergine is kept.
      Add a few drops of oil on the charcoal.
      The charcoal would begin to smoke.
      5.
      As soon as smoke begins to release from the charcoal, cover the entire plate tightly with a large bowl.
      Allow the charcoal smoke to get infused for 1 to 2 minutes.
      The more you do, the more smoky the baingan bharta will become.
      I just keep for a minute.
      Alternatively, you can also do this dhungar method once the baingan bharta is cooked, just like the way we do for Dal Tadka.
      6.
      Peel the skin from the roasted and smoked eggplant.
      7.
      Chop the cooked eggplant finely or you can even mash it.
      8.
      In a kadai or pan, heat oil.
      Then add finely chopped onions and garlic.
      9.
      Saute the onions till translucent.
      Don't brown them.
      10.
      Add chopped green chilies and saute for a minute.
      11.
      Add the chopped tomatoes and mix it well.
      12.
      Bhuno (saute) the tomatoes till the oil starts separating from the mixture.
      13.
      Now add the red chili powder.
      Stir and mix well.
      14.
      Add the chopped cooked baingan.
      15.
      Stir and mix the chopped baingan very well with the onion­tomato masala mixture.
      16.
      Season with salt.
      Stir and saute for some more 4 to 5 minutes more.
      17.
      Finally stir in the coriander leaves with the baingan bharta or garnish it with them.
      Serve Baingan Bharta with phulkas, rotis or chapatis.
      It goes well even with bread, toasted or grilled bread and plain rice or jeera rice.

"""),
  Recipes(
      id: 12,
      image: "https://i.ibb.co/XYRV03n/tvvxpv1511191952.jpg",
      name: "Broccoli & Stilton soup",
      calories: 600,
      time: 20,
      ratings: 2.5,
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

"""),
  Recipes(
      id: 13,
      image: "https://i.ibb.co/6Nvr2QK/cgl60b1683206581.jpg",
      name: "Beef Mechado",
      calories: 300,
      time: 45,
      ratings: 4.5,
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

"""),
  Recipes(
      id: 14,
      image: "https://i.ibb.co/QM1BbKy/bc8v651619789840.jpg",
      name: "Beef Rendang",
      calories: 400,
      time: 50,
      ratings: 5,
      instructions: """
      Chop the spice paste ingredients and then blend it in a food processor until fine.
      Heat the oil in a stew pot, add the spice paste, cinnamon, cloves, star anise, and cardamom and stir-fry until aromatic.
      Add the beef and the pounded lemongrass and stir for 1 minute.
      Add the coconut milk, tamarind juice, water, and simmer on medium heat, stirring frequently until the meat is almost cooked.
      Add the kaffir lime leaves, kerisik (toasted coconut), sugar or palm sugar, stirring to blend well with the meat.
      Lower the heat to low, cover the lid, and simmer for 1 to 1 1/2 hours or until the meat is really tender and the gravy has dried up.
      Add more salt and sugar to taste.
      Serve immediately with steamed rice and save some for overnight.

"""),
  Recipes(
      id: 15,
      image: "https://i.ibb.co/st5tvZ7/urzj1d1587670726.jpg",
      name: "Big Mac",
      calories: 200,
      time: 20,
      ratings: 4.2,
      instructions: """
            For the Big Mac sauce, combine all the ingredients in a bowl, season with salt and chill until ready to use.
      2.
      To make the patties, season the mince with salt and pepper and form into 4 balls using about 1/3 cup mince each.
      Place each onto a square of baking paper and flatten to form into four x 15cm circles.
      Heat oil in a large frypan over high heat.
      In 2 batches, cook beef patties for 1-2 minutes each side until lightly charred and cooked through.
      Remove from heat and keep warm.
      Repeat with remaining two patties.
      3.
      Carefully slice each burger bun into three acrossways, then lightly toast.
      4.
      To assemble the burgers, spread a little Big Mac sauce over the bottom base.
      Top with some chopped onion, shredded lettuce, slice of cheese, beef patty and some pickle slices.
      Top with the middle bun layer, and spread with more Big Mac sauce, onion, lettuce, pickles, beef patty and then finish with more sauce.
      Top with burger lid to serve.
      5.
      After waiting half an hour for your food to settle, go for a jog.

"""),
  Recipes(
      id: 16,
      image: "https://i.ibb.co/3S7RJ4y/sypxpx1515365095.jpg",
      name: "Brown Stew Chicken",
      calories: 200,
      time: 35,
      ratings: 5,
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

"""),
  Recipes(
      id: 17,
      image: "https://i.ibb.co/YfXZzYG/rpvptu1511641092.jpg",
      name: "Blackberry Fool",
      calories: 400,
      time: 30,
      ratings: 5,
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


"""),
  Recipes(
      id: 18,
      image: "https://i.ibb.co/SnqpgBX/uyqrrv1511553350.jpg",
      name: "Beef Dumpling Stew",
      calories: 500,
      time: 50,
      ratings: 4.6,
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

"""),
  Recipes(
      id: 19,
      image: "https://i.ibb.co/crPWCNF/uuqvwu1504629254.jpg",
      name: "Braised Beef Chilli",
      calories: 600,
      time: 60,
      ratings: 4,
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

"""),
  Recipes(
      id: 20,
      image: "https://i.ibb.co/jgQvm1p/vvpprx1487325699.jpg",
      name: "Beef Wellington",
      calories: 400,
      time: 30,
      ratings: 3.8,
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

"""),
  Recipes(
      id: 21,
      image: "https://i.ibb.co/cgsDvWq/tyywsw1505930373.jpg",
      name: "Chicken Karaage",
      calories: 100,
      time: 25,
      ratings: 4.5,
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

"""),
  Recipes(
      id: 22,
      image: "https://i.ibb.co/JnK8Mjp/yypvst1511386427.jpg",
      name: "Chocolate Raspberry Brownies",
      calories: 50,
      time: 60,
      ratings: 3.2,
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

"""),
  Recipes(
      id: 23,
      image: "https://i.ibb.co/CQk3gkq/uttuxy1511382180.jpg",
      name: "Chocolate Avocado Mousse",
      calories: 200,
      time: 45,
      ratings: 2.7,
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

"""),
  Recipes(
      id: 24,
      image: "https://i.ibb.co/S6Jtg5K/wuxrtu1483564410.jpg",
      name: "Dal fry",
      calories: 300,
      time: 30,
      ratings: 4.2,
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

"""),
  Recipes(
      id: 25,
      image: "https://i.ibb.co/NrsXNYB/a15wsa1614349126.jpg",
      name: "Fish fofos",
      calories: 200,
      time: 30,
      ratings: 3.2,
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

"""),
  Recipes(
      id: 26,
      image: "https://i.ibb.co/hy8qMxR/xutquv1505330523.jpg",
      name: "Grilled Mac and Cheese Sandwich",
      calories: 150,
      time: 20,
      ratings: 5,
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

"""),
  Recipes(
      id: 27,
      image: "https://i.ibb.co/dbkxczB/qptpvt1487339892.jpg",
      name: "Tandoori chicken",
      calories: 200,
      time: 35,
      ratings: 5,
      instructions: """
      Mix the lemon juice with the paprika and red onions in a large shallow dish.
      Slash each chicken thigh three times, then turn them in the juice and set aside for 10 mins.
      Mix all of the marinade ingredients together and pour over the chicken.
      Give everything a good mix, then cover and chill for at least 1 hr.
      This can be done up to a day in advance.
      Heat the grill.
      Lift the chicken pieces onto a rack over a baking tray.
      Brush over a little oil and grill for 8 mins on each side or until lightly charred and completely cooked through.


"""),
  Recipes(
      id: 28,
      image: "https://i.ibb.co/DGbc6L1/kcv6hj1598733479.jpg",
      name: "Shawarma",
      calories: 300,
      time: 15,
      ratings: 4.8,
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

"""),
  Recipes(
      id: 29,
      image: "https://i.ibb.co/S5Rbzff/g046bb1663960946.jpg",
      name: "Sushi",
      calories: 500,
      time: 50,
      ratings: 4.2,
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

"""),
  Recipes(
      id: 30,
      image: "https://i.ibb.co/0p5QzpY/xrttsx1487339558.jpg",
      name: "Lamb Biryani",
      calories: 400,
      time: 60,
      ratings: 4.5,
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

"""),
];
