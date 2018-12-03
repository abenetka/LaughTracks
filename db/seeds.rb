require './app/models/comedian'
require './app/models/special'

Special.destroy_all
Comedian.destroy_all

adam = Comedian.create(name: "Adam Cayton-Holland", age: 38, city: "Denver")
fred = Comedian.create(name: "Fred Armisen", age: 51, city: "Los Angeles")
john = Comedian.create(name: "John Mulaney", age: 36, city: "New York City")
ellen = Comedian.create(name: "Ellen DeGeneres", age: 60, city: "New York City")
mike = Comedian.create(name: "Mike Birbiglia", age: 40, city: "New York City")
steve = Comedian.create(name: "Steve Martin", age: 73, city: "Los Angeles")
demetri = Comedian.create(name: "Demetri Martin", age: 45 , city: "Santa Monica")
trevor = Comedian.create(name: "Trevor Noah", age: 34 , city: "New York City")
maria = Comedian.create(name: "Maria Bamford", age: 48, city: "Los Angeles")
jerry = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City")
michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "New York City")
ali = Comedian.create(name: "Ali Wong", age: 36, city: "Los Angeles")

adam.specials.create(name: "Comedy Central Stand-up Presents: Adam Cayton-Holland", length: 30, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXwouKiTYejqTVpuSyjTLTI-6ChXGlTuV8gXK-J1BwdmVvOnCesA")

fred.specials.create(name: "Standup For Drummers", length: 62, image_url: "https://m.media-amazon.com/images/M/MV5BZjgwZjQ5OTgtMWY0MC00YTQ5LWE2MzEtMWEyYTc5ODhlMTQyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")

john.specials.create(name: "The Comeback Kid ", length: 62, image_url: "https://images-na.ssl-images-amazon.com/images/I/61z5otRH8yL._SS500.jpg")
john.specials.create(name: "New in Town ", length: 60, image_url: "https://images2.9c9media.com/image_asset/2018_8_16_8c7fe4ed-ca7c-4392-b256-1ba089d71977_png_2000x3000.jpg?height=500&maintain_aspect=1&size=500")
john.specials.create(name: "Kid Gorgeous at Radio City ", length: 65, image_url: "https://i2.wp.com/theweeklyspoon.com/wp-content/uploads/2018/05/JohnMulaney_KidGorgeous_11-01-17.jpg?fit=404%2C500")

ellen.specials.create(name: "The Beginning", length: 65, image_url: "https://m.media-amazon.com/images/M/MV5BODQxNzQzMDc4Nl5BMl5BanBnXkFtZTgwMTgwNjgwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
ellen.specials.create(name: "Here and Now", length: 60, image_url: "https://images-na.ssl-images-amazon.com/images/I/71ubDkbhtSL._SX342_.jpg")

mike.specials.create(name: "What I Should Have Said Was Nothing: Tales From My Secret Public Jornal", length: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMTk0NzY2NzM5Ml5BMl5BanBnXkFtZTcwNjE2Mjg2MQ@@._V1_.jpg")
mike.specials.create(name: "My Girlfriend's Boyfriend", length: 66, image_url: "https://lol.imgix.net/v4/hashed-assets/movies/5814309291001/assets/browse-1.c3c8f2ec0bb96c222c4116c7beb769b6.jpg?auto=compress")
mike.specials.create(name: "Thank God for Jokes", length: 70, image_url: "https://m.media-amazon.com/images/M/MV5BMDkwN2EwNDItNTg5Ni00MzhjLWIzZjYtNWQ0ZDI4MDg1MWU0XkEyXkFqcGdeQXVyMzg0NjMxMDM@._V1_.jpg")

steve.specials.create(name: "Steve Martin-Live!", length: 60, image_url: "https://img.reelgood.com/content/movie/c9719b48-6e27-4ee7-8f03-626041b2762c/poster-780.jpg")
steve.specials.create(name: "A Wild and Crazy Guy", length: 60, image_url: "https://images-na.ssl-images-amazon.com/images/I/315XXTJ3WKL.jpg")
steve.specials.create(name: "Comedy is Not Pretty", length: 60, image_url: "https://upload.wikimedia.org/wikipedia/en/e/ec/Comedyisnotpretty.jpg")
steve.specials.create(name: "All Commercials", length: 60, image_url: "https://m.media-amazon.com/images/M/MV5BZTFlMjI0ZmUtMzdhNS00YTdjLTgzZTctYzhhZjg3MTE1Nzk0XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")

demetri.specials.create(name: "At the Time", length: 60, image_url: "https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_.jpg")
demetri.specials.create(name: "The Overthinker", length: 56, image_url: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
demetri.specials.create(name: "Demetri Martin. Person.", length: 42, image_url: "https://images-na.ssl-images-amazon.com/images/I/41scN1IYI5L._SY445_.jpg")

trevor.specials.create(name: "African American", length: 69, image_url: "https://www.freedomsphoenix.com/Uploads/Graphics/522-0614054527-a.png")
trevor.specials.create(name: "Afraid of the Dark", length: 67, image_url: "https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
trevor.specials.create(name: "Lost in Translation", length: 62, image_url: "http://media.ticketmaster.com/en-us/dbimages/179235a.jpg")
trevor.specials.create(name: "Son of Patricia", length: 63, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkrHAknv84xU4mW75BPBL1Kvg7fWHWhrwsr2zhROFAxCHYvFr4")

maria.specials.create(name: "Old Baby", length: 64, image_url: "https://www.dvdplanetstore.pk/wp-content/uploads/2018/01/i4kcbcvT4Xdq4bmAj4gRy1doXBK.jpg")
maria.specials.create(name: "The Special Special Special!", length: 49, image_url: "https://m.media-amazon.com/images/M/MV5BMjM0MjEyMjM0OF5BMl5BanBnXkFtZTcwMDQ3NzQxOQ@@._V1_.jpg")

jerry.specials.create(name: "I'm Telling You for the Last Time", length: 75, image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/6/68/Jerry_Seinfeld%2C_I%27m_Telling_You_for_the_Last_Time_video_box.jpg/220px-Jerry_Seinfeld%2C_I%27m_Telling_You_for_the_Last_Time_video_box.jpg")
jerry.specials.create(name: "Stand-Up Confidential", length: 55, image_url: "https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UX182_CR0,0,182,268_AL_.jpg")

michelle.specials.create(name: "Nice Lady", length: 58, image_url: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")

ali.specials.create(name: "Baby Cobra", length: 60, image_url: "https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_UY268_CR4,0,182,268_AL_.jpg")
ali.specials.create(name: "Hard Knock Wife", length: 64, image_url: "https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg")
