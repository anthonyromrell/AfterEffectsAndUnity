// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class EnableAutoPlay : MonoBehaviour 
{

	public bool switchBool = false;
	public static Action<bool> ChangeAutoPlaySettings;

	void OnMouseUp () {

		if(!switchBool) {
			switchBool = true;
		} else {
			switchBool = false;
		}

		if(ChangeAutoPlaySettings != null) 
			ChangeAutoPlaySettings(switchBool);
		Debug.Log(switchBool);

	}
}
