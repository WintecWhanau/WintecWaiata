# WintecWaiata
Multiplatform application to teach staff and students the wintec waiata

# Framework
This application is written in flutter which uses dart.

# TODO
[ ] Waiata pages
    [ ] Create json file with appropriate attributes
    [ ] Create a plan for implementing values to the waiata pages
        //Only one page for brief and main waiata. Unique based on which song selected
        //non hard coded if possible
        [ ] implement plan by Saturday
        [ ] Validate each song values
    [ ] Media player
        [ ] Media buttons
    [ ] Orientation for fullscreen
[ ] Home page
    [ ] Implement cards based off group design
[ ] Navigation
    [ ] Learn routes & animations
        [ ] Find which apply back button
[ ] Assets
    [ ] Take more photos to be used for waiata app
    [ ] Edit photos

//create a json file with each of these attributes per song
name
vocalPath
nonVocalPath
maoriWords
englishWords
brief
thumbnail

//Convert these to a class when indexed button is pressed
    //onTap() {Waiata selected = new Waiata(json information)}