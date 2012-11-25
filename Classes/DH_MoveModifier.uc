class DH_MoveModifier extends Actor;

var globalconfig float ModifiedPlayerSpeed, ModifiedAccelRate, ModifiedFriction;

simulated event PreBeginPlay()
{
	super.PreBeginPlay();

	if (Role == ROLE_Authority) {
		SetBase(Owner);
	}
}

simulated event BaseChange()
{
	if (Base == None) {
		Destroy();
		return;
	}
	// do whatever you want with Base
	Pawn(Base).GroundSpeed = ModifiedPlayerSpeed;
	Pawn(Base).Default.GroundSpeed = ModifiedPlayerSpeed;

	Pawn(Base).WaterSpeed = ModifiedPlayerSpeed;
	Pawn(Base).Default.WaterSpeed = ModifiedPlayerSpeed;

	Pawn(Base).AccelRate = ModifiedAccelRate;
	Pawn(Base).Default.AccelRate = ModifiedAccelRate;

	ROPawn(Base).FrictionScale = ModifiedFriction;
	ROPawn(Base).Default.FrictionScale = ModifiedFriction;
}

defaultproperties
{
	RemoteRole=ROLE_SimulatedProxy
	bSkipActorPropertyReplication=true
	bOnlyRelevantToOwner=true
	
	ModifiedPlayerSpeed=218 // Default Ground Speed is 200
	ModifiedAccelRate=1000 // Default AccelRate is 300
	ModifiedFriction=0.8 // Default FrictionScale is 0.54375
}