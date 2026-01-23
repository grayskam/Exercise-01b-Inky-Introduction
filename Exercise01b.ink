/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are the entrance of an cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west
* [Pick Up the torch] -> torch_pickup
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel


== east_tunnel ==
You are in the east. It is very dark and you cant see anything.
+ {torch_pickup}[Light Torch] ->east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west. It is very dark and you cant see anything.
+ {torch_pickup}[Light Torch] ->west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END. 
=== torch_pickup ===
You now have a torch. May it light the way!
* [Go Back] -> cave_mouth
-> END

== west_tunnel_lit == 
You find nothing but rocks... but hey maybe there will be more luck in the East Tunnel... oh also your torch went out.
+ [Go Back] -> cave_mouth
== east_tunnel_lit == 
The light of torch glints off of the thousands of coins in the room.
+ [Grab Coins] -> grab_coins

== grab_coins == 
You grab the coins and stuff them in your bag but once you finish suddenly your torch goes out. 

+ [Fight the ...] -> fight
+ [Walk to front] -> end_game

==fight==
You start to fight but realize it's a raccoon which can see in the dark which gets the best of you... maybe in the next life. -> END
==end_game==
Congrats you got out with your coins and avoided the mystery disturbance in the cave. Return to your village ypur riches! -> END









