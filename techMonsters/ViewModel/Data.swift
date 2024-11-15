import Foundation

let foodItems = [
    FoodItem(
        name: "Uzbek Plov",
        description: "Uzbek Plov is a traditional Uzbek dish that is made with rice, meat, and spices.",
        imageName: "uzbek-plov",
        imageFW: "uzbek-plov-fw",
        rating: 5,
        numberOfIngredients: 8,
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
        rating: 3,
        numberOfIngredients: 6,
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
        rating: 2,
        numberOfIngredients: 7,
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
        rating: 5,
        numberOfIngredients: 8,
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
        rating: 4,
        numberOfIngredients: 7,
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
    )
]
