// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RotateOther : MonoBehaviour 
{

	public Sprite[] mySprites;


	public Animator Fox2;

	public void RotateOtherFox () {
		Fox2.SetBool("Rotate", true);
	}

	public void EndRotate () {
		Fox2.SetBool("Rotate", false);
	}

}
