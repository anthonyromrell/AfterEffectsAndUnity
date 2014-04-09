using UnityEngine;
using System.Collections;

public class del : MonoBehaviour {

	public delegate int newDel (int _d) ;
	public static event newDel newEvent;

	void Start ( ){
		NewEventCall (42);
	}

	int NewEventCall (int _i) {
		if(newEvent != null) {
			newEvent(_i);
		} else {
			Debug.Log("None");
		}
		return _i;
	}
}
