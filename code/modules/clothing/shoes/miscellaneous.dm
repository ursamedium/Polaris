/obj/item/clothing/shoes/syndigaloshes
	desc = "A pair of brown shoes. They seem to have extra grip."
	name = "brown shoes"
	icon_state = "brown"
	item_state = "brown"
	permeability_coefficient = 0.05
	item_flags = NOSLIP
	origin_tech = list(TECH_ILLEGAL = 3)
	var/list/clothing_choices = list()
	siemens_coefficient = 0.8
	species_restricted = null

/obj/item/clothing/shoes/mime
	name = "mime shoes"
	icon_state = "mime"

/obj/item/clothing/shoes/swat
	name = "\improper SWAT shoes"
	desc = "When you want to turn up the heat."
	icon_state = "swat"
	force = 3
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	item_flags = NOSLIP
	siemens_coefficient = 0.6
	var/obj/item/weapon/material/hatchet/tacknife

/obj/item/clothing/shoes/swat/attack_hand(var/mob/living/M)
	if(tacknife)
		tacknife.loc = get_turf(src)
		if(M.put_in_active_hand(tacknife))
			M << "<span class='notice'>You slide \the [tacknife] out of [src].</span>"
			playsound(M, 'sound/weapons/flipblade.ogg', 40, 1)
			tacknife = null
			update_icon()
		return
	..()

/obj/item/clothing/shoes/swat/attackby(var/obj/item/I, var/mob/living/M)
	if(istype(I, /obj/item/weapon/material/hatchet/tacknife))
		if(tacknife)
			return
		M.drop_item()
		tacknife = I
		I.loc = src
		M << "<span class='notice'>You slide the [I] into [src].</span>"
		playsound(M, 'sound/weapons/flipblade.ogg', 40, 1)
		update_icon()
	..()

/obj/item/clothing/shoes/swat/update_icon()
	if(tacknife)
		icon_state = "swat_1"
	else
		icon_state = initial(icon_state)

//Stolen from CM, refurbished to be less terrible.
/obj/item/clothing/shoes/marine
	name = "combat boots"
	desc = "Standard issue combat boots for combat scenarios or combat situations. All combat, all the time.  It can hold a Strategical knife."
	icon_state = "jackboots"
	item_state = "jackboots"
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	siemens_coefficient = 0.6
	var/obj/item/weapon/material/hatchet/tacknife

/obj/item/clothing/shoes/marine/attack_hand(var/mob/living/M)
	if(tacknife)
		tacknife.loc = get_turf(src)
		if(M.put_in_active_hand(tacknife))
			M << "<span class='notice'>You slide \the [tacknife] out of [src].</span>"
			playsound(M, 'sound/weapons/flipblade.ogg', 40, 1)
			tacknife = null
			update_icon()
		return
	..()

/obj/item/clothing/shoes/marine/attackby(var/obj/item/I, var/mob/living/M)
	if(istype(I, /obj/item/weapon/material/hatchet/tacknife))
		if(tacknife)
			return
		M.drop_item()
		tacknife = I
		I.loc = src
		M << "<span class='notice'>You slide the [I] into [src].</span>"
		playsound(M, 'sound/weapons/flipblade.ogg', 40, 1)
		update_icon()
	..()

/obj/item/clothing/shoes/marine/update_icon()
	if(tacknife)
		icon_state = "jackboots_1"
	else
		icon_state = initial(icon_state)

/obj/item/clothing/shoes/combat //Basically SWAT shoes combined with galoshes.
	name = "combat boots"
	desc = "When you REALLY want to turn up the heat"
	icon_state = "swat"
	force = 5
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	item_flags = NOSLIP
	siemens_coefficient = 0.6

	cold_protection = FEET
	min_cold_protection_temperature = SHOE_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = FEET
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/shoes/sandal
	desc = "A pair of rather plain, wooden sandals."
	name = "sandals"
	icon_state = "wizard"
	species_restricted = null
	body_parts_covered = 0

	wizard_garb = 1

/obj/item/clothing/shoes/sandal/marisa
	desc = "A pair of magic, black shoes."
	name = "magic shoes"
	icon_state = "black"
	body_parts_covered = FEET

