// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;//This is needed for Action Calls

public class ButtonSquenceAnims : MonoBehaviour 
{

	public List<EventListener> myCubeAnimList;
	public static Action myFirstAction;
	public int i = 0;

	void OnEnable () {
		EventListener.SetCurrentNum += SetCounter;
	}

	void SetCounter(int _i) {
		if(myCubeAnimList.Count-1 > i) {
			i = _i;
		} else {
			i=0;
		}
		Debug.Log(i);
		Debug.Log(myCubeAnimList.Count);
	}

	void OnMouseUp () {
		if(myFirstAction != null)
			myFirstAction();

		myCubeAnimList[i].myAnimator.SetBool("ifCalled", true);

	}
}
