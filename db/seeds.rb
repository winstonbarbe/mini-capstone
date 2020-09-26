# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Supplier.create(name: "Wuxtry Records", email: "wuxtryrecords@gmail.com", phone_number: "706-369-9428")
Supplier.create(name: "Low Yo Yo Stuff", email: "lowyoyo@gmail.com", phone_number: "706-340-0473")
Supplier.create(name: "School Kids Records", email: "schoolkids@gmail.com", phone_number: "706-353-1666")

Product.create({supplier_id: 2, name: "Angel Olsen - Little Mirrors", price: "17.75", description: "The breathtaking songs of Angel Olsen’s fifth album are fleshed out by a 12-piece string section and deliver grand gestures about romance, authenticity, and being simply at the mercy of how we feel.", quantity: 2})
Product.create({supplier_id: 1, name: "Rolling Stones - Some Girls", price: "12.5", description: "Some Girls is the 14th British and 16th American studio album by the English rock band the Rolling Stones, released on 9 June 1978 on Rolling Stones Records. It was the first album to feature guitarist Ronnie Wood as a full-time member; joining founder members Mick Jagger, Keith Richards, Bill Wyman and Charlie Watts.", quantity: 1})
Product.create({supplier_id: 3, name: "Paul Simon - S/T Reissue", price: "18.10", description: "Paul Simon's self-titled album belongs in everyones record collection. Easy to listen to and really showcases his abilities.", quantity: 1})
Product.create({supplier_id: 3, name: "Gladstone Anderson & Lynn Taitt & The Jets - Glad Sounds", price: "21.0", description: "Rocksteady compilation", quantity: 1})
Product.create({supplier_id: 2, name: "Husker Du - Zen Arcade", price: "14.25", description: "Zen Arcade is the second studio album by American punk rock band Hüsker Dü, released in July 1984 on SST Records. Originally released as a double album on two vinyl LPs, Zen Arcade tells the story of a young boy who runs away from an unfulfilling home life, only to find the world outside is even worse.", quantity: 2})
Product.create({supplier_id: 1, name: "Helena Deland - Altogether Unaccompanied", price: "9.99", description: "Deland shows her stripes on this EP. “Perfect Weather For A Crime” is mischievous, a clever balance between a “Like A Virgin” bass line and a pre-Masseduction St. Vincent.", quantity: 1})
Product.create({supplier_id: 1, name: "Modest Mouse - The Moon & Antarctica", price: "40.00", description: "The Moon & Antarctica is the third studio album by American rock band Modest Mouse, released on June 13, 2000 by Epic Records. The album's title is taken from the opening scene of the 1982 film Blade Runner, where the main character reads a newspaper headlined 'Farming the Oceans, the Moon and Antarctica.'", quantity: 1})

Image.create({url: "https://media.pitchfork.com/photos/5d6593d326e2b40009eed797/1:1/w_320/angelolsen_allmirrors.jpg", product_id: 1})
Image.create({url: "https://i.guim.co.uk/img/media/f1617a620d3487a150df6916d771ecef7aed48ec/0_8_5071_3043/master/5071.jpg?width=300&quality=85&auto=format&fit=max&s=5d42684fbab93031c740462adc39507e", product_id: 1})
Image.create({url: "https://upload.wikimedia.org/wikipedia/en/6/6c/Some_Girls.png", product_id: 2})
Image.create({url: "http://www.timeisonourside.com/chron1978.jpg", product_id: 2})
Image.create({url: "https://upload.wikimedia.org/wikipedia/en/4/45/PaulSimon-Front.jpg", product_id: 3})
Image.create({url: "https://www.thehistoryofrockandroll.net/wp-content/uploads/2018/08/word-image.jpeg", product_id: 3})
Image.create({url: "https://images-na.ssl-images-amazon.com/images/I/51ysHleuBoL.jpg", product_id: 4})
Image.create({url: "https://images.eil.com/large_image/LYN_TAITT_AND_THE_JETS_JAMAICAS%2BGLAD%2BSOUNDS%2B-%2BLETS%2BGO%2BNATIVE%2BWITH%2BREGGAE%2BREGGAE-650551b.jpg", product_id: 4})
Image.create({url: "https://www.clashmusic.com/sites/default/files/styles/article_feature/public/field/image/zen-arcade-4f2c0e555c91c.jpg?itok=SXMSEiqV", product_id: 5})
Image.create({url: "https://upload.wikimedia.org/wikipedia/en/f/fc/H%C3%BCsker_D%C3%BC_promo_photo_1986.jpg", product_id: 5})
Image.create({url: "https://img.discogs.com/OXB-UyRR-YfgSXsHuvCBs713pgQ=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-11718826-1521212848-3458.jpeg.jpg", product_id: 6})
Image.create({url: "https://media.resources.festicket.com/image/600x600/center/top/filters:quality(70)/www/artists/helena-deland.jpg", product_id: 6})
Image.create({url: "https://upload.wikimedia.org/wikipedia/en/0/00/TheMoonAntarctica.jpg", product_id: 7})
Image.create({url: "https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photos/616140/Modest-Mouse.jpg", product_id: 7})

User.create({name: "Winston", email: "winston@gmail.com", password: "password", password_confirmation: "password"})
User.create({name: "Butters", email: "butters@gmail.com", password: "password", password_confirmation: "password"})