//Items labled as 'trash' for the trash bag.
//TODO: Make this an item var or something...

//Added by Jack Rost
/obj/item/trash
	icon = 'icons/obj/trash.dmi'
	w_class = 2.0
	desc = "This is rubbish."

/obj/item/trash/raisins
	name = "\improper 4no raisins"
	icon_state= "4no_raisins"

/obj/item/trash/candy
	name = "candy"
	desc = "A delicious bar of candy. or at least, the wrapper of one."
	icon_state= "candy"

/obj/item/trash/cheesie
	name = "\improper Cheesie Honkers"
	desc = "A scrunched-up bag of cheesie honkers. Some of them have spilled out."
	icon_state = "cheesie_honkers"

/obj/item/trash/chips
	name = "chips"
	desc = "A bag of either chips or crisps. Either way, it's litter."
	icon_state = "chips"

/obj/item/trash/popcorn
	name = "popcorn"
	desc = "Its popping days are over."
	icon_state = "popcorn"

/obj/item/trash/sosjerky
	name = "Scaredy's Private Reserve Beef Jerky"
	desc = "Someone actually ate this?"
	icon_state = "sosjerky"

/obj/item/trash/syndi_cakes
	name = "syndi cakes"
	desc = "Not suspicious at all. Nope."
	icon_state = "syndi_cakes"

/obj/item/trash/waffles
	name = "waffles"
	desc = "A few waffle-crumbs. You could probably eat them, if you were desperate enough."
	icon_state = "waffles"

/obj/item/trash/plate
	name = "plate"
	desc = "A dirty plate."
	icon_state = "plate"

/obj/item/trash/snack_bowl
	name = "snack bowl"
	desc = "An empty bowl. You should probably clean this up."
	icon_state	= "snack_bowl"

/obj/item/trash/pistachios
	name = "pistachios pack"
	desc = "As green as the person who ate them."
	icon_state = "pistachios_pack"

/obj/item/trash/semki
	name = "semki pack"
	desc = "It's a pack of Semki. You aren't quite sure what that is."
	icon_state = "semki_pack"

/obj/item/trash/tray
	name = "tray"
	desc = "A dirty tray."
	icon_state = "tray"

/obj/item/trash/candle
	name = "candle"
	desc = "A melted candle, sitting in a pool of wax."
	icon = 'icons/obj/candle.dmi'
	icon_state = "candle4"

/obj/item/trash/liquidfood
	name = "\improper \"LiquidFood\" ration"
	desc = "It probably tastes better without anything in it."
	icon_state = "liquidfood"

/obj/item/trash/tastybread
	name = "bread tube"
	desc = "It's a tube. Of bread."
	icon_state = "tastybread"

/obj/item/trash/attack(mob/M as mob, mob/living/user as mob)
	return
