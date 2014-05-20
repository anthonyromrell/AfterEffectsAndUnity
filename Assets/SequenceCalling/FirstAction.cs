// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;//This is needed for Action Calls

public class FirstAction : MonoBehaviour 
{

	public List<Animator> myCubeAnimList;
	public static Action myFirstAction;
	public int i = 0;

	void OnMouseUp () {
		if(myFirstAction != null)
			myFirstAction();

		myCubeAnimList[i].SetBool("ifCalled", true);
		if(myCubeAnimList.Count-1 > i) {
			i++;
		} else {
			//i=0;
		}
	}
}
