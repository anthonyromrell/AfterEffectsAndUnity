// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class SecondAction : MonoBehaviour 

{

	public static Action mySecondAction;

	public Animator myAnimator;

	void OnEnable () 
	{
		FirstAction.myFirstAction += SecondFunction;
	}
	
	void SecondFunction () 
	{
		myAnimator.SetBool("ifCalled", true);
	}

	void AnimEndFunction () {
		myAnimator.SetBool("ifCalled", false);
		if(mySecondAction != null) 
			mySecondAction();
	}
}
