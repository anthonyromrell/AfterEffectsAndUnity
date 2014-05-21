// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ThirdAction : MonoBehaviour 
{
	public Animator myAnimator;

	void OnEnable () 
	{
		//EventListener.mySecondAction += RunAnim;
	}
	
	void RunAnim () 
	{
		myAnimator.SetBool("ifCalled", true);
	}
	
	void AnimEndFunction () {
		myAnimator.SetBool("ifCalled", false);
	}
}
