INCLUDE stats_maps_int


VAR readerbrain = 0
VAR naturelover = 0
VAR socialite = 0
VAR holdyourdrink = 0
VAR toughfighter = 0

<h1> The Hapless Adventures of Captain Bluebeard </h1>
<h2> (and Friend) </h2>


Hello, and thank you for purchasing my game!

+ [New Game] ->newgame
+ [Information and Credits] ->information



=information


This game is the intellectual property of Matthew Watson Jones.
Inspired by retro text adventures, point-and-click adventures, and a lot of silly British comedy throughout the ages. 
The intention is that you always have access to these controls:

Look at 
Use 
Talk to 
Go to 
Pick Up
Map
Inventory

->DONE


=newgame
# CLEAR



<h2> The Hapless Adventures of Captain Bluebeard </h2>
<h3> (and Friend) </h3>
<h4> Chapter 1: The Trappings of a Pirate </h4>


<b/>
It is a new day.
<br/>
The celebrations for the retirement of Captain Oldbeard lasted for two days. <br/> There was a lot of carousing. And a lot of grog. <br/> And as the newest and youngest member of the crew of the good ship <i>Milady</i>, it was apparently your job to clean up the whole ship afterwards.

* Decks were swabbed. [] Rigs were mended. Even cannons polished. 
    * * And now, finally, some shore leave. [] <br/> The <i>Milady</i> is docked at ex-Captain Oldbeard's home island, a mountainous little isle with only one decent cove, at which sits a port town with only one decent tavern.
        * * * All you need to do today is [...] 
        greet the new Captain personally, 
        hand over ship watch duties to the Lookout, 
        and then head out for a day of sunshine and relaxation.
            * * * * You've heard there's a decent library in the Observatory. 
            ->update_readerbrain(1) ->cabin
            * * * * You've heard there's some interesting and unusual trees on this island. 
            ->update_naturelover(1) ->cabin 
            * * * * Seems like a good opportunity to become better friends with the rest of the crew. 
            ->update_socialite(1)
            * * * * Maybe you'll spend the whole afternoon in the tavern. 
            ->update_holdyourdrink(1)
            * * * * Perhaps you can get yourself into a fight with a local. 
            ->update_toughfighter(1) -> cabin
             
             





=cabin





->DONE