//Frames are the starting blocks of the weapon. The type of frame decides how large a weapon you can build.
//In general, weight affects the size and weight (slow to use, bulky, etc) of the weapon

/datum/firemode/modular
	name = "modular-default"
	burst = 1
	burst_delay = null
	fire_delay = null
	move_delay = 1
	list/accuracy = list(0)
	list/dispersion = list(0)

obj/item/weapon/modular_firearms/assembly
	name = "basic assembly"
	desc = "The outer framework for a firearm of some kind. This one looks rather basic."
	icon = 'icons/placeholder.dmi'
	var/modChassis = null
	var/modChamber = null
	var/modDriver = null
	var/modLoader = null
	var/modBarrel = null
	var/modStock = null
	var/modLock = null
	var/modSight = null
	var/modMisc = list()
	var/list/allowed_projectiles = list()
	var/projectile_type = null
	var/framelevel = 2
	var/chargecost = null
	var/weight = 1
	var/isEnergy = null
	var/isKinetic = null
	var/silenced = null
	var/accuracy_mod = null
	var/compensated = null
	var/haspin = 0
	var/buildstage = 1
	var/list/components = new/list()

/obj/item/weapon/modular_firearms/assembly/attackby(obj/item/I as obj, mob/user as mob)
	if(buildstage == 1)
		if(istype(I, /obj/item/weapon/modular_firearms/chassis))
			user.drop_item()
			I.loc = src
			components += I
			modChassis = I
			if(istype(I, /obj/item/weapon/modular_firearms/chassis/energy))
				isEnergy = 1
			if(istype(I, /obj/item/weapon/modular_firearms/chassis/ballistic))
				isKinetic = 1
			user << "\blue You install the [I] onto the [src]."
		//	weight = I.weight + weight
			buildstage += 1
		else
			user << "\red You must install a chassis first!"

	else if(buildstage == 2)
		if(istype(I, /obj/item/weapon/modular_firearms/chamber))
			user.drop_item()
			I.loc = src
			components += I
			modChamber = I
			var/obj/item/weapon/modular_firearms/chamber/chamber = I
			if(chamber.projectile_type)
				if(isEnergy)
					projectile_type = chamber.projectile_type
				else
					user << "\red A ballistic chamber won't work with an energy chassis!"
			if(chamber.allowed_projectiles)
				for(chamber.allowed_projectiles)
					if(isKinetic)
						allowed_projectiles += chamber.allowed_projectiles
					else
						user << "\red An energy chamber won't work with a ballistic chassis!"
			user << "\blue You install the [I] onto the [src]."
		//	weight = I.weight + weight
			buildstage += 1
		else
			user << "\red You must install a chassis first!"

	else if(buildstage == 3)
		if(istype(I, /obj/item/weapon/modular_firearms/driver))
			user.drop_item()
			I.loc = src
			components += I
			buildstage += 1

	else if(buildstage == 4)
		if(istype(I, /obj/item/weapon/modular_firearms/loader))
			user.drop_item()
			I.loc = src
			components += I
			buildstage += 1

	else if(buildstage == 5)
		if(istype(I, /obj/item/weapon/modular_firearms/barrel))
			user.drop_item()
			I.loc = src
			components += I
			buildstage += 1

	else if(buildstage == 6)
		if(istype(I, /obj/item/weapon/modular_firearms/stock))
			user.drop_item()
			I.loc = src
			components += I
			buildstage += 1

	else if(buildstage == 7)
		if(istype(I, /obj/item/weapon/modular_firearms/lockpin))
			user.drop_item()
			I.loc = src
			components += I
			buildstage += 1