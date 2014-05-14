using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponList : MonoBehaviour {

	public List<WeaponClass> avaliableWeapons;
	public static Action ActivateWeaponSwitch;
	public int activeCount = 1;
	public int currentWeaponNum = 0;

	// Use this for initialization
	void Start () {
		avaliableWeapons = new List<WeaponClass>();
		WeaponClass.AddWeaponToList += AddWeapons;
		SwitchCurrentWeapon.SwitchWeapon += SwitchThisWeapon;
		FireThisWeapon.FireCurrentWeapon += FireWeapon;
	}

	void AddWeapons (WeaponClass _w) {
		avaliableWeapons.Add(_w);
		if(avaliableWeapons.Count > activeCount) 
			if(ActivateWeaponSwitch != null)
				ActivateWeaponSwitch();
	}

	void SwitchThisWeapon () {
		if(avaliableWeapons.Count-1 > currentWeaponNum) {
			currentWeaponNum++;
		} else {
			currentWeaponNum = 0;
		}
	}

	void FireWeapon () {
		avaliableWeapons[currentWeaponNum].FireAmmo();
	} 
}
