class DH_MoveMut extends Mutator;

function ModifyPlayer(Pawn Other) {
	Spawn(class'DH_Move.DH_MoveModifier', Other);
	log("[DH_Move] Spawning DH_MoveModifier");
}

defaultproperties
{
	GroupName="DH_Move"
	FriendlyName="DH Move"
	Description="Movement Modifiers"
	bAddToServerPackages=True
}