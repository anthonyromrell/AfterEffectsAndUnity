using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponClass : MonoBehaviour {

	public List<AmmoClass> avaliableAmmo;
	public static Action<WeaponClass> AddWeaponToList;
	public bool ifAvaliable = false;
	public int currentAmmo = 0;
	public int ammoSpeed = 10;

	public float nextActivate = 2.0F;//the next time the ammo "fires" or is activated
	private float activationTime = 0.0F;//the current time that is a contiuously changing var adding the time to the nextActive var
	
	public WeaponType.weaponSelection thisWeaponSelection;

	void AddToAvaliableWeapons ()
	{
		if (AddWeaponToList != null) 
			AddWeaponToList (this);

		this.GetComponent<BoxCollider>().enabled = false;
	}

	// Use this for initialization
	void Start () {
		avaliableAmmo = new List<AmmoClass>();
		AmmoClass.AddAmmoToList += AddAmmo;

		if(ifAvaliable)
			AddToAvaliableWeapons ();
	}

	void AddAmmo (AmmoClass _a) {
		if(_a.thisWeaponSelection == thisWeaponSelection)
			avaliableAmmo.Add(_a);
	}

	public void FireAmmo () {
		if(Time.time > activationTime) {//checks if time is greater than the activation time var
				activationTime = Time.time + nextActivate;//adds the nextActive var to time
			if(avaliableAmmo.Count-1 >= currentAmmo) {
				avaliableAmmo[currentAmmo].OnActivateAmmo(this.transform.position, Vector3.right, 0, ammoSpeed);
				currentAmmo++;
			} else {
				currentAmmo = 0;
			}
			Debug.Log(currentAmmo);
		}
	}

	void OnTriggerEnter () {
		ifAvaliable = true;
		AddToAvaliableWeapons();
	}
}
