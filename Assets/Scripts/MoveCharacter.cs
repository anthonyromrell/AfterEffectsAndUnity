// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveCharacter : MonoBehaviour 
{
	public Transform myController;
	public Transform myArt;
	public Animator myAnim;
	private float hInput;
	private string animName = "Walk";
	public float speed = 0.5f;
	private bool flipped;

	void Update () 
	{
		hInput = Input.GetAxis("Horizontal");
		Vector3 _v = new Vector3(hInput*speed, 0, 0);
		myController.position += _v;

		if(hInput <= -0.1f ) {
			myAnim.SetFloat(animName, hInput);
			if(!flipped) {
				myArt.Rotate(0,180,0);
				flipped = true;
			}
		}

		if(hInput >= 0.1f ) {
			myAnim.SetFloat(animName, hInput);
			if(flipped) {
				myArt.Rotate(0,180,0);
				flipped = false;
			}
		}
	}
}
