// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class UserInput : MonoBehaviour 
{

	public Animator myAnimator;

	void Update () {
		if(Input.GetKey(KeyCode.A)) {
			myAnimator.SetBool("CanFire", true);
		} 
	}

	void OnMouseDown ( ) {
		myAnimator.SetBool("CanFire", true);
	}

	public void StopFire ( ) {
		myAnimator.SetBool("CanFire", false);
	}
}
