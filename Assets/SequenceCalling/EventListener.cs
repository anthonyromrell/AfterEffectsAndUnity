// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class EventListener : MonoBehaviour 

{

	public static Action<int> SetCurrentNum;

	public Animator myAnimator;
	public EventListener nextAnimator;
	public bool canAutoPlay = false;
	public bool setAutoPlay = false;

	void OnEnable () 
	{
		EnableAutoPlay.ChangeAutoPlaySettings += EnableAutoPlayFunction;
	}

	void EnableAutoPlayFunction (bool _b) {
		setAutoPlay = _b;
	}

	public void CallFromPrevious () {
		canAutoPlay = setAutoPlay;
		RunAnim();
	}
	
	void RunAnim () 
	{
		if(canAutoPlay)
			myAnimator.SetBool("ifCalled", true);

		if(SetCurrentNum != null) {
			SetCurrentNum(int.Parse(this.gameObject.name));
		}
	}

	void AnimEndFunction () {
		myAnimator.SetBool("ifCalled", false);
		canAutoPlay = false;
		nextAnimator.CallFromPrevious();
	}
}
