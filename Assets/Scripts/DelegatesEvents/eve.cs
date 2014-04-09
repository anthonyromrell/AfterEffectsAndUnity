using UnityEngine;
using System.Collections;

public class eve : MonoBehaviour {

	public static event del.newDel myEve;

	// Use this for initialization
	void Start () {
		eveCall(1);
	}
	
	int eveCall (int _i ) {
		if(myEve != null) {
			Debug.Log(_i);
			myEve(10);
		} else {
			Debug.Log("None");
		}
		return _i; 
	}

}