/obj/item/clothing/shoes/clown_shoes
	desc = "The prankster's standard-issue clowning shoes. Damn they're huge!"
	name = "clown shoes"
	icon_state = "clown"
	item_state = "clown_shoes"
	slowdown = SHOES_SLOWDOWN+1
	force = 0
	var/footstep = 1	//used for squeeks whilst walking
	species_restricted = null

/obj/item/clothing/shoes/clown_shoes/handle_movement(var/turf/walking, var/running)
	if(running)
		if(footstep >= 2)
			footstep = 0
			playsound(src, "clownstep", 50, 1) // this will get annoying very fast.
		else
			footstep++
	else
		playsound(src, "clownstep", 20, 1)

/obj/item/clothing/shoes/cult
	name = "boots"
	desc = "A pair of boots worn by the followers of Nar-Sie."
	icon_state = "cult"
	item_state = "cult"
	force = 2
	siemens_coefficient = 0.7

	cold_protection = FEET
	min_cold_protection_temperature = SHOE_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = FEET
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECTION_TEMPERATURE
	species_restricted = null

/obj/item/clothing/shoes/cult/cultify()
	return

/obj/item/clothing/shoes/cyborg
	name = "cyborg boots"
	desc = "Shoes for a cyborg costume"
	icon_state = "boots"

/obj/item/clothing/shoes/slippers
	name = "bunny slippers"
	desc = "Fluffy!"
	icon_state = "slippers"
	item_state = "slippers"
	force = 0
	species_restricted = null
	w_class = 2

/obj/item/clothing/shoes/slippers_worn
	name = "worn bunny slippers"
	desc = "Fluffy..."
	icon_state = "slippers_worn"
	item_state = "slippers_worn"
	force = 0
	w_class = 2

/obj/item/clothing/shoes/laceup
	name = "laceup shoes"
	desc = "The height of fashion, and they're pre-polished!"
	icon_state = "laceups"

/obj/item/clothing/shoes/swimmingfins
	desc = "Help you swim good."
	name = "swimming fins"
	icon_state = "flippers"
	item_flags = NOSLIP
	slowdown = SHOES_SLOWDOWN+1
	species_restricted = null

/obj/item/clothing/shoes/winterboots
	name = "winter boots"
	desc = "Boots lined with 'synthetic' animal fur."
	icon_state = "winterboots"
	item_state = "winterboots"
	cold_protection = FEET|LEGS
	min_cold_protection_temperature = SHOE_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = FEET|LEGS
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/shoes/kneesocks
	name = "kneesocks"
	desc = "A pair of girly knee-high socks"
	icon_state = "eros_kneesock"
	item_state = "eros_kneesock"

/obj/item/clothing/shoes/jestershoes
	name = "jester shoes"
	desc = "As worn by the clowns of old."
	icon_state = "eros_jestershoes"
	item_state = "eros_jestershoes"

/obj/item/clothing/shoes/aviatorboots
	name = "aviator boots"
	desc = "Boots suitable for just about any occasion"
	icon_state = "eros_aviator_boots"
	item_state = "eros_aviator_boots"

/obj/item/clothing/shoes/tourist
	name = "tourist sandals"
	desc = "Socks with sandals..?"
	icon_state = "eros_tourist"
	item_state = "eros_tourist"

/obj/item/clothing/shoes/lolitastockings
	name = "lolita stockings"
	desc = ""
	icon_state = "eros_lolitastockings"
	item_state = "eros_lolitastockings"

/obj/item/clothing/shoes/sneakers
	name = "sneakers"
	desc = "Good all-purpose shoes."
	icon_state = "eros_sneakers"
	item_state = "eros_sneakers"

/obj/item/clothing/shoes/laces
	name = "lace sandals"
	desc = ""
	icon_state = "eros_laces"
	item_state = "eros_laces"

/obj/item/clothing/shoes/cowboy
	name = "cowboy boots"
	desc = "Not a lot of horses to ride in space."
	icon_state = "cowboy"
	item_state = "cowboy"

/obj/item/clothing/shoes/miku
	name = "Vocaloid Boots"
	desc = "Thigh-high boots that just make you wanna dance!"
	icon_state = "miku"
	item_state = "miku_boots"


