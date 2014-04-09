using UnityEngine;
using System.Collections;

public class WeaponPowerUp : PowerUp {

	public delegate void WeaponSenderDelegate (AmmoSpawner _aP);//sends the ammoPower to an Enemy for damage
	public static event WeaponSenderDelegate SendWeaponEvent;//runs if there is a subscriber and if called
	
	public AmmoSpawner weaponSpawner;
	public bool isAdded = false;//is to check if it can be added to inventory at game start

	void RunEvent ()
	{
		if (SendWeaponEvent != null) {
			SendWeaponEvent (weaponSpawner);
		}
	}

	void DeactivateOnStart () 
	{//Call this if this weapon has already been collected
		this.gameObject.SetActive(false);
	}

	void Start () 
	{
		myPS = this.GetComponent<ParticleSystem>();
		boxCollider = this.GetComponent<BoxCollider>();//Adds the component for the game designer
		powerUpAnim = this.GetComponent<Animator>();//Adds the component for the game designer
		if (isAdded) {
			RunEvent ();
			DeactivateOnStart();
		}
	}
	
	public override void CasePowerUpType ()//checks the powerUp type via switch
	{
		base.CasePowerUpType ();
			RunEvent();
	}

}
