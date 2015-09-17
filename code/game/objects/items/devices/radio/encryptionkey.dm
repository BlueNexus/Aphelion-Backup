
/obj/item/device/encryptionkey/
	name = "standard encrpytion key"
	desc = "An encryption key for a radio headset. Contains cypherkeys."
	icon = 'icons/obj/radio.dmi'
	icon_state = "cypherkey"
	item_state = ""
	w_class = 1
	slot_flags = SLOT_EARS
	var/translate_binary = 0
	var/translate_hive = 0
	var/syndie = 0
	var/list/channels = list()


/obj/item/device/encryptionkey/New()

/obj/item/device/encryptionkey/attackby(obj/item/weapon/W as obj, mob/user as mob)

/obj/item/device/encryptionkey/syndicate
	icon_state = "cypherkey"
	desc = "An encryption key with built-in frequency decryption."
	channels = list("Mercenary" = 1)
	origin_tech = "syndicate=3"
	syndie = 1//Signifies that it de-crypts Syndicate transmissions

/obj/item/device/encryptionkey/binary
	desc = "An encryption key designed to translate binary into speech."
	icon_state = "cypherkey"
	translate_binary = 1
	origin_tech = "syndicate=3"

/obj/item/device/encryptionkey/headset_sec
	name = "security radio encryption key"
	desc = "An encryption key used for complaining about Trojans."
	icon_state = "sec_cypherkey"
	channels = list("Security" = 1)

/obj/item/device/encryptionkey/headset_eng
	name = "engineering radio encryption key"
	desc = "An encryption key used for complaining about meteors."
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1)

/obj/item/device/encryptionkey/headset_rob
	name = "robotics radio encryption key"
	desc = "Because robotics apparently needs its own encryption key."
	icon_state = "rob_cypherkey"
	channels = list("Engineering" = 1, "Science" = 1)

/obj/item/device/encryptionkey/headset_med
	name = "medical radio encryption key"
	desc = "An encryption key used for complaining about suit sensors."
	icon_state = "med_cypherkey"
	channels = list("Medical" = 1)

/obj/item/device/encryptionkey/headset_sci
	name = "science radio encryption key"
	desc = "An encryption key used for complaining about cargo."
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1)

/obj/item/device/encryptionkey/headset_medsci
	name = "medical research radio encryption key"
	desc = "Medical and science - Working together in horrific harmony."
	icon_state = "medsci_cypherkey"
	channels = list("Medical" = 1, "Science" = 1)

/obj/item/device/encryptionkey/headset_com
	name = "command radio encryption key"
	desc = "an encryption key used for complaining about centcomm."
	icon_state = "com_cypherkey"
	channels = list("Command" = 1)

/obj/item/device/encryptionkey/heads/captain
	name = "captain's encryption key"
	desc = "An all-access encryption key. Perfect for evesdropping on literally everyone."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 0, "Science" = 0, "Medical" = 0, "Supply" = 0, "Service" = 0)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "AI Private" = 1)

/obj/item/device/encryptionkey/heads/rd
	name = "research director's encryption key"
	desc = "An encryption key used for complaining about your awful rigsuit."
	icon_state = "rd_cypherkey"
	channels = list("Science" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/hos
	name = "head of security's encryption key"
	desc = "An encryption key used for complaining about the IAA."
	icon_state = "hos_cypherkey"
	channels = list("Security" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/ce
	name = "chief engineer's encryption key"
	desc = "An encryption key used for complaining about broken windows."
	icon_state = "ce_cypherkey"
	channels = list("Engineering" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/cmo
	name = "chief medical officer's encryption key"
	desc = "An encryption key used for complaining even more about suit sensors."
	icon_state = "cmo_cypherkey"
	channels = list("Medical" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/hop
	name = "head of personnel's encryption key"
	desc = "An encryption key used for firing people, and being the hero of the station."
	icon_state = "hop_cypherkey"
	channels = list("Supply" = 1, "Service" = 1, "Command" = 1, "Security" = 0)
/*
/obj/item/device/encryptionkey/headset_mine
	name = "mining radio encryption key"
	icon_state = "mine_cypherkey"
	channels = list("Mining" = 1)

/obj/item/device/encryptionkey/heads/qm
	name = "quartermaster's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Cargo" = 1, "Mining" = 1)
*/
/obj/item/device/encryptionkey/headset_cargo
	name = "supply radio encryption key"
	desc = "An encryption key used for complaining about robotics never making exosuits. It's not as if they need materials for that, right?"
	icon_state = "cargo_cypherkey"
	channels = list("Supply" = 1)

/obj/item/device/encryptionkey/headset_service
	name = "service radio encryption key"
	desc = "An encryption key used for complaining about literally everything."
	icon_state = "srv_cypherkey"
	channels = list("Service" = 1)

/obj/item/device/encryptionkey/ert
	name = "\improper NanoTrasen ERT radio encryption key"
	desc = "An encryption key used by the emergency response team. They don't complain as much."
	channels = list("Response Team" = 1, "Science" = 1, "Command" = 1, "Medical" = 1, "Engineering" = 1, "Security" = 1, "Supply" = 1, "Service" = 1)
