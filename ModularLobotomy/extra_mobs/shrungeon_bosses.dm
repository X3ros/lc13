// --------- SHRIMP DUNGEON BOSS ENEMIES ---------
// --------- (badly) MADE BY XEROS               ---------

/mob/living/simple_animal/hostile/shrimp_hos
	name = "Wellcheers Head of Security"
	desc = "A heavily armored, gas mask-clad shrimp, armed with a semi-automatic shotgun and gas grenades." //Literally just the Enforcer from Cultic lmao
	icon = 'ModularLobotomy/_Lobotomyicons/96x96.dmi'
	icon_state = "wellcheers_hos"
	icon_living = "wellcheers_hos"
	icon_dead = "wellcheers_hos_dead"
	attack_sound = 'sound/abnormalities/clock/clank.ogg'
	faction = list("shrimp")
	gender = MALE
	maxHealth = 7500
	health = 7500
	melee_damage_lower = 28
	melee_damage_upper = 34
	ranged = TRUE
	damage_coeff = list(RED_DAMAGE = 0.5, WHITE_DAMAGE = 1.2, BLACK_DAMAGE = 0.7, PALE_DAMAGE = 1)
	rapid = 6
	rapid_fire_delay = 0.8
	casingtype = /obj/item/ammo_casing/caseless/ego_shrimpsoldier
	var/datum/beam/current_beam = null
	var/can_act = TRUE
	var/grenade_cooldown
	var/grenade_cd_duration = 30 SECONDS
