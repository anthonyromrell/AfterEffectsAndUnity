using UnityEngine;
using System.Collections;
using System;

public class SwitchCurrentWeapon : MonoBehaviour {

	public static Action SwitchWeapon;

	void OnMouseDown () {
		if(SwitchWeapon != null)
			SwitchWeapon();
	}
}
