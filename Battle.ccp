// Cauti

int battle_melee_attack(LPCHARACTER ch, LPCHARACTER victim)
{

// Adaugi dupa

	if(ch->IsPC())
	{
		const bool bAttacking = (get_dword_time() - ch->GetLastAttackTime()) < ch->IsRiding() ? 800 : 750;
		if (!bAttacking)
			return BATTLE_NONE;
		//if (test_server&&ch->IsPC())
		//	ch->ChatPacket(CHAT_TYPE_INFO, "Melee Attack: %d", get_dword_time() - ch->GetLastAttackTime());
		if (!battle_distance_valid(ch, victim))
			return BATTLE_NONE;
	}

// Cauti

int battle_hit(LPCHARACTER pkAttacker, LPCHARACTER pkVictim, int & iRetDam)
{

// Adaugi dupa
	if(pkAttacker->IsPC())
	{
		const bool bAttacking = (get_dword_time() - pkAttacker->GetLastAttackTime()) < pkAttacker->IsRiding() ? 800 : 750;
		if (!bAttacking)
			return BATTLE_NONE;
		//if (test_server&&pkAttacker->IsPC())
		//	pkAttacker->ChatPacket(CHAT_TYPE_INFO, "Melee Attack: %d", get_dword_time() - pkAttacker->GetLastAttackTime());
		if (!battle_distance_valid(pkAttacker, pkVictim))
			return BATTLE_NONE;
	}
  
  
  Acesta ar trebui sa fixeze dmg-ul .
  
