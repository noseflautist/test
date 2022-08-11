INCLUDE Dock
INCLUDE Cyclops Field
INCLUDE OnTheShip
INCLUDE Signpost
INCLUDE Outside Pet Shop
INCLUDE In Pet Shop
INCLUDE Well on the Hill
INCLUDE Observatory and Balcony
INCLUDE Cliff and Wreck
INCLUDE Pet Shop



# funny #action #interactive #text # adventure 
# author: Matthew Watson Jones


CYCLOPS ISLAND
->ontheshipstart

===givecompass===
"Wow, what a beautiful compass! Now we'll be able to navigate on the sea! It even fits into this indent next to the ship's wheel! Thank you so much! {not giveblackbeard: I still need the black beard. } {not giveparrot: I still need a parrot. } 
+ {blackbeard and not giveblackbeard} [Give him the blackbeard.] -> giveblackbeard
+ {parrot and not giveparrot} [Give him the parrot.] ->giveparrot
+ {givecompass and giveblackbeard and giveparrot} [And that's everything he needed!] ->endchapter1
+ [Step back from the pirate captain, who is a bit less sad now.] ->ontheship 

===giveblackbeard===
"This beard is so curly and black, it's perfect! Is this... squid ink? Hopefully it'll stay black when it dries, and it won't turn blue!" 
+ {compass and not givecompass} [Give him the compass.] -> givecompass
+ {parrot and not giveparrot} [Give him the parrot.] ->giveparrot
+ {givecompass and giveblackbeard and giveparrot} [And that's everything he needed!] ->endchapter1
+ [Step back from the pirate captain, who is a bit less sad now.] ->ontheship 

===giveparrot===
You hand over the parrot to the Pirate Captain. The parrot says, "Hello Sexy! Hello Sexy!" The Pirate Captain is very pleased. "Such a compliment! We will be great friends, I think. With time, I'll find out if it says anything more."
+ {blackbeard and not giveblackbeard} [Give him the blackbeard.] -> giveblackbeard
+ {compass and not givecompass} [Give him the compass.] -> givecompass
+ {givecompass and giveblackbeard and giveparrot} [And that's everything he needed!] ->endchapter1
+ [Step back from the pirate captain, who is a bit less sad now.] ->ontheship 

===endchapter1===
 “Thank you for bringing me everything I need! Now I am ready to set sail on an adventure! Would you like to come with me? 
+  [YES] ->congrats1
+  [NO] -> areyousure1 

==congrats1==
Congratulations, you have completed Chapter 1! 
->achievements


==areyousure1==
The Captain looks into your eyes, trying to work out if you're joking or not.
+ [Only joking, let's sail the seas!"] ->congrats1
+ [Yep, you're serious, all this questing was hard work, you'd prefer a peaceful life on the island.] ->peaceend

==peaceend==
The Pirate Captain thanks you for your help, and bids you farewell. He sails off into the sunset (which must be bad for his eyes) and you wave until you can't see him any more. You have made friends on Cyclops Island. You can fish for food. You could catch more animals for the Pet Shop. You could work with the Cyclops. You could do any number of things. And maybe one day, you could go explore the rest of the world. But not today.
+ CONGRATULATIONS! You have completed Chapter 1 of the Hapless Adventures! Down your path, there are no more adventures. But island life is bound to be a more relaxing experience. ->END

==achievements==
{cathome: You gained 1 point in Poignancy for the observing the transient nature of the Beautiful Fish. }
{flirt: You gained 1 point in Flirtatious for trying to pick up the Pirate Captain. }
{not flirt: You did not gain the achievement: +1 Flirtatious. }
{friendlycyclops: You unlocked the ability: +1 Sheep Whisperer, after chatting with the friendly Cyclops. }
{not friendlycyclops: You did not gain the achievement: +1 Sheep Whisperer. }
{ropetrouble: You unlocked the achievement: "Better to Have Roped and Lost..." The Game Creator spoke directly to you. }
{not ropetrouble: You did not gain the achievement: "Better to Have Roped and Lost..." }
{ (parrot && inventorysignpost || inventorywell || inventorywreck):   The parrot called you "Sexy" while you were alone. +1 Self-Esteem. }
{not (parrot && inventorysignpost || inventorywell || inventorywreck): You never found out if the parrot thought YOU were sexy, or if it was just complimenting those around you. You did not gain the achievement: +1 Self-Esteem. }

Play again?
* [YES] ->yes
* [NO] ->no

==no==
THANK YOU FOR PLAYING!
->DONE

==yes==
 # RESTART
    -> END


===inventoryship===
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" ... Is it calling you sexy? Or the Captain? }
+ [And that's everything.] 
->ontheship

==inventorydock==
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" {!You feel sexy. +1 Self-Esteem.} }
+ [And that's everything.] 
->thedock


===inventorysignpost===
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" {!You feel sexy. +1 Self-Esteem.} }
+ [And that's everything.] 
->atsignpost

===inventorywell===
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" {!You feel sexy. +1 Self-Esteem.} }
+ [And that's everything.] 
->wellchoices

===inventoryobservatory===
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" ... Is it calling you sexy? Or the man? }
+ [And that's everything.] 
->place_observatory

==inventorybalcony==
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" {!You feel sexy. +1 Self-Esteem.} }
+ [And that's everything.] 
->balcony


===inventorywreck===
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" {!You feel sexy. +1 Self-Esteem.} }
+ [And that's everything.] 
->wreckchoices


==inventoryoutisde==
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" {!You feel sexy. +1 Self-Esteem.} }
+ [And that's everything.] 
->outsideshop


===inventoryshop===
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" ... Is it calling you sexy? Or the Shopkeeper?}
+ [And that's everything.] 
->petshopchoices

===inventoryfield===
In your inventory you have:
{not coin && not givemonocle && not treasure && not parrot: 1 silver coin.}
{coin and not treasure and not givemonocle && not parrot: 2 silver coins.}
{givemonocle and not treasure and not coin && not parrot: 2 silver coins.}
{treasure and not coin and not givemonocle && not parrot: 98 silver coins.}
{coin and treasure and not givemonocle && not parrot: 99 silver coins.}
{not parrot and coin and treasure and givemonocle : Exactly 100 silver coins. Not a coin more or less.}
{treasure and givemonocle and not coin && not parrot: 99 silver coins.}
{givemonocle and coin and not treasure && not parrot: 3 silver coins}
{parrot and coin and treasure and givemonocle: 0  coins. You spent it all on the parrot, remember? }
{fishondock or fishonboat and not cat: A Beautiful Fish. Someone or something will appreciate its beauty.}
{fishingrod: A Fishing Rod. It seems pretty strong. The fishing line has a big hook on the end.}
{cat and not cathome: You have a cat on your shoulder. It is holding the Beautiful Fish}
{coin and not treasure: ... and another silver coin makes 2.}  
{fishforbucket and not ropetie: 20 metres of rope, and an Ordinary Bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you. }
{ropetie: You have a bucket. The bucket is very ordinary, and probably not very useful in this adventure. Still, you're carrying it around with you.}
{compass and not givecompass: A small but useful compass.}
{monocle and not givemonocle: A piece of a the telescope you broke. It is a large circular piece of glass with a metal rim, and a chain on the metal rim.}
{whitewool and not blackbeard: You have some sheep's wool, in the perfect wooly shape for a beard. The wool is white.}
{blackbeard and not giveblackbeard: You have an inky blackbeard. Hopefully it'll dry black and not blue. }
{parrot and not giveparrot: You have a parrot in a cage. It looks at you and says, "Hello Sexy! Hello Sexy!" ... Is it calling you sexy? Or the Cyclops?}
+ [And that's everything.] 
->cyclopschoices



==fasttravelfromship==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->ontheship
+ {place_wellonhill} [Back to the well on the hill.] ->place_wellonhill
+ {place_observatory} [Back to the inside of the Observatory.] ->place_observatory
+ {outsideshop} [Back to just outside the Pet Shop.] ->outsideshop
+ {cyclopsfield} [Back to the cyclops and the field of sheep.] ->cyclopsfield
+ {atsignpost} [Back to the signpost at the centre of the island.] ->atsignpost

==fasttravelfromdock==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->thedock
+ {place_wellonhill} [Back to the well on the hill.] ->place_wellonhill
+ {place_observatory} [Back to the inside of the Observatory.] ->place_observatory
+ {outsideshop} [Back to just outside the Pet Shop.] ->outsideshop
+ {cyclopsfield} [Back to the cyclops and the field of sheep.] ->cyclopsfield

==fasttravelfromfield==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->cyclopschoices
+ [Back to the Pirate Ship.] ->ontheship
+ {place_wellonhill} [Back to the well on the hill.] ->place_wellonhill
+ {place_observatory} [Back to the inside of the Observatory.] ->place_observatory
+ {outsideshop} [Back to just outside the Pet Shop.] ->outsideshop
+ {atsignpost} [Back to the signpost at the centre of the island.] ->atsignpost

==fasttravelfromhill==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->place_wellonhill
+ [Back to the Pirate Ship.] ->ontheship
+ {outsideshop} [Back to just outside the Pet Shop.] ->outsideshop
+ {atsignpost} [Back to the signpost at the centre of the island.] ->atsignpost
+ {cyclopsfield} [Back to the cyclops and the field of sheep.] ->cyclopsfield

==fasttravelfromwreck==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->wreckchoices
+ [Back to the Pirate Ship.] ->ontheship
+ {place_wellonhill} [Back to the well on the hill.] ->place_wellonhill
+ {place_observatory} [Back to the inside of the Observatory.] ->place_observatory
+ {outsideshop} [Back to just outside the Pet Shop.] ->outsideshop
+ {cyclopsfield} [Back to the cyclops and the field of sheep.] ->cyclopsfield
+ {atsignpost} [Back to the signpost at the centre of the island.] ->atsignpost

==fasttravelfromobservatory==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->place_observatory
+ [Back to the Pirate Ship.] ->ontheship
+ {outsideshop} [Back to just outside the Pet Shop.] ->outsideshop
+ {cyclopsfield} [Back to the cyclops and the field of sheep.] ->cyclopsfield
+ {atsignpost} [Back to the signpost at the centre of the island.] ->atsignpost

==fasttravelfrompetshop==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->petshopchoices
+ [Back to the Pirate Ship.] ->ontheship
+ {place_wellonhill} [Back to the well on the hill.] ->place_wellonhill
+ {place_observatory} [Back to the inside of the Observatory.] ->place_observatory
+ {cyclopsfield} [Back to the cyclops and the field of sheep.] ->cyclopsfield
+ {atsignpost} [Back to the signpost at the centre of the island.] ->atsignpost

==fasttravelfromoutsidepetshop==
You can travel quickly to somewhere you've already visited.
+ [Nowhere right now.] ->outshopchoices
+ [Back to the Pirate Ship.] ->ontheship
+ {place_wellonhill} [Back to the well on the hill.] ->place_wellonhill
+ {place_observatory} [Back to the inside of the Observatory.] ->place_observatory
+ {cyclopsfield} [Back to the cyclops and the field of sheep.] ->cyclopsfield

->END
