using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class WeaponsPickUpAndSwitch : MonoBehaviour {
	
	public delegate void AmmoPowerDelegate (AmmoSpawner _aS);//sends the ammoPower to an Enemy for damage
	public static event AmmoPowerDelegate AmmoPowerEvent;//event related to the AmmoPowerDelegate
	public List<AmmoSpawner> spawnerList;//creates a generic list (lists a very similar to arrays)	
	[HideInInspector]//hides public vars from the Unity Editor
	public AmmoSpawner currentSpawner;// the current spawner selection
	private int i = 0;

	void Start ()
	{
		spawnerList = new List<AmmoSpawner> ();//an array of ammoArrays
		PowerUp.SendAmmoEvent += AddAmmoToCurrentWeaponSpawner;//subscribes to a sendAmmo PowerUp event
		WeaponPowerUp.SendWeaponEvent += AddNewSpawner;// subscribes to the weaponPowerUp send weapon delegate, and passes info about the triggered powerUp
	}
	// creates a new instance of the spawnerList
	
	public void AddNewSpawner (AmmoSpawner _aS) {
		spawnerList.Add(_aS);//adds a spawner to the list
		SetUpFirstSpawner ();//custom function that sets up a added ammoSpawner
	}
	
	void SetUpFirstSpawner () {//runs at the beginning of the first frame
		foreach (AmmoSpawner _aS in spawnerList) {
			SendAmmoValue(_aS);//called from a triggered weaponPowerUp
			foreach (AmmoControl _aC in _aS.myAmmo) {
				_aC.ammoGO.SetActive(true);//enables the current ammo selection at the start of the game
			}
			_aS.weaponArt.SetActive(true);
		}
		OnMouseUp();//runs the is function on start
	}
	
	void AddAmmoToCurrentWeaponSpawner (float _a) {
		foreach (AmmoSpawner _s in spawnerList) {//sends new ammo to the list from a triggered powerUp
			_s.ammoAmount += _a;//adds ammo to the current iteration in the loop
		}
	}
	
	void OnMouseUp () {//Unity call
		spawnerList[i].enabled = false;//disables the current ammoSpawner
		spawnerList[i].weaponArt.SetActive(false);
		if (i < spawnerList.Count) {//checks the iterator aganst the amount of ammoSpawners
			i++;
		}
		if (i == spawnerList.Count) {//checks if this has come to the end of the ammoSpawner array
			i = 0;//resets the interator
		}
		spawnerList[i].enabled = true;//enables the current ammoSpawner
		spawnerList[i].weaponArt.SetActive(true);//turns on the weapon art
		currentSpawner = spawnerList[i];//sets the current spawner to the current array selection
	}
	
	void SendAmmoValue (AmmoSpawner _aS) {
		if(AmmoPowerEvent != null) {
			AmmoPowerEvent(_aS);//actiates the AmmoPowerEvent Delegate
		}
	}
	
	void Update () {
		if(Input.GetKeyDown(KeyCode.A)) {
			OnMouseUp();//called the built in funcation on a key stroke
		}
	}
}