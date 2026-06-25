/mob/living/simple_animal/hostile/abnormality/thebloat
	name = "The Bloat"
	desc = "A rotting, festering carcass of a particularly rotund man. His eyes bulge in their bleeding sockets, as if they would pop out at the slightest provocation."
	health = 500
	maxHealth = 500
	icon = 'ModularLobotomy/_Lobotomyicons/64x64.dmi'
	icon_state = "bloat2eyes"
	icon_living = "bloat2eyes"
	portrait = "thebloat"
	can_breach = TRUE
	threat_level = WAW_LEVEL
	start_qliphoth = 3
	work_chances = list(
		ABNORMALITY_WORK_INSTINCT = 35,
		ABNORMALITY_WORK_INSIGHT = list(10, 20, 35, 35, 35),
		ABNORMALITY_WORK_ATTACHMENT = 35,
		ABNORMALITY_WORK_REPRESSION = list(10, 40, 50, 55, 60),
	)

	work_damage_amount = 12
	work_damage_type = WHITE_DAMAGE