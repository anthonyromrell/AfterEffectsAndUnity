// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RotateChar : MonoBehaviour 
{

	public Animator Fox1;

	void OnMouseUp () {
		Fox1.SetBool("Rotate", true);
	}

}
