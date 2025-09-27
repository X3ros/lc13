/mob/living/simple_animal/hostile/ordeal/grungeon_boss
	name = "Green Boss" //Placeholder name
	desc = "A massive metallic dome outfitted with several cannons and guns."
	icon = 'ModularLobotomy/_Lobotomyicons/224x128.dmi'
	icon_state = "greenmidnight"
	icon_living = "greenmidnight"
	icon_dead = "greenmidnight_dead"
	layer = LYING_MOB_LAYER
	pixel_x = -96
	base_pixel_x = -96
	occupied_tiles_left = 2
	occupied_tiles_right = 2
	occupied_tiles_up = 2
	faction = list("green_ordeal")
	gender = NEUTER
	mob_biotypes = MOB_ROBOTIC
	maxHealth = 25000
	health = 25000
	ranged = TRUE
	damage_coeff = list(RED_DAMAGE = 0.5, WHITE_DAMAGE = 0.8, BLACK_DAMAGE = 1.2, PALE_DAMAGE = 1)
	butcher_results = list(/obj/item/food/meat/slab/robot = 22)
	guaranteed_butcher_results = list(/obj/item/food/meat/slab/robot = 16)
	death_sound = 'sound/effects/ordeals/green/midnight_dead.ogg'
	damage_effect_scale = 1.25
	rapid = 50
	rapid_fire_delay = 0.4
	projectilesound = 'sound/weapons/gun/smg/shot.ogg'
	casingtype = /obj/item/ammo_casing/caseless/soda_mini
	var/datum/beam/current_beam = null
	var/can_act = TRUE

/mob/living/simple_animal/hostile/ordeal/grungeon_boss/Initialize()
	. = ..()
	var/matrix/shift = matrix(transform)
	shift.Translate(-96, 0)
	transform = shift

/mob/living/simple_animal/hostile/ordeal/grungeon_boss/Move()
	return FALSE

/mob/living/simple_animal/hostile/ordeal/grungeon_boss/OpenFire(atom/A) //Copypasted code from TTLS snipers. Intended to serve as the "warning" for the minigun.
	if(!can_act)
		return
	if(PrepareToFire(A))
		return ..()
	return FALSE

/mob/living/simple_animal/hostile/ordeal/grungeon_boss/proc/PrepareToFire(atom/A)
	current_beam = Beam(A, icon_state="blood", time = 2.2 SECONDS)
	can_act = FALSE
	SLEEP_CHECK_DEATH(22)
	if(!(A in view(9, src)))
		can_act = TRUE
		return FALSE
	can_act = TRUE
	return TRUE


/obj/item/ammo_casing/caseless/soda_mini
	name = "9mm soda casing"
	desc = "A 9mm soda casing."
	projectile_type = /obj/projectile/ego_bullet/ego_soda
	variance = 45
