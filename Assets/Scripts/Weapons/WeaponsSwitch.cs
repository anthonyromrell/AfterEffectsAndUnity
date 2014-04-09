using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class WeaponsSwitch : MonoBehaviour {

	public delegate int AmmoPowerDelegate (AmmoSpawner _aS);//sends the ammoPower to an Enemy for damage
	public static event AmmoPowerDelegate AmmoPowerEvent;//event related to the AmmoPowerDelegate

	public AmmoSpawner[] spawnerArray;
	public List<AmmoSpawner> spawnerList;

	[HideInInspector]
	public AmmoSpawner currentSpawner;
	private int i = 0;
	
	void Start () {//runs at the beginning of the first frame
		for (int j = 0 ; j < spawnerArray[i].myAmmo.Length ; j++) {//loops throughs the ammo
			//spawnerArray[i].myAmmo[j].ammoSprite.enabled = true;//enables the current ammo selection at the start of the game
			spawnerArray[i].myAmmo[j].ammoGO.SetActive(true);//enables the current ammo selection at the start of the game
			spawnerArray[i].weaponArt.SetActive(true);
			currentSpawner = spawnerArray[i];
		}
		foreach (AmmoSpawner _aS in spawnerArray) {
			SendAmmoValue(_aS);
		}
		
		PowerUp.SendAmmoEvent += AddAmmoToCurrentWeaponSpawner;
	}

	void AddAmmoToCurrentWeaponSpawner (float _a) {
		foreach (AmmoSpawner _s in spawnerArray) {
			_s.ammoAmount += _a;
		}
	}

	void OnMouseUp () {
		spawnerArray[i].enabled = false;//disables the current ammoSpawner
		spawnerArray[i].weaponArt.SetActive(false);
		if (i < spawnerArray.Length) {//checks the iterator aganst the amount of ammoSpawners
			i++;
		}
		if (i == spawnerArray.Length) {//checks if this has come to the end of the ammoSpawner array
			i = 0;//resets the interator
		}
		spawnerArray[i].enabled = true;//enables the current ammoSpawner
		spawnerArray[i].weaponArt.SetActive(true);//turns on the weapon art
		currentSpawner = spawnerArray[i];//sets the current spawner to the current array selection
	}

	void SendAmmoValue (AmmoSpawner _aS) {
		if(AmmoPowerEvent != null) {
			AmmoPowerEvent(_aS);
		}
	}

	void Update () {
		if(Input.GetKeyDown(KeyCode.A)) {
			OnMouseUp();
		}
	}
}