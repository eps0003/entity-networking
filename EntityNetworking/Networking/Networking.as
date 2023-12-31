#include "Entity.as"
#include "NetworkManager.as"
#include "Utilities.as"

#include "ToggleEntity.as"
#include "PlayerEntity.as"
#include "ParentEntity.as"

shared Entity@ createEntity(u16 type, u16 id)
{
	switch (type)
	{
	case EntityType::Toggle:
		return ToggleEntity(id);
	case EntityType::Player:
		return PlayerEntity(id);
	case EntityType::Parent:
		return ParentEntity(id);
	}
	return null;
}

shared enum EntityType
{
	Toggle,
	Player,
	Parent
}
