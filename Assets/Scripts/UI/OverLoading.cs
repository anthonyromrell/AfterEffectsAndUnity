using UnityEngine;
using System.Collections;

public class OverLoading : MonoBehaviour {

	// Use this for initialization
	void Start () {
		CoolBeans("Cool");
		CoolBeans(2);
		CoolBeans();
	}
	
	void CoolBeans (string _s) {
		Debug.Log(_s);
	}

	void CoolBeans (int _i) {
		Debug.Log(_i);
	}

	void CoolBeans () {
		Debug.Log("Nothing");
	}
}
