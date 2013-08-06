class Api::DistributionListsController < ApplicationController
  #before_filter :authenticate_user!, :only => [:create]

  respond_to :json

  API_VERSION = '1.0'

  def show
    widget ={
      locations: [{
          name: "Location 1",
          street_address_line_1: "2603 E. Main St",
          city: "Richmond",
          state: "VA",
          zip_code: "23323",
          phone: "(804) 355-0001",
          media: [{
              name: "Logo",
              media_type: "image",
              url: "http://fast-crag-9968.herokuapp.com/assets/samples/millies_logo.png",
              tags: "millies, diner, logo"
            }]
        }],
      lists: [{
          name: "Brunch",
          categories: [{
            name: "Specials",
            products: [{
                name: "Grilled Angus Beef Loin",
                description: "with 2 poached eggs, grilled asparagus & hollandaise",
                price: "13.95",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image2.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Eggs Benny",
                description: "with Smithfield ham, 2 poached eggs on a housemade english muffin with hollandaise",
                price: "13.95",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image3.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Castro's Mess",
                description: "3 eggs scrambled with Cuban spiced pork, onions, black
beans, tomatoes, cheddar, crispy tortilla strips",
                price: "11.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image4.jpg",
                  tags: "millies, diner, logo"
                }]
              },{
                name: "Cajun Mess",
                description: "3 eggs scrambled with spicy Andouille sausage, crawfish
meat, tomatoes, onions, peppers, corn & cheddar",
                price: "12.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image5.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Virginia Omelet",
                description: "with lump crabmeat, Smithfield ham, tomatoes and cheddar cheese",
                price: "13.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image6.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Crab and Scrambled Egg Enchilada",
                description: "with spicy tomato and lime sour cream sauces",
                price: "13.95",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image7.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Soft Scrambled Eggs with Lobster",
                description: "bacon, tomatoes, mushrooms, puff pastry & hollandaise",
                price: "13.95",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image8.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Eggs Benetiz",
                description: "chorizo-spiked papusas with 2 poached eggs, salsa verde & pico de gallo",
                price: "11.95",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image9.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Corned Beef and Hash",
                description: "with 2 poached eggs and hollandaise",
                price: "11.95",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image10.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "the General Lee",
                description: "2 poached eggs, sausage gravy, housemade cheddar biscuit",
                price: "11.95",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image1.jpg",
                  tags: "millies, diner, logo"
                }]
              }]
            }, {
            name: "Entrees",
            products: [{
                name: "Devil's Mess",
                description: "Open-faced omelet of spicy sausage, onions, green peppers, garlic,
tomatoes and mild curry, finished with melted white cheddar and avocado",
                price: "12.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image2.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                pname: "Veggie Mess",
                description: "Same as Devil's Mess, but with vegetables instead of sausage",
                price: "11.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image3.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Mushroom, Tomato, and White Cheddar Omelet",
                description: "",
                price: "8.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image4.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Avocado, Tomato, and White Cheddar Omelet",
                description: "",
                price: "9.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image5.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled Eggplant, Tomato, and Brie Sandwich",
                description: "on whole grain bread",
                price: "7.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image6.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled Portabello Mushroom Sandwich",
                description: "on Kaiser with red onion marmalade",
                price: "7.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image7.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Spicy Black Bean and Cheddar Cheese Burritos",
                description: "with salsa and sour cream",
                price: "7.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image8.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled Chipotle Chicken Sandwich",
                description: "on Kaiser roll",
                price: "7.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image9.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Avocado, Tomato, and White Cheddar Omelet",
                description: "",
                price: "9.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image10.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "8 oz. Hamburger",
                description: "on Kaiser roll with lettuce, tomato & mayo",
                price: "8.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image1.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "8 oz. Cheeseburger",
                description: "on Kaiser roll with lettuce, tomato & mayo",
                price: "9.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image2.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Bacon, Lettuce, and Tomato Sandwich",
                description: "on whole grain bread",
                price: "6.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image3.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Avocado, Bacon, Lettuce, and Tomato Sandwich",
                description: "on whole grain bread",
                price: "7.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image4.jpg",
                  tags: "millies, diner, logo"
                }]
              }]
            }
          ]
        }, {
          name: "Lunch",
          categories: [{
              name: "",
               products: [{
                name: "Devil's Mess",
                description: "Open-faced omelet of spicy sausage, onions, green peppers, garlic,
tomatoes and mild curry, finished with melted white cheddar and avocado",
                price: "12.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image5.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Veggie Mess",
                description: "Same as Devil's Mess, but with vegetables instead of sausage",
                price: "11.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image6.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Huevos Rancheros",
                description: "2 fried eggs over tortillas with black beans, tomato Ranchero
sauce, melted white cheddar, pico de gallo and sour cream",
                price: "11.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image7.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Mushroom, Tomato, and White Cheddar Omelette 8.",
                description: "",
                price: "9.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image8.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Avocado, Tomato, and White Cheddar Omelette",
                description: "",
                price: "9.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image9.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Veggie Wrap",
                description: "Roasted red peppers, tomatoes, eggplant, zucchini, fresh mozzarella & basil aioli",
                price: "9.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image10.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Pan seared Chick Pea Cake Sandwich",
                description: "with spinach, tomato and Kalamata olive tapenade",
                price: "9.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image1.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled Eggplant, Tomato, and Brie Sandwich",
                description: "on whole grain bread",
                price: "8.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image2.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Corned Beef Sandwich",
                description: "on toasted whole wheat with braised cabbage, mayo, whole grain mustard & Gruyere",
                price: "11.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image3.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Spicy Black Bean and Cheddar Cheese Burrito",
                description: "with pico de gallo and sour cream",
                price: "8.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image4.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Roasted Turkey Sandwich ",
                description: "on sourdough with Gruyere, bacon, avocado, mayo and sprouts",
                price: "9.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image5.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled Chipotle Chicken Sandwich",
                description: "on a Kaiser roll with mayo",
                price: "8.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image6.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "1/2 pound Angus Hamburger",
                description: "on Kaiser roll with lettuce, tomato and mayo",
                price: "9.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image7.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "1/2 pound Angus Cheeseburger",
                description: "on Kaiser roll with lettuce, tomato and mayo",
                price: "10.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image8.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Bacon, Lettuce, and Tomato Sandwich",
                description: "on whole grain bread with mayo",
                price: "7.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image9.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Avocado, Bacon, Lettuce, and Tomato Sandwich ",
                description: "on whole grain bread with mayo",
                price: "8.50",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image10.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Millie's House Salad",
                description: "with mixed organic greens, roasted red peppers, red
onion, Brie, mushrooms, avocado and sprouts",
                price: "9.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image1.jpg",
                  tags: "millies, diner, logo"
                }]
              }]
            }]
          }, {
          name: "Dinner",
          categories: [{
            name: "Appetivers",
            products: [{
                name: "Soup du Jour",
                description: "",
                price: "6.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image2.jpg",
                  tags: "millies, diner, logo"
                }]
              },{
                name: "Wild Organic Green Salad",
                description: "daily vinaigrette",
                price: "7.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image3.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Millie's Caesar Salad",
                description: "with marinated Alici Anchovies   **(dressing contains raw eggs)",
                price: "8.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image4.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Local Berkshire Porchetta Salad",
                description: "radishes, red onions, local organic greens",
                price: "9.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image5.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Virginia Crab Salad",
                description: "avocado, bibb lettuce, hearts of palm, citrus, micro greens",
                price: "11.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image6.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Roasted Local Mushrooms",
                description: "shiitake, oyster & maitake mushrooms, baby arugula, duck confit, parmesan, truffle vinaigrette",
                price: "8.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image7.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Local Berkshire Head Terrine",
                description: "pickled asparagus, dijon mustard, french baguette",
                price: "8.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image8.jpg",
                  tags: "millies, diner, logo"
                }]
              }]
            }, {
            name: "Mains",
            products: [{
                name: "Thai Spicy Shrimp",
                description: "asparagus, shiitakes, lime, red cabbage, cilantro, peanuts, rice noodles",
                price: "23.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image9.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled NY Strip Steak",
                description: "roasted fingerling potatoes, bacon onion jam",
                price: "27.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image10.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Pan Seared Swordfish",
                description: "sofrito puree, fresh greens, smoked scallion emulsion",
                price: "27.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image1.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled Lamb T-Bone",
                description: "roasted garlic chickpea puree, asparagus, rosemary jus",
                price: "26.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image2.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Grilled Pork Loin",
                description: "smashed Yukon potatoes, zucchini strings, local mushroom glace",
                price: "24.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image3.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Pan Roasted Duck Breast",
                description: "creamy polenta, arugula, blackberry gastrique",
                price: "26.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image4.jpg",
                  tags: "millies, diner, logo"
                }]
              }, {
                name: "Sesame Crusted Ahi Tuna",
                description: "cavolo nero, shiitake mushrooms",
                price: "28.00",
                media: [{
                  name: "Logo",
                  media_type: "image",
                  url: "http://fast-crag-9968.herokuapp.com/assets/samples/image5.jpg",
                  tags: "millies, diner, logo"
                }]
              }]
          }]
        }]
      }

      render_result(widget)
    end

  def render_result(result = {}, status = 200, status_string = 'OK')
  	return_value = {'version' => API_VERSION,
  		'statusCode' => status,
  		'statusString' => status_string,
  		'result' => result}
  		if params[:callback]
  			render :text => "#{params[:callback]}(#{return_value.to_json});", :content_type => "application/javascript"
  		elsif params[:isIEPhoto]
  			render :text=> return_value.to_json, :content_type => "text/plain"
  		else
  			render :json => return_value.to_json
  		end
  	end

  end