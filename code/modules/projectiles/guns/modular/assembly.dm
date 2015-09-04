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
	var/framelevel = 2
	var/weight = 1
	var/isEnergy = null
	var/isKinetic = null
	var/silenced = null
	var/compensated = null
	var/haspin = 0
	var/buildstage = 1
	var/list/components = new/list()
	var/useCell = null
	var/useSupply = null
	var/useBullet = null

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
			user << "\blue You install the [I] onto the [src]. Now you should install a chamber."
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
			if(chamber.projectile_type) //checking for energy weaponry
				if(isEnergy)
					continue
	//				projectile_type = chamber.projectile_type //if it's an energy weapon, copy the beam type into the assembly
				else
					user << "\red A ballistic chamber won't work with an energy chassis!"
					return
			if(chamber.caliber) //checking for kinetic weaponry
				if(isKinetic)
					continue
	//				caliber = chamber.caliber //if it's a kinetic weapon, copy the calibre into the assembly
				else
					user << "\red An energy chamber won't work with a ballistic chassis!"
					return
			user << "\blue You install the [I] onto the [src]. Now you should install the driver."
		//	weight = I.weight + weight
			buildstage += 1
		else
			user << "\red You must install a chamber first!"

	else if(buildstage == 3)
		if(istype(I, /obj/item/weapon/modular_firearms/driver))
			user.drop_item()
			I.loc = src
			components += I
			modDriver = I
			var/obj/item/weapon/modular_firearms/driver/D = I
			if(D.firemodes)
				continue
			else
				user << "\red How did you manage this?"
				return
			user << "\blue You install the [I] into the [src]."
			buildstage += 1
		else
			user << "\red You must install a driver first!"
	else if(buildstage == 4)
		if(istype(I, /obj/item/weapon/modular_firearms/loader))
			user.drop_item()
			I.loc = src
			components += I
			modLoader = I
			var/obj.item/weapon/modular_firearms/loader/L = I
//			load_method = L.load_method //copy the firetype into the assembly
//			handle_casings = L.handle_casings
			if(!L.Eloader)
				useBullet = 1
		//		if(L.isbolt) //if it's a bolt weapon, set bolt to true
		//			isbolt = 1
		//		if(L.max_shells) //if it's a shotgun or a bolt action, set their max shell count
		//			max_shells = L.max_shells
			if(L.Eloader)
				if(L.useCell)
					useCell = 1
				if(L.useSupply)
					useSupply = 1
			user << "\blue You install the [I] into the [src]."
			buildstage += 1
		else
			user << "\red You must install a loader first!"

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


