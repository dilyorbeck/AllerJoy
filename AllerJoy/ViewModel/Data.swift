//
//  Data.swift
//  AllerJoy
//
//  Created by Dilyorbek Sharofiddinov on 04/11/24.
//

import Foundation

let foodItems = [
    FoodItem(
        name: "Uzbek Plov",
        description: "Uzbek Plov is a traditional Uzbek dish that is made with rice, meat, and spices.",
        imageName: "uzbek-plov",
        imageFW: "uzbek-plov-fw",
        ingredients: [
            FoodIngredient(
                name: "Rice",
                quantity: "2 cups (400g)",
                alternatives: [
                    AlternativeProducts(option: "Quinoa", option2: "Cauliflower rice", quantity: "2 cups (400g)")
                ]
            ),
            FoodIngredient(
                name: "Lamb or Beef",
                quantity: "500g",
                alternatives: [
                    AlternativeProducts(option: "Chicken", option2: "Tofu", quantity: "500g")
                ]
            ),
            FoodIngredient(
                name: "Carrots",
                quantity: "2 large (300g)",
                alternatives: [
                    AlternativeProducts(option: "Bell peppers", option2: "Sweet potatoes", quantity: "2 large (300g)")
                ]
            ),
            FoodIngredient(
                name: "Onions",
                quantity: "2 medium (200g)",
                alternatives: [
                    AlternativeProducts(option: "Leeks", option2: "Green onions", quantity: "2 medium (200g)")
                ]
            ),
            FoodIngredient(
                name: "Garlic",
                quantity: "1 head",
                alternatives: [
                    AlternativeProducts(option: "Ginger", option2: "Shallots", quantity: "1 head")
                ]
            ),
            FoodIngredient(
                name: "Vegetable oil",
                quantity: "3-4 tablespoons",
                alternatives: [
                    AlternativeProducts(option: "Olive oil", option2: "Coconut oil", quantity: "3-4 tablespoons")
                ]
            ),
            FoodIngredient(
                name: "Salt",
                quantity: "1 tablespoon",
                alternatives: [
                    AlternativeProducts(option: "Sea salt", option2: "Himalayan salt", quantity: "1 tablespoon")
                ]
            ),
            FoodIngredient(
                name: "Black pepper",
                quantity: "1/2 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "White pepper", option2: "Paprika", quantity: "1/2 teaspoon")
                ]
            )
        ],
        recipes: "1. Heat the oil in a large pot.\n2. Brown the meat and add onions and garlic.\n3. Add carrots, then rice and season with salt and pepper.\n4. Add water, bring to a boil, and simmer until the rice is cooked and the water is absorbed."
    ),
    
    FoodItem(
        name: "Pizza Margarita",
        description: "Pizza Margherita is topped with mozzarella, tomato sauce, and basil.",
        imageName: "pizza-margarita",
        imageFW: "pizza-margarita-fw",
        ingredients: [
            FoodIngredient(
                name: "Pizza dough",
                quantity: "1 batch",
                alternatives: [
                    AlternativeProducts(option: "Gluten-free dough", option2: "Cauliflower crust", quantity: "1 batch")
                ]
            ),
            FoodIngredient(
                name: "Tomato sauce",
                quantity: "1 cup (240g)",
                alternatives: [
                    AlternativeProducts(option: "Pesto", option2: "Alfredo sauce", quantity: "1 cup (240g)")
                ]
            ),
            FoodIngredient(
                name: "Fresh mozzarella cheese",
                quantity: "200g",
                alternatives: [
                    AlternativeProducts(option: "Vegan mozzarella", option2: "Ricotta cheese", quantity: "200g")
                ]
            ),
            FoodIngredient(
                name: "Fresh basil",
                quantity: "1 bunch",
                alternatives: [
                    AlternativeProducts(option: "Spinach", option2: "Arugula", quantity: "1 bunch")
                ]
            ),
            FoodIngredient(
                name: "Olive oil",
                quantity: "2 tablespoons",
                alternatives: [
                    AlternativeProducts(option: "Avocado oil", option2: "Coconut oil", quantity: "2 tablespoons")
                ]
            ),
            FoodIngredient(
                name: "Salt",
                quantity: "to taste",
                alternatives: [
                    AlternativeProducts(option: "Sea salt", option2: "Pink Himalayan salt", quantity: "to taste")
                ]
            )
        ],
        recipes: "1. Preheat the oven to 475°F (245°C).\n2. Roll out the pizza dough on a floured surface.\n3. Spread tomato sauce, add mozzarella, and top with basil leaves.\n4. Drizzle olive oil and bake for 10-12 minutes."
    ),
    
    FoodItem(
        name: "Tacos de Bistec",
        description: "Tacos de Bistec are crispy tortillas filled with beef, cheese, and salsa.",
        imageName: "tacos-de-bistec",
        imageFW: "tacos-de-bistec-fw",
        ingredients: [
            FoodIngredient(
                name: "Beef (steak or skirt steak)",
                quantity: "500g",
                alternatives: [
                    AlternativeProducts(option: "Chicken", option2: "Portobello mushrooms", quantity: "500g")
                ]
            ),
            FoodIngredient(
                name: "Corn tortillas",
                quantity: "8-12 small",
                alternatives: [
                    AlternativeProducts(option: "Flour tortillas", option2: "Lettuce wraps", quantity: "8-12 small")
                ]
            ),
            FoodIngredient(
                name: "Onions",
                quantity: "1 medium (100g)",
                alternatives: [
                    AlternativeProducts(option: "Shallots", option2: "Leeks", quantity: "1 medium (100g)")
                ]
            ),
            FoodIngredient(
                name: "Cilantro",
                quantity: "1 bunch",
                alternatives: [
                    AlternativeProducts(option: "Parsley", option2: "Green onions", quantity: "1 bunch")
                ]
            ),
            FoodIngredient(
                name: "Lime",
                quantity: "2 limes",
                alternatives: [
                    AlternativeProducts(option: "Lemon", option2: "Vinegar", quantity: "2 limes")
                ]
            ),
            FoodIngredient(
                name: "Salsa",
                quantity: "1 cup",
                alternatives: [
                    AlternativeProducts(option: "Guacamole", option2: "Pico de gallo", quantity: "1 cup")
                ]
            ),
            FoodIngredient(
                name: "Salt and pepper",
                quantity: "to taste",
                alternatives: [
                    AlternativeProducts(option: "Paprika", option2: "Chili powder", quantity: "to taste")
                ]
            )
        ],
        recipes: "1. Grill or pan-fry the beef to desired doneness.\n2. Warm the tortillas and chop the beef.\n3. Assemble tacos by adding beef, onions, cilantro, and a squeeze of lime.\n4. Serve with salsa."
    ),
    
    
    
    FoodItem(
        name: "Enchiladas",
        description: "Enchiladas are tortillas filled with beef, cheese, salsa, and sour cream.",
        imageName: "enchiladas",
        imageFW: "enchiladas-fw",
        ingredients: [
            FoodIngredient(
                name: "Corn tortillas",
                quantity: "8-12 tortillas",
                alternatives: [
                    AlternativeProducts(option: "Flour tortillas", option2: "Zucchini strips", quantity: "8-12 tortillas")
                ]
            ),
            FoodIngredient(
                name: "Cooked chicken or beef",
                quantity: "500g",
                alternatives: [
                    AlternativeProducts(option: "Beans", option2: "Tofu", quantity: "500g")
                ]
            ),
            FoodIngredient(
                name: "Enchilada sauce",
                quantity: "2 cups (480g)",
                alternatives: [
                    AlternativeProducts(option: "Tomato sauce", option2: "Salsa verde", quantity: "2 cups (480g)")
                ]
            ),
            FoodIngredient(
                name: "Shredded cheese",
                quantity: "200g",
                alternatives: [
                    AlternativeProducts(option: "Vegan cheese", option2: "Nutritional yeast", quantity: "200g")
                ]
            ),
            FoodIngredient(
                name: "Onions",
                quantity: "1 small (100g)",
                alternatives: [
                    AlternativeProducts(option: "Green onions", option2: "Shallots", quantity: "1 small (100g)")
                ]
            ),
            FoodIngredient(
                name: "Sour cream",
                quantity: "1/2 cup",
                alternatives: [
                    AlternativeProducts(option: "Greek yogurt", option2: "Coconut cream", quantity: "1/2 cup")
                ]
            ),
            FoodIngredient(
                name: "Cilantro",
                quantity: "1 bunch (optional)",
                alternatives: [
                    AlternativeProducts(option: "Parsley", option2: "Chives", quantity: "1 bunch (optional)")
                ]
            ),
            FoodIngredient(
                name: "Lime",
                quantity: "2 limes (optional)",
                alternatives: [
                    AlternativeProducts(option: "Lemon", option2: "Vinegar", quantity: "2 limes (optional)")
                ]
            )
        ],
        recipes: "1. Preheat oven to 375°F (190°C).\n2. Fill tortillas with cooked meat, roll them up, and place in a baking dish.\n3. Cover with enchilada sauce and cheese, then bake for 20-25 minutes.\n4. Serve with sour cream, cilantro, and lime."
    ),
    
    FoodItem(
        name: "Tomato Pasta",
        description: "A simple and delicious pasta dish with a rich tomato sauce, fresh basil, and Parmesan cheese.",
        imageName: "tomato-pasta",
        imageFW: "tomato-pasta-fw",
        ingredients: [
            FoodIngredient(
                name: "Pasta",
                quantity: "200g",
                alternatives: [
                    AlternativeProducts(option: "Gluten-free pasta", option2: "Zucchini noodles", quantity: "200g")
                ]
            ),
            FoodIngredient(
                name: "Olive oil",
                quantity: "2 tablespoons",
                alternatives: [
                    AlternativeProducts(option: "Vegetable oil", option2: "Butter", quantity: "2 tablespoons")
                ]
            ),
            FoodIngredient(
                name: "Garlic",
                quantity: "2 cloves",
                alternatives: [
                    AlternativeProducts(option: "Shallots", option2: "Ginger", quantity: "2 cloves")
                ]
            ),
            FoodIngredient(
                name: "Canned tomatoes",
                quantity: "1 can (400g)",
                alternatives: [
                    AlternativeProducts(option: "Fresh tomatoes", option2: "Tomato paste", quantity: "1 can (400g)")
                ]
            ),
            FoodIngredient(
                name: "Fresh basil",
                quantity: "1 bunch",
                alternatives: [
                    AlternativeProducts(option: "Oregano", option2: "Parsley", quantity: "1 bunch")
                ]
            ),
            FoodIngredient(
                name: "Parmesan cheese",
                quantity: "50g",
                alternatives: [
                    AlternativeProducts(option: "Pecorino Romano", option2: "Vegan Parmesan", quantity: "50g")
                ]
            ),
            FoodIngredient(
                name: "Salt",
                quantity: "1 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "Sea salt", option2: "Himalayan salt", quantity: "1 teaspoon")
                ]
            )
        ],
        recipes: "1. Cook the pasta according to the package instructions.\n2. Heat olive oil in a pan, then sauté garlic until fragrant.\n3. Add canned tomatoes, salt, and cook for 10-15 minutes until the sauce thickens.\n4. Toss the cooked pasta into the sauce and mix well.\n5. Serve with fresh basil and grated Parmesan cheese."
    ),
    
    FoodItem(
        name: "Salmon with Vegetables",
        description: "A healthy and flavorful dish with grilled salmon, served with a side of sautéed vegetables.",
        imageName: "salmon-with-vegetables",
        imageFW: "salmon-with-vegetables-fw",
        ingredients: [
            FoodIngredient(
                name: "Salmon fillets",
                quantity: "2 fillets",
                alternatives: [
                    AlternativeProducts(option: "Trout fillets", option2: "Tilapia fillets", quantity: "2 fillets")
                ]
            ),
            FoodIngredient(
                name: "Olive oil",
                quantity: "2 tablespoons",
                alternatives: [
                    AlternativeProducts(option: "Vegetable oil", option2: "Coconut oil", quantity: "2 tablespoons")
                ]
            ),
            FoodIngredient(
                name: "Garlic",
                quantity: "2 cloves",
                alternatives: [
                    AlternativeProducts(option: "Shallots", option2: "Chives", quantity: "2 cloves")
                ]
            ),
            FoodIngredient(
                name: "Zucchini",
                quantity: "1 medium",
                alternatives: [
                    AlternativeProducts(option: "Yellow squash", option2: "Cucumber", quantity: "1 medium")
                ]
            ),
            FoodIngredient(
                name: "Bell peppers",
                quantity: "2 (one red, one yellow)",
                alternatives: [
                    AlternativeProducts(option: "Carrots", option2: "Broccoli", quantity: "2")
                ]
            ),
            FoodIngredient(
                name: "Cherry tomatoes",
                quantity: "1 cup",
                alternatives: [
                    AlternativeProducts(option: "Roma tomatoes", option2: "Grape tomatoes", quantity: "1 cup")
                ]
            ),
            FoodIngredient(
                name: "Lemon",
                quantity: "1 (for zest and juice)",
                alternatives: [
                    AlternativeProducts(option: "Lime", option2: "Orange", quantity: "1")
                ]
            ),
            FoodIngredient(
                name: "Fresh parsley",
                quantity: "1 bunch",
                alternatives: [
                    AlternativeProducts(option: "Cilantro", option2: "Basil", quantity: "1 bunch")
                ]
            ),
            FoodIngredient(
                name: "Salt",
                quantity: "1 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "Sea salt", option2: "Pink Himalayan salt", quantity: "1 teaspoon")
                ]
            ),
            FoodIngredient(
                name: "Black pepper",
                quantity: "1/2 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "White pepper", option2: "Cayenne pepper", quantity: "1/2 teaspoon")
                ]
            )
        ],
        recipes: """
        1. Preheat the grill to medium-high heat.
        2. Season the salmon fillets with salt, pepper, and a squeeze of lemon juice.
        3. Grill the salmon for about 4-6 minutes per side until cooked through.
        4. While the salmon is grilling, heat olive oil in a pan over medium heat.
        5. Sauté garlic for 1-2 minutes until fragrant, then add zucchini and bell peppers.
        6. Cook the vegetables for 5-7 minutes, stirring occasionally.
        7. Add the cherry tomatoes and cook for another 2-3 minutes.
        8. Once the salmon is ready, serve with the sautéed vegetables and garnish with fresh parsley and lemon zest.
        """
    ),
    
    FoodItem(
        name: "Biryani",
        description: "A fragrant and flavorful rice dish made with aromatic spices, tender meat, and vegetables.",
        imageName: "bryani",
        imageFW: "bryani-fw",
        ingredients: [
            FoodIngredient(
                name: "Basmati rice",
                quantity: "2 cups",
                alternatives: [
                    AlternativeProducts(option: "Jasmine rice", option2: "Brown rice", quantity: "2 cups")
                ]
            ),
            FoodIngredient(
                name: "Chicken (or Beef, Lamb)",
                quantity: "500g",
                alternatives: [
                    AlternativeProducts(option: "Tofu", option2: "Paneer", quantity: "500g")
                ]
            ),
            FoodIngredient(
                name: "Onions",
                quantity: "2 large, thinly sliced",
                alternatives: [
                    AlternativeProducts(option: "Shallots", option2: "Leeks", quantity: "2 large")
                ]
            ),
            FoodIngredient(
                name: "Garlic",
                quantity: "4 cloves, minced",
                alternatives: [
                    AlternativeProducts(option: "Ginger", option2: "Garlic paste", quantity: "4 cloves")
                ]
            ),
            FoodIngredient(
                name: "Ginger",
                quantity: "1-inch piece, grated",
                alternatives: [
                    AlternativeProducts(option: "Ginger paste", option2: "Lemon zest", quantity: "1-inch piece")
                ]
            ),
            FoodIngredient(
                name: "Tomatoes",
                quantity: "2 medium, chopped",
                alternatives: [
                    AlternativeProducts(option: "Canned tomatoes", option2: "Tomato paste", quantity: "2 medium")
                ]
            ),
            FoodIngredient(
                name: "Yogurt",
                quantity: "1 cup",
                alternatives: [
                    AlternativeProducts(option: "Coconut yogurt", option2: "Greek yogurt", quantity: "1 cup")
                ]
            ),
            FoodIngredient(
                name: "Biryani masala",
                quantity: "2 tablespoons",
                alternatives: [
                    AlternativeProducts(option: "Garam masala", option2: "Curry powder", quantity: "2 tablespoons")
                ]
            ),
            FoodIngredient(
                name: "Turmeric powder",
                quantity: "1/2 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "Saffron", option2: "Annatto powder", quantity: "1/2 teaspoon")
                ]
            ),
            FoodIngredient(
                name: "Cinnamon stick",
                quantity: "1",
                alternatives: [
                    AlternativeProducts(option: "Cinnamon powder", option2: "Cloves", quantity: "1 stick")
                ]
            ),
            FoodIngredient(
                name: "Bay leaves",
                quantity: "2",
                alternatives: [
                    AlternativeProducts(option: "Thyme", option2: "Rosemary", quantity: "2")
                ]
            ),
            FoodIngredient(
                name: "Cardamom pods",
                quantity: "4",
                alternatives: [
                    AlternativeProducts(option: "Cloves", option2: "Star anise", quantity: "4")
                ]
            ),
            FoodIngredient(
                name: "Cloves",
                quantity: "4-5",
                alternatives: [
                    AlternativeProducts(option: "Allspice", option2: "Cinnamon", quantity: "4-5")
                ]
            ),
            FoodIngredient(
                name: "Salt",
                quantity: "1 tablespoon",
                alternatives: [
                    AlternativeProducts(option: "Sea salt", option2: "Himalayan salt", quantity: "1 tablespoon")
                ]
            ),
            FoodIngredient(
                name: "Black pepper",
                quantity: "1 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "White pepper", option2: "Cayenne pepper", quantity: "1 teaspoon")
                ]
            ),
            FoodIngredient(
                name: "Fresh cilantro",
                quantity: "1/4 cup, chopped",
                alternatives: [
                    AlternativeProducts(option: "Mint", option2: "Parsley", quantity: "1/4 cup")
                ]
            ),
            FoodIngredient(
                name: "Fresh mint leaves",
                quantity: "1/4 cup, chopped",
                alternatives: [
                    AlternativeProducts(option: "Basil", option2: "Oregano", quantity: "1/4 cup")
                ]
            ),
            FoodIngredient(
                name: "Ghee or vegetable oil",
                quantity: "2 tablespoons",
                alternatives: [
                    AlternativeProducts(option: "Butter", option2: "Coconut oil", quantity: "2 tablespoons")
                ]
            ),
        ],
        recipes: """
        1. Wash the basmati rice thoroughly and soak it for 30 minutes.
        2. Heat ghee or oil in a large pot. Add the cinnamon stick, bay leaves, cardamom, and cloves.
        3. Add sliced onions and sauté until golden brown.
        4. Add minced garlic, grated ginger, and chopped tomatoes. Cook for 5 minutes until tomatoes soften.
        5. Stir in biryani masala, turmeric powder, salt, and pepper.
        6. Add chicken (or choice of meat) and cook until browned and partially cooked.
        7. Add yogurt and cook for 5 more minutes, stirring occasionally.
        8. In another pot, bring water to a boil and cook the soaked rice until 70-80% cooked.
        9. Layer the partially cooked rice over the meat and vegetable mixture. Cover with a lid and cook on low heat for 15-20 minutes.
        10. Once done, fluff the rice, and garnish with chopped cilantro and mint leaves.
        11. Serve hot with raita or a side salad.
        """
    ),
    
    FoodItem(
        name: "Menemen",
        description: "A traditional Turkish dish made with scrambled eggs, tomatoes, and peppers, perfect for breakfast or any meal of the day.",
        imageName: "menemen",
        imageFW: "menemen-fw",
        ingredients: [
            FoodIngredient(
                name: "Eggs",
                quantity: "4",
                alternatives: [
                    AlternativeProducts(option: "Tofu", option2: "Chickpea flour scramble", quantity: "4")
                ]
            ),
            FoodIngredient(
                name: "Tomatoes",
                quantity: "3 medium, chopped",
                alternatives: [
                    AlternativeProducts(option: "Canned tomatoes", option2: "Roma tomatoes", quantity: "3 medium")
                ]
            ),
            FoodIngredient(
                name: "Green bell pepper",
                quantity: "1, chopped",
                alternatives: [
                    AlternativeProducts(option: "Red bell pepper", option2: "Yellow bell pepper", quantity: "1")
                ]
            ),
            FoodIngredient(
                name: "Onion",
                quantity: "1 small, finely chopped",
                alternatives: [
                    AlternativeProducts(option: "Shallots", option2: "Leeks", quantity: "1 small")
                ]
            ),
            FoodIngredient(
                name: "Garlic",
                quantity: "2 cloves, minced",
                alternatives: [
                    AlternativeProducts(option: "Shallots", option2: "Scallions", quantity: "2 cloves")
                ]
            ),
            FoodIngredient(
                name: "Olive oil",
                quantity: "2 tablespoons",
                alternatives: [
                    AlternativeProducts(option: "Butter", option2: "Vegetable oil", quantity: "2 tablespoons")
                ]
            ),
            FoodIngredient(
                name: "Red pepper flakes",
                quantity: "1/2 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "Paprika", option2: "Chili powder", quantity: "1/2 teaspoon")
                ]
            ),
            FoodIngredient(
                name: "Salt",
                quantity: "1/2 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "Sea salt", option2: "Himalayan salt", quantity: "1/2 teaspoon")
                ]
            ),
            FoodIngredient(
                name: "Black pepper",
                quantity: "1/4 teaspoon",
                alternatives: [
                    AlternativeProducts(option: "White pepper", option2: "Cayenne pepper", quantity: "1/4 teaspoon")
                ]
            ),
            FoodIngredient(
                name: "Fresh parsley",
                quantity: "1 tablespoon, chopped",
                alternatives: [
                    AlternativeProducts(option: "Fresh dill", option2: "Cilantro", quantity: "1 tablespoon")
                ]
            ),
            FoodIngredient(
                name: "Feta cheese",
                quantity: "1/4 cup, crumbled",
                alternatives: [
                    AlternativeProducts(option: "Goat cheese", option2: "Mozzarella", quantity: "1/4 cup")
                ]
            )
        ],
        recipes: """
        1. Heat the olive oil in a large pan over medium heat.
        2. Add the onion and sauté for 2-3 minutes until softened.
        3. Add the garlic and green bell pepper and cook for another 2-3 minutes until the pepper is tender.
        4. Stir in the chopped tomatoes, salt, black pepper, and red pepper flakes. Cook for 5-7 minutes until the tomatoes break down and the sauce thickens.
        5. Crack the eggs directly into the pan and gently stir with a spoon, allowing the eggs to cook while mixing with the vegetables.
        6. Cook for 3-5 minutes until the eggs are scrambled and just set (adjust the cooking time depending on your preferred egg consistency).
        7. Remove from heat and sprinkle with crumbled feta cheese and fresh parsley.
        8. Serve hot with crusty bread or pita.
        """
    )

]

