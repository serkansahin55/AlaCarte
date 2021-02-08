
MenuItem.destroy_all
User.destroy_all
Restaurant.destroy_all
Review.destroy_all
Favorite.destroy_all

## USERS 
mike = User.create(username: "Mike", password: "Mike", email: "mike@tyson.com")
joe = User.create(username: "Joe", password: "Joe", email: "joe@smith.com")


## Restaurant
alacarte = Restaurant.create(name:"Ala Carte Family Restaurant")

## Menu Items
menu_items = [ 
    {
        name: "Cheese Pizza",
        description: "Cheese sauce dough",
        price: 10,
        image: "https://images.contentstack.io/v3/assets/blt068dbc54bf4fc7ed/bltf70df0a3f7b98d04/5db5c829e9effa6ba52972ea/Triple_Cheese_Pizza_v2.jpg",
        restaurant: alacarte
    },
    {
        name: "Veggie Pizza",
        description: "Broccoli, Mushroom, Onions",
        price: 20,
        image: "https://images.contentstack.io/v3/assets/blt068dbc54bf4fc7ed/bltf70df0a3f7b98d04/5db5c829e9effa6ba52972ea/Triple_Cheese_Pizza_v2.jpg",
        restaurant: alacarte


    },
    {
        name: "Meatlovers Pizza",
        description: "Bacon, Ham, Sausage",
        price: 20,
        image: "https://images.contentstack.io/v3/assets/blt068dbc54bf4fc7ed/bltf70df0a3f7b98d04/5db5c829e9effa6ba52972ea/Triple_Cheese_Pizza_v2.jpg",
        restaurant: alacarte
    },
]

MenuItem.create(menu_items)

## Reviews

review1 = Review.create(restaurant: alacarte, user: joe, text: "Great Pizza", rating: 5)
review2 = Review.create(restaurant: alacarte, user: mike, text: "Great Pizza", rating: 4)

## Favorites
favorite1 = Favorite.create(user: mike, menu_item: MenuItem.first)
favorite2 = Favorite.create(user: mike, menu_item: MenuItem.last)
favorite3 = Favorite.create(user: joe, menu_item: MenuItem.first)
favorite4 = Favorite.create(user: joe, menu_item: MenuItem.last)


